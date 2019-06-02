
#ifndef ATAOE_H
#define ATAOE_H

/*

 WZ1239 TVSERVER USB ADAPTOR
 ATAOE definitions

 */

#include <stdint.h>

/// Socket number to use to ATAOE
#define AOE_SOCKET 0

#define ETHER_ADDR_LEN 6

#define SECTOR_SIZE		512
#define SECTOR_SHIFT		9

#define MAX_SHELF		0xfffe
#define MAX_SLOT		0xfe

/// Ethernet frame type for ATAOE
#define AOE_TYPE                0x88a2

typedef struct _AtaHdr 
{
 	uint8_t     dst_mac[ETHER_ADDR_LEN ];	// ff.ff.ff.ff.ff.ff
	uint8_t     src_mac[ETHER_ADDR_LEN ];
	uint16_t    msg_type;   	// ATAOE (0x88a2)

	uint8_t     flags;
	uint8_t     error;
	uint16_t    major;
	uint8_t     minor;
	uint8_t     cmd;
	uint32_t    tag;
} AtaHdr ;

/// Config command packet

#define ATAOE_CCMD_READ 0
#define ATAOE_CCMD_TEST 1
#define ATAOE_CCMD_TEST_PREFIX 2
#define ATAOE_CCMD_SET 2
#define ATAOE_CCMD_FORCE 3

typedef struct _AtaConfig
{
	uint16_t    buffer_count;
	uint16_t    firmware_version;
	uint8_t     sectors;
	uint8_t	    aoe_ccmd;
	uint16_t    length;
	
} AtaConfig ;

/// Main ATA command issue

typedef struct _AtaIssue 
{
	uint8_t	aflag;
	uint8_t	err;
	uint8_t	sectors;
	uint8_t	acmd;
	uint8_t	lba0,lba1,lba2,lba3,lba4,lba5;
	uint8_t	resvd[2];
       

} AtaIssue ;
   
typedef struct _AtaOE 
{
	AtaHdr      header  __attribute__ ((packed));
        union {
            AtaConfig cfg ;
            AtaIssue  iss  ;
        } body __attribute__ ((packed));
} AtaOE ;

/// MAC mask packet

#define ATAOE_DCMD_ADD 1
#define ATAOE_DCMD_REMOVE 2

typedef struct _AtaDirective
{
	uint8_t	resvd;
	uint8_t	dcmd;
	uint8_t	mac_addr[ETHER_ADDR_LEN];
} AtaDirective;

typedef struct _AtaMACMask
{
	AtaHdr  header;

	uint8_t	resvd;
	uint8_t	mcmd;
	uint8_t	merror;
	uint8_t	directive_count;

	AtaDirective	directive[1];

} AtaMACMask;

/// Reserve / release a series of mac addresses

#define ATAOE_RCMD_READ 0
#define ATAOE_RCMD_SET 1
#define ATAOE_RCMD_FORCE 2

typedef struct _AtaReserveRelease
{
	AtaHdr	header;
	uint8_t	rcmd;
	uint8_t	nmacs;
	uint8_t	mac_addr[ETHER_ADDR_LEN];
} AtaReserveRelease;

#define AOE_CMD_ATA             0
#define AOE_CMD_CONFIG          1
#define AOE_CMD_MAC_MASK        2
#define AOE_CMD_RESERVE_RELEASE 3

#define LBA_SIZE		4
#define AOE_TAG_SIZE		4

#endif
