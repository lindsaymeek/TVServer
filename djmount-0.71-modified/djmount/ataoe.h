
#ifndef ATAOE_H
#define ATAOE_H

/*

WZ1239 TVSERVER USB ADAPTOR

ATAOE protocol definitions for Linux

*/

/// Size of a disk sector
#define SECTOR_SIZE	512
/// 2^N value
#define SECTOR_SHIFT	9

/// Limits for shelf and slot 
#define MAX_SHELF	0xfffe
#define MAX_SLOT	0xfe

/// Values to use for server disk
#define MY_MAJOR 1
#define MY_MINOR 0

/// Ethernet protocol number for ATAOE
#define AOE_TYPE 0x88a2

/// ATAOE command types (only first two used)
#define AOE_CMD_ATA 0
#define AOE_CMD_CONFIG 1
#define AOE_CMD_MAC_MASK 2
#define AOE_CMD_RESERVE_RELEASE 3

/// General structure of the ATAOE Ethernet Header
typedef struct _AtaHdr
{
 	u_char  dst_mac[ETHER_ADDR_LEN ];	// ff.ff.ff.ff.ff.ff
	u_char  src_mac[ETHER_ADDR_LEN ];
	u_short  msg_type;   	// ATAOE (0x88a2)

	u_char	flags;
	u_char	error;
	u_short	major;
	u_char	minor;
	u_char	cmd;
	u_int	tag;
} AtaHdr;

/// Config command packet

#define ATAOE_CCMD_READ 0
#define ATAOE_CCMD_TEST 1
#define ATAOE_CCMD_TEST_PREFIX 2
#define ATAOE_CCMD_SET 2
#define ATAOE_CCMD_FORCE 3

typedef struct _AtaConfig
{
	AtaHdr  header;
	u_short	buffer_count;
	u_short	firmware_version;
	u_char   sectors;
	u_char	aoe_ccmd;
	u_short	length;

	u_char	str[1];

} AtaConfig;

/// Main ATA command issue

typedef struct _AtaIssue

{
	AtaHdr  header;

	u_char	aflag;
	u_char	err;
	u_char	sectors;
	u_char	acmd;
	u_char	lba0,lba1,lba2,lba3,lba4,lba5;
	u_char	resvd[2];

	u_char	dat[SECTOR_SIZE*2];
} AtaIssue;

/// MAC mask packet (not used)

#define ATAOE_DCMD_ADD 1
#define ATAOE_DCMD_REMOVE 2

typedef struct _AtaDirective
{
	u_char	resvd;
	u_char	dcmd;
	u_char	mac_addr[ETHER_ADDR_LEN];
} AtaDirective;

typedef struct _AtaMACMask
{
	AtaHdr  header;

	u_char	resvd;
	u_char	mcmd;
	u_char	merror;
	u_char	directive_count;

	AtaDirective	directive[1];

} AtaMACMask;

/// Reserve / release a series of mac addresses (not used)

#define ATAOE_RCMD_READ 0
#define ATAOE_RCMD_SET 1
#define ATAOE_RCMD_FORCE 2

typedef struct _AtaReserveRelease
{
	AtaHdr	header;
	u_char	rcmd;
	u_char	nmacs;
	u_char	mac_addr[ETHER_ADDR_LEN];
} AtaReserveRelease;

#endif
