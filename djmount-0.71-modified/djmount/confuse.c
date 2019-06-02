
/*

WZ1239 TVSERVER USB ADAPTOR

ATAOE server / FAT32 disk emulator / DLNA interface (courtesy of DJMOUNT)

This is released under the GNU license as per the DJMOUNT license

Note I hacked Makefile.in to build 'tvserver' instead of 'djmount' 
all apologies, it should really be incorporated side-by-side.

*/

#include <fuse.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <signal.h>
#include <ctype.h>
#include <poll.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <net/ethernet.h>
#include <net/if.h>
#include <arpa/inet.h>
#include <linux/if_packet.h>
#include <upnp/upnp.h>

#include "ataoe.h"
#include "file_buffer.h"

/// Local adaptor MAC address
static u_char src_mac[IFHWADDRLEN];
/// Socket for ATAOE requests
static int sock;

/// resource control for file operations into DJMOUNT
static ithread_mutex_t fileop_mutex;

//#define DEBUG

/// Open the ATAOE raw socket
static int OpenNetwork(char *interface)
{
	struct sockaddr_ll	sockaddr ;
	struct ifreq		ifreq ;
	
	memset(&sockaddr, 0, sizeof(sockaddr)) ;

	if ((sock = socket(PF_PACKET, SOCK_RAW, htons(AOE_TYPE))) == -1)
	{
		perror("socket") ;
		return 1;
	}

	strcpy(ifreq.ifr_name, interface) ;

	if (ioctl(sock, SIOCGIFHWADDR, &ifreq) == -1)
	{
		perror("ioctl(SIOCGIFHWADDR)") ;
		return 1;
	}

	memcpy(src_mac, ifreq.ifr_hwaddr.sa_data, IFHWADDRLEN) ;

	if (ioctl(sock, SIOCGIFINDEX, &ifreq) == -1)
	{
		perror("ioctl(SIOCGIFINDEX)") ;
		return 1;
	}

	sockaddr.sll_family   = AF_PACKET ;
	sockaddr.sll_protocol = htons(AOE_TYPE) ;
	sockaddr.sll_ifindex  = ifreq.ifr_ifindex ;

	if (bind(sock, (struct sockaddr *)&sockaddr, sizeof(sockaddr)) == -1)
	{
		perror("bind") ;
		return 1;
	}

	if (ioctl(sock, SIOCGIFMTU, &ifreq) == -1)
	{
		perror("ioctl(SIOCGIFHWADDR)") ;
		return 1;
	}

	return 0;
}

/// Pointer into DJMOUNT DLNA file API operations
const struct fuse_operations_compat22 *op;

///
/// Emulated FAT32 disk parameters
///
#define HIDDEN 0x3F
#define RESERVED 32
#define BYTES_PER_SECTOR 512
#define FAT_START (RESERVED+HIDDEN)
#define FAT_SIZE 60000
#define FAT_COPIES 2
#define CLUSTER_SHIFT 6
#define CLUSTER_SIZE (1<<CLUSTER_SHIFT)
#define CLUSTER_START (FAT_START+FAT_SIZE*FAT_COPIES)
#define BYTES_PER_CLUSTER (CLUSTER_SIZE*BYTES_PER_SECTOR)

// total sectors ~ 200GB
#define TOTAL_SECTORS 251658360095L

/// Optimised root directory for media players that don't like big nested directories
u_char alternative_root_cluster=0;

/// Create the emulated master boot record 
static void RenderMBR(u_char *sector)
{
	printf("Render Master Boot Record\n");

	memset(sector,0,SECTOR_SIZE);
	sector[0x1fe]=0x55;
	sector[0x1ff]=0xaa;

#define PARTITION1 0x1be

	sector[PARTITION1+0]=0x80;		// partition active
	sector[PARTITION1+1]=0x01;		// start head
	sector[PARTITION1+2]=0x01;		// start cylinder
	sector[PARTITION1+4]=0x0C;		// FAT32 LBA
	sector[PARTITION1+5]=0xFE;		// end head
	sector[PARTITION1+6]=0xFF;		// end cylinder
	sector[PARTITION1+7]=0xFF;

	sector[PARTITION1+8]=HIDDEN;	// 63 sector gap to first sector in partition

	sector[PARTITION1+12]=(u_char)TOTAL_SECTORS;	
	sector[PARTITION1+13]=(u_char)(TOTAL_SECTORS>>8);
	sector[PARTITION1+14]=(u_char)(TOTAL_SECTORS>>16);
	sector[PARTITION1+15]=(u_char)(TOTAL_SECTORS>>24);

}

/// Create the emulated file information sector
static void RenderFIS(u_char *sector)
{
	printf("Render File System Information Sector\n");

	memset(sector,0,SECTOR_SIZE);
	sector[0x1fe]=0x55;
	sector[0x1ff]=0xaa;

	// first signature
	sector[0] = 0x52;
	sector[1] = 0x52;
	sector[2] = 0x61;
	sector[3] = 0x41;

	// second signature
	sector[0x1e4] = 0x72;
	sector[0x1e5] = 0x72;
	sector[0x1e6] = 0x41;
	sector[0x1e7] = 0x61;

	// sector that was most recently allocated
	sector[0x1ec]=(u_char)TOTAL_SECTORS;	
	sector[0x1ed]=(u_char)(TOTAL_SECTORS>>8);
	sector[0x1ee]=(u_char)(TOTAL_SECTORS>>16);
	sector[0x1ef]=(u_char)(TOTAL_SECTORS>>24);

}

/// Internal directory entry for a node on the DLNA media player
struct DIRENT {
	struct DIRENT *next;
	char *short_name;
	char *full_name;
	u_char type;
	u_char rendered;
	u_int start_cluster;
	u_int end_cluster;
	u_int length;
	u_int cached;
	u_char cluster[BYTES_PER_CLUSTER];
};

/// Master directory of our local copy of the network DLNA entries
struct DIRENT *list=NULL;

/// Current allocation cluster in our emulated disk
u_int next_cluster=2;

/// Find a directory by its full (DLNA) name
static struct DIRENT *FindDirectory(char *name)
{
	struct DIRENT *p=list;
	while(p!=NULL)
	{
		if(strstr(p->full_name,name)!=NULL)
			break;
		p=p->next;
	}
	return p;
}

/// Create a file/directory entry in our internal table
static u_int CreateEntry(const char *full_name, const char *short_name, u_char type,u_int length)
{
	struct DIRENT *current,*last;

	last=NULL;
	current=list;

	while(current != NULL)
	{
		if(!strcmp(full_name, current->full_name))
		{
#ifdef DEBUG
			printf("CreateEntry: Reusing duplicate %s @ %u\n", full_name, current->start_cluster);
#endif
			return current->start_cluster;
		}

		last=current;
		current=current->next;
	}

	current = malloc(sizeof(struct DIRENT));
	if(current==NULL) { printf("CreateEntry: Out of memory!\n"); return 0; }

	current->start_cluster = next_cluster;
	current->end_cluster = current->start_cluster+(length/BYTES_PER_CLUSTER);
	current->length = length;
	current->type = type;
	current->next = NULL;
	current->rendered=0;

	current->short_name = malloc(strlen(short_name)+1);
	if(current->short_name==NULL) { printf("CreateEntry: Out of memory!\n"); return 0; }
	strcpy(current->short_name, short_name);

	current->full_name = malloc(strlen(full_name)+1);
	if(current->full_name==NULL) { printf("CreateEntry: Out of memory!\n"); return 0; }
	strcpy(current->full_name, full_name);

	memset(current->cluster, 0, BYTES_PER_CLUSTER);

	if(last==NULL)
		list = current;
	else
		last->next = current;

	next_cluster = current->end_cluster+2;

#ifdef DEBUG
	printf("CreateEntry: %s,%s @ %u-%u (%u bytes)\n", current->full_name, current->short_name, current->start_cluster, current->end_cluster, current->length);
#endif


	return current->start_cluster;
}

/// Generate an emulated boot block for FAT32
static void RenderBoot(u_char *sector)
{
	printf("Render Bootblock\n");

	memset(sector,0,SECTOR_SIZE);
	sector[0x1fe]=0x55;
	sector[0x1ff]=0xaa;

	sector[0]=0xeb;		// jmp instruction
	sector[1]=0x5a;
	sector[2]=0x90;

	sector[3]=0x4d;		// oem
	sector[4]=0x53;
	sector[5]=0x57;
	sector[6]=0x49;
	sector[7]=0x4e;
	sector[8]=0x34;
	sector[9]=0x2e;
	sector[10]=0x31;

	sector[0xc]=2;					// 512 bytes per sector
	sector[0xd]=CLUSTER_SIZE;			// 64 sectors per cluster (32768 bytes)
	sector[0xe]=RESERVED;				// 32 reserved sectors
	sector[0x10]=FAT_COPIES;			// 2 fat copies
	sector[0x15]=0xf8;				// media descriptor
	sector[0x18]=0x3f;				// sectors per track
	sector[0x1a]=0xff;				// heads
	sector[0x1c]=HIDDEN;				// hidden sectors

	sector[0x20]=(u_char)TOTAL_SECTORS;	
	sector[0x21]=(u_char)(TOTAL_SECTORS>>8);
	sector[0x22]=(u_char)(TOTAL_SECTORS>>16);
	sector[0x23]=(u_char)(TOTAL_SECTORS>>24);

	sector[0x24]=(u_char)FAT_SIZE;			// sectors per FAT 
	sector[0x25]=(u_char)(FAT_SIZE >> 8);

	if(alternative_root_cluster)
		sector[0x2c]=alternative_root_cluster;		// optimisation to reduce depth
	else
		sector[0x2c]=CreateEntry("/", "/", 4, 0);	// root dir 1st cluster

	sector[0x30]=1;		// FSinfo sector
	sector[0x32]=6;		// backup boot sector
	sector[0x40]=0x80;	// bios drive
	sector[0x42]=0x29;	// signature

	sector[0x47]='T';	// volume label
	sector[0x48]='V';
	sector[0x49]='S';
	sector[0x4a]='E';
	sector[0x4b]='R';
	sector[0x4c]='V';
	sector[0x4d]='E';
	sector[0x4e]='R';
	sector[0x4f]='1';
	sector[0x50]='V';
	sector[0x51]='0';

	sector[0x52]=0x46;	// file system name
	sector[0x53]=0x41;
	sector[0x54]=0x54;
	sector[0x55]=0x33;
	sector[0x56]=0x32;


}

static u_char fat_debug=0;

///
/// Determine the next cluster in a emulated FAT32 file chain
///
static u_int NextCluster(u_int cluster)
{
	struct DIRENT *p;

	if(!cluster)
		return 0x0FFFFFF0Lu;		// RESERVED
	else if(cluster==1)
		return 0x0FFFFFFFLu;		// RESERVED
	else
	{
		p=list;
		while(p!=NULL)
		{
			
				if((cluster >= p->start_cluster) && (cluster <= p->end_cluster))
				{
					if(cluster == p->end_cluster)
						return 0x0FFFFFFFLu; // EOF

					if(fat_debug)
						printf("NextCluster: %u INSIDE %s\n", cluster,p->full_name);

					return cluster+1;
				}
			

			p=p->next;
		}
	}

	return 0;					// FREE
}

///
/// Generate an emulated FAT32 FAT sector
///
static void RenderFAT(u_int fat_sector,u_char *sector)
{
	u_char i;
	u_int cluster;

#ifdef DEBUG
	printf("FAT sector %u\n",fat_sector);
#endif

	for(i=0;i!=128;i++)
	{

		cluster = NextCluster((fat_sector << 7)+i);

		*sector++= (u_char)cluster ;
		cluster >>= 8;
		*sector++= (u_char)cluster;
		cluster >>= 8;
		*sector++= (u_char)cluster;
		cluster >>= 8;
		*sector++= (u_char)cluster;

	}


}

static u_char *dirbuf;
static u_short diridx;

/// Find the parent of a nominated DLNA directory
static u_int FindParent(char *full_name)
{
	char tmp[256];
	char *s;
	struct DIRENT *p;

	if(strlen(full_name) > 1)
	{
	 
	 strcpy(tmp,full_name);
	 s=&tmp[strlen(tmp)-1];
	 while(s != full_name)
	 {
		if(*s=='/')
			break;
		s--;
	 }

	 if(s!=full_name)
	 {
		*s=0;
		p=FindDirectory(tmp);
		if(p!=NULL)
		{
#ifdef DEBUG
			printf("FindParent: %s -> %s (%u)\n", full_name, p->full_name, p->start_cluster);
#endif

			return p->start_cluster;
			
		}
	 }	
	}
#ifdef DEBUG
	printf("FindParent: %s = root\n", full_name);
#endif
	return 2;
}

/// Convert to upper case
static char upper(char c)
{
	if(c >= 'a' && c <= 'z')
		c -= 'a'-'A';

	return c;
}	

///
/// Make an 8.3/LFN VFAT filename for the given DLNA name
///
static u_char Make83Name(char *full_name, char *lfn,char *sfn)
{
	u_char i,j,c;
	struct DIRENT *ps;

	for(i=0;i!=11;i++)
		sfn[i]=' ';

	if(!strcmp(lfn,".") || !strcmp(lfn,".."))
	{
		for(i=0;i!=strlen(lfn);i++)
			sfn[i]=lfn[i];

		return 0;
	}

	// see if its already defined
	ps=FindDirectory(full_name);
	if(ps!=NULL)
	{
			strcpy(sfn, ps->short_name);
#ifdef DEBUG
			printf("Make83Name: Reusing %s -> %s\n",lfn,sfn);
#endif
			if(sfn[6]=='~') return 1; else return 0;
	}

	// try to extract extension
	for(i=strlen(lfn);i!=0;--i)
	{
		if(lfn[i-1]=='.') break;
	}

	if(i!=0 && (i+2 <= strlen(lfn)))
	{
		sfn[8]=upper(lfn[i]);
		sfn[9]=upper(lfn[i+1]);
		sfn[10]=upper(lfn[i+2]);

		// see if its a short filename with extension
		if(i < 10)
		{
			// yes, copy and use it
			for(j=0;j<i-1;j++)
				sfn[j]=lfn[j];

			return 0;
		}

	}


	// see if its just a short name with no extension
	if((i==0) && (strlen(lfn) <= 8))
	{
		for(i=0;i<strlen(lfn);i++)
			sfn[i]=lfn[i];

		return 0;
	}

	j=0;
	for(i=0;i<strlen(lfn);i++)
	{
		c=lfn[i];
		if(c!=' ')
		{
			
			sfn[j++]=upper(c);
			if(j==6)
				break;

		}
	}

	sfn[6]='~';

	for(j='1';j<='9';j++)
	{
		sfn[7]=j;

		ps=list;
		while(ps!=NULL)
		{
			if(!strcmp(ps->short_name,sfn))
			{
				// match - but see if they belong to the same parent
				if(FindParent(ps->full_name) == FindParent(full_name))
				{
#ifdef DEBUG
				printf("Make83Name: Duplicate (%c) found - trying next\n",j);
#endif
				}
				break;
			}

			ps=ps->next;
		}

		if(ps==NULL)
			break;
	}

	if(j=='9'+1)
	{

		for(j='A';j<='Z';j++)
		{
			sfn[7]=j;

			ps=list;
			while(ps!=NULL)
			{
				if(!strcmp(ps->short_name,sfn))
				{
					// match - but see if they belong to the same parent
					if(FindParent(ps->full_name) == FindParent(full_name))
					{
#ifdef DEBUG
					printf("Make83Name: Duplicate (%c) found - trying next\n",j);
#endif
					break;
					}
				}
				ps=ps->next;
			}

			if(ps==NULL)
				break;
		}

		if(j=='Z'+1)
		{
			printf("Make83Name: Warning! Too many duplicates found!!?\n");
		}
	}

#ifdef DEBUG
	printf("Make83Name: '%s' -> '%s'\n", lfn, sfn);
#endif
	return 1;
}

/// Some working variables

char lfn_name[256],sfn_name[12],full_name[512];

u_int child_cluster,parent_cluster;

#ifdef DEBUG

/// Some diagnostics
static u_char printable(char c)
{
	if(c >= '0' && c <= '9') return 1;
	if(c >= 'A' && c <= 'Z') return 1;
	if(c >= 'a' && c <= 'z') return 1;
	if(c >= 0x20 && c <= 0x2f) return 1;
	if(c == '~') return 1;

	return 0;
}

/// Take a dump of the sector buffer 
static void Dump(u_char *s)
{
	int i,j;

	for(i=0;i<SECTOR_SIZE;i+=16)
	{
		printf("%04x: ",i);
		for(j=0;j<16;j++)
		{
			printf("%02x ",s[i+j]);
		}
		printf(" ");

		for(j=0;j<16;j++)
		{
			if(printable(s[i+j]))
				printf("%c",s[i+j]);
			else
				printf(".");
		}

		printf("\n");
	}
	printf("\n");
}

#endif

///
/// Process every directory entry coming back from the DJMOUNT/DLNA directory scanner
///
static int FillDir(fuse_dirh_t h, const char *name, int type, ino_t ino)
{
	u_int start_cluster,length;
	u_char lfn_len,c,lfn_entries,i,j,k,checksum,offset,is_root,use_lfn;
	struct stat st;
	struct DIRENT *p=(struct DIRENT *)h;
	static const u_char indexes[13] = { 1, 3, 5, 7, 9, 14, 16, 18, 20, 22, 24, 28, 30 };

	// Skip system names
	if(!strcmp(name,"devices") || !strcmp(name,".debug") || !strcmp(name,".metadata") || !strcmp(name,"_search"))
		return 0;

	if(!strcmp(p->full_name,"/")) is_root=1; else is_root=0;

	strcpy(full_name, p->full_name);

 	 strcat(full_name, "/");
	 strcat(full_name, name);
	

#ifdef DEBUG
	printf("FillDir: ENTRY %s TYPE %d\n", name, type);
#endif

	if((type !=4) && (type != 8))
	{
#ifdef DEBUG
		printf("FillDir: Unsupported Type %d\n",type);
#endif
		return 0;
	}

	// convert name to valid filename and work out length
	for(lfn_len=0,i=0;i!=strlen(name);i++)
	{
		// map invalid characters to '_'
		// Any character in the following list: 22h ("), 2Ah (*), 2Bh (+), 2Ch (,), 2Eh (.), 2Fh (/), 3Ah (:), 3Bh (;), 3Ch (<), 3Dh (=), 3Eh (>), 3Fh (?), 5Bh ([), 5Ch (\), 5Dh (]), 7Ch (|).
		c=name[i];

		if(is_root && c==':') // strip djmount server references in the top level directory
			lfn_len=0;
		else
		{
			if(c < 0x20 || c==0x22 || (c >= 0x2a && c <= 0x2d) || (c==0x2f) || (c >= 0x3a && c<= 0x3f) || (c >= 0x5b && c <= 0x5d) || c==0x7c)
				c=' ';

			// strip leading spaces
			if(lfn_len || c!=' ')
				lfn_name[lfn_len++]=c;
		}
	}
	lfn_name[lfn_len]=0;

#ifdef DEBUG
	printf("FillDir: LFN %s (%d)\n", lfn_name,lfn_len);
#endif

	use_lfn = Make83Name(full_name, lfn_name,sfn_name);

	if(use_lfn)
	{
	lfn_len++; // include NULL
	// work out number of VFAT entries required
	lfn_entries = (lfn_len/13)+1;
	
#ifdef DEBUG
	printf("FillDir: Encoding %s (%d) into %d entries @ %d\n", lfn_name, lfn_len, lfn_entries, diridx);
#endif

	// make sure it will fit
	if(diridx + (1+lfn_entries)*32 >= BYTES_PER_CLUSTER)
	{
		printf("FillDir:Directory cluster full\n");
		return 0;
	}

	// calculate checksum for 8.3 name
	checksum=(u_char)sfn_name[0];
	for(i=1;i!=11;i++)
	{
		if(checksum & 1)
		{
			checksum >>= 1;
			checksum |= 0x80;
		}
		else
			checksum >>= 1;

		checksum += (u_char)sfn_name[i];
	}

	offset=lfn_len;
	
	for(i=0;i<lfn_entries;i++)
	{
		
		dirbuf[diridx]=lfn_entries-i;	// ordinal

		if(!i)
		{
			dirbuf[diridx] |= 0x40;		// last lfn
			k=lfn_len % 13;
		}
		else
			k=13;

		offset -= k;

		//printf("FillDir: Ordinal %02x Sublen %d\n", dirbuf[diridx],k);

		dirbuf[diridx+11]=0xF;			// LFN entry
		dirbuf[diridx+12]=0;			// reserved
		dirbuf[diridx+13]=checksum;		// 8.3 name checksum
		dirbuf[diridx+0x1a]=0;
		dirbuf[diridx+0x1b]=0;

		for(j=0;j<k;j++)
		{
			dirbuf[diridx+indexes[j]]=lfn_name[j+offset];
			dirbuf[diridx+indexes[j]+1]=0;
		}

		while(j < 13)
		{
			dirbuf[diridx+indexes[j]]=0xFF;
			dirbuf[diridx+indexes[j]+1]=0xFF;
			j++;
		}

		diridx+=32;
	 }
	}
	
	length = 0;

	if(type==4)	dirbuf[diridx+0x0b] = 0x10; else dirbuf[diridx+0x0b] = 0;

	if(type==8)
	{
	
		if(!op->getattr(full_name,&st))
			length=st.st_size;

	}
	
	if(strcmp(name,".") && strcmp(name,".."))
		start_cluster = CreateEntry(full_name, sfn_name, type, length);
	else
	{

	 	 if(!strcmp(name,"."))
		 {
			if(is_root)
			{
				start_cluster=0;
				dirbuf[diridx+0x0b] = 0x8; // substitute . for volume name
				strcpy(sfn_name, "TVSERVER");
			}
			else
			{			
#ifdef DEBUG
				printf("FillDir: Setting . to cluster %u\n", child_cluster);
#endif
				start_cluster=child_cluster;
			}
		 }
		 else
		 {
			// root directory doesn't have this entry
			if(is_root)
				return 0;
	
#ifdef DEBUG
			printf("FillDir: Setting .. to cluster %u\n", parent_cluster);
#endif
			start_cluster=parent_cluster;
		}
	}

	// Create the FAT directory entry

	for(i=0;i!=11;i++)
		dirbuf[diridx+i]=sfn_name[i];

	dirbuf[diridx+0x1a] = (u_char)start_cluster;
	dirbuf[diridx+0x1b] = (u_char)(start_cluster>>8);

	dirbuf[diridx+0x14] = (u_char)(start_cluster>>16);
	dirbuf[diridx+0x15] = (u_char)(start_cluster>>24);

	dirbuf[diridx+0x1c] = (u_char)length;
	dirbuf[diridx+0x1d] = (u_char)(length>>8);

	dirbuf[diridx+0x1e] = (u_char)(length>>16);
	dirbuf[diridx+0x1f] = (u_char)(length>>24);

	diridx+=32;

	return 0;
}

///
/// Render a directory based on its cluster number and DLNA information
///
static void RenderDir(struct DIRENT *p, u_int cluster, u_char offset, u_char *sector)
{
#ifdef DEBUG
		if(!offset)
			printf("*** RenderDir: %s @ (%u,%u)\n", p->full_name, cluster, offset);
#endif

		if(!p->rendered)
		{

			parent_cluster=FindParent(p->full_name);
			child_cluster=cluster;

			diridx=0;
			dirbuf=p->cluster;

			ithread_mutex_lock(&fileop_mutex);

			// Scan the directory from the media device
			op->getdir(p->full_name, (fuse_dirh_t)p, FillDir);

			ithread_mutex_unlock(&fileop_mutex);

#ifdef DEBUG
			Dump(p->cluster);
#endif

			p->rendered=1;
		}

		memcpy(sector, &p->cluster[(u_short)offset*SECTOR_SIZE], SECTOR_SIZE);
	

}

/// Cluster read request structure
static volatile struct DIRENT *fi_req=NULL;
static volatile u_int fi_cluster;

static ithread_mutex_t cache_mem,the_mutex;
static ithread_cond_t condp,condc;

/// Shared memory of cluster cache (double buffered)

/// Clusters to contain in cache
#define DEFAULT_CACHE_SIZE 4 

/// Double buffered cluster cache for async reading from UPNP/HTTP and writing to ATAOE
static u_char cache0[BYTES_PER_CLUSTER*DEFAULT_CACHE_SIZE];
static volatile u_int cached_cluster0=0x0FFFFFFFL;
static u_char cache1[BYTES_PER_CLUSTER*DEFAULT_CACHE_SIZE];
static volatile u_int cached_cluster1=0x0FFFFFFFL;
static volatile u_short cache_size0=1,cache_size1=1;

static volatile u_char *cache=cache0;
static volatile u_int *cached_cluster=&cached_cluster0;
static volatile u_short *cache_size; 
static volatile u_char speculate=0;

///
/// Media data streaming thread. Uses double buffered speculative reads of multiple clusters to 
/// Overlap streaming from DLNA server and ATAOE client. Needs 2x network bandwidth. 
///
static void *StreamLoop (void* arg)
{	
	off_t off;
	struct fuse_file_info fi;
	struct DIRENT *fi_current=NULL;
	u_int spec_cluster;
	u_char active_cache;
	u_char *ocache;
	u_int *ocached_cluster;
	u_short *ocache_size;

	active_cache=0;
	cache=cache0;
	ocache=cache1;
	cached_cluster=&cached_cluster0;
	ocached_cluster=&cached_cluster1;
	cache_size=&cache_size0;
	ocache_size=&cache_size1;	
	spec_cluster = *ocached_cluster = 0x0FFFFFFFL;

	for(;;)
	{
		// wait for a cluster read request
		ithread_mutex_lock(&the_mutex);
		while (fi_req == NULL)
		      pthread_cond_wait(&condc, &the_mutex);

		// see if its loaded
		if(fi_req != fi_current)
		{

		 if(fi_current!=NULL)
		 {
			// close current access (not so efficient DJMOUNT!)
			ithread_mutex_lock(&fileop_mutex);
				op->release(fi_current->full_name, &fi);
		 	ithread_mutex_unlock(&fileop_mutex);

			fi_current=NULL;
		 }
		
		ithread_mutex_lock(&fileop_mutex);

		 // open the new access
		 if(!op->open(fi_req->full_name, &fi))
		 {
			FileBuffer_SetSize((struct FileBuffer *)fi.fh, fi_req->length);
		 	
			fi_current=fi_req;
			
		 }
		 else
			printf("StreamLoop: ERROR on open of %s\n",fi_req->full_name);	

	 	ithread_mutex_unlock(&fileop_mutex);

		}

		// see if the right file is open
		if(fi_current==fi_req)
		{

			// lock the cache memory
			ithread_mutex_lock(&cache_mem);

			// yes, see if the right cluster is loaded into the active cache
			if((fi_cluster < *cached_cluster) || (fi_cluster >= (*cached_cluster+*cache_size)))
			{
				// no, see if the right cluster is loaded into the other cache
				if((fi_cluster < *ocached_cluster) || (fi_cluster >= (*ocached_cluster+*ocache_size)))
				{
					// no, load the clusters into the active cache
					off = fi_cluster - fi_current->start_cluster;
					off *= BYTES_PER_CLUSTER;
			
					// pick the cache size based on if we're speculating or not
					if(speculate)
						*cache_size=DEFAULT_CACHE_SIZE;
					else
						*cache_size=1;
//#ifdef DEBUG
				printf("StreamLoop: %s offset=%lu len=%u\n", fi_current->full_name, (unsigned long)off,(unsigned int)BYTES_PER_CLUSTER*(*cache_size));
//#endif
	

					ithread_mutex_lock(&fileop_mutex);

					// main cluster read
					if(op->read((char *)fi_current->full_name, (char *)cache, (unsigned int)BYTES_PER_CLUSTER*(*cache_size), off, &fi) <= 0)
					{
						printf("StreamLoop: Read Failed %s ...Closing\n",fi_current->full_name);
						op->release(fi_current->full_name, &fi);
						fi_current=NULL;
					}	
					else
						*cached_cluster=fi_cluster;


				 	ithread_mutex_unlock(&fileop_mutex);

				}
				else
				{
				
					// cluster found in other cache (speculative hit), swap active over
					if(active_cache)
					{
						active_cache=0;
						cache=cache0;
						ocache=cache1;
						cached_cluster=&cached_cluster0;
						ocached_cluster=&cached_cluster1;
						cache_size=&cache_size0;
						ocache_size=&cache_size1;
					}
					else
					{
						active_cache=1;
						cache=cache1;
						ocache=cache0;
						cached_cluster=&cached_cluster1;
						ocached_cluster=&cached_cluster0;
						cache_size=&cache_size1;
						ocache_size=&cache_size0;
					}
					
				}

			}

			// predict the next cluster group based on the current cache size
			spec_cluster=*cached_cluster+(*cache_size);

			// unlock the cache memory
			ithread_mutex_unlock(&cache_mem);
		}

		fi_req=NULL;				// null out request
  		ithread_cond_signal(&condp);		// wake up requestor
    		ithread_mutex_unlock(&the_mutex);	// release request buffer
		

		// Perform a speculative read-ahead based on the current request
		// This is done to reduce the read-response-cycle latency of ATAOE
		// unfortunately its a bit TOO simple and doesn't have a window like TCP
		if((spec_cluster < 0x0FFFFFFFL) && (fi_current!=NULL) && speculate)
		{
			if(*ocached_cluster != spec_cluster)
			{
				// calculate byte offset into file
				*ocache_size = DEFAULT_CACHE_SIZE;
				off = spec_cluster - fi_current->start_cluster;
				off *= BYTES_PER_CLUSTER;
				if(off + ((unsigned)(*ocache_size)*BYTES_PER_CLUSTER) < fi_current->length )
				{

//#ifdef DEBUG
				printf("StreamLoop: Speculative read of clusters @ %u active %u\n", (unsigned)spec_cluster, active_cache);
//#endif

			 	ithread_mutex_lock(&fileop_mutex);

				// and read it
				if(op->read((char *)fi_current->full_name, (char *)ocache, (unsigned int)BYTES_PER_CLUSTER*(*ocache_size), off, &fi) > 0)
				{
					*ocached_cluster = spec_cluster;
				}			
				else
					printf("StreamLoop: ERROR on read\n");

			 	ithread_mutex_unlock(&fileop_mutex);
				}

			}
		} 



	}
	return NULL;
}

/// 
/// Main file render function based on its DLNA information and emulated cluster position
///
static u_char RenderFile(struct DIRENT *p, u_int cluster, u_char offset, u_char *sector)
{
	u_char rc=1;
	static u_int last_cluster=0xFFFFFFFFL;
	static u_char run_length=0;

#ifdef DEBUG
	printf("RenderFile: %s (%u,%u)\n", p->full_name, cluster, offset);
#endif

	// lock the cache memory
	ithread_mutex_lock(&cache_mem);

	if(!offset)
	{
		// detect streaming and start performing speculative reads to speed things up
		if((last_cluster+1) == cluster)
		{
			if(run_length == 10)
				speculate=1;
			else
				run_length++;
		}
		else // random accessing, turn off speculating
		{
			run_length=0;
			speculate=0;  
		}

		last_cluster=cluster;
	}

	// see if the cluster is already cached
	if((cluster < *cached_cluster) || (cluster >= (*cached_cluster+(*cache_size))))
	{
		// no, unlock the cache so the stream can write to it
		ithread_mutex_unlock(&cache_mem);	

   		ithread_mutex_lock(&the_mutex);

		// set up the request
		fi_req = p;
		fi_cluster = cluster;

		// wake up stream task
		ithread_cond_signal(&condc);
  		ithread_mutex_unlock(&the_mutex);		

		// wait on response
   		ithread_mutex_lock(&the_mutex);
		while(fi_req != NULL)
			ithread_cond_wait(&condp, &the_mutex);
	  	ithread_mutex_unlock(&the_mutex);		
	
		// lock the cache memory again
		ithread_mutex_lock(&cache_mem);
	}

	// see if the cluster is available for reading
	if((cluster >= *cached_cluster) && (cluster < (*cached_cluster+(*cache_size))))
	{
		// copy it from the cache
		memcpy(sector, &cache[(cluster-*cached_cluster)*BYTES_PER_CLUSTER+(unsigned)offset*SECTOR_SIZE], SECTOR_SIZE);
		rc=0;
	}

	// unlock the memory
	ithread_mutex_unlock(&cache_mem);

	return rc;
}

///
/// Main high-level emulated cluster rendering algorithm
///
static void RenderCluster(u_int cluster, u_char offset, u_char *sector)
{
	static struct DIRENT *p;
	static u_int last_start_cluster=0,last_end_cluster=0;

#ifdef DEBUG
	printf("Cluster %u offset %u\n",cluster,offset);
#endif

	// speed up as we typically sit on the same big file (unless its a directory)
	if(cluster < last_start_cluster || cluster > last_end_cluster)
	{
		p=list;
		while(p!=NULL)
		{
			if(cluster >= p->start_cluster && cluster <= p->end_cluster)
				break;
			p = p->next;
		}

		if(p!=NULL)
		{
			last_start_cluster=p->start_cluster;
			last_end_cluster=p->end_cluster;
		}
		else
		{
			last_start_cluster=0;
			last_end_cluster=0;
		}

	}

	if(p!=NULL)
	{
		if(p->type == 4)
			RenderDir(p, cluster, offset, sector);
		else
			RenderFile(p, cluster, offset, sector);
	}
	

}

///
/// Very 'high' level (depending on your perspective ;) sector rendering algorithm
/// 
/// This renders a single 512 byte sector of an emulated FAT32 200GB LBA disk drive
/// which is actually an interface to DLNA media server using DJMOUNT/UPNP 
///
u_char ReadSector(u_int lba, u_char *sector)
{
	memset(sector,0,512);

	switch(lba)
	{
		case 0:		// root sector
				RenderMBR(sector);
				break;

		case 1:		// file information sector
				RenderFIS(sector);
				break;

		case HIDDEN:	// boot sector
		case HIDDEN+6:	// backup boot sector
				RenderBoot(sector);
				break;

		default:

				// decode FAT accesses
				if(lba >= FAT_START && lba < FAT_START+FAT_SIZE*FAT_COPIES)
				{
					lba -= FAT_START;

					// wrap into single fat table
					while(lba > FAT_SIZE)
						lba -= FAT_SIZE;

					RenderFAT(lba,sector);
				}
				else
				{
					if(lba >= CLUSTER_START)
					{
						RenderCluster(((lba - CLUSTER_START) >> CLUSTER_SHIFT)+2, (lba-CLUSTER_START) & (CLUSTER_SIZE-1), sector);
					}
					//else
					//printf("Read sector %u\n",lba);
				}


				break;

	}

	return 0;
}

#ifdef DEBUG

/// Some debugging code for ATAOE 

static void DumpAtaHdr(char *title, AtaHdr *p)
{
  printf("[%s]:\nDEST %02X:%02X:%02X:%02X:%02X:%02X\r\n", title,
   				(int)p->dst_mac[0],(int)p->dst_mac[1],(int)p->dst_mac[2],(int)p->dst_mac[3],(int)p->dst_mac[4],(int)p->dst_mac[5]);

  printf("SRC %02X:%02X:%02X:%02X:%02X:%02X\r\n",
   				(int)p->src_mac[0],(int)p->src_mac[1],(int)p->src_mac[2],(int)p->src_mac[3],(int)p->src_mac[4],(int)p->src_mac[5]);

	printf("FLAGS %x\r\nMAJOR %u\r\nMINOR %u\r\nCMD %x\r\n",
			(int)p->flags,htons(p->major),(int)p->minor,(int)p->cmd);

}

static void DumpATAIssue(AtaIssue *p)
{
   	   DumpAtaHdr("Issue",&p->header);

	    printf("ATA CMD %X\r\n", (int)p->acmd);
		printf("SECTORS %u\r\n", (int)p->sectors);
		printf("LBA %02X:%02X:%02X:%02X:%02X:%02X\r\n",
				(int)p->lba0,(int)p->lba1,(int)p->lba2,(int)p->lba3,(int)p->lba4,(int)p->lba5);


}

static void DumpATAConfig(AtaConfig *p)
{
   	   DumpAtaHdr("Config", &p->header);

	   printf("Max Queue Length %u\r\n", htons(p->buffer_count));
	   printf("Firmware Version %u\r\n", htons(p->firmware_version));
 	   printf("Max Sectors %u\r\n",(int)p->sectors);
	   printf("AOE Protocol %u\n\r",(int)((p->aoe_ccmd>>4)&15));
	   printf("CCMD %u\r\n",(int)(p->aoe_ccmd&15));
	   printf("String length %u\r\n",htons(p->length));


}

static void DumpATAMacMask( AtaMACMask *p)
{
   	   DumpAtaHdr("MacMask",&p->header);

}

static void DumpATAReserveRelease( AtaReserveRelease *p)
{
   	   DumpAtaHdr("ReserveRelease",&p->header);

}

#endif

///
/// Respond to ATA command from ATAOE interface. Only supports READ SECTOR 
/// (its enuff for a simple USB Mass Storage Device like a TV) 
///
static u_char ATAIssue(AtaIssue *req)
{
	static AtaIssue AtaResp;
	u_int lba;
	u_short len;

#ifdef DEBUG
	DumpATAIssue(req);
#endif

	if(req->acmd == 0x20)
	{
		lba = req->lba3 & 0xF;
		lba <<= 8;
		lba |= req->lba2;
		lba <<= 8;
		lba |= req->lba1;
		lba <<= 8;
		lba |= req->lba0;


		AtaResp.header.msg_type = htons(AOE_TYPE);
		AtaResp.header.flags = 0x18;
		AtaResp.header.error = 0;
    		AtaResp.header.major = htons(MY_MAJOR);
		AtaResp.header.minor = htons(MY_MINOR);
		AtaResp.header.cmd = AOE_CMD_ATA;

  		AtaResp.header.dst_mac[0] = req->header.src_mac[0];
  		AtaResp.header.dst_mac[1] = req->header.src_mac[1];
		AtaResp.header.dst_mac[2] = req->header.src_mac[2];
		AtaResp.header.dst_mac[3] = req->header.src_mac[3];
		AtaResp.header.dst_mac[4] = req->header.src_mac[4];
		AtaResp.header.dst_mac[5] = req->header.src_mac[5];

		AtaResp.header.src_mac[0] = src_mac[0];
		AtaResp.header.src_mac[1] = src_mac[1];
		AtaResp.header.src_mac[2] = src_mac[2];
		AtaResp.header.src_mac[3] = src_mac[3];
		AtaResp.header.src_mac[4] = src_mac[4];
		AtaResp.header.src_mac[5] = src_mac[5];

		AtaResp.header.tag = req->header.tag;

		AtaResp.err = 0;

		AtaResp.lba0 = req->lba0;
		AtaResp.lba1 = req->lba1;
		AtaResp.lba2 = req->lba2;
		AtaResp.lba3 = req->lba3;
		AtaResp.lba4 = req->lba4;
		AtaResp.lba5 = req->lba5;
		AtaResp.acmd = req->acmd;
		AtaResp.aflag = req->aflag;
		AtaResp.sectors = req->sectors;

		len = sizeof(AtaResp)-SECTOR_SIZE*2;

		if(req->sectors >= 1)
		{

			if(ReadSector(lba, &AtaResp.dat[0]))
				AtaResp.err |= 4;
			else
			{
				len+=SECTOR_SIZE;

				if(req->sectors >= 2)
				{
					if(ReadSector(lba+1, &AtaResp.dat[SECTOR_SIZE]))
						AtaResp.err |= 4;
					else
						len+=SECTOR_SIZE;
				}
			}
		}

		/* Send down the packet */

		if (write(sock, (void *)&AtaResp, len) == -1)
		{
			perror("SendAtaResp: write") ;
			return 0;
		}
		else
			return 1;


	}
	else
		return 0;
}

/// 
/// Respond to configuration request from ATAOE client
///
static u_char SendConfigAck(AtaConfig *req)
{

	AtaConfig ConfigResp;

#ifdef DEBUG
	DumpATAConfig(req);
#endif

	ConfigResp.header.msg_type = htons(AOE_TYPE);
	ConfigResp.header.flags = 0x18;
	ConfigResp.header.error = 0;
    	ConfigResp.header.major = htons(MY_MAJOR);
	ConfigResp.header.minor = htons(MY_MINOR);
	ConfigResp.header.cmd = AOE_CMD_CONFIG;

  	ConfigResp.header.dst_mac[0] = req->header.src_mac[0];
  	ConfigResp.header.dst_mac[1] = req->header.src_mac[1];
	ConfigResp.header.dst_mac[2] = req->header.src_mac[2];
	ConfigResp.header.dst_mac[3] = req->header.src_mac[3];
	ConfigResp.header.dst_mac[4] = req->header.src_mac[4];
	ConfigResp.header.dst_mac[5] = req->header.src_mac[5];

	ConfigResp.header.src_mac[0] = src_mac[0];
	ConfigResp.header.src_mac[1] = src_mac[1];
	ConfigResp.header.src_mac[2] = src_mac[2];
	ConfigResp.header.src_mac[3] = src_mac[3];
	ConfigResp.header.src_mac[4] = src_mac[4];
	ConfigResp.header.src_mac[5] = src_mac[5];

	ConfigResp.header.tag = req->header.tag;

	// Maximum # of queued commands
	ConfigResp.buffer_count = htons(1);
	ConfigResp.firmware_version= 0;

	ConfigResp.sectors=0;	// actually means 2 sectors max
	ConfigResp.aoe_ccmd=0x10;
	ConfigResp.length=0; 	// no config string response

	/* Send down the packet */

	if (write(sock, (void *)&ConfigResp, sizeof(ConfigResp)) == -1)
	{
		perror("SendConfigAck: write") ;
		return 0;
	}
	else
		return 1;

}

/*

Main entry point into the TVSERVER processes.

This is actually looking like a FUSE file system driver from the point of view of DJMOUNT
But we are confusing DJMOUNT and hijacking its API to make DLNA look like a file system
(Thus concealing all that UPNP SOAP SSDP XML stuff)

*/

int fuse_main_real_compat22(int argc, char **argv, const struct fuse_operations_compat22 *_op, size_t op_size)
{
	int rc,len;
	static AtaIssue aATA;
	struct DIRENT *p;
	ithread_t stream_thread;

	op = _op;

	// Open the ATAOE socket
	if((rc=OpenNetwork("eth0"))!=0)
		return rc;

	printf("Waiting on Media Server Announcements\n");

	ithread_mutex_init(&fileop_mutex,NULL);

	// Could be better, should check and see if any announceme themselves
	sleep(5);

	printf("Scanning Network Tree\n");

	// Create the root entry by scanning the bootblock
	if(!ReadSector(HIDDEN, aATA.dat))
	{
		p=list;

		// Scan all directories, adding as we go
		while(p!=NULL)
		{
			RenderDir(p, p->start_cluster, 0, aATA.dat);

			p=p->next;			
		}	
	}

	// Optimise the root directory location so the tree depth is minimised; simple USB media players don't like too many directory levels
	if(argc > 1 && argv[1][0]!='-')
	{
	 p=FindDirectory(argv[1]);
	 if(p!=NULL)
	 {
		printf("Alternative root found %s @ %u\n", p->full_name, p->start_cluster);

		if(p->start_cluster < 256)
		{
			printf("Optimising root dir\n");
			alternative_root_cluster=(u_char)p->start_cluster;
		}
	 }
	 else
		printf("Alternative root %s not found\n",argv[1]);
	}

	printf("Scanning Complete. Highest cluster %u disk size %u kB\n",next_cluster,next_cluster*33);

 	// start a read streaming data thread
	ithread_mutex_init(&cache_mem,NULL);
	ithread_mutex_init(&the_mutex,NULL);
 	ithread_cond_init(&condp,NULL);
 	ithread_cond_init(&condc,NULL);

 	rc = ithread_create (&stream_thread, NULL, StreamLoop, NULL);
  
	printf("Listening on %02x.%02x.%02x.%02x.%02x.%02x\n",src_mac[0],src_mac[1],src_mac[2],src_mac[3],src_mac[4],src_mac[5]);

	// Main ATAOE server processing 
	while(1)
	{
		// Get a request
		if ((len=read(sock, (void *)&aATA, sizeof(aATA))) == -1)
		{
				perror("TVserver:read") ;
				break;
		}

#ifdef DEBUG
		printf("PACKET Len:%d Type %x\n", len, htons(aATA.header.msg_type));
#endif

		// And process it

							if(htons(aATA.header.msg_type) == AOE_TYPE)
							{
							    switch(aATA.header.cmd)
								{
									default: break;

									case AOE_CMD_ATA:
										ATAIssue(&aATA);
										break;
									case AOE_CMD_CONFIG:
										SendConfigAck((AtaConfig *)&aATA);
										break;
#ifdef DEBUG
									case AOE_CMD_MAC_MASK:
										DumpATAMacMask((AtaMACMask *)&aATA);
										break;
									case AOE_CMD_RESERVE_RELEASE:
										DumpATAReserveRelease((AtaReserveRelease *)&aATA);
										break;
#endif
								}
						}
	}

	printf("Shutting down\n\n");

	close(sock);

	ithread_cancel(stream_thread);
	ithread_mutex_destroy(&cache_mem);
	ithread_mutex_destroy(&the_mutex);
	ithread_mutex_destroy(&fileop_mutex);

	return 0;

}

