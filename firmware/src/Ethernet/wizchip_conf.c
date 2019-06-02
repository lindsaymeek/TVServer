//****************************************************************************/ 
//!
//! \file wizchip_conf.c
//! \brief WIZCHIP Config Header File.
//! \version 1.0.0
//! \date 2013/10/21
//! \par  Revision history
//!       <2013/10/21> 1st Release
//! \author MidnightCow
//! \copyright
//!
//! Copyright (c)  2013, WIZnet Co., LTD.
//! All rights reserved.
//! 
//! Redistribution and use in source and binary forms, with or without 
//! modification, are permitted provided that the following conditions 
//! are met: 
//! 
//!     * Redistributions of source code must retain the above copyright 
//! notice, this list of conditions and the following disclaimer. 
//!     * Redistributions in binary form must reproduce the above copyright
//! notice, this list of conditions and the following disclaimer in the
//! documentation and/or other materials provided with the distribution. 
//!     * Neither the name of the <ORGANIZATION> nor the names of its 
//! contributors may be used to endorse or promote products derived 
//! from this software without specific prior written permission. 
//! 
//! THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//! AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
//! IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//! ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE 
//! LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
//! CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
//! SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//! INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
//! CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
//! ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF 
//! THE POSSIBILITY OF SUCH DAMAGE.
//
//*****************************************************************************/
#include "wizchip_conf.h"

static uint8_t dummy;

/*
int8_t ctlwizchip(ctlwizchip_type cwtype, void* arg)
{
   uint8_t tmp = 0;
   uint8_t* ptmp[2] = {0,0};
   switch(cwtype)
   {
      case CW_RESET_WIZCHIP:
         wizchip_sw_reset();
         break;
      case CW_INIT_WIZCHIP:
         if(arg != 0) 
         {
            ptmp[0] = (uint8_t*)arg;
            ptmp[1] = ptmp[0] + _WIZCHIP_SOCK_NUM_;
         }
         return wizchip_init(ptmp[0], ptmp[1]);;
      case CW_CLR_INTERRUPT:
         wizchip_clrinterrupt(*((intr_kind*)arg));
         break;
      case CW_GET_INTERRUPT:
        *((uint16_t*)arg) = wizchip_getinterrupt();
         break;
      case CW_SET_INTRMASK:
         wizchip_setinterruptmask(*((uint16_t*)arg));
         break;         
      case CW_GET_INTRMASK:
         *((uint16_t*)arg) = wizchip_getinterruptmask();
         break;
   #if _WIZCHIP_ > 5100
      case CW_SET_INTRTIME:
         setINTLEVEL(*(uint16_t*)arg);
         break;
      case CW_GET_INTRTIME:
         *(uint16_t*)arg = getINTLEVEL();
         break;
   #endif
      case CW_GET_ID:
         ((uint8_t*)arg)[0] = (uint8_t)_WIZCHIP_;
         ((uint8_t*)arg)[1] = (uint8_t)(_WIZCHIP_ >> 8);
         ((uint8_t*)arg)[2] = 0;
         ((uint8_t*)arg)[3] = 0;
         ((uint8_t*)arg)[4] = 0;
         ((uint8_t*)arg)[5] = 0;
         break;
   #if _WIZCHIP_ ==  5500
      case CW_RESET_PHY:
         wizphy_reset();
         break;
      case CW_SET_PHYCONF:
         wizphy_setphyconf((wiz_PhyConf*)arg);
         break;
      case CW_GET_PHYCONF:
         wizphy_getphyconf((wiz_PhyConf*)arg);
         break;
      case CW_GET_PHYSTATUS:
         break;
      case CW_SET_PHYPOWMODE:
         return wizphy_setphypmode(*(uint8_t*)arg);
   #endif
      case CW_GET_PHYPOWMODE:
         tmp = wizphy_getphypmode();
         if((int8_t)tmp == -1) return -1;
         *(uint8_t*)arg = tmp;
         break;
      case CW_GET_PHYLINK:
         tmp = wizphy_getphylink();
         if((int8_t)tmp == -1) return -1;
         *(uint8_t*)arg = tmp;
         break;
      default:
         return -1;
   }
   return 0;
}

int8_t ctlnetwork(ctlnetwork_type cntype, void* arg)
{
   
   switch(cntype)
   {
      case CN_SET_NETINFO:
         wizchip_setnetinfo((wiz_NetInfo*)arg);
         break;
      case CN_GET_NETINFO:
         wizchip_getnetinfo((wiz_NetInfo*)arg);
         break;
      case CN_SET_NETMODE:
         return wizchip_setnetmode(*(netmode_type*)arg);
      case CN_GET_NETMODE:
         *(netmode_type*)arg = wizchip_getnetmode();
         break;
      case CN_SET_TIMEOUT:
         wizchip_settimeout((wiz_NetTimeout*)arg);
         break;
      case CN_GET_TIMEOUT:
         wizchip_gettimeout((wiz_NetTimeout*)arg);
         break;
      default:
         return -1;
   }
   return 0;
}
*/

void wizchip_sw_reset(void)
{
   uint8_t gw[4], sn[4], sip[4];
   uint8_t mac[6];
   getSHAR(mac);
   getGAR(gw);  getSUBR(sn);  getSIPR(sip);
   setMR(MR_RST);
   getMR(); // for delay
   setSHAR(mac);
   setGAR(gw);
   setSUBR(sn);
   setSIPR(sip);
}

#define SPI_CLK LATBbits.LATB1
#define SPI_MOSI LATBbits.LATB2
#define SPI_MISO PORTBbits.RB3

extern uint16_t ReadTicker(void);

void delay(void)
{ 
   
    uint16_t cnt=ReadTicker(); // wait > 500us
  
   while((ReadTicker() - cnt) < 2) ClrWdt();

}

int8_t wizchip_init(uint8_t* txsize, uint8_t* rxsize)
{
   uint8_t i;
   uint8_t tmp = 0;
   uint16_t cnt;
   
   // Set up SPI hardware
   WIZCHIP_CS_deselect();
   WIZCHIP_RESET(0);
   TRISBbits.TRISB0=0; // CS is output
   TRISBbits.TRISB2=0; // MOSI is output
   TRISBbits.TRISB1=0; // SCLK is output
   TRISBbits.TRISB8=1; // RDY is input
   TRISBbits.TRISB4=0; // RESET is output
   TRISBbits.TRISB3=1; // MISO is input

   SPI_CLK=0;           // Mode 0

    // Unlock registers
    __builtin_write_OSCCONL(OSCCON & 0xBF);

    // SDI1=RP3
    RPINR20bits.SDI1R=3;
    // SDO1=RP2
    RPOR1bits.RP2R=7;
    // SCK1=RP1
    RPOR0bits.RP1R=8;

   // Lock registers
    __builtin_write_OSCCONL(OSCCON | 0x40);

   // Mode 0 = CKE:1 CKP:0
   // Master mode, CLK idles low (CKP=0), PRESCALER=1:2
   SPI1CON1=32+256+1+2+16+8;
   // Framed SPI disabled, enhanced mode
   SPI1CON2=1;
   // Enable
   SPI1STAT=32768;
    dummy=SPI1BUF;

   // wait > 500us
   cnt=ReadTicker();
   while((ReadTicker() - cnt) < 3) ClrWdt();

   WIZCHIP_RESET(1);

    // wait for the device to configure itself
   do
   {
       // wait 200 ms
       cnt=ReadTicker();
       while((ReadTicker() - cnt) < 200) ClrWdt() ;

       if(!WIZCHIP_READY())
            LED^=1;
   }
   while(!WIZCHIP_READY()) ;

    // check the version code is correct
   do
   {
       ClrWdt();

        tmp = getVERSIONR();

        if(tmp != 4)
        {
            LED^=1;

            // wait 100 ms
            cnt=ReadTicker();
            while((ReadTicker() - cnt) < 100) ClrWdt() ;

        }

   } while(tmp != 4);

   LED=0;

   if(txsize)
   {
      tmp = 0;
      for(i = 0 ; i < _WIZCHIP_SOCK_NUM_; i++)
         tmp += txsize[i];
      if(tmp > 16) return -1;
      for(i = 0 ; i < _WIZCHIP_SOCK_NUM_; i++)
         setSn_TXBUF_SIZE(i, txsize[i]);
   }
   if(rxsize)
   {
      tmp = 0;
      for(i = 0 ; i < _WIZCHIP_SOCK_NUM_; i++)
         tmp += rxsize[i];
      if(tmp > 16) return -1;
      for(i = 0 ; i < _WIZCHIP_SOCK_NUM_; i++)
         setSn_RXBUF_SIZE(i, rxsize[i]);
   }

   return 0;
}

/*
void wizchip_clrinterrupt(intr_kind intr)
{
   uint8_t ir  = (uint8_t)intr;
   uint8_t sir = (uint8_t)((uint16_t)intr >> 8);
#if _WIZCHIP_ < 5500
   ir |= (1<<4); // IK_WOL
#endif
#if _WIZCHIP_ == 5200
   ir |= (1 << 6);
#endif
   
#if _WIZCHIP_ < 5200
   sir &= 0x0F;
#endif

#if _WIZCHIP_ == 5100
   ir |= sir;
   setIR(ir);
#else
   setIR(ir);
   setSIR(sir);
#endif   
}

intr_kind wizchip_getinterrupt(void)
{
   uint8_t ir  = 0;
   uint8_t sir = 0;
   uint16_t ret = 0;
#if _WIZCHIP_ == 5100
   ir = getIR();
   sir = ir 0x0F;
#else
   ir  = getIR();
   sir = getSIR();
#endif         

#if _WIZCHIP_ < 5500
   ir &= ~(1<<4); // IK_WOL
#endif
#if _WIZCHIP_ == 5200
   ir &= ~(1 << 6);
#endif
  ret = sir;
  ret = (ret << 8) + ir;
  return (intr_kind)ret;
}

void wizchip_setinterruptmask(intr_kind intr)
{
   uint8_t imr  = (uint8_t)intr;
   uint8_t simr = (uint8_t)((uint16_t)intr >> 8);
#if _WIZCHIP_ < 5500
   imr &= ~(1<<4); // IK_WOL
#endif
#if _WIZCHIP_ == 5200
   imr &= ~(1 << 6);
#endif
   
#if _WIZCHIP_ < 5200
   simr &= 0x0F;
#endif

#if _WIZCHIP_ == 5100
   imr |= simr;
   setIMR(imr);
#else
   setIMR(imr);
   setSIMR(simr);
#endif   
}

intr_kind wizchip_getinterruptmask(void)
{
   uint8_t imr  = 0;
   uint8_t simr = 0;
   uint16_t ret = 0;
#if _WIZCHIP_ == 5100
   imr  = getIMR();
   simr = imr 0x0F;
#else
   imr  = getIMR();
   simr = getSIMR();
#endif         

#if _WIZCHIP_ < 5500
   imr &= ~(1<<4); // IK_WOL
#endif
#if _WIZCHIP_ == 5200
   imr &= ~(1 << 6);  // IK_DEST_UNREACH
#endif
  ret = simr;
  ret = (ret << 8) + imr;
  return (intr_kind)ret;
}

int8_t wizphy_getphylink(void)
{
   int8_t tmp;
#if   _WIZCHIP_ == 5200
   if(getPHYSTATUS() & PHYSTATUS_LINK)
      tmp = PHY_LINK_ON;
   else
      tmp = PHY_LINK_OFF;
#elif _WIZCHIP_ == 5500
   if(getPHYCFGR() & PHYCFGR_LNK_ON)
      tmp = PHY_LINK_ON;
   else
      tmp = PHY_LINK_OFF;
#else
   tmp = -1;
#endif
   return tmp;
}


#if _WIZCHIP_ > 5100

int8_t wizphy_getphypmode(void)
{
   int8_t tmp = 0;
   #if   _WIZCHIP_ == 5200
      if(getPHYSTATUS() & PHYSTATUS_POWERDOWN)
         tmp = PHY_POWER_DOWN;
      else          
         tmp = PHY_POWER_NORM;
   #elif _WIZCHIP_ == 5500
      if(getPHYCFGR() & PHYCFGR_OPMDC_PDOWN)
         tmp = PHY_POWER_DOWN;
      else 
         tmp = PHY_POWER_NORM;
   #else
      tmp = -1;
   #endif
   return tmp;
}
#endif
*/

#if _WIZCHIP_ == 5500
void wizphy_reset(void)
{
   uint8_t tmp = getPHYCFGR();
   tmp &= PHYCFGR_RST;
   setPHYCFGR(tmp);
   tmp = getPHYCFGR(); 
   tmp |= ~PHYCFGR_RST;
   setPHYCFGR(tmp);
}

void wizphy_setphyconf(wiz_PhyConf* phyconf)
{
   uint8_t tmp = 0;
   if(phyconf->by == PHY_CONFBY_SW)
      tmp |= PHYCFGR_OPMD;
   else
      tmp &= ~PHYCFGR_OPMD;
   if(phyconf->mode == PHY_MODE_AUTONEGO)
      tmp |= PHYCFGR_OPMDC_ALLA;
   else
   {
      if(phyconf->duplex == PHY_DUPLEX_FULL)
      {
         if(phyconf->speed == PHY_SPEED_100)
            tmp |= PHYCFGR_OPMDC_100F;
         else
            tmp |= PHYCFGR_OPMDC_10F;
      }   
      else
      {
         if(phyconf->speed == PHY_SPEED_100)
            tmp |= PHYCFGR_OPMDC_100H;
         else
            tmp |= PHYCFGR_OPMDC_10H;
      }
   }
   setPHYCFGR(tmp);
   wizphy_reset();
}

#endif

/*
void wizphy_getphyconf(wiz_PhyConf* phyconf)
{
   uint8_t tmp = 0;
   tmp = getPHYCFGR();
   phyconf->by   = (tmp & PHYCFGR_OPMD) ? PHY_CONFBY_SW : PHY_CONFBY_HW;
   switch(tmp & PHYCFGR_OPMDC_ALLA)
   {
      case PHYCFGR_OPMDC_ALLA:
      case PHYCFGR_OPMDC_100FA: 
         phyconf->mode = PHY_MODE_AUTONEGO;
         break;
      default:
         phyconf->mode = PHY_MODE_MANUAL;
         break;
   }
   switch(tmp & PHYCFGR_OPMDC_ALLA)
   {
      case PHYCFGR_OPMDC_100FA:
      case PHYCFGR_OPMDC_100F:
      case PHYCFGR_OPMDC_100H:
         phyconf->speed = PHY_SPEED_100;
         break;
      default:
         phyconf->speed = PHY_SPEED_10;
         break;
   }
   switch(tmp & PHYCFGR_OPMDC_ALLA)
   {
      case PHYCFGR_OPMDC_100FA:
      case PHYCFGR_OPMDC_100F:
      case PHYCFGR_OPMDC_10F:
         phyconf->duplex = PHY_DUPLEX_FULL;
         break;
      default:
         phyconf->duplex = PHY_DUPLEX_HALF;
         break;
   }
}

void wizphy_getphystat(wiz_PhyConf* phyconf)
{
   uint8_t tmp = getPHYCFGR();
   phyconf->duplex = (tmp & PHYCFGR_DPX_FULL) ? PHY_DUPLEX_FULL : PHY_DUPLEX_HALF;
   phyconf->speed  = (tmp & PHYCFGR_SPD_100) ? PHY_SPEED_100 : PHY_SPEED_10;
}


int8_t wizphy_setphypmode(uint8_t pmode)
{
   uint8_t tmp = 0;
   tmp = getPHYCFGR();
   if((tmp & PHYCFGR_OPMD)== 0) return -1;
   tmp &= ~PHYCFGR_OPMDC_ALLA;         
   if( pmode == PHY_POWER_DOWN)
      tmp |= PHYCFGR_OPMDC_PDOWN;
   else
      tmp |= PHYCFGR_OPMDC_ALLA;
   setPHYCFGR(tmp);
   wizphy_reset();
   tmp = getPHYCFGR();
   if( pmode == PHY_POWER_DOWN)
   {
      if(tmp & PHYCFGR_OPMDC_PDOWN) return 0;
   }
   else
   {
      if(tmp & PHYCFGR_OPMDC_ALLA) return 0;
   }
   return -1;
}
#endif


void wizchip_setnetinfo(wiz_NetInfo* pnetinfo)
{
   setSHAR(pnetinfo->mac);
   setGAR(pnetinfo->gw);
   setSUBR(pnetinfo->sn);
   setSIPR(pnetinfo->ip);
   _DNS_[0] = pnetinfo->dns[0];
   _DNS_[1] = pnetinfo->dns[1];
   _DNS_[2] = pnetinfo->dns[2];
   _DNS_[3] = pnetinfo->dns[3];
   _DHCP_   = pnetinfo->dhcp;
}

void wizchip_getnetinfo(wiz_NetInfo* pnetinfo)
{
   getSHAR(pnetinfo->mac);
   getGAR(pnetinfo->gw);
   getSUBR(pnetinfo->sn);
   getSIPR(pnetinfo->ip);
   pnetinfo->dns[0]= _DNS_[0];
   pnetinfo->dns[1]= _DNS_[1];
   pnetinfo->dns[2]= _DNS_[2];
   pnetinfo->dns[3]= _DNS_[3];
   pnetinfo->dhcp  = _DHCP_;
}

int8_t wizchip_setnetmode(netmode_type netmode)
{
   uint8_t tmp = 0;
#if _WIZCHIP_ != 5500   
   if(netmode & ~(NM_WAKEONLAN | NM_PPPOE | NM_PINGBLOCK)) return -1;
#else
   if(netmode & ~(NM_WAKEONLAN | NM_PPPOE | NM_PINGBLOCK | NM_FORCEARP)) return -1;
#endif      
   tmp = getMR();
   tmp |= (uint8_t)netmode;
   setMR(tmp);
   return 0;
}

netmode_type wizchip_getnetmode(void)
{
   return (netmode_type) getMR();
}

void wizchip_settimeout(wiz_NetTimeout* nettime)
{
   setRCR(nettime->retry_cnt);
   setRTR(nettime->time_100us);
}

void wizchip_gettimeout(wiz_NetTimeout* nettime)
{
   nettime->retry_cnt = getRCR();
   nettime->time_100us = getRTR();
}

 */


void inline WIZCHIP_SPI_write_byte(uint8_t b)
{
    SPI1BUF=b;
    while(SPI1STATbits.SRXMPT);
    dummy=SPI1BUF;
}

uint8_t inline WIZCHIP_SPI_read_byte(void)
{
    SPI1BUF = 0;
    while(SPI1STATbits.SRXMPT);
    return SPI1BUF;
 
}