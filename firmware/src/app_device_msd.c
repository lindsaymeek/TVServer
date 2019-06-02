/*

 WZ1239 TVSERVER USB ADAPTOR
 
 MASS STORAGE DEVICE to ATAOE CLIENT converter using WIZ550io / W5500 Ethernet

 */


#include <system.h>
#include <system_config.h>

#include <stdio.h>
#include <stdarg.h>
#include <usb/usb.h>
#include <usb/usb_device_hid.h>
#include <usb/usb_device_msd.h>

#include "ethernet/socket.h"
#include "ataoe.h"

static FILEIO_MEDIA_INFORMATION mediaInformation;

/// Mac address of ATAOE client and server
static uint8_t client_mac[6],server_mac[6];
/// Server disk major ID
static uint16_t server_major=0xFFFFu;
/// Server disk minor ID
static uint8_t server_minor=0xFF;

/// Request and response buffers
static AtaOE ataoe,ataoe,ataoe_rd;

/// Timers used for timing out read and config requests
static uint16_t config_timeout,read_timeout;
/// Flags indicating that the two types of requests are active
static bool config_active,read_active;
/// Retry counter
static uint8_t retries;

/// ms to wait for a response to a config request (before retrying)
#define CONFIG_TIMEOUT 1000
// ms to wait for a response to a read sector request (before retrying)
#define READ_TIMEOUT 5000

///
/// swap LSB/MSB function taking advantage of micro instruction
///
static inline uint16_t swap(uint16_t t)
{
    asm ("swap %0" : "+r"(t));
    
    return t; 
}

///
/// Optimised W5500 RAW Ethernet frame sendto
///
static void inline sendtoraw(uint8_t * buf, uint16_t len)
{
   uint16_t freesize ;

    // block waiting for a buffer .. shouldnt' happen normally as ataoe is highly synchronous
   while(1)
   {
      freesize = getSn_TX_FSR(AOE_SOCKET);
      if(getSn_SR(AOE_SOCKET) == SOCK_CLOSED) return ;
      if(len <= freesize) break;
   };

   wiz_send_data(AOE_SOCKET, buf, len);

  setSn_CR(AOE_SOCKET,Sn_CR_SEND);
  /* wait to process the command... */
  while(getSn_CR(AOE_SOCKET));
}

/// ATAOE request tag
static uint32_t tag=0;

extern uint16_t ReadTicker(void);

/// Telnet server port used during debugging
#define DBG_SOCKET 1

///
/// Debug accepts telnet session
///
void debug(const char *format,...)
{
 va_list  args;
 char  buf[64];

 va_start(args, format);

 if(getSn_SR(DBG_SOCKET)==SOCK_CLOSED)
 {
     close(DBG_SOCKET);

     if(DBG_SOCKET==socket(DBG_SOCKET,Sn_MR_TCP,23,0))
     {
         listen(DBG_SOCKET);
     }

 }

 if(getSn_SR(DBG_SOCKET)==SOCK_ESTABLISHED)
 {
    vsprintf(buf, format, args);
    send(DBG_SOCKET, buf, strlen(buf));
 }

 va_end(args);                /* Clean up. Do NOT omit */
    
}

uint32_t cache_lba=0xFFFFFFFFLu;
uint32_t cache_addr;
uint32_t read_tag=0xFFFFFFFFLu,read_lba=0xFFFFFFFFLu;
uint32_t last_lba;

///
/// main entry point into ATAOE client driver, used by the USB mass storage device
///
/// lba is the logical block address to read
/// sector_buffer is a 512 byte array for storing the data
///
/// returns true if succeeded, false if not
///
bool read_net(uint32_t lba,uint8_t *sector_buffer)
{
    uint8_t  head[2];
    uint32_t tip ;
    uint16_t pack_len,remain_len;
    bool ok=false;


  //  if(lba != last_lba)
  //  {
  //      last_lba=lba;
  //      debug("Read request %lx\n\r",lba);
  //  }
  //

    // is the block already cached (inside the W5500 memory)
    if(cache_lba == lba)
    {
        LED=1;

        // yes, copy it out and we're done
        WIZCHIP_READ_BUF(cache_addr, sector_buffer, SECTOR_SIZE);

        LED=0;
        
      //  debug("reused cached sector %lx\n\r",cache_lba);

        return true;
    }

    // discard cached sector if not used immediately as it could potentially be overwritten by incoming packets
    cache_lba = 0xFFFFFFFFLu;

    // (re)open raw socket if it closed
    if(getSn_SR(AOE_SOCKET)==SOCK_CLOSED)
    {
            close(AOE_SOCKET);  // close the SOCKET

            socket(AOE_SOCKET,Sn_MR_MACRAW,0,SF_ETHER_OWN|SF_IPv6_BLOCK|SF_MULTI_BLOCK);  
            // open the SOCKET with MACRAW mode, ignore IPV6 and multicasts

            debug("Open AOE socket\n\r");

            getSHAR(client_mac);

            return false;
    }

                // Any data received?
                pack_len = getSn_RX_RSR(AOE_SOCKET);

                // Yes, process it
                if(pack_len)
                {
                   // Packet header = length.W
                   wiz_recv_data(AOE_SOCKET, head, 2);
   		   setSn_CR(AOE_SOCKET,Sn_CR_RECV);
                   remain_len = head[0];
   		   remain_len <<= 8;
                   remain_len |= head[1];
                   remain_len -= 2;
                   while(getSn_CR(AOE_SOCKET));

                   if(remain_len > 1514)
                   {
                       debug("Fatal buffer error len = %u",(int)remain_len);
                       close(AOE_SOCKET);
                       return false;
                   }
                   //debug("Pack len %u Remain len %u\n\r",pack_len,remain_len);

#ifdef DEBUG_DATA
                   j=0;
                   for(i=0;i!=remain_len;i++)
                   {
                       
                   wiz_recv_data(AOE_SOCKET, head, 1);
   		   setSn_CR(AOE_SOCKET,Sn_CR_RECV);
   		   while(getSn_CR(AOE_SOCKET));
                   
                       debug("%02x ",(int)head[0]);
                       if(++j > 16)
                       {
                           j=0;
                           debug("\n\r");
                       }
                   }
#else

                   // See if we have a valid raw Ethernet packet
                   if(remain_len >= sizeof(ataoe.header))
                   {
                    // Yes, read the Ethernet header from the W5500
                    wiz_recv_data(AOE_SOCKET,(void *)&ataoe.header,sizeof(ataoe.header));
                    setSn_CR(AOE_SOCKET,Sn_CR_RECV);
                    remain_len -= sizeof(ataoe.header);
                    while(getSn_CR(AOE_SOCKET)) ;

                    // See if its an ATAOE packet
                    if((swap(ataoe.header.msg_type) == AOE_TYPE) && ((ataoe.header.flags & 0x18)==0x18))
                    {
                    //debug("ATAOE cmd %d\n\r",(int)ataoe.header.cmd);

                    // Yes, process the type of ATAOE packet
                    if((ataoe.header.cmd == AOE_CMD_CONFIG) )
                    {
                        debug("ATAOE config response\n\r");

                        // Response to a config request
                        if(remain_len >= sizeof(ataoe.body.cfg))
                        {
                            // Read body
                            wiz_recv_data(AOE_SOCKET,(void *)&ataoe.body.cfg,sizeof(ataoe.body.cfg));
                            setSn_CR(AOE_SOCKET,Sn_CR_RECV);
                            remain_len -= sizeof(ataoe.body.cfg);
                            while(getSn_CR(AOE_SOCKET)) ;

                            debug("ATAOE major %u minor %u\n\r",(int)ataoe.header.major,(int)ataoe.header.minor);

                            // Store server major and minor device address as well as the server MAC address
                            server_major = ataoe.header.major;
                            server_minor = ataoe.header.minor;
                            memcpy(server_mac, ataoe.header.src_mac,6);

                            // set up constant part of read request structure to optimise read requests
                            ataoe_rd.header.msg_type = swap(AOE_TYPE);
                            ataoe_rd.header.flags = 0x10;
                            ataoe_rd.header.error = 0;
                            memcpy(ataoe_rd.header.src_mac, client_mac, 6);

                            ataoe_rd.header.major = server_major;
                            ataoe_rd.header.minor = server_minor;
                            ataoe_rd.header.cmd = AOE_CMD_ATA;
                            memcpy(ataoe_rd.header.dst_mac, server_mac, 6);

                            ataoe_rd.body.iss.lba4 = 0;
                            ataoe_rd.body.iss.lba5 = 0;
                            ataoe_rd.body.iss.err  = 0;
                            ataoe_rd.body.iss.acmd = 0x20; // read

                            ataoe_rd.body.iss.aflag = 0x00;
                            ataoe_rd.body.iss.sectors = 2; 

                        }
                    }
                    // ATAOE response to a read request
                    else if((ataoe.header.cmd == AOE_CMD_ATA))
                    {
                         //debug("ATAOE ATA response major %u minor %u\n\r",(int)ataoe.header.major,(int)ataoe.header.minor);

                        // make sure its for the correct device
                        if((ataoe.header.major == server_major) && (ataoe.header.minor == server_minor))
                        {
                            // and there is enough data in the body
                            if(remain_len >= sizeof(ataoe.body.iss))
                            {
                                LED=1;

                                // read in the body
                                wiz_recv_data(AOE_SOCKET,(void *)&ataoe.body.iss,sizeof(ataoe.body.iss));
                                setSn_CR(AOE_SOCKET,Sn_CR_RECV);
                                remain_len -= sizeof(ataoe.body.iss);
                                read_active=false;
                                while(getSn_CR(AOE_SOCKET)) ;

                                // see if there was a read error
                                if(ataoe.body.iss.err==0)
                                {
                                    // see if its for the block we are interested in
                                    if(read_lba != lba)
                                    {
                                     // no, re-issue the read request then (read-ahead sector came in)
                                     read_lba=lba;
                                     read_timeout=ReadTicker();

                                     ataoe_rd.header.tag=tag;

                                     ataoe_rd.body.iss.lba0 = (uint8_t)read_lba;
                                     ataoe_rd.body.iss.lba1 = (uint8_t)(read_lba >> 8);
                                     ataoe_rd.body.iss.lba2 = (uint8_t)(read_lba >> 16);
                                     ataoe_rd.body.iss.lba3 = ((uint8_t)(read_lba >> 24) & 0xF) | 0x40;
                                     
                                     sendtoraw((uint8_t*)&ataoe_rd,sizeof(ataoe.header)+sizeof(ataoe.body.iss));

                                     read_tag=tag++;
                                     read_active=true;

                                    // debug("Re-Read lba %lx tag %lx\n\r",read_lba,read_tag);

                                    }

                                    // make sure it matches the read request
                                    if(ataoe.header.tag == read_tag)
                                    {
                                      //  debug("Accepting tag %lx\n\r",read_tag);

                                     // is there sector data?
                                     if((remain_len >= SECTOR_SIZE) && (sector_buffer!=NULL))
                                     {
                                        // yes, read it in then
                                        wiz_recv_data(AOE_SOCKET,sector_buffer,SECTOR_SIZE);
                                        setSn_CR(AOE_SOCKET,Sn_CR_RECV);
                                        remain_len -= SECTOR_SIZE;
                                        retries=0;
                                        ok=true;
                                        while(getSn_CR(AOE_SOCKET)) ;


                                       // debug("ATAOE read sector ok\n\r");

                                     }
                                     
                                     // cache second sector RX buffer address (but leave it inside the W5500 memory to reduce overhead)
                                     if(remain_len >= SECTOR_SIZE)
                                     {
                                         // remember RX address of sector data
                                         cache_addr = getSn_RX_RD(AOE_SOCKET);
                                         cache_addr <<= 8;
                                         cache_addr += WIZCHIP_RXBUF_BLOCK(AOE_SOCKET) << 3;
                                         cache_lba = read_lba+1;
                                       
                                       // debug("ATAOE cache sector %lx ok\n\r", cache_lba);

                                     }
                                    
                                     LED=0;

                                     // speculative read-ahead of next two sectors (keep the server busy whilst we're reading)

                                     read_lba+=2;
                                     read_timeout=ReadTicker();

                                     ataoe_rd.header.tag=tag;

                                     ataoe_rd.body.iss.lba0 = (uint8_t)read_lba;
                                     ataoe_rd.body.iss.lba1 = (uint8_t)(read_lba >> 8);
                                     ataoe_rd.body.iss.lba2 = (uint8_t)(read_lba >> 16);
                                     ataoe_rd.body.iss.lba3 = ((uint8_t)(read_lba >> 24) & 0xF) | 0x40;
                                    
                                     sendtoraw((uint8_t*)&ataoe_rd,sizeof(ataoe.header)+sizeof(ataoe.body.iss));

                                     read_tag=tag++;
                                     read_active=true;

                                     //debug("Read-ahead lba %lx tag %lx\n\r",read_lba,read_tag);

                                    }
                                    //else
                                    //    debug("Discarding read tag %lx\n\r",ataoe.header.tag);
                                }
                                else
                                    debug("ATAOE error code %x\n\r",(int)ataoe.body.iss.err);

                            }
                        }
                     }
                    }
                   }
                    // See if there is data remaining in the packet
                    if(remain_len > 0)
                    {
                            // yes, discard it then so the buffer pointer always points to the next packet

                            //debug("Discard %u\n\r",remain_len);
                            wiz_recv_ignore(AOE_SOCKET, remain_len);
                            setSn_CR(AOE_SOCKET,Sn_CR_RECV);
                            while(getSn_CR(AOE_SOCKET)) ;
                   }
#endif

                }
            else // no data received
            {

                // look for the server not detected
                if(server_major==0xFFFFu && server_minor==0xFF)
                {
                    // broadcast config requests to Ethernet if we're not configured every so often
                    if(!config_active)
                    {
                        debug("TX config len %d tag %lx\n\r",(int)(sizeof(ataoe.header)+sizeof(ataoe.body)),tag);

                        config_timeout=ReadTicker();
                        config_active=1;

                        ataoe.header.msg_type = swap(AOE_TYPE);
                        ataoe.header.flags = 0x10;
                        ataoe.header.error = 0;
                        ataoe.header.tag=tag++;

                        memcpy(ataoe.header.src_mac, client_mac, 6);

                        ataoe.header.major = 0xFFFFu;
                        ataoe.header.minor = 0xFF;
                        ataoe.header.cmd = AOE_CMD_CONFIG;

                        memset(ataoe.header.dst_mac, 0xFF, 6);

                        ataoe.body.cfg.aoe_ccmd = ATAOE_CCMD_READ;
                        ataoe.body.cfg.buffer_count = 0;
                        ataoe.body.cfg.firmware_version= 0;
                        ataoe.body.cfg.sectors=0;
                        ataoe.body.cfg.length=0;
                      
                        sendtoraw((uint8_t*)&ataoe,sizeof(ataoe.header)+sizeof(ataoe.body));
                    }
                    else
                    {
                        if((ReadTicker() - config_timeout) >= CONFIG_TIMEOUT)
                        {
        
                            config_timeout=ReadTicker();

                            if(server_major==0xFFFFu && server_minor==0xFF)
                                config_active=0;
                        }
                    }

                }
                else // ATAOE server is found
                {
                   

                    //debug("TX read lba %lx tag %lx\n\r",lba,tag);

                   // process new read requests or read retries
                   if(!read_active) 
                   {
                            read_timeout=ReadTicker();
                           
                            ataoe_rd.header.tag=tag;

                            ataoe_rd.body.iss.lba0 = (uint8_t)lba;
                            ataoe_rd.body.iss.lba1 = (uint8_t)(lba >> 8);
                            ataoe_rd.body.iss.lba2 = (uint8_t)(lba >> 16);
                            ataoe_rd.body.iss.lba3 = ((uint8_t)(lba >> 24) & 0xF) | 0x40;
                           
                            sendtoraw((uint8_t*)&ataoe_rd,sizeof(ataoe.header)+sizeof(ataoe.body.iss));
                            
                            read_tag=tag++;
                            read_lba=lba;
                            read_active=true;
                            //debug("Read %lx tag %lx\n\r",read_lba,read_tag);


                    }
                    else
                    {

                        if(read_active)
                        {
                            
                            if((ReadTicker()-read_timeout) >= READ_TIMEOUT)
                            {
                                 debug("Read timeout - retry %d\n\r",(int)retries);
                                
                                if(++retries > 5)
                                {
                                        server_major=0xFFFFu;
                                        server_minor=0xFF;
                                }
                                read_active=0;
                            }
                          
                       }

                        
                    }
                    
                }
            }

    

  return ok;
}

///
/// Mass storage device API
///

/// This returns TRUE when the ATAOE server is detected
static uint8_t FILEIO_NET_MediaDetect(void* config)
{
    if(server_major != 0xFFFFu && server_minor != 0xFF)
         return true;
    else
    {
        read_net(0,NULL);
        return false;
    }

}//end MediaDetect

/// The size of a sector
static uint16_t FILEIO_NET_SectorSizeRead(void* config)
{
    return FILEIO_CONFIG_MEDIA_SECTOR_SIZE;
}

/// The capacity of the disk. Just return a huge number.
static uint32_t FILEIO_NET_CapacityRead(void* config)
{
    //The SCSI READ_CAPACITY command wants to know the last valid LBA address
    //that the host is allowed to read or write to.  Since LBA addresses start
    //at and include 0, a return value of 0 from this function would mean the
    //host is allowed to read and write the LBA == 0x00000000, which would be
    //1 sector worth of capacity.
    //Therefore, the last valid LBA that the host may access is
    //DRV_FILEIO_INTERNAL_FLASH_TOTAL_DISK_SIZE - 1.

    return 0x0FFFFFFFLu;
}

static FILEIO_MEDIA_INFORMATION * FILEIO_NET_MediaInitialize(void* config)
{
    mediaInformation.validityFlags.bits.sectorSize = true;
    mediaInformation.sectorSize = FILEIO_CONFIG_MEDIA_SECTOR_SIZE;

    mediaInformation.errorCode = MEDIA_NO_ERROR;
    return &mediaInformation;
}//end MediaInitialize

/******************************************************************************
 * Function:        uint8_t SectorRead(uint32_t sector_addr, uint8_t *buffer)
 *
 * PreCondition:    None
 *
 * Input:           sector_addr - Sector address, each sector contains 512-byte
 *                  buffer      - Buffer where data will be stored, see
 *                                'ram_acs.h' for 'block' definition.
 *                                'Block' is dependent on whether internal or
 *                                external memory is used
 *
 * Output:          Returns true if read successful, false otherwise
 *
 * Side Effects:    None
 *
 * Overview:        SectorRead reads 512 bytes of data from the card starting
 *                  at the sector address specified by sector_addr and stores
 *                  them in the location pointed to by 'buffer'.
 *
 * Note:            The device expects the address field in the command packet
 *                  to be byte address. Therefore the sector_addr must first
 *                  be converted to byte address. This is accomplished by
 *                  shifting the address left 9 times.
 *****************************************************************************/
static uint8_t FILEIO_NET_SectorRead(void* config, uint32_t sector_addr, uint8_t* buffer)
{
    // The sector read will fail if the ATAOE server is not detected
    if(server_major == 0xFFFFu && server_minor == 0xFF)
            return false;

    // block inside this function until the ATAOE server has returned data
    while(!read_net(sector_addr, buffer))
        ClrWdt();

     return true;
 }

///
/// Writing is not needed
///
static uint8_t FILEIO_NET_SectorWrite(void* config, uint32_t sector_addr, uint8_t* buffer, uint8_t allowWriteToZero)
{
    return false;
}

static uint8_t FILEIO_NET_WriteProtectStateGet(void* config)
{
    return true;
}

//The LUN variable definition is critical to the MSD function driver.  This
//  array is a structure of function pointers that are the functions that
//  will take care of each of the physical media.  For each additional LUN
//  that is added to the system, an entry into this array needs to be added
//  so that the stack can know where to find the physical layer functions.
//  In this example the media initialization function is named
//  "MediaInitialize", the read capacity function is named "ReadCapacity",
//  etc.
LUN_FUNCTIONS LUN[MAX_LUN + 1] =
{
    {
        (FILEIO_MEDIA_INFORMATION* (*)(void *))&FILEIO_NET_MediaInitialize,
        (uint32_t (*)(void *))&FILEIO_NET_CapacityRead,
        (uint16_t (*)(void *))&FILEIO_NET_SectorSizeRead,
        (bool  (*)(void *))&FILEIO_NET_MediaDetect,
        (uint8_t  (*)(void *, uint32_t, uint8_t*))&FILEIO_NET_SectorRead,
        (uint8_t  (*)(void *))&FILEIO_NET_WriteProtectStateGet,
        (uint8_t  (*)(void *, uint32_t, uint8_t *, uint8_t))&FILEIO_NET_SectorWrite,
        (void *)NULL
    }
};

/* Standard Response to INQUIRY command stored in ROM 	*/
const InquiryResponse inq_resp = {
	0x00,		// peripheral device is connected, direct access block device
	0x80,           // removable
	0x04,	 	// version = 00=> does not conform to any standard, 4=> SPC-2
	0x02,		// response is in format specified by SPC-2
	0x20,		// n-4 = 36-4=32= 0x20
	0x00,		// sccs etc.
	0x00,		// bque=1 and cmdque=0,indicates simple queueing 00 is obsolete,
			// but as in case of other device, we are just using 00
	0x00,		// 00 obsolete, 0x80 for basic task queueing
	{'T','V','S','E','R','V','E','R'
    },
	// this is the T10 assigned Vendor ID
	{'M','a','s','s',' ','S','t','o','r','a','g','e',' ',' ',' ',' '
    },
	{'0','0','0','1'
    }
};


/*********************************************************************
* Function: void APP_DeviceMSDInitialize(void);
*
* Overview: Initializes the Custom HID demo code
*
* PreCondition: None
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceMSDInitialize()
{
    #if (MSD_DATA_IN_EP == MSD_DATA_OUT_EP)
        USBEnableEndpoint(MSD_DATA_IN_EP,USB_IN_ENABLED|USB_OUT_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
    #else
        USBEnableEndpoint(MSD_DATA_IN_EP,USB_IN_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
        USBEnableEndpoint(MSD_DATA_OUT_EP,USB_OUT_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
    #endif

    USBMSDInit();
}

/*********************************************************************
* Function: void APP_DeviceMSDTasks(void);
*
* Overview: Keeps the Custom HID demo running.
*
* PreCondition: The demo should have been initialized and started via
*   the APP_DeviceMSDInitialize() and APP_DeviceMSDStart() demos
*   respectively.
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceMSDTasks()
{
    MSDTasks();
}