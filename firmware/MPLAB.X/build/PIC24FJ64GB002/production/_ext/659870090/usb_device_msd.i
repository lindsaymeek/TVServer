# 1 "../src/usb/usb_device_msd.c"
# 1 "F:\\microchip\\mla\\v2013_12_20\\apps\\usb\\device\\msd_internal_flash\\firmware\\MPLAB.X//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../src/usb/usb_device_msd.c"
# 31 "../src/usb/usb_device_msd.c"
# 1 "../src/usb/usb.h" 1
# 42 "../src/usb/usb.h"
# 1 "../src/system.h" 1
# 26 "../src/system.h"
# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\support\\generic\\h/xc.h" 1 3 4
# 566 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\support\\generic\\h/xc.h" 3 4
# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\support\\PIC24F\\h/p24FJ64GB002.h" 1 3 4
# 16 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\support\\PIC24F\\h/p24FJ64GB002.h" 3 4
extern volatile unsigned int WREG0 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG1 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG2 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG3 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG4 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG5 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG6 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG7 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG8 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG9 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG10 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG11 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG12 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG13 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG14 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int WREG15 __attribute__((__sfr__,__deprecated__,__unsafe__));

extern volatile unsigned int SPLIM __attribute__((__sfr__));

extern volatile unsigned int PCL __attribute__((__sfr__));

extern volatile unsigned char PCH __attribute__((__sfr__));

extern volatile unsigned int TBLPAG __attribute__((__sfr__));

extern volatile unsigned int PSVPAG __attribute__((__sfr__));

extern volatile unsigned int RCOUNT __attribute__((__sfr__));

extern volatile unsigned int SR __attribute__((__sfr__));
__extension__ typedef struct tagSRBITS {
  union {
    struct {
      unsigned C:1;
      unsigned Z:1;
      unsigned OV:1;
      unsigned N:1;
      unsigned RA:1;
      unsigned IPL:3;
      unsigned DC:1;
    };
    struct {
      unsigned :5;
      unsigned IPL0:1;
      unsigned IPL1:1;
      unsigned IPL2:1;
    };
  };
} SRBITS;
extern volatile SRBITS SRbits __attribute__((__sfr__));


extern volatile unsigned int CORCON __attribute__((__sfr__));
typedef struct tagCORCONBITS {
  unsigned :2;
  unsigned PSV:1;
  unsigned IPL3:1;
} CORCONBITS;
extern volatile CORCONBITS CORCONbits __attribute__((__sfr__));


extern volatile unsigned int DISICNT __attribute__((__sfr__));

extern volatile unsigned int CNEN1 __attribute__((__sfr__));
typedef struct tagCNEN1BITS {
  unsigned CN0IE:1;
  unsigned CN1IE:1;
  unsigned CN2IE:1;
  unsigned CN3IE:1;
  unsigned CN4IE:1;
  unsigned CN5IE:1;
  unsigned CN6IE:1;
  unsigned CN7IE:1;
  unsigned :3;
  unsigned CN11IE:1;
  unsigned CN12IE:1;
  unsigned CN13IE:1;
  unsigned :1;
  unsigned CN15IE:1;
} CNEN1BITS;
extern volatile CNEN1BITS CNEN1bits __attribute__((__sfr__));


extern volatile unsigned int CNEN2 __attribute__((__sfr__));
typedef struct tagCNEN2BITS {
  unsigned CN16IE:1;
  unsigned :4;
  unsigned CN21IE:1;
  unsigned CN22IE:1;
  unsigned CN23IE:1;
  unsigned :3;
  unsigned CN27IE:1;
  unsigned :1;
  unsigned CN29IE:1;
  unsigned CN30IE:1;
} CNEN2BITS;
extern volatile CNEN2BITS CNEN2bits __attribute__((__sfr__));


extern volatile unsigned int CNPU1 __attribute__((__sfr__));
typedef struct tagCNPU1BITS {
  unsigned CN0PUE:1;
  unsigned CN1PUE:1;
  unsigned CN2PUE:1;
  unsigned CN3PUE:1;
  unsigned CN4PUE:1;
  unsigned CN5PUE:1;
  unsigned CN6PUE:1;
  unsigned CN7PUE:1;
  unsigned :3;
  unsigned CN11PUE:1;
  unsigned CN12PUE:1;
  unsigned CN13PUE:1;
  unsigned :1;
  unsigned CN15PUE:1;
} CNPU1BITS;
extern volatile CNPU1BITS CNPU1bits __attribute__((__sfr__));


extern volatile unsigned int CNPU2 __attribute__((__sfr__));
typedef struct tagCNPU2BITS {
  unsigned CN16PUE:1;
  unsigned :4;
  unsigned CN21PUE:1;
  unsigned CN22PUE:1;
  unsigned CN23PUE:1;
  unsigned :3;
  unsigned CN27PUE:1;
  unsigned :1;
  unsigned CN29PUE:1;
  unsigned CN30PUE:1;
} CNPU2BITS;
extern volatile CNPU2BITS CNPU2bits __attribute__((__sfr__));


extern volatile unsigned int INTCON1 __attribute__((__sfr__));
typedef struct tagINTCON1BITS {
  unsigned :1;
  unsigned OSCFAIL:1;
  unsigned STKERR:1;
  unsigned ADDRERR:1;
  unsigned MATHERR:1;
  unsigned :10;
  unsigned NSTDIS:1;
} INTCON1BITS;
extern volatile INTCON1BITS INTCON1bits __attribute__((__sfr__));


extern volatile unsigned int INTCON2 __attribute__((__sfr__));
typedef struct tagINTCON2BITS {
  unsigned INT0EP:1;
  unsigned INT1EP:1;
  unsigned INT2EP:1;
  unsigned :11;
  unsigned DISI:1;
  unsigned ALTIVT:1;
} INTCON2BITS;
extern volatile INTCON2BITS INTCON2bits __attribute__((__sfr__));


extern volatile unsigned int IFS0 __attribute__((__sfr__));
typedef struct tagIFS0BITS {
  unsigned INT0IF:1;
  unsigned IC1IF:1;
  unsigned OC1IF:1;
  unsigned T1IF:1;
  unsigned :1;
  unsigned IC2IF:1;
  unsigned OC2IF:1;
  unsigned T2IF:1;
  unsigned T3IF:1;
  unsigned SPF1IF:1;
  unsigned SPI1IF:1;
  unsigned U1RXIF:1;
  unsigned U1TXIF:1;
  unsigned AD1IF:1;
} IFS0BITS;
extern volatile IFS0BITS IFS0bits __attribute__((__sfr__));


extern volatile unsigned int IFS1 __attribute__((__sfr__));
typedef struct tagIFS1BITS {
  unsigned SI2C1IF:1;
  unsigned MI2C1IF:1;
  unsigned CMIF:1;
  unsigned CNIF:1;
  unsigned INT1IF:1;
  unsigned :4;
  unsigned OC3IF:1;
  unsigned OC4IF:1;
  unsigned T4IF:1;
  unsigned T5IF:1;
  unsigned INT2IF:1;
  unsigned U2RXIF:1;
  unsigned U2TXIF:1;
} IFS1BITS;
extern volatile IFS1BITS IFS1bits __attribute__((__sfr__));


extern volatile unsigned int IFS2 __attribute__((__sfr__));
typedef struct tagIFS2BITS {
  unsigned SPF2IF:1;
  unsigned SPI2IF:1;
  unsigned :3;
  unsigned IC3IF:1;
  unsigned IC4IF:1;
  unsigned IC5IF:1;
  unsigned :1;
  unsigned OC5IF:1;
  unsigned :3;
  unsigned PMPIF:1;
} IFS2BITS;
extern volatile IFS2BITS IFS2bits __attribute__((__sfr__));


extern volatile unsigned int IFS3 __attribute__((__sfr__));
typedef struct tagIFS3BITS {
  unsigned :1;
  unsigned SI2C2IF:1;
  unsigned MI2C2IF:1;
  unsigned :11;
  unsigned RTCIF:1;
} IFS3BITS;
extern volatile IFS3BITS IFS3bits __attribute__((__sfr__));


extern volatile unsigned int IFS4 __attribute__((__sfr__));
typedef struct tagIFS4BITS {
  unsigned :1;
  unsigned U1ERIF:1;
  unsigned U2ERIF:1;
  unsigned CRCIF:1;
  unsigned :4;
  unsigned LVDIF:1;
  unsigned :4;
  unsigned CTMUIF:1;
} IFS4BITS;
extern volatile IFS4BITS IFS4bits __attribute__((__sfr__));


extern volatile unsigned int IFS5 __attribute__((__sfr__));
typedef struct tagIFS5BITS {
  unsigned :6;
  unsigned USB1IF:1;
} IFS5BITS;
extern volatile IFS5BITS IFS5bits __attribute__((__sfr__));


extern volatile unsigned int IEC0 __attribute__((__sfr__));
typedef struct tagIEC0BITS {
  unsigned INT0IE:1;
  unsigned IC1IE:1;
  unsigned OC1IE:1;
  unsigned T1IE:1;
  unsigned :1;
  unsigned IC2IE:1;
  unsigned OC2IE:1;
  unsigned T2IE:1;
  unsigned T3IE:1;
  unsigned SPF1IE:1;
  unsigned SPI1IE:1;
  unsigned U1RXIE:1;
  unsigned U1TXIE:1;
  unsigned AD1IE:1;
} IEC0BITS;
extern volatile IEC0BITS IEC0bits __attribute__((__sfr__));


extern volatile unsigned int IEC1 __attribute__((__sfr__));
typedef struct tagIEC1BITS {
  unsigned SI2C1IE:1;
  unsigned MI2C1IE:1;
  unsigned CMIE:1;
  unsigned CNIE:1;
  unsigned INT1IE:1;
  unsigned :4;
  unsigned OC3IE:1;
  unsigned OC4IE:1;
  unsigned T4IE:1;
  unsigned T5IE:1;
  unsigned INT2IE:1;
  unsigned U2RXIE:1;
  unsigned U2TXIE:1;
} IEC1BITS;
extern volatile IEC1BITS IEC1bits __attribute__((__sfr__));


extern volatile unsigned int IEC2 __attribute__((__sfr__));
typedef struct tagIEC2BITS {
  unsigned SPF2IE:1;
  unsigned SPI2IE:1;
  unsigned :3;
  unsigned IC3IE:1;
  unsigned IC4IE:1;
  unsigned IC5IE:1;
  unsigned :1;
  unsigned OC5IE:1;
  unsigned :3;
  unsigned PMPIE:1;
} IEC2BITS;
extern volatile IEC2BITS IEC2bits __attribute__((__sfr__));


extern volatile unsigned int IEC3 __attribute__((__sfr__));
typedef struct tagIEC3BITS {
  unsigned :1;
  unsigned SI2C2IE:1;
  unsigned MI2C2IE:1;
  unsigned :11;
  unsigned RTCIE:1;
} IEC3BITS;
extern volatile IEC3BITS IEC3bits __attribute__((__sfr__));


extern volatile unsigned int IEC4 __attribute__((__sfr__));
typedef struct tagIEC4BITS {
  unsigned :1;
  unsigned U1ERIE:1;
  unsigned U2ERIE:1;
  unsigned CRCIE:1;
  unsigned :4;
  unsigned LVDIE:1;
  unsigned :4;
  unsigned CTMUIE:1;
} IEC4BITS;
extern volatile IEC4BITS IEC4bits __attribute__((__sfr__));


extern volatile unsigned int IEC5 __attribute__((__sfr__));
typedef struct tagIEC5BITS {
  unsigned :6;
  unsigned USB1IE:1;
} IEC5BITS;
extern volatile IEC5BITS IEC5bits __attribute__((__sfr__));


extern volatile unsigned int IPC0 __attribute__((__sfr__));
__extension__ typedef struct tagIPC0BITS {
  union {
    struct {
      unsigned INT0IP:3;
      unsigned :1;
      unsigned IC1IP:3;
      unsigned :1;
      unsigned OC1IP:3;
      unsigned :1;
      unsigned T1IP:3;
    };
    struct {
      unsigned INT0IP0:1;
      unsigned INT0IP1:1;
      unsigned INT0IP2:1;
      unsigned :1;
      unsigned IC1IP0:1;
      unsigned IC1IP1:1;
      unsigned IC1IP2:1;
      unsigned :1;
      unsigned OC1IP0:1;
      unsigned OC1IP1:1;
      unsigned OC1IP2:1;
      unsigned :1;
      unsigned T1IP0:1;
      unsigned T1IP1:1;
      unsigned T1IP2:1;
    };
  };
} IPC0BITS;
extern volatile IPC0BITS IPC0bits __attribute__((__sfr__));


extern volatile unsigned int IPC1 __attribute__((__sfr__));
__extension__ typedef struct tagIPC1BITS {
  union {
    struct {
      unsigned :4;
      unsigned IC2IP:3;
      unsigned :1;
      unsigned OC2IP:3;
      unsigned :1;
      unsigned T2IP:3;
    };
    struct {
      unsigned :4;
      unsigned IC2IP0:1;
      unsigned IC2IP1:1;
      unsigned IC2IP2:1;
      unsigned :1;
      unsigned OC2IP0:1;
      unsigned OC2IP1:1;
      unsigned OC2IP2:1;
      unsigned :1;
      unsigned T2IP0:1;
      unsigned T2IP1:1;
      unsigned T2IP2:1;
    };
  };
} IPC1BITS;
extern volatile IPC1BITS IPC1bits __attribute__((__sfr__));


extern volatile unsigned int IPC2 __attribute__((__sfr__));
__extension__ typedef struct tagIPC2BITS {
  union {
    struct {
      unsigned T3IP:3;
      unsigned :1;
      unsigned SPF1IP:3;
      unsigned :1;
      unsigned SPI1IP:3;
      unsigned :1;
      unsigned U1RXIP:3;
    };
    struct {
      unsigned T3IP0:1;
      unsigned T3IP1:1;
      unsigned T3IP2:1;
      unsigned :1;
      unsigned SPF1IP0:1;
      unsigned SPF1IP1:1;
      unsigned SPF1IP2:1;
      unsigned :1;
      unsigned SPI1IP0:1;
      unsigned SPI1IP1:1;
      unsigned SPI1IP2:1;
      unsigned :1;
      unsigned U1RXIP0:1;
      unsigned U1RXIP1:1;
      unsigned U1RXIP2:1;
    };
  };
} IPC2BITS;
extern volatile IPC2BITS IPC2bits __attribute__((__sfr__));


extern volatile unsigned int IPC3 __attribute__((__sfr__));
__extension__ typedef struct tagIPC3BITS {
  union {
    struct {
      unsigned U1TXIP:3;
      unsigned :1;
      unsigned AD1IP:3;
    };
    struct {
      unsigned U1TXIP0:1;
      unsigned U1TXIP1:1;
      unsigned U1TXIP2:1;
      unsigned :1;
      unsigned AD1IP0:1;
      unsigned AD1IP1:1;
      unsigned AD1IP2:1;
    };
  };
} IPC3BITS;
extern volatile IPC3BITS IPC3bits __attribute__((__sfr__));


extern volatile unsigned int IPC4 __attribute__((__sfr__));
__extension__ typedef struct tagIPC4BITS {
  union {
    struct {
      unsigned SI2C1P:3;
      unsigned :1;
      unsigned MI2C1P:3;
      unsigned :1;
      unsigned CMIP:3;
      unsigned :1;
      unsigned CNIP:3;
    };
    struct {
      unsigned SI2C1P0:1;
      unsigned SI2C1P1:1;
      unsigned SI2C1P2:1;
      unsigned :1;
      unsigned MI2C1P0:1;
      unsigned MI2C1P1:1;
      unsigned MI2C1P2:1;
      unsigned :1;
      unsigned CMIP0:1;
      unsigned CMIP1:1;
      unsigned CMIP2:1;
      unsigned :1;
      unsigned CNIP0:1;
      unsigned CNIP1:1;
      unsigned CNIP2:1;
    };
    struct {
      unsigned SI2C1IP0:1;
      unsigned SI2C1IP1:1;
      unsigned SI2C1IP2:1;
      unsigned :1;
      unsigned MI2C1IP0:1;
      unsigned MI2C1IP1:1;
      unsigned MI2C1IP2:1;
    };
    struct {
      unsigned SI2C1IP:3;
      unsigned :1;
      unsigned MI2C1IP:3;
    };
  };
} IPC4BITS;
extern volatile IPC4BITS IPC4bits __attribute__((__sfr__));


extern volatile unsigned int IPC5 __attribute__((__sfr__));
__extension__ typedef struct tagIPC5BITS {
  union {
    struct {
      unsigned INT1IP:3;
    };
    struct {
      unsigned INT1IP0:1;
      unsigned INT1IP1:1;
      unsigned INT1IP2:1;
    };
  };
} IPC5BITS;
extern volatile IPC5BITS IPC5bits __attribute__((__sfr__));


extern volatile unsigned int IPC6 __attribute__((__sfr__));
__extension__ typedef struct tagIPC6BITS {
  union {
    struct {
      unsigned :4;
      unsigned OC3IP:3;
      unsigned :1;
      unsigned OC4IP:3;
      unsigned :1;
      unsigned T4IP:3;
    };
    struct {
      unsigned :4;
      unsigned OC3IP0:1;
      unsigned OC3IP1:1;
      unsigned OC3IP2:1;
      unsigned :1;
      unsigned OC4IP0:1;
      unsigned OC4IP1:1;
      unsigned OC4IP2:1;
      unsigned :1;
      unsigned T4IP0:1;
      unsigned T4IP1:1;
      unsigned T4IP2:1;
    };
  };
} IPC6BITS;
extern volatile IPC6BITS IPC6bits __attribute__((__sfr__));


extern volatile unsigned int IPC7 __attribute__((__sfr__));
__extension__ typedef struct tagIPC7BITS {
  union {
    struct {
      unsigned T5IP:3;
      unsigned :1;
      unsigned INT2IP:3;
      unsigned :1;
      unsigned U2RXIP:3;
      unsigned :1;
      unsigned U2TXIP:3;
    };
    struct {
      unsigned T5IP0:1;
      unsigned T5IP1:1;
      unsigned T5IP2:1;
      unsigned :1;
      unsigned INT2IP0:1;
      unsigned INT2IP1:1;
      unsigned INT2IP2:1;
      unsigned :1;
      unsigned U2RXIP0:1;
      unsigned U2RXIP1:1;
      unsigned U2RXIP2:1;
      unsigned :1;
      unsigned U2TXIP0:1;
      unsigned U2TXIP1:1;
      unsigned U2TXIP2:1;
    };
  };
} IPC7BITS;
extern volatile IPC7BITS IPC7bits __attribute__((__sfr__));


extern volatile unsigned int IPC8 __attribute__((__sfr__));
__extension__ typedef struct tagIPC8BITS {
  union {
    struct {
      unsigned SPF2IP:3;
      unsigned :1;
      unsigned SPI2IP:3;
    };
    struct {
      unsigned SPF2IP0:1;
      unsigned SPF2IP1:1;
      unsigned SPF2IP2:1;
      unsigned :1;
      unsigned SPI2IP0:1;
      unsigned SPI2IP1:1;
      unsigned SPI2IP2:1;
    };
  };
} IPC8BITS;
extern volatile IPC8BITS IPC8bits __attribute__((__sfr__));


extern volatile unsigned int IPC9 __attribute__((__sfr__));
__extension__ typedef struct tagIPC9BITS {
  union {
    struct {
      unsigned :4;
      unsigned IC3IP:3;
      unsigned :1;
      unsigned IC4IP:3;
      unsigned :1;
      unsigned IC5IP:3;
    };
    struct {
      unsigned :4;
      unsigned IC3IP0:1;
      unsigned IC3IP1:1;
      unsigned IC3IP2:1;
      unsigned :1;
      unsigned IC4IP0:1;
      unsigned IC4IP1:1;
      unsigned IC4IP2:1;
      unsigned :1;
      unsigned IC5IP0:1;
      unsigned IC5IP1:1;
      unsigned IC5IP2:1;
    };
  };
} IPC9BITS;
extern volatile IPC9BITS IPC9bits __attribute__((__sfr__));


extern volatile unsigned int IPC10 __attribute__((__sfr__));
__extension__ typedef struct tagIPC10BITS {
  union {
    struct {
      unsigned :4;
      unsigned OC5IP:3;
    };
    struct {
      unsigned :4;
      unsigned OC5IP0:1;
      unsigned OC5IP1:1;
      unsigned OC5IP2:1;
    };
  };
} IPC10BITS;
extern volatile IPC10BITS IPC10bits __attribute__((__sfr__));


extern volatile unsigned int IPC11 __attribute__((__sfr__));
__extension__ typedef struct tagIPC11BITS {
  union {
    struct {
      unsigned :4;
      unsigned PMPIP:3;
    };
    struct {
      unsigned :4;
      unsigned PMPIP0:1;
      unsigned PMPIP1:1;
      unsigned PMPIP2:1;
    };
  };
} IPC11BITS;
extern volatile IPC11BITS IPC11bits __attribute__((__sfr__));


extern volatile unsigned int IPC12 __attribute__((__sfr__));
__extension__ typedef struct tagIPC12BITS {
  union {
    struct {
      unsigned :4;
      unsigned SI2C2P:3;
      unsigned :1;
      unsigned MI2C2P:3;
    };
    struct {
      unsigned :4;
      unsigned SI2C2IP:3;
      unsigned :1;
      unsigned MI2C2IP:3;
    };
    struct {
      unsigned :4;
      unsigned SI2C2P0:1;
      unsigned SI2C2P1:1;
      unsigned SI2C2P2:1;
      unsigned :1;
      unsigned MI2C2P0:1;
      unsigned MI2C2P1:1;
      unsigned MI2C2P2:1;
    };
    struct {
      unsigned :4;
      unsigned SI2C2IP0:1;
      unsigned SI2C2IP1:1;
      unsigned SI2C2IP2:1;
      unsigned :1;
      unsigned MI2C2IP0:1;
      unsigned MI2C2IP1:1;
      unsigned MI2C2IP2:1;
    };
  };
} IPC12BITS;
extern volatile IPC12BITS IPC12bits __attribute__((__sfr__));


extern volatile unsigned int IPC15 __attribute__((__sfr__));
__extension__ typedef struct tagIPC15BITS {
  union {
    struct {
      unsigned :8;
      unsigned RTCIP:3;
    };
    struct {
      unsigned :8;
      unsigned RTCIP0:1;
      unsigned RTCIP1:1;
      unsigned RTCIP2:1;
    };
  };
} IPC15BITS;
extern volatile IPC15BITS IPC15bits __attribute__((__sfr__));


extern volatile unsigned int IPC16 __attribute__((__sfr__));
__extension__ typedef struct tagIPC16BITS {
  union {
    struct {
      unsigned :4;
      unsigned U1ERIP:3;
      unsigned :1;
      unsigned U2ERIP:3;
      unsigned :1;
      unsigned CRCIP:3;
    };
    struct {
      unsigned :4;
      unsigned U1ERIP0:1;
      unsigned U1ERIP1:1;
      unsigned U1ERIP2:1;
      unsigned :1;
      unsigned U2ERIP0:1;
      unsigned U2ERIP1:1;
      unsigned U2ERIP2:1;
      unsigned :1;
      unsigned CRCIP0:1;
      unsigned CRCIP1:1;
      unsigned CRCIP2:1;
    };
  };
} IPC16BITS;
extern volatile IPC16BITS IPC16bits __attribute__((__sfr__));


extern volatile unsigned int IPC18 __attribute__((__sfr__));
__extension__ typedef struct tagIPC18BITS {
  union {
    struct {
      unsigned LVDIP:3;
    };
    struct {
      unsigned LVDIP0:1;
      unsigned LVDIP1:1;
      unsigned LVDIP2:1;
    };
  };
} IPC18BITS;
extern volatile IPC18BITS IPC18bits __attribute__((__sfr__));


extern volatile unsigned int IPC19 __attribute__((__sfr__));
__extension__ typedef struct tagIPC19BITS {
  union {
    struct {
      unsigned :4;
      unsigned CTMUIP:3;
    };
    struct {
      unsigned :4;
      unsigned CTMUIP0:1;
      unsigned CTMUIP1:1;
      unsigned CTMUIP2:1;
    };
  };
} IPC19BITS;
extern volatile IPC19BITS IPC19bits __attribute__((__sfr__));


extern volatile unsigned int IPC21 __attribute__((__sfr__));
__extension__ typedef struct tagIPC21BITS {
  union {
    struct {
      unsigned :8;
      unsigned USB1IP:3;
    };
    struct {
      unsigned :8;
      unsigned USB1IP0:1;
      unsigned USB1IP1:1;
      unsigned USB1IP2:1;
    };
  };
} IPC21BITS;
extern volatile IPC21BITS IPC21bits __attribute__((__sfr__));


extern volatile unsigned int INTTREG __attribute__((__sfr__));
__extension__ typedef struct tagINTTREGBITS {
  union {
    struct {
      unsigned VECNUM:7;
      unsigned :1;
      unsigned ILR:4;
      unsigned :1;
      unsigned VHOLD:1;
      unsigned :1;
      unsigned CPUIRQ:1;
    };
    struct {
      unsigned VECNUM0:1;
      unsigned VECNUM1:1;
      unsigned VECNUM2:1;
      unsigned VECNUM3:1;
      unsigned VECNUM4:1;
      unsigned VECNUM5:1;
      unsigned :1;
      unsigned ILR0:1;
      unsigned ILR1:1;
      unsigned ILR2:1;
      unsigned ILR3:1;
    };
  };
} INTTREGBITS;
extern volatile INTTREGBITS INTTREGbits __attribute__((__sfr__));


extern volatile unsigned int TMR1 __attribute__((__sfr__));

extern volatile unsigned int PR1 __attribute__((__sfr__));

extern volatile unsigned int T1CON __attribute__((__sfr__));
__extension__ typedef struct tagT1CONBITS {
  union {
    struct {
      unsigned :1;
      unsigned TCS:1;
      unsigned TSYNC:1;
      unsigned :1;
      unsigned TCKPS:2;
      unsigned TGATE:1;
      unsigned :6;
      unsigned TSIDL:1;
      unsigned :1;
      unsigned TON:1;
    };
    struct {
      unsigned :4;
      unsigned TCKPS0:1;
      unsigned TCKPS1:1;
    };
  };
} T1CONBITS;
extern volatile T1CONBITS T1CONbits __attribute__((__sfr__));


extern volatile unsigned int TMR2 __attribute__((__sfr__));

extern volatile unsigned int TMR3HLD __attribute__((__sfr__));

extern volatile unsigned int TMR3 __attribute__((__sfr__));

extern volatile unsigned int PR2 __attribute__((__sfr__));

extern volatile unsigned int PR3 __attribute__((__sfr__));

extern volatile unsigned int T2CON __attribute__((__sfr__));
__extension__ typedef struct tagT2CONBITS {
  union {
    struct {
      unsigned :1;
      unsigned TCS:1;
      unsigned :1;
      unsigned T32:1;
      unsigned TCKPS:2;
      unsigned TGATE:1;
      unsigned :6;
      unsigned TSIDL:1;
      unsigned :1;
      unsigned TON:1;
    };
    struct {
      unsigned :4;
      unsigned TCKPS0:1;
      unsigned TCKPS1:1;
    };
  };
} T2CONBITS;
extern volatile T2CONBITS T2CONbits __attribute__((__sfr__));


extern volatile unsigned int T3CON __attribute__((__sfr__));
__extension__ typedef struct tagT3CONBITS {
  union {
    struct {
      unsigned :1;
      unsigned TCS:1;
      unsigned :2;
      unsigned TCKPS:2;
      unsigned TGATE:1;
      unsigned :6;
      unsigned TSIDL:1;
      unsigned :1;
      unsigned TON:1;
    };
    struct {
      unsigned :4;
      unsigned TCKPS0:1;
      unsigned TCKPS1:1;
    };
  };
} T3CONBITS;
extern volatile T3CONBITS T3CONbits __attribute__((__sfr__));


extern volatile unsigned int TMR4 __attribute__((__sfr__));

extern volatile unsigned int TMR5HLD __attribute__((__sfr__));

extern volatile unsigned int TMR5 __attribute__((__sfr__));

extern volatile unsigned int PR4 __attribute__((__sfr__));

extern volatile unsigned int PR5 __attribute__((__sfr__));

extern volatile unsigned int T4CON __attribute__((__sfr__));
__extension__ typedef struct tagT4CONBITS {
  union {
    struct {
      unsigned :1;
      unsigned TCS:1;
      unsigned :1;
      unsigned T32:1;
      unsigned TCKPS:2;
      unsigned TGATE:1;
      unsigned :6;
      unsigned TSIDL:1;
      unsigned :1;
      unsigned TON:1;
    };
    struct {
      unsigned :4;
      unsigned TCKPS0:1;
      unsigned TCKPS1:1;
    };
  };
} T4CONBITS;
extern volatile T4CONBITS T4CONbits __attribute__((__sfr__));


extern volatile unsigned int T5CON __attribute__((__sfr__));
__extension__ typedef struct tagT5CONBITS {
  union {
    struct {
      unsigned :1;
      unsigned TCS:1;
      unsigned :2;
      unsigned TCKPS:2;
      unsigned TGATE:1;
      unsigned :6;
      unsigned TSIDL:1;
      unsigned :1;
      unsigned TON:1;
    };
    struct {
      unsigned :4;
      unsigned TCKPS0:1;
      unsigned TCKPS1:1;
    };
  };
} T5CONBITS;
extern volatile T5CONBITS T5CONbits __attribute__((__sfr__));


extern volatile unsigned int IC1CON1 __attribute__((__sfr__));
__extension__ typedef struct tagIC1CON1BITS {
  union {
    struct {
      unsigned ICM:3;
      unsigned ICBNE:1;
      unsigned ICOV:1;
      unsigned ICI:2;
      unsigned :3;
      unsigned ICTSEL:3;
      unsigned ICSIDL:1;
    };
    struct {
      unsigned ICM0:1;
      unsigned ICM1:1;
      unsigned ICM2:1;
      unsigned :2;
      unsigned ICI0:1;
      unsigned ICI1:1;
      unsigned :3;
      unsigned ICTSEL0:1;
      unsigned ICTSEL1:1;
      unsigned ICTSEL2:1;
    };
  };
} IC1CON1BITS;
extern volatile IC1CON1BITS IC1CON1bits __attribute__((__sfr__));


extern volatile unsigned int IC1CON2 __attribute__((__sfr__));
__extension__ typedef struct tagIC1CON2BITS {
  union {
    struct {
      unsigned SYNCSEL:5;
      unsigned :1;
      unsigned TRIGSTAT:1;
      unsigned ICTRIG:1;
      unsigned IC32:1;
    };
    struct {
      unsigned SYNCSEL0:1;
      unsigned SYNCSEL1:1;
      unsigned SYNCSEL2:1;
      unsigned SYNCSEL3:1;
      unsigned SYNCSEL4:1;
    };
  };
} IC1CON2BITS;
extern volatile IC1CON2BITS IC1CON2bits __attribute__((__sfr__));



typedef struct tagIC {
        unsigned int icxbuf;
        unsigned int icxcon;
} IC, *PIC;



extern volatile IC ACC1 __attribute__((__sfr__));

extern volatile IC ACC2 __attribute__((__sfr__));

extern volatile IC ACC3 __attribute__((__sfr__));

extern volatile IC ACC4 __attribute__((__sfr__));

extern volatile IC ACC5 __attribute__((__sfr__));


extern volatile unsigned int IC1BUF __attribute__((__sfr__));

extern volatile unsigned int IC1TMR __attribute__((__sfr__));

extern volatile unsigned int IC2CON1 __attribute__((__sfr__));
__extension__ typedef struct tagIC2CON1BITS {
  union {
    struct {
      unsigned ICM:3;
      unsigned ICBNE:1;
      unsigned ICOV:1;
      unsigned ICI:2;
      unsigned :3;
      unsigned ICTSEL:3;
      unsigned ICSIDL:1;
    };
    struct {
      unsigned ICM0:1;
      unsigned ICM1:1;
      unsigned ICM2:1;
      unsigned :2;
      unsigned ICI0:1;
      unsigned ICI1:1;
      unsigned :3;
      unsigned ICTSEL0:1;
      unsigned ICTSEL1:1;
      unsigned ICTSEL2:1;
    };
  };
} IC2CON1BITS;
extern volatile IC2CON1BITS IC2CON1bits __attribute__((__sfr__));


extern volatile unsigned int IC2CON2 __attribute__((__sfr__));
__extension__ typedef struct tagIC2CON2BITS {
  union {
    struct {
      unsigned SYNCSEL:5;
      unsigned :1;
      unsigned TRIGSTAT:1;
      unsigned ICTRIG:1;
      unsigned IC32:1;
    };
    struct {
      unsigned SYNCSEL0:1;
      unsigned SYNCSEL1:1;
      unsigned SYNCSEL2:1;
      unsigned SYNCSEL3:1;
      unsigned SYNCSEL4:1;
    };
  };
} IC2CON2BITS;
extern volatile IC2CON2BITS IC2CON2bits __attribute__((__sfr__));


extern volatile unsigned int IC2BUF __attribute__((__sfr__));

extern volatile unsigned int IC2TMR __attribute__((__sfr__));

extern volatile unsigned int IC3CON1 __attribute__((__sfr__));
__extension__ typedef struct tagIC3CON1BITS {
  union {
    struct {
      unsigned ICM:3;
      unsigned ICBNE:1;
      unsigned ICOV:1;
      unsigned ICI:2;
      unsigned :3;
      unsigned ICTSEL:3;
      unsigned ICSIDL:1;
    };
    struct {
      unsigned ICM0:1;
      unsigned ICM1:1;
      unsigned ICM2:1;
      unsigned :2;
      unsigned ICI0:1;
      unsigned ICI1:1;
      unsigned :3;
      unsigned ICTSEL0:1;
      unsigned ICTSEL1:1;
      unsigned ICTSEL2:1;
    };
  };
} IC3CON1BITS;
extern volatile IC3CON1BITS IC3CON1bits __attribute__((__sfr__));


extern volatile unsigned int IC3CON2 __attribute__((__sfr__));
__extension__ typedef struct tagIC3CON2BITS {
  union {
    struct {
      unsigned SYNCSEL:5;
      unsigned :1;
      unsigned TRIGSTAT:1;
      unsigned ICTRIG:1;
      unsigned IC32:1;
    };
    struct {
      unsigned SYNCSEL0:1;
      unsigned SYNCSEL1:1;
      unsigned SYNCSEL2:1;
      unsigned SYNCSEL3:1;
      unsigned SYNCSEL4:1;
    };
  };
} IC3CON2BITS;
extern volatile IC3CON2BITS IC3CON2bits __attribute__((__sfr__));


extern volatile unsigned int IC3BUF __attribute__((__sfr__));

extern volatile unsigned int IC3TMR __attribute__((__sfr__));

extern volatile unsigned int IC4CON1 __attribute__((__sfr__));
__extension__ typedef struct tagIC4CON1BITS {
  union {
    struct {
      unsigned ICM:3;
      unsigned ICBNE:1;
      unsigned ICOV:1;
      unsigned ICI:2;
      unsigned :3;
      unsigned ICTSEL:3;
      unsigned ICSIDL:1;
    };
    struct {
      unsigned ICM0:1;
      unsigned ICM1:1;
      unsigned ICM2:1;
      unsigned :2;
      unsigned ICI0:1;
      unsigned ICI1:1;
      unsigned :3;
      unsigned ICTSEL0:1;
      unsigned ICTSEL1:1;
      unsigned ICTSEL2:1;
    };
  };
} IC4CON1BITS;
extern volatile IC4CON1BITS IC4CON1bits __attribute__((__sfr__));


extern volatile unsigned int IC4CON2 __attribute__((__sfr__));
__extension__ typedef struct tagIC4CON2BITS {
  union {
    struct {
      unsigned SYNCSEL:5;
      unsigned :1;
      unsigned TRIGSTAT:1;
      unsigned ICTRIG:1;
      unsigned IC32:1;
    };
    struct {
      unsigned SYNCSEL0:1;
      unsigned SYNCSEL1:1;
      unsigned SYNCSEL2:1;
      unsigned SYNCSEL3:1;
      unsigned SYNCSEL4:1;
    };
  };
} IC4CON2BITS;
extern volatile IC4CON2BITS IC4CON2bits __attribute__((__sfr__));


extern volatile unsigned int IC4BUF __attribute__((__sfr__));

extern volatile unsigned int IC4TMR __attribute__((__sfr__));

extern volatile unsigned int IC5CON1 __attribute__((__sfr__));
__extension__ typedef struct tagIC5CON1BITS {
  union {
    struct {
      unsigned ICM:3;
      unsigned ICBNE:1;
      unsigned ICOV:1;
      unsigned ICI:2;
      unsigned :3;
      unsigned ICTSEL:3;
      unsigned ICSIDL:1;
    };
    struct {
      unsigned ICM0:1;
      unsigned ICM1:1;
      unsigned ICM2:1;
      unsigned :2;
      unsigned ICI0:1;
      unsigned ICI1:1;
      unsigned :3;
      unsigned ICTSEL0:1;
      unsigned ICTSEL1:1;
      unsigned ICTSEL2:1;
    };
  };
} IC5CON1BITS;
extern volatile IC5CON1BITS IC5CON1bits __attribute__((__sfr__));


extern volatile unsigned int IC5CON2 __attribute__((__sfr__));
__extension__ typedef struct tagIC5CON2BITS {
  union {
    struct {
      unsigned SYNCSEL:5;
      unsigned :1;
      unsigned TRIGSTAT:1;
      unsigned ICTRIG:1;
      unsigned IC32:1;
    };
    struct {
      unsigned SYNCSEL0:1;
      unsigned SYNCSEL1:1;
      unsigned SYNCSEL2:1;
      unsigned SYNCSEL3:1;
      unsigned SYNCSEL4:1;
    };
  };
} IC5CON2BITS;
extern volatile IC5CON2BITS IC5CON2bits __attribute__((__sfr__));


extern volatile unsigned int IC5BUF __attribute__((__sfr__));

extern volatile unsigned int IC5TMR __attribute__((__sfr__));

extern volatile unsigned int OC1CON1 __attribute__((__sfr__));
__extension__ typedef struct tagOC1CON1BITS {
  union {
    struct {
      unsigned OCM:3;
      unsigned TRIGMODE:1;
      unsigned OCFLT:3;
      unsigned ENFLT:3;
      unsigned OCTSEL:3;
      unsigned OCSIDL:1;
    };
    struct {
      unsigned OCM0:1;
      unsigned OCM1:1;
      unsigned OCM2:1;
      unsigned :1;
      unsigned OCFLT0:1;
      unsigned OCFLT1:1;
      unsigned OCFLT2:1;
      unsigned ENFLT0:1;
      unsigned ENFLT1:1;
      unsigned ENFLT2:1;
      unsigned OCTSEL0:1;
      unsigned OCTSEL1:1;
      unsigned OCTSEL2:1;
    };
  };
} OC1CON1BITS;
extern volatile OC1CON1BITS OC1CON1bits __attribute__((__sfr__));


extern volatile unsigned int OC1CON2 __attribute__((__sfr__));
__extension__ typedef struct tagOC1CON2BITS {
  union {
    struct {
      unsigned SYNCSEL:5;
      unsigned OCTRIS:1;
      unsigned TRIGSTAT:1;
      unsigned OCTRIG:1;
      unsigned OC32:1;
      unsigned DCB:2;
      unsigned :1;
      unsigned OCINV:1;
      unsigned FLTTRIEN:1;
      unsigned FLTOUT:1;
      unsigned FLTMD:1;
    };
    struct {
      unsigned SYNCSEL0:1;
      unsigned SYNCSEL1:1;
      unsigned SYNCSEL2:1;
      unsigned SYNCSEL3:1;
      unsigned SYNCSEL4:1;
      unsigned :4;
      unsigned DCB0:1;
      unsigned DCB1:1;
      unsigned :4;
      unsigned FLTMODE:1;
    };
  };
} OC1CON2BITS;
extern volatile OC1CON2BITS OC1CON2bits __attribute__((__sfr__));



typedef struct tagOC {
        unsigned int ocxrs;
        unsigned int ocxr;
        unsigned int ocxcon;
} OC, *POC;



extern volatile OC OC1 __attribute__((__sfr__));

extern volatile OC OC2 __attribute__((__sfr__));

extern volatile OC OC3 __attribute__((__sfr__));

extern volatile OC OC4 __attribute__((__sfr__));

extern volatile OC OC5 __attribute__((__sfr__));


extern volatile unsigned int OC1RS __attribute__((__sfr__));

extern volatile unsigned int OC1R __attribute__((__sfr__));

extern volatile unsigned int OC1TMR __attribute__((__sfr__));

extern volatile unsigned int OC2CON1 __attribute__((__sfr__));
__extension__ typedef struct tagOC2CON1BITS {
  union {
    struct {
      unsigned OCM:3;
      unsigned TRIGMODE:1;
      unsigned OCFLT:3;
      unsigned ENFLT:3;
      unsigned OCTSEL:3;
      unsigned OCSIDL:1;
    };
    struct {
      unsigned OCM0:1;
      unsigned OCM1:1;
      unsigned OCM2:1;
      unsigned :1;
      unsigned OCFLT0:1;
      unsigned OCFLT1:1;
      unsigned OCFLT2:1;
      unsigned ENFLT0:1;
      unsigned ENFLT1:1;
      unsigned ENFLT2:1;
      unsigned OCTSEL0:1;
      unsigned OCTSEL1:1;
      unsigned OCTSEL2:1;
    };
  };
} OC2CON1BITS;
extern volatile OC2CON1BITS OC2CON1bits __attribute__((__sfr__));


extern volatile unsigned int OC2CON2 __attribute__((__sfr__));
__extension__ typedef struct tagOC2CON2BITS {
  union {
    struct {
      unsigned SYNCSEL:5;
      unsigned OCTRIS:1;
      unsigned TRIGSTAT:1;
      unsigned OCTRIG:1;
      unsigned OC32:1;
      unsigned DCB:2;
      unsigned :1;
      unsigned OCINV:1;
      unsigned FLTTRIEN:1;
      unsigned FLTOUT:1;
      unsigned FLTMD:1;
    };
    struct {
      unsigned SYNCSEL0:1;
      unsigned SYNCSEL1:1;
      unsigned SYNCSEL2:1;
      unsigned SYNCSEL3:1;
      unsigned SYNCSEL4:1;
      unsigned :4;
      unsigned DCB0:1;
      unsigned DCB1:1;
      unsigned :4;
      unsigned FLTMODE:1;
    };
  };
} OC2CON2BITS;
extern volatile OC2CON2BITS OC2CON2bits __attribute__((__sfr__));


extern volatile unsigned int OC2RS __attribute__((__sfr__));

extern volatile unsigned int OC2R __attribute__((__sfr__));

extern volatile unsigned int OC2TMR __attribute__((__sfr__));

extern volatile unsigned int OC3CON1 __attribute__((__sfr__));
__extension__ typedef struct tagOC3CON1BITS {
  union {
    struct {
      unsigned OCM:3;
      unsigned TRIGMODE:1;
      unsigned OCFLT:3;
      unsigned ENFLT:3;
      unsigned OCTSEL:3;
      unsigned OCSIDL:1;
    };
    struct {
      unsigned OCM0:1;
      unsigned OCM1:1;
      unsigned OCM2:1;
      unsigned :1;
      unsigned OCFLT0:1;
      unsigned OCFLT1:1;
      unsigned OCFLT2:1;
      unsigned ENFLT0:1;
      unsigned ENFLT1:1;
      unsigned ENFLT2:1;
      unsigned OCTSEL0:1;
      unsigned OCTSEL1:1;
      unsigned OCTSEL2:1;
    };
  };
} OC3CON1BITS;
extern volatile OC3CON1BITS OC3CON1bits __attribute__((__sfr__));


extern volatile unsigned int OC3CON2 __attribute__((__sfr__));
__extension__ typedef struct tagOC3CON2BITS {
  union {
    struct {
      unsigned SYNCSEL:5;
      unsigned OCTRIS:1;
      unsigned TRIGSTAT:1;
      unsigned OCTRIG:1;
      unsigned OC32:1;
      unsigned DCB:2;
      unsigned :1;
      unsigned OCINV:1;
      unsigned FLTTRIEN:1;
      unsigned FLTOUT:1;
      unsigned FLTMD:1;
    };
    struct {
      unsigned SYNCSEL0:1;
      unsigned SYNCSEL1:1;
      unsigned SYNCSEL2:1;
      unsigned SYNCSEL3:1;
      unsigned SYNCSEL4:1;
      unsigned :4;
      unsigned DCB0:1;
      unsigned DCB1:1;
      unsigned :4;
      unsigned FLTMODE:1;
    };
  };
} OC3CON2BITS;
extern volatile OC3CON2BITS OC3CON2bits __attribute__((__sfr__));


extern volatile unsigned int OC3RS __attribute__((__sfr__));

extern volatile unsigned int OC3R __attribute__((__sfr__));

extern volatile unsigned int OC3TMR __attribute__((__sfr__));

extern volatile unsigned int OC4CON1 __attribute__((__sfr__));
__extension__ typedef struct tagOC4CON1BITS {
  union {
    struct {
      unsigned OCM:3;
      unsigned TRIGMODE:1;
      unsigned OCFLT:3;
      unsigned ENFLT:3;
      unsigned OCTSEL:3;
      unsigned OCSIDL:1;
    };
    struct {
      unsigned OCM0:1;
      unsigned OCM1:1;
      unsigned OCM2:1;
      unsigned :1;
      unsigned OCFLT0:1;
      unsigned OCFLT1:1;
      unsigned OCFLT2:1;
      unsigned ENFLT0:1;
      unsigned ENFLT1:1;
      unsigned ENFLT2:1;
      unsigned OCTSEL0:1;
      unsigned OCTSEL1:1;
      unsigned OCTSEL2:1;
    };
  };
} OC4CON1BITS;
extern volatile OC4CON1BITS OC4CON1bits __attribute__((__sfr__));


extern volatile unsigned int OC4CON2 __attribute__((__sfr__));
__extension__ typedef struct tagOC4CON2BITS {
  union {
    struct {
      unsigned SYNCSEL:5;
      unsigned OCTRIS:1;
      unsigned TRIGSTAT:1;
      unsigned OCTRIG:1;
      unsigned OC32:1;
      unsigned DCB:2;
      unsigned :1;
      unsigned OCINV:1;
      unsigned FLTTRIEN:1;
      unsigned FLTOUT:1;
      unsigned FLTMD:1;
    };
    struct {
      unsigned SYNCSEL0:1;
      unsigned SYNCSEL1:1;
      unsigned SYNCSEL2:1;
      unsigned SYNCSEL3:1;
      unsigned SYNCSEL4:1;
      unsigned :4;
      unsigned DCB0:1;
      unsigned DCB1:1;
      unsigned :4;
      unsigned FLTMODE:1;
    };
  };
} OC4CON2BITS;
extern volatile OC4CON2BITS OC4CON2bits __attribute__((__sfr__));


extern volatile unsigned int OC4RS __attribute__((__sfr__));

extern volatile unsigned int OC4R __attribute__((__sfr__));

extern volatile unsigned int OC4TMR __attribute__((__sfr__));

extern volatile unsigned int OC5CON1 __attribute__((__sfr__));
__extension__ typedef struct tagOC5CON1BITS {
  union {
    struct {
      unsigned OCM:3;
      unsigned TRIGMODE:1;
      unsigned OCFLT:3;
      unsigned ENFLT:3;
      unsigned OCTSEL:3;
      unsigned OCSIDL:1;
    };
    struct {
      unsigned OCM0:1;
      unsigned OCM1:1;
      unsigned OCM2:1;
      unsigned :1;
      unsigned OCFLT0:1;
      unsigned OCFLT1:1;
      unsigned OCFLT2:1;
      unsigned ENFLT0:1;
      unsigned ENFLT1:1;
      unsigned ENFLT2:1;
      unsigned OCTSEL0:1;
      unsigned OCTSEL1:1;
      unsigned OCTSEL2:1;
    };
  };
} OC5CON1BITS;
extern volatile OC5CON1BITS OC5CON1bits __attribute__((__sfr__));


extern volatile unsigned int OC5CON2 __attribute__((__sfr__));
__extension__ typedef struct tagOC5CON2BITS {
  union {
    struct {
      unsigned SYNCSEL:5;
      unsigned OCTRIS:1;
      unsigned TRIGSTAT:1;
      unsigned OCTRIG:1;
      unsigned OC32:1;
      unsigned DCB:2;
      unsigned :1;
      unsigned OCINV:1;
      unsigned FLTTRIEN:1;
      unsigned FLTOUT:1;
      unsigned FLTMD:1;
    };
    struct {
      unsigned SYNCSEL0:1;
      unsigned SYNCSEL1:1;
      unsigned SYNCSEL2:1;
      unsigned SYNCSEL3:1;
      unsigned SYNCSEL4:1;
      unsigned :4;
      unsigned DCB0:1;
      unsigned DCB1:1;
      unsigned :4;
      unsigned FLTMODE:1;
    };
  };
} OC5CON2BITS;
extern volatile OC5CON2BITS OC5CON2bits __attribute__((__sfr__));


extern volatile unsigned int OC5RS __attribute__((__sfr__));

extern volatile unsigned int OC5R __attribute__((__sfr__));

extern volatile unsigned int OC5TMR __attribute__((__sfr__));

extern volatile unsigned int I2C1RCV __attribute__((__sfr__));

extern volatile unsigned int I2C1TRN __attribute__((__sfr__));

extern volatile unsigned int I2C1BRG __attribute__((__sfr__));

extern volatile unsigned int I2C1CON __attribute__((__sfr__));
typedef struct tagI2C1CONBITS {
  unsigned SEN:1;
  unsigned RSEN:1;
  unsigned PEN:1;
  unsigned RCEN:1;
  unsigned ACKEN:1;
  unsigned ACKDT:1;
  unsigned STREN:1;
  unsigned GCEN:1;
  unsigned SMEN:1;
  unsigned DISSLW:1;
  unsigned A10M:1;
  unsigned IPMIEN:1;
  unsigned SCLREL:1;
  unsigned I2CSIDL:1;
  unsigned :1;
  unsigned I2CEN:1;
} I2C1CONBITS;
extern volatile I2C1CONBITS I2C1CONbits __attribute__((__sfr__));


extern volatile unsigned int I2C1STAT __attribute__((__sfr__));
__extension__ typedef struct tagI2C1STATBITS {
  union {
    struct {
      unsigned TBF:1;
      unsigned RBF:1;
      unsigned R_NOT_W:1;
      unsigned S:1;
      unsigned P:1;
      unsigned D_NOT_A:1;
      unsigned I2COV:1;
      unsigned IWCOL:1;
      unsigned ADD10:1;
      unsigned GCSTAT:1;
      unsigned BCL:1;
      unsigned :3;
      unsigned TRSTAT:1;
      unsigned ACKSTAT:1;
    };
    struct {
      unsigned :2;
      unsigned R_W:1;
      unsigned :2;
      unsigned D_A:1;
    };
  };
} I2C1STATBITS;
extern volatile I2C1STATBITS I2C1STATbits __attribute__((__sfr__));


extern volatile unsigned int I2C1ADD __attribute__((__sfr__));

extern volatile unsigned int I2C1MSK __attribute__((__sfr__));

extern volatile unsigned int I2C2RCV __attribute__((__sfr__));

extern volatile unsigned int I2C2TRN __attribute__((__sfr__));

extern volatile unsigned int I2C2BRG __attribute__((__sfr__));

extern volatile unsigned int I2C2CON __attribute__((__sfr__));
typedef struct tagI2C2CONBITS {
  unsigned SEN:1;
  unsigned RSEN:1;
  unsigned PEN:1;
  unsigned RCEN:1;
  unsigned ACKEN:1;
  unsigned ACKDT:1;
  unsigned STREN:1;
  unsigned GCEN:1;
  unsigned SMEN:1;
  unsigned DISSLW:1;
  unsigned A10M:1;
  unsigned IPMIEN:1;
  unsigned SCLREL:1;
  unsigned I2CSIDL:1;
  unsigned :1;
  unsigned I2CEN:1;
} I2C2CONBITS;
extern volatile I2C2CONBITS I2C2CONbits __attribute__((__sfr__));


extern volatile unsigned int I2C2STAT __attribute__((__sfr__));
__extension__ typedef struct tagI2C2STATBITS {
  union {
    struct {
      unsigned TBF:1;
      unsigned RBF:1;
      unsigned R_NOT_W:1;
      unsigned S:1;
      unsigned P:1;
      unsigned D_NOT_A:1;
      unsigned I2COV:1;
      unsigned IWCOL:1;
      unsigned ADD10:1;
      unsigned GCSTAT:1;
      unsigned BCL:1;
      unsigned :3;
      unsigned TRSTAT:1;
      unsigned ACKSTAT:1;
    };
    struct {
      unsigned :2;
      unsigned R_W:1;
      unsigned :2;
      unsigned D_A:1;
    };
  };
} I2C2STATBITS;
extern volatile I2C2STATBITS I2C2STATbits __attribute__((__sfr__));


extern volatile unsigned int I2C2ADD __attribute__((__sfr__));

extern volatile unsigned int I2C2MSK __attribute__((__sfr__));


typedef struct tagUART {
        unsigned int uxmode;
        unsigned int uxsta;
        unsigned int uxtxreg;
        unsigned int uxrxreg;
        unsigned int uxbrg;
} UART, *PUART;
# 1825 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\support\\PIC24F\\h/p24FJ64GB002.h" 3 4
extern volatile UART UART1 __attribute__((__sfr__));

extern volatile UART UART2 __attribute__((__sfr__));


extern volatile unsigned int U1MODE __attribute__((__sfr__));
__extension__ typedef struct tagU1MODEBITS {
  union {
    struct {
      unsigned STSEL:1;
      unsigned PDSEL:2;
      unsigned BRGH:1;
      unsigned RXINV:1;
      unsigned ABAUD:1;
      unsigned LPBACK:1;
      unsigned WAKE:1;
      unsigned UEN:2;
      unsigned :1;
      unsigned RTSMD:1;
      unsigned IREN:1;
      unsigned USIDL:1;
      unsigned :1;
      unsigned UARTEN:1;
    };
    struct {
      unsigned :1;
      unsigned PDSEL0:1;
      unsigned PDSEL1:1;
      unsigned :5;
      unsigned UEN0:1;
      unsigned UEN1:1;
    };
  };
} U1MODEBITS;
extern volatile U1MODEBITS U1MODEbits __attribute__((__sfr__));


extern volatile unsigned int U1STA __attribute__((__sfr__));
__extension__ typedef struct tagU1STABITS {
  union {
    struct {
      unsigned URXDA:1;
      unsigned OERR:1;
      unsigned FERR:1;
      unsigned PERR:1;
      unsigned RIDLE:1;
      unsigned ADDEN:1;
      unsigned URXISEL:2;
      unsigned TRMT:1;
      unsigned UTXBF:1;
      unsigned UTXEN:1;
      unsigned UTXBRK:1;
      unsigned :1;
      unsigned UTXISEL0:1;
      unsigned UTXINV:1;
      unsigned UTXISEL1:1;
    };
    struct {
      unsigned :6;
      unsigned URXISEL0:1;
      unsigned URXISEL1:1;
    };
  };
} U1STABITS;
extern volatile U1STABITS U1STAbits __attribute__((__sfr__));


extern volatile unsigned int U1TXREG __attribute__((__sfr__));
typedef struct tagU1TXREGBITS {
  unsigned UTXREG0:1;
  unsigned UTXREG1:1;
  unsigned UTXREG2:1;
  unsigned UTXREG3:1;
  unsigned UTXREG4:1;
  unsigned UTXREG5:1;
  unsigned UTXREG6:1;
  unsigned UTXREG7:1;
  unsigned UTXREG8:1;
} U1TXREGBITS;
extern volatile U1TXREGBITS U1TXREGbits __attribute__((__sfr__));


extern volatile unsigned int U1RXREG __attribute__((__sfr__));
typedef struct tagU1RXREGBITS {
  unsigned URXREG0:1;
  unsigned URXREG1:1;
  unsigned URXREG2:1;
  unsigned URXREG3:1;
  unsigned URXREG4:1;
  unsigned URXREG5:1;
  unsigned URXREG6:1;
  unsigned URXREG7:1;
  unsigned URXREG8:1;
} U1RXREGBITS;
extern volatile U1RXREGBITS U1RXREGbits __attribute__((__sfr__));


extern volatile unsigned int U1BRG __attribute__((__sfr__));

extern volatile unsigned int U2MODE __attribute__((__sfr__));
__extension__ typedef struct tagU2MODEBITS {
  union {
    struct {
      unsigned STSEL:1;
      unsigned PDSEL:2;
      unsigned BRGH:1;
      unsigned RXINV:1;
      unsigned ABAUD:1;
      unsigned LPBACK:1;
      unsigned WAKE:1;
      unsigned UEN:2;
      unsigned :1;
      unsigned RTSMD:1;
      unsigned IREN:1;
      unsigned USIDL:1;
      unsigned :1;
      unsigned UARTEN:1;
    };
    struct {
      unsigned :1;
      unsigned PDSEL0:1;
      unsigned PDSEL1:1;
      unsigned :5;
      unsigned UEN0:1;
      unsigned UEN1:1;
    };
  };
} U2MODEBITS;
extern volatile U2MODEBITS U2MODEbits __attribute__((__sfr__));


extern volatile unsigned int U2STA __attribute__((__sfr__));
__extension__ typedef struct tagU2STABITS {
  union {
    struct {
      unsigned URXDA:1;
      unsigned OERR:1;
      unsigned FERR:1;
      unsigned PERR:1;
      unsigned RIDLE:1;
      unsigned ADDEN:1;
      unsigned URXISEL:2;
      unsigned TRMT:1;
      unsigned UTXBF:1;
      unsigned UTXEN:1;
      unsigned UTXBRK:1;
      unsigned :1;
      unsigned UTXISEL0:1;
      unsigned UTXINV:1;
      unsigned UTXISEL1:1;
    };
    struct {
      unsigned :6;
      unsigned URXISEL0:1;
      unsigned URXISEL1:1;
    };
  };
} U2STABITS;
extern volatile U2STABITS U2STAbits __attribute__((__sfr__));


extern volatile unsigned int U2TXREG __attribute__((__sfr__));
typedef struct tagU2TXREGBITS {
  unsigned UTXREG0:1;
  unsigned UTXREG1:1;
  unsigned UTXREG2:1;
  unsigned UTXREG3:1;
  unsigned UTXREG4:1;
  unsigned UTXREG5:1;
  unsigned UTXREG6:1;
  unsigned UTXREG7:1;
  unsigned UTXREG8:1;
} U2TXREGBITS;
extern volatile U2TXREGBITS U2TXREGbits __attribute__((__sfr__));


extern volatile unsigned int U2RXREG __attribute__((__sfr__));
typedef struct tagU2RXREGBITS {
  unsigned URXREG0:1;
  unsigned URXREG1:1;
  unsigned URXREG2:1;
  unsigned URXREG3:1;
  unsigned URXREG4:1;
  unsigned URXREG5:1;
  unsigned URXREG6:1;
  unsigned URXREG7:1;
  unsigned URXREG8:1;
} U2RXREGBITS;
extern volatile U2RXREGBITS U2RXREGbits __attribute__((__sfr__));


extern volatile unsigned int U2BRG __attribute__((__sfr__));


typedef struct tagSPI {
        unsigned int spixstat;
        unsigned int spixcon1;
        unsigned int spixcon2;
        unsigned int unused;
        unsigned int spixbuf;
} SPI, *PSPI;






extern volatile SPI SPI1 __attribute__((__sfr__));

extern volatile SPI SPI2 __attribute__((__sfr__));


extern volatile unsigned int SPI1STAT __attribute__((__sfr__));
__extension__ typedef struct tagSPI1STATBITS {
  union {
    struct {
      unsigned SPIRBF:1;
      unsigned SPITBF:1;
      unsigned SISEL:3;
      unsigned SRXMPT:1;
      unsigned SPIROV:1;
      unsigned SRMPT:1;
      unsigned SPIBEC:3;
      unsigned :2;
      unsigned SPISIDL:1;
      unsigned :1;
      unsigned SPIEN:1;
    };
    struct {
      unsigned :2;
      unsigned SISEL0:1;
      unsigned SISEL1:1;
      unsigned SISEL2:1;
      unsigned :3;
      unsigned SPIBEC0:1;
      unsigned SPIBEC1:1;
      unsigned SPIBEC2:1;
    };
  };
} SPI1STATBITS;
extern volatile SPI1STATBITS SPI1STATbits __attribute__((__sfr__));


extern volatile unsigned int SPI1CON1 __attribute__((__sfr__));
__extension__ typedef struct tagSPI1CON1BITS {
  union {
    struct {
      unsigned PPRE:2;
      unsigned SPRE:3;
      unsigned MSTEN:1;
      unsigned CKP:1;
      unsigned SSEN:1;
      unsigned CKE:1;
      unsigned SMP:1;
      unsigned MODE16:1;
      unsigned DISSDO:1;
      unsigned DISSCK:1;
    };
    struct {
      unsigned PPRE0:1;
      unsigned PPRE1:1;
      unsigned SPRE0:1;
      unsigned SPRE1:1;
      unsigned SPRE2:1;
    };
  };
} SPI1CON1BITS;
extern volatile SPI1CON1BITS SPI1CON1bits __attribute__((__sfr__));


extern volatile unsigned int SPI1CON2 __attribute__((__sfr__));
typedef struct tagSPI1CON2BITS {
  unsigned SPIBEN:1;
  unsigned SPIFE:1;
  unsigned :11;
  unsigned SPIFPOL:1;
  unsigned SPIFSD:1;
  unsigned FRMEN:1;
} SPI1CON2BITS;
extern volatile SPI1CON2BITS SPI1CON2bits __attribute__((__sfr__));


extern volatile unsigned int SPI1BUF __attribute__((__sfr__));

extern volatile unsigned int SPI2STAT __attribute__((__sfr__));
__extension__ typedef struct tagSPI2STATBITS {
  union {
    struct {
      unsigned SPIRBF:1;
      unsigned SPITBF:1;
      unsigned SISEL:3;
      unsigned SRXMPT:1;
      unsigned SPIROV:1;
      unsigned SRMPT:1;
      unsigned SPIBEC:3;
      unsigned :2;
      unsigned SPISIDL:1;
      unsigned :1;
      unsigned SPIEN:1;
    };
    struct {
      unsigned :2;
      unsigned SISEL0:1;
      unsigned SISEL1:1;
      unsigned SISEL2:1;
      unsigned :3;
      unsigned SPIBEC0:1;
      unsigned SPIBEC1:1;
      unsigned SPIBEC2:1;
    };
  };
} SPI2STATBITS;
extern volatile SPI2STATBITS SPI2STATbits __attribute__((__sfr__));


extern volatile unsigned int SPI2CON1 __attribute__((__sfr__));
__extension__ typedef struct tagSPI2CON1BITS {
  union {
    struct {
      unsigned PPRE:2;
      unsigned SPRE:3;
      unsigned MSTEN:1;
      unsigned CKP:1;
      unsigned SSEN:1;
      unsigned CKE:1;
      unsigned SMP:1;
      unsigned MODE16:1;
      unsigned DISSDO:1;
      unsigned DISSCK:1;
    };
    struct {
      unsigned PPRE0:1;
      unsigned PPRE1:1;
      unsigned SPRE0:1;
      unsigned SPRE1:1;
      unsigned SPRE2:1;
    };
  };
} SPI2CON1BITS;
extern volatile SPI2CON1BITS SPI2CON1bits __attribute__((__sfr__));


extern volatile unsigned int SPI2CON2 __attribute__((__sfr__));
typedef struct tagSPI2CON2BITS {
  unsigned SPIBEN:1;
  unsigned SPIFE:1;
  unsigned :11;
  unsigned SPIFPOL:1;
  unsigned SPIFSD:1;
  unsigned FRMEN:1;
} SPI2CON2BITS;
extern volatile SPI2CON2BITS SPI2CON2bits __attribute__((__sfr__));


extern volatile unsigned int SPI2BUF __attribute__((__sfr__));

extern volatile unsigned int TRISA __attribute__((__sfr__));
typedef struct tagTRISABITS {
  unsigned TRISA0:1;
  unsigned TRISA1:1;
  unsigned TRISA2:1;
  unsigned TRISA3:1;
  unsigned TRISA4:1;
} TRISABITS;
extern volatile TRISABITS TRISAbits __attribute__((__sfr__));


extern volatile unsigned int PORTA __attribute__((__sfr__));
typedef struct tagPORTABITS {
  unsigned RA0:1;
  unsigned RA1:1;
  unsigned RA2:1;
  unsigned RA3:1;
  unsigned RA4:1;
} PORTABITS;
extern volatile PORTABITS PORTAbits __attribute__((__sfr__));


extern volatile unsigned int LATA __attribute__((__sfr__));
typedef struct tagLATABITS {
  unsigned LATA0:1;
  unsigned LATA1:1;
  unsigned LATA2:1;
  unsigned LATA3:1;
  unsigned LATA4:1;
} LATABITS;
extern volatile LATABITS LATAbits __attribute__((__sfr__));


extern volatile unsigned int ODCA __attribute__((__sfr__));
typedef struct tagODCABITS {
  unsigned ODA0:1;
  unsigned ODA1:1;
  unsigned ODA2:1;
  unsigned ODA3:1;
  unsigned ODA4:1;
} ODCABITS;
extern volatile ODCABITS ODCAbits __attribute__((__sfr__));


extern volatile unsigned int TRISB __attribute__((__sfr__));
typedef struct tagTRISBBITS {
  unsigned TRISB0:1;
  unsigned TRISB1:1;
  unsigned TRISB2:1;
  unsigned TRISB3:1;
  unsigned TRISB4:1;
  unsigned TRISB5:1;
  unsigned :1;
  unsigned TRISB7:1;
  unsigned TRISB8:1;
  unsigned TRISB9:1;
  unsigned TRISB10:1;
  unsigned TRISB11:1;
  unsigned :1;
  unsigned TRISB13:1;
  unsigned TRISB14:1;
  unsigned TRISB15:1;
} TRISBBITS;
extern volatile TRISBBITS TRISBbits __attribute__((__sfr__));


extern volatile unsigned int PORTB __attribute__((__sfr__));
typedef struct tagPORTBBITS {
  unsigned RB0:1;
  unsigned RB1:1;
  unsigned RB2:1;
  unsigned RB3:1;
  unsigned RB4:1;
  unsigned RB5:1;
  unsigned :1;
  unsigned RB7:1;
  unsigned RB8:1;
  unsigned RB9:1;
  unsigned RB10:1;
  unsigned RB11:1;
  unsigned :1;
  unsigned RB13:1;
  unsigned RB14:1;
  unsigned RB15:1;
} PORTBBITS;
extern volatile PORTBBITS PORTBbits __attribute__((__sfr__));


extern volatile unsigned int LATB __attribute__((__sfr__));
typedef struct tagLATBBITS {
  unsigned LATB0:1;
  unsigned LATB1:1;
  unsigned LATB2:1;
  unsigned LATB3:1;
  unsigned LATB4:1;
  unsigned LATB5:1;
  unsigned :1;
  unsigned LATB7:1;
  unsigned LATB8:1;
  unsigned LATB9:1;
  unsigned LATB10:1;
  unsigned LATB11:1;
  unsigned :1;
  unsigned LATB13:1;
  unsigned LATB14:1;
  unsigned LATB15:1;
} LATBBITS;
extern volatile LATBBITS LATBbits __attribute__((__sfr__));


extern volatile unsigned int ODCB __attribute__((__sfr__));
typedef struct tagODCBBITS {
  unsigned ODB0:1;
  unsigned ODB1:1;
  unsigned ODB2:1;
  unsigned ODB3:1;
  unsigned ODB4:1;
  unsigned ODB5:1;
  unsigned :1;
  unsigned ODB7:1;
  unsigned ODB8:1;
  unsigned ODB9:1;
  unsigned ODB10:1;
  unsigned ODB11:1;
  unsigned :1;
  unsigned ODB13:1;
  unsigned ODB14:1;
  unsigned ODB15:1;
} ODCBBITS;
extern volatile ODCBBITS ODCBbits __attribute__((__sfr__));


extern volatile unsigned int PADCFG1 __attribute__((__sfr__));
__extension__ typedef struct tagPADCFG1BITS {
  union {
    struct {
      unsigned PMPTTL:1;
      unsigned RTSECSEL:2;
    };
    struct {
      unsigned RTSECSEL0:1;
      unsigned RTSECSEL1:1;
      unsigned RTSECSEL2:1;
    };
  };
} PADCFG1BITS;
extern volatile PADCFG1BITS PADCFG1bits __attribute__((__sfr__));


extern volatile unsigned int ADC1BUF0 __attribute__((__sfr__));

extern volatile unsigned int ADC1BUF1 __attribute__((__sfr__));

extern volatile unsigned int ADC1BUF2 __attribute__((__sfr__));

extern volatile unsigned int ADC1BUF3 __attribute__((__sfr__));

extern volatile unsigned int ADC1BUF4 __attribute__((__sfr__));

extern volatile unsigned int ADC1BUF5 __attribute__((__sfr__));

extern volatile unsigned int ADC1BUF6 __attribute__((__sfr__));

extern volatile unsigned int ADC1BUF7 __attribute__((__sfr__));

extern volatile unsigned int ADC1BUF8 __attribute__((__sfr__));

extern volatile unsigned int ADC1BUF9 __attribute__((__sfr__));

extern volatile unsigned int ADC1BUFA __attribute__((__sfr__));

extern volatile unsigned int ADC1BUFB __attribute__((__sfr__));

extern volatile unsigned int ADC1BUFC __attribute__((__sfr__));

extern volatile unsigned int ADC1BUFD __attribute__((__sfr__));

extern volatile unsigned int ADC1BUFE __attribute__((__sfr__));

extern volatile unsigned int ADC1BUFF __attribute__((__sfr__));

extern volatile unsigned int AD1CON1 __attribute__((__sfr__));
__extension__ typedef struct tagAD1CON1BITS {
  union {
    struct {
      unsigned DONE:1;
      unsigned SAMP:1;
      unsigned ASAM:1;
      unsigned :2;
      unsigned SSRC:3;
      unsigned FORM:2;
      unsigned :3;
      unsigned ADSIDL:1;
      unsigned :1;
      unsigned ADON:1;
    };
    struct {
      unsigned :5;
      unsigned SSRC0:1;
      unsigned SSRC1:1;
      unsigned SSRC2:1;
      unsigned FORM0:1;
      unsigned FORM1:1;
    };
  };
} AD1CON1BITS;
extern volatile AD1CON1BITS AD1CON1bits __attribute__((__sfr__));


extern volatile unsigned int AD1CON2 __attribute__((__sfr__));
__extension__ typedef struct tagAD1CON2BITS {
  union {
    struct {
      unsigned ALTS:1;
      unsigned BUFM:1;
      unsigned SMPI:4;
      unsigned :1;
      unsigned BUFS:1;
      unsigned :2;
      unsigned CSCNA:1;
      unsigned :2;
      unsigned VCFG:3;
    };
    struct {
      unsigned :2;
      unsigned SMPI0:1;
      unsigned SMPI1:1;
      unsigned SMPI2:1;
      unsigned SMPI3:1;
      unsigned :7;
      unsigned VCFG0:1;
      unsigned VCFG1:1;
      unsigned VCFG2:1;
    };
  };
} AD1CON2BITS;
extern volatile AD1CON2BITS AD1CON2bits __attribute__((__sfr__));


extern volatile unsigned int AD1CON3 __attribute__((__sfr__));
__extension__ typedef struct tagAD1CON3BITS {
  union {
    struct {
      unsigned ADCS:8;
      unsigned SAMC:5;
      unsigned :2;
      unsigned ADRC:1;
    };
    struct {
      unsigned ADCS0:1;
      unsigned ADCS1:1;
      unsigned ADCS2:1;
      unsigned ADCS3:1;
      unsigned ADCS4:1;
      unsigned ADCS5:1;
      unsigned ADCS6:1;
      unsigned ADCS7:1;
      unsigned SAMC0:1;
      unsigned SAMC1:1;
      unsigned SAMC2:1;
      unsigned SAMC3:1;
      unsigned SAMC4:1;
    };
  };
} AD1CON3BITS;
extern volatile AD1CON3BITS AD1CON3bits __attribute__((__sfr__));


extern volatile unsigned int AD1CHS __attribute__((__sfr__));
__extension__ typedef struct tagAD1CHSBITS {
  union {
    struct {
      unsigned CH0SA:5;
      unsigned :2;
      unsigned CH0NA:1;
      unsigned CH0SB:5;
      unsigned :2;
      unsigned CH0NB:1;
    };
    struct {
      unsigned CH0SA0:1;
      unsigned CH0SA1:1;
      unsigned CH0SA2:1;
      unsigned CH0SA3:1;
      unsigned CH0SA4:1;
      unsigned :3;
      unsigned CH0SB0:1;
      unsigned CH0SB1:1;
      unsigned CH0SB2:1;
      unsigned CH0SB3:1;
      unsigned CH0SB4:1;
    };
  };
} AD1CHSBITS;
extern volatile AD1CHSBITS AD1CHSbits __attribute__((__sfr__));


extern volatile unsigned int AD1CHS0 __attribute__((__sfr__));
__extension__ typedef struct tagAD1CHS0BITS {
  union {
    struct {
      unsigned CH0SA:5;
      unsigned :2;
      unsigned CH0NA:1;
      unsigned CH0SB:5;
      unsigned :2;
      unsigned CH0NB:1;
    };
    struct {
      unsigned CH0SA0:1;
      unsigned CH0SA1:1;
      unsigned CH0SA2:1;
      unsigned CH0SA3:1;
      unsigned CH0SA4:1;
      unsigned :3;
      unsigned CH0SB0:1;
      unsigned CH0SB1:1;
      unsigned CH0SB2:1;
      unsigned CH0SB3:1;
      unsigned CH0SB4:1;
    };
  };
} AD1CHS0BITS;
extern volatile AD1CHS0BITS AD1CHS0bits __attribute__((__sfr__));


extern volatile unsigned int AD1PCFG __attribute__((__sfr__));
__extension__ typedef struct tagAD1PCFGBITS {
  union {
    struct {
      unsigned PCFG:16;
    };
    struct {
      unsigned PCFG0:1;
      unsigned PCFG1:1;
      unsigned PCFG2:1;
      unsigned PCFG3:1;
      unsigned PCFG4:1;
      unsigned PCFG5:1;
      unsigned PCFG6:1;
      unsigned PCFG7:1;
      unsigned PCFG8:1;
      unsigned PCFG9:1;
      unsigned PCFG10:1;
      unsigned PCFG11:1;
      unsigned PCFG12:1;
      unsigned PCFG13:1;
      unsigned PCFG14:1;
      unsigned PCFG15:1;
    };
  };
} AD1PCFGBITS;
extern volatile AD1PCFGBITS AD1PCFGbits __attribute__((__sfr__));


extern volatile unsigned int AD1PCFGL __attribute__((__sfr__));
__extension__ typedef struct tagAD1PCFGLBITS {
  union {
    struct {
      unsigned PCFG:16;
    };
    struct {
      unsigned PCFG0:1;
      unsigned PCFG1:1;
      unsigned PCFG2:1;
      unsigned PCFG3:1;
      unsigned PCFG4:1;
      unsigned PCFG5:1;
      unsigned PCFG6:1;
      unsigned PCFG7:1;
      unsigned PCFG8:1;
      unsigned PCFG9:1;
      unsigned PCFG10:1;
      unsigned PCFG11:1;
      unsigned PCFG12:1;
      unsigned PCFG13:1;
      unsigned PCFG14:1;
      unsigned PCFG15:1;
    };
  };
} AD1PCFGLBITS;
extern volatile AD1PCFGLBITS AD1PCFGLbits __attribute__((__sfr__));


extern volatile unsigned int AD1CSSL __attribute__((__sfr__));
__extension__ typedef struct tagAD1CSSLBITS {
  union {
    struct {
      unsigned CSSL:16;
    };
    struct {
      unsigned CSSL0:1;
      unsigned CSSL1:1;
      unsigned CSSL2:1;
      unsigned CSSL3:1;
      unsigned CSSL4:1;
      unsigned CSSL5:1;
      unsigned CSSL6:1;
      unsigned CSSL7:1;
      unsigned CSSL8:1;
      unsigned CSSL9:1;
      unsigned CSSL10:1;
      unsigned CSSL11:1;
      unsigned CSSL12:1;
      unsigned CSSL13:1;
      unsigned CSSL14:1;
      unsigned CSSL15:1;
    };
  };
} AD1CSSLBITS;
extern volatile AD1CSSLBITS AD1CSSLbits __attribute__((__sfr__));


extern volatile unsigned int CTMUCON __attribute__((__sfr__));
__extension__ typedef struct tagCTMUCONBITS {
  union {
    struct {
      unsigned EDG1STAT:1;
      unsigned EDG2STAT:1;
      unsigned EDG1SEL:2;
      unsigned EDG1POL:1;
      unsigned EDG2SEL:2;
      unsigned EDG2POL:1;
      unsigned CTTRIG:1;
      unsigned IDISSEN:1;
      unsigned EDGSEQEN:1;
      unsigned EDGEN:1;
      unsigned TGEN:1;
      unsigned CTMUSIDL:1;
      unsigned :1;
      unsigned CTMUEN:1;
    };
    struct {
      unsigned :2;
      unsigned EDG1SEL0:1;
      unsigned EDG1SEL1:1;
      unsigned :1;
      unsigned EDG2SEL0:1;
      unsigned EDG2SEL1:1;
    };
  };
} CTMUCONBITS;
extern volatile CTMUCONBITS CTMUCONbits __attribute__((__sfr__));


extern volatile unsigned int CTMUICON __attribute__((__sfr__));
__extension__ typedef struct tagCTMUICONBITS {
  union {
    struct {
      unsigned :8;
      unsigned IRNG:2;
      unsigned ITRIM:6;
    };
    struct {
      unsigned :8;
      unsigned IRNG0:1;
      unsigned IRNG1:1;
      unsigned ITRIM0:1;
      unsigned ITRIM1:1;
      unsigned ITRIM2:1;
      unsigned ITRIM3:1;
      unsigned ITRIM4:1;
      unsigned ITRIM5:1;
    };
  };
} CTMUICONBITS;
extern volatile CTMUICONBITS CTMUICONbits __attribute__((__sfr__));


extern volatile unsigned int U1OTGIR __attribute__((__sfr__));
typedef struct tagU1OTGIRBITS {
  unsigned VBUSVDIF:1;
  unsigned :1;
  unsigned SESENDIF:1;
  unsigned SESVDIF:1;
  unsigned ACTVIF:1;
  unsigned LSTATEIF:1;
  unsigned T1MSECIF:1;
  unsigned IDIF:1;
} U1OTGIRBITS;
extern volatile U1OTGIRBITS U1OTGIRbits __attribute__((__sfr__));


extern volatile unsigned int U1OTGIE __attribute__((__sfr__));
typedef struct tagU1OTGIEBITS {
  unsigned VBUSVDIE:1;
  unsigned :1;
  unsigned SESENDIE:1;
  unsigned SESVDIE:1;
  unsigned ACTVIE:1;
  unsigned LSTATEIE:1;
  unsigned T1MSECIE:1;
  unsigned IDIE:1;
} U1OTGIEBITS;
extern volatile U1OTGIEBITS U1OTGIEbits __attribute__((__sfr__));


extern volatile unsigned int U1OTGSTAT __attribute__((__sfr__));
typedef struct tagU1OTGSTATBITS {
  unsigned VBUSVD:1;
  unsigned :1;
  unsigned SESEND:1;
  unsigned SESVD:1;
  unsigned :1;
  unsigned LSTATE:1;
  unsigned :1;
  unsigned ID:1;
} U1OTGSTATBITS;
extern volatile U1OTGSTATBITS U1OTGSTATbits __attribute__((__sfr__));


extern volatile unsigned int U1OTGCON __attribute__((__sfr__));
typedef struct tagU1OTGCONBITS {
  unsigned VBUSDIS:1;
  unsigned VBUSCHG:1;
  unsigned OTGEN:1;
  unsigned VBUSON:1;
  unsigned DMPULDWN:1;
  unsigned DPPULDWN:1;
  unsigned DMPULUP:1;
  unsigned DPPULUP:1;
} U1OTGCONBITS;
extern volatile U1OTGCONBITS U1OTGCONbits __attribute__((__sfr__));


extern volatile unsigned int U1PWRC __attribute__((__sfr__));
__extension__ typedef struct tagU1PWRCBITS {
  union {
    struct {
      unsigned USBPWR:1;
      unsigned USUSPND:1;
      unsigned :2;
      unsigned USLPGRD:1;
      unsigned :2;
      unsigned UACTPND:1;
    };
    struct {
      unsigned :1;
      unsigned USUSPEND:1;
    };
  };
} U1PWRCBITS;
extern volatile U1PWRCBITS U1PWRCbits __attribute__((__sfr__));


extern volatile unsigned int U1IR __attribute__((__sfr__));
__extension__ typedef struct tagU1IRBITS {
  union {
    struct {
      unsigned URSTIF:1;
      unsigned UERRIF:1;
      unsigned SOFIF:1;
      unsigned TRNIF:1;
      unsigned IDLEIF:1;
      unsigned RESUMEIF:1;
      unsigned :1;
      unsigned STALLIF:1;
    };
    struct {
      unsigned DETACHIF:1;
      unsigned :5;
      unsigned ATTACHIF:1;
    };
  };
} U1IRBITS;
extern volatile U1IRBITS U1IRbits __attribute__((__sfr__));


extern volatile unsigned int U1IE __attribute__((__sfr__));
__extension__ typedef struct tagU1IEBITS {
  union {
    struct {
      unsigned URSTIE:1;
      unsigned UERRIE:1;
      unsigned SOFIE:1;
      unsigned TRNIE:1;
      unsigned IDLEIE:1;
      unsigned RESUMEIE:1;
      unsigned :1;
      unsigned STALLIE:1;
    };
    struct {
      unsigned DETACHIE:1;
      unsigned :5;
      unsigned ATTACHIE:1;
    };
  };
} U1IEBITS;
extern volatile U1IEBITS U1IEbits __attribute__((__sfr__));


extern volatile unsigned int U1EIR __attribute__((__sfr__));
__extension__ typedef struct tagU1EIRBITS {
  union {
    struct {
      unsigned PIDEF:1;
      unsigned CRC5EF:1;
      unsigned CRC16EF:1;
      unsigned DFN8EF:1;
      unsigned BTOEF:1;
      unsigned DMAEF:1;
      unsigned :1;
      unsigned BTSEF:1;
    };
    struct {
      unsigned :1;
      unsigned EOFEF:1;
    };
  };
} U1EIRBITS;
extern volatile U1EIRBITS U1EIRbits __attribute__((__sfr__));


extern volatile unsigned int U1EIE __attribute__((__sfr__));
__extension__ typedef struct tagU1EIEBITS {
  union {
    struct {
      unsigned PIDEE:1;
      unsigned CRC5EE:1;
      unsigned CRC16EE:1;
      unsigned DFN8EE:1;
      unsigned BTOEE:1;
      unsigned DMAEE:1;
      unsigned :1;
      unsigned BTSEE:1;
    };
    struct {
      unsigned :1;
      unsigned EOFEE:1;
    };
  };
} U1EIEBITS;
extern volatile U1EIEBITS U1EIEbits __attribute__((__sfr__));


extern volatile unsigned int U1STAT __attribute__((__sfr__));
__extension__ typedef struct tagU1STATBITS {
  union {
    struct {
      unsigned :2;
      unsigned PPBI:1;
      unsigned DIR:1;
      unsigned ENDPT0:1;
      unsigned ENDPT1:1;
      unsigned ENDPT2:1;
      unsigned ENDPT3:1;
    };
    struct {
      unsigned :4;
      unsigned ENDPT:4;
    };
  };
} U1STATBITS;
extern volatile U1STATBITS U1STATbits __attribute__((__sfr__));


extern volatile unsigned int U1CON __attribute__((__sfr__));
__extension__ typedef struct tagU1CONBITS {
  union {
    struct {
      unsigned USBEN:1;
      unsigned PPBRST:1;
      unsigned RESUME:1;
      unsigned HOSTEN:1;
      unsigned :1;
      unsigned PKTDIS:1;
      unsigned SE0:1;
    };
    struct {
      unsigned SOFEN:1;
      unsigned :3;
      unsigned USBRST:1;
      unsigned TOKBUSY:1;
      unsigned :1;
      unsigned JSTATE:1;
    };
    struct {
      unsigned :4;
      unsigned RESET:1;
    };
  };
} U1CONBITS;
extern volatile U1CONBITS U1CONbits __attribute__((__sfr__));


extern volatile unsigned int U1ADDR __attribute__((__sfr__));
__extension__ typedef struct tagU1ADDRBITS {
  union {
    struct {
      unsigned DEVADDR0:1;
      unsigned DEVADDR1:1;
      unsigned DEVADDR2:1;
      unsigned DEVADDR3:1;
      unsigned DEVADDR4:1;
      unsigned DEVADDR5:1;
      unsigned DEVADDR6:1;
      unsigned LOWSPDEN:1;
    };
    struct {
      unsigned DEVADDR:7;
      unsigned LSPDEN:1;
    };
  };
} U1ADDRBITS;
extern volatile U1ADDRBITS U1ADDRbits __attribute__((__sfr__));


extern volatile unsigned int U1BDTP1 __attribute__((__sfr__));
typedef struct tagU1BDTP1BITS {
  unsigned :1;
  unsigned BDTPTRL:7;
} U1BDTP1BITS;
extern volatile U1BDTP1BITS U1BDTP1bits __attribute__((__sfr__));


extern volatile unsigned int U1FRML __attribute__((__sfr__));
typedef struct tagU1FRMLBITS {
  unsigned FRM0:1;
  unsigned FRM1:1;
  unsigned FRM2:1;
  unsigned FRM3:1;
  unsigned FRM4:1;
  unsigned FRM5:1;
  unsigned FRM6:1;
  unsigned FRM7:1;
} U1FRMLBITS;
extern volatile U1FRMLBITS U1FRMLbits __attribute__((__sfr__));


extern volatile unsigned int U1FRMH __attribute__((__sfr__));
typedef struct tagU1FRMHBITS {
  unsigned FRM8:1;
  unsigned FRM9:1;
  unsigned FRM10:1;
} U1FRMHBITS;
extern volatile U1FRMHBITS U1FRMHbits __attribute__((__sfr__));


extern volatile unsigned int U1TOK __attribute__((__sfr__));
__extension__ typedef struct tagU1TOKBITS {
  union {
    struct {
      unsigned EP0:1;
      unsigned EP1:1;
      unsigned EP2:1;
      unsigned EP3:1;
      unsigned PID0:1;
      unsigned PID1:1;
      unsigned PID2:1;
      unsigned PID3:1;
    };
    struct {
      unsigned EP:4;
      unsigned PID:4;
    };
  };
} U1TOKBITS;
extern volatile U1TOKBITS U1TOKbits __attribute__((__sfr__));


extern volatile unsigned int U1SOF __attribute__((__sfr__));
typedef struct tagU1SOFBITS {
  unsigned CNT:8;
} U1SOFBITS;
extern volatile U1SOFBITS U1SOFbits __attribute__((__sfr__));


extern volatile unsigned int U1CNFG1 __attribute__((__sfr__));
__extension__ typedef struct tagU1CNFG1BITS {
  union {
    struct {
      unsigned PPB0:1;
      unsigned PPB1:1;
      unsigned :2;
      unsigned USBSIDL:1;
      unsigned :1;
      unsigned UOEMON:1;
      unsigned UTEYE:1;
    };
    struct {
      unsigned PPB:2;
    };
  };
} U1CNFG1BITS;
extern volatile U1CNFG1BITS U1CNFG1bits __attribute__((__sfr__));


extern volatile unsigned int U1CNFG2 __attribute__((__sfr__));
typedef struct tagU1CNFG2BITS {
  unsigned UTRDIS:1;
  unsigned UVCMPDIS:1;
  unsigned UVBUSDIS:1;
  unsigned EXTI2CEN:1;
  unsigned PUVBUS:1;
  unsigned UVCMPSEL:1;
} U1CNFG2BITS;
extern volatile U1CNFG2BITS U1CNFG2bits __attribute__((__sfr__));


extern volatile unsigned int U1EP0 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP0BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
      unsigned :1;
      unsigned RETRYDIS:1;
      unsigned LSPD:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
      unsigned :3;
      unsigned LOWSPD:1;
    };
  };
} U1EP0BITS;
extern volatile U1EP0BITS U1EP0bits __attribute__((__sfr__));


extern volatile unsigned int U1EP1 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP1BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP1BITS;
extern volatile U1EP1BITS U1EP1bits __attribute__((__sfr__));


extern volatile unsigned int U1EP2 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP2BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP2BITS;
extern volatile U1EP2BITS U1EP2bits __attribute__((__sfr__));


extern volatile unsigned int U1EP3 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP3BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP3BITS;
extern volatile U1EP3BITS U1EP3bits __attribute__((__sfr__));


extern volatile unsigned int U1EP4 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP4BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP4BITS;
extern volatile U1EP4BITS U1EP4bits __attribute__((__sfr__));


extern volatile unsigned int U1EP5 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP5BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP5BITS;
extern volatile U1EP5BITS U1EP5bits __attribute__((__sfr__));


extern volatile unsigned int U1EP6 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP6BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP6BITS;
extern volatile U1EP6BITS U1EP6bits __attribute__((__sfr__));


extern volatile unsigned int U1EP7 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP7BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP7BITS;
extern volatile U1EP7BITS U1EP7bits __attribute__((__sfr__));


extern volatile unsigned int U1EP8 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP8BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP8BITS;
extern volatile U1EP8BITS U1EP8bits __attribute__((__sfr__));


extern volatile unsigned int U1EP9 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP9BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP9BITS;
extern volatile U1EP9BITS U1EP9bits __attribute__((__sfr__));


extern volatile unsigned int U1EP10 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP10BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP10BITS;
extern volatile U1EP10BITS U1EP10bits __attribute__((__sfr__));


extern volatile unsigned int U1EP11 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP11BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP11BITS;
extern volatile U1EP11BITS U1EP11bits __attribute__((__sfr__));


extern volatile unsigned int U1EP12 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP12BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP12BITS;
extern volatile U1EP12BITS U1EP12bits __attribute__((__sfr__));


extern volatile unsigned int U1EP13 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP13BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP13BITS;
extern volatile U1EP13BITS U1EP13bits __attribute__((__sfr__));


extern volatile unsigned int U1EP14 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP14BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP14BITS;
extern volatile U1EP14BITS U1EP14bits __attribute__((__sfr__));


extern volatile unsigned int U1EP15 __attribute__((__sfr__));
__extension__ typedef struct tagU1EP15BITS {
  union {
    struct {
      unsigned EPHSHK:1;
      unsigned EPSTALL:1;
      unsigned EPTXEN:1;
      unsigned EPRXEN:1;
      unsigned EPCONDIS:1;
    };
    struct {
      unsigned :2;
      unsigned EPINEN:1;
      unsigned EPOUTEN:1;
    };
  };
} U1EP15BITS;
extern volatile U1EP15BITS U1EP15bits __attribute__((__sfr__));


extern volatile unsigned int U1PWMRRS __attribute__((__sfr__));
__extension__ typedef struct tagU1PWMRRSBITS {
  union {
    struct {
      unsigned PER:8;
      unsigned DC:8;
    };
    struct {
      unsigned PER0:1;
      unsigned PER1:1;
      unsigned PER2:1;
      unsigned PER3:1;
      unsigned PER4:1;
      unsigned PER5:1;
      unsigned PER6:1;
      unsigned PER7:1;
      unsigned DC0:1;
      unsigned DC1:1;
      unsigned DC2:1;
      unsigned DC3:1;
      unsigned DC4:1;
      unsigned DC5:1;
      unsigned DC6:1;
      unsigned DC7:1;
    };
    struct {
      unsigned USBRS0:1;
      unsigned USBRS1:1;
      unsigned USBRS2:1;
      unsigned USBRS3:1;
      unsigned USBRS4:1;
      unsigned USBRS5:1;
      unsigned USBRS6:1;
      unsigned USBRS7:1;
      unsigned USBR0:1;
      unsigned USBR1:1;
      unsigned USBR2:1;
      unsigned USBR3:1;
      unsigned USBR4:1;
      unsigned USBR5:1;
      unsigned USBR6:1;
      unsigned USBR7:1;
    };
    struct {
      unsigned USBRS:8;
      unsigned USBR:8;
    };
  };
} U1PWMRRSBITS;
extern volatile U1PWMRRSBITS U1PWMRRSbits __attribute__((__sfr__));


extern volatile unsigned int U1PWMCON __attribute__((__sfr__));
typedef struct tagU1PWMCONBITS {
  unsigned :8;
  unsigned CNTEN:1;
  unsigned PWMPOL:1;
  unsigned :5;
  unsigned PWMEN:1;
} U1PWMCONBITS;
extern volatile U1PWMCONBITS U1PWMCONbits __attribute__((__sfr__));


extern volatile unsigned int PMCON __attribute__((__sfr__));
__extension__ typedef struct tagPMCONBITS {
  union {
    struct {
      unsigned RDSP:1;
      unsigned WRSP:1;
      unsigned BEP:1;
      unsigned CS1P:1;
      unsigned :1;
      unsigned ALP:1;
      unsigned CSF:2;
      unsigned PTRDEN:1;
      unsigned PTWREN:1;
      unsigned PTBEEN:1;
      unsigned ADRMUX:2;
      unsigned PSIDL:1;
      unsigned :1;
      unsigned PMPEN:1;
    };
    struct {
      unsigned :6;
      unsigned CSF0:1;
      unsigned CSF1:1;
      unsigned :3;
      unsigned ADRMUX0:1;
      unsigned ADRMUX1:1;
    };
  };
} PMCONBITS;
extern volatile PMCONBITS PMCONbits __attribute__((__sfr__));


extern volatile unsigned int PMMODE __attribute__((__sfr__));
__extension__ typedef struct tagPMMODEBITS {
  union {
    struct {
      unsigned WAITE:2;
      unsigned WAITM:4;
      unsigned WAITB:2;
      unsigned MODE:2;
      unsigned MODE16:1;
      unsigned INCM:2;
      unsigned IRQM:2;
      unsigned BUSY:1;
    };
    struct {
      unsigned WAITE0:1;
      unsigned WAITE1:1;
      unsigned WAITM0:1;
      unsigned WAITM1:1;
      unsigned WAITM2:1;
      unsigned WAITM3:1;
      unsigned WAITB0:1;
      unsigned WAITB1:1;
      unsigned MODE0:1;
      unsigned MODE1:1;
      unsigned :1;
      unsigned INCM0:1;
      unsigned INCM1:1;
      unsigned IRQM0:1;
      unsigned IRQM1:1;
    };
  };
} PMMODEBITS;
extern volatile PMMODEBITS PMMODEbits __attribute__((__sfr__));


extern volatile unsigned int PMADDR __attribute__((__sfr__));
__extension__ typedef struct tagPMADDRBITS {
  union {
    struct {
      unsigned ADDR:11;
      unsigned :3;
      unsigned CS1:1;
    };
    struct {
      unsigned ADDR0:1;
      unsigned ADDR1:1;
      unsigned ADDR2:1;
      unsigned ADDR3:1;
      unsigned ADDR4:1;
      unsigned ADDR5:1;
      unsigned ADDR6:1;
      unsigned ADDR7:1;
      unsigned ADDR8:1;
      unsigned ADDR9:1;
      unsigned ADDR10:1;
      unsigned :3;
      unsigned CS:1;
    };
  };
} PMADDRBITS;
extern volatile PMADDRBITS PMADDRbits __attribute__((__sfr__));


extern volatile unsigned int PMDOUT1 __attribute__((__sfr__));
__extension__ typedef struct tagPMDOUT1BITS {
  union {
    struct {
      unsigned ADDR:11;
      unsigned :3;
      unsigned CS1:1;
    };
    struct {
      unsigned ADDR0:1;
      unsigned ADDR1:1;
      unsigned ADDR2:1;
      unsigned ADDR3:1;
      unsigned ADDR4:1;
      unsigned ADDR5:1;
      unsigned ADDR6:1;
      unsigned ADDR7:1;
      unsigned ADDR8:1;
      unsigned ADDR9:1;
      unsigned ADDR10:1;
      unsigned :3;
      unsigned CS:1;
    };
  };
} PMDOUT1BITS;
extern volatile PMDOUT1BITS PMDOUT1bits __attribute__((__sfr__));


extern volatile unsigned int PMDOUT2 __attribute__((__sfr__));

extern volatile unsigned int PMDIN1 __attribute__((__sfr__));

extern volatile unsigned int PMDIN2 __attribute__((__sfr__));

extern volatile unsigned int PMAEN __attribute__((__sfr__));
__extension__ typedef struct tagPMAENBITS {
  union {
    struct {
      unsigned PTEN:11;
      unsigned :3;
      unsigned PTEN14:1;
    };
    struct {
      unsigned PTEN0:1;
      unsigned PTEN1:1;
      unsigned PTEN2:1;
      unsigned PTEN3:1;
      unsigned PTEN4:1;
      unsigned PTEN5:1;
      unsigned PTEN6:1;
      unsigned PTEN7:1;
      unsigned PTEN8:1;
      unsigned PTEN9:1;
      unsigned PTEN10:1;
    };
  };
} PMAENBITS;
extern volatile PMAENBITS PMAENbits __attribute__((__sfr__));


extern volatile unsigned int PMSTAT __attribute__((__sfr__));
typedef struct tagPMSTATBITS {
  unsigned OB0E:1;
  unsigned OB1E:1;
  unsigned OB2E:1;
  unsigned OB3E:1;
  unsigned :2;
  unsigned OBUF:1;
  unsigned OBE:1;
  unsigned IB0F:1;
  unsigned IB1F:1;
  unsigned IB2F:1;
  unsigned IB3F:1;
  unsigned :2;
  unsigned IBOV:1;
  unsigned IBF:1;
} PMSTATBITS;
extern volatile PMSTATBITS PMSTATbits __attribute__((__sfr__));


extern volatile unsigned int ALRMVAL __attribute__((__sfr__));

extern volatile unsigned int ALCFGRPT __attribute__((__sfr__));
__extension__ typedef struct tagALCFGRPTBITS {
  union {
    struct {
      unsigned ARPT:8;
      unsigned ALRMPTR:2;
      unsigned AMASK:4;
      unsigned CHIME:1;
      unsigned ALRMEN:1;
    };
    struct {
      unsigned ARPT0:1;
      unsigned ARPT1:1;
      unsigned ARPT2:1;
      unsigned ARPT3:1;
      unsigned ARPT4:1;
      unsigned ARPT5:1;
      unsigned ARPT6:1;
      unsigned ARPT7:1;
      unsigned ALRMPTR0:1;
      unsigned ALRMPTR1:1;
      unsigned AMASK0:1;
      unsigned AMASK1:1;
      unsigned AMASK2:1;
      unsigned AMASK3:1;
    };
  };
} ALCFGRPTBITS;
extern volatile ALCFGRPTBITS ALCFGRPTbits __attribute__((__sfr__));


extern volatile unsigned int RTCVAL __attribute__((__sfr__));

extern volatile unsigned int RCFGCAL __attribute__((__sfr__));
__extension__ typedef struct tagRCFGCALBITS {
  union {
    struct {
      unsigned CAL:8;
      unsigned RTCPTR:2;
      unsigned RTCOE:1;
      unsigned HALFSEC:1;
      unsigned RTCSYNC:1;
      unsigned RTCWREN:1;
      unsigned :1;
      unsigned RTCEN:1;
    };
    struct {
      unsigned CAL0:1;
      unsigned CAL1:1;
      unsigned CAL2:1;
      unsigned CAL3:1;
      unsigned CAL4:1;
      unsigned CAL5:1;
      unsigned CAL6:1;
      unsigned CAL7:1;
      unsigned RTCPTR0:1;
      unsigned RTCPTR1:1;
    };
  };
} RCFGCALBITS;
extern volatile RCFGCALBITS RCFGCALbits __attribute__((__sfr__));


extern volatile unsigned int CRCCON __attribute__((__sfr__));
__extension__ typedef struct tagCRCCONBITS {
  union {
    struct {
      unsigned :3;
      unsigned LENDIAN:1;
      unsigned CRCGO:1;
      unsigned CRCISEL:1;
      unsigned CRCMPT:1;
      unsigned CRCFUL:1;
      unsigned VWORD:5;
      unsigned CSIDL:1;
      unsigned :1;
      unsigned CRCEN:1;
    };
    struct {
      unsigned :8;
      unsigned VWORD0:1;
      unsigned VWORD1:1;
      unsigned VWORD2:1;
      unsigned VWORD3:1;
      unsigned VWORD4:1;
    };
  };
} CRCCONBITS;
extern volatile CRCCONBITS CRCCONbits __attribute__((__sfr__));


extern volatile unsigned int CRCCON1 __attribute__((__sfr__));
__extension__ typedef struct tagCRCCON1BITS {
  union {
    struct {
      unsigned :3;
      unsigned LENDIAN:1;
      unsigned CRCGO:1;
      unsigned CRCISEL:1;
      unsigned CRCMPT:1;
      unsigned CRCFUL:1;
      unsigned VWORD:5;
      unsigned CSIDL:1;
      unsigned :1;
      unsigned CRCEN:1;
    };
    struct {
      unsigned :8;
      unsigned VWORD0:1;
      unsigned VWORD1:1;
      unsigned VWORD2:1;
      unsigned VWORD3:1;
      unsigned VWORD4:1;
    };
  };
} CRCCON1BITS;
extern volatile CRCCON1BITS CRCCON1bits __attribute__((__sfr__));


extern volatile unsigned int CRCCON2 __attribute__((__sfr__));
__extension__ typedef struct tagCRCCON2BITS {
  union {
    struct {
      unsigned PLEN:5;
      unsigned :3;
      unsigned DWIDTH:5;
    };
    struct {
      unsigned PLEN0:1;
      unsigned PLEN1:1;
      unsigned PLEN2:1;
      unsigned PLEN3:1;
      unsigned PLEN4:1;
      unsigned :3;
      unsigned DWIDTH0:1;
      unsigned DWIDTH1:1;
      unsigned DWIDTH2:1;
      unsigned DWIDTH3:1;
      unsigned DWIDTH4:1;
    };
  };
} CRCCON2BITS;
extern volatile CRCCON2BITS CRCCON2bits __attribute__((__sfr__));


extern volatile unsigned int CRCXOR __attribute__((__sfr__));
typedef struct tagCRCXORBITS {
  unsigned :1;
  unsigned X1:1;
  unsigned X2:1;
  unsigned X3:1;
  unsigned X4:1;
  unsigned X5:1;
  unsigned X6:1;
  unsigned X7:1;
  unsigned X8:1;
  unsigned X9:1;
  unsigned X10:1;
  unsigned X11:1;
  unsigned X12:1;
  unsigned X13:1;
  unsigned X14:1;
  unsigned X15:1;
} CRCXORBITS;
extern volatile CRCXORBITS CRCXORbits __attribute__((__sfr__));


extern volatile unsigned int CRCXORL __attribute__((__sfr__));
typedef struct tagCRCXORLBITS {
  unsigned :1;
  unsigned X1:1;
  unsigned X2:1;
  unsigned X3:1;
  unsigned X4:1;
  unsigned X5:1;
  unsigned X6:1;
  unsigned X7:1;
  unsigned X8:1;
  unsigned X9:1;
  unsigned X10:1;
  unsigned X11:1;
  unsigned X12:1;
  unsigned X13:1;
  unsigned X14:1;
  unsigned X15:1;
} CRCXORLBITS;
extern volatile CRCXORLBITS CRCXORLbits __attribute__((__sfr__));


extern volatile unsigned int CRCXORH __attribute__((__sfr__));
typedef struct tagCRCXORHBITS {
  unsigned X16:1;
  unsigned X17:1;
  unsigned X18:1;
  unsigned X19:1;
  unsigned X20:1;
  unsigned X21:1;
  unsigned X22:1;
  unsigned X23:1;
  unsigned X24:1;
  unsigned X25:1;
  unsigned X26:1;
  unsigned X27:1;
  unsigned X28:1;
  unsigned X29:1;
  unsigned X30:1;
  unsigned X31:1;
} CRCXORHBITS;
extern volatile CRCXORHBITS CRCXORHbits __attribute__((__sfr__));


extern volatile unsigned int CRCDAT __attribute__((__sfr__));

extern volatile unsigned long CRCDAT32 __attribute__((__sfr__));

extern volatile unsigned char CRCDAT8 __attribute__((__sfr__));

extern volatile unsigned int CRCDATL __attribute__((__sfr__));

extern volatile unsigned int CRCDATH __attribute__((__sfr__));

extern volatile unsigned int CRCWDAT __attribute__((__sfr__));

extern volatile unsigned int CRCWDATL __attribute__((__sfr__));

extern volatile unsigned int CRCWDATH __attribute__((__sfr__));

extern volatile unsigned int CMSTAT __attribute__((__sfr__));
typedef struct tagCMSTATBITS {
  unsigned C1OUT:1;
  unsigned C2OUT:1;
  unsigned C3OUT:1;
  unsigned :5;
  unsigned C1EVT:1;
  unsigned C2EVT:1;
  unsigned C3EVT:1;
  unsigned :4;
  unsigned CMIDL:1;
} CMSTATBITS;
extern volatile CMSTATBITS CMSTATbits __attribute__((__sfr__));


extern volatile unsigned int CVRCON __attribute__((__sfr__));
__extension__ typedef struct tagCVRCONBITS {
  union {
    struct {
      unsigned CVR:4;
      unsigned CVRSS:1;
      unsigned CVRR:1;
      unsigned CVROE:1;
      unsigned CVREN:1;
      unsigned CVREFM:2;
      unsigned CVREFP:1;
    };
    struct {
      unsigned CVR0:1;
      unsigned CVR1:1;
      unsigned CVR2:1;
      unsigned CVR3:1;
      unsigned :4;
      unsigned CVREFM0:1;
      unsigned CVREFM1:1;
    };
  };
} CVRCONBITS;
extern volatile CVRCONBITS CVRCONbits __attribute__((__sfr__));


extern volatile unsigned int CM1CON __attribute__((__sfr__));
__extension__ typedef struct tagCM1CONBITS {
  union {
    struct {
      unsigned CCH:2;
      unsigned :2;
      unsigned CREF:1;
      unsigned :1;
      unsigned EVPOL:2;
      unsigned COUT:1;
      unsigned CEVT:1;
      unsigned :3;
      unsigned CPOL:1;
      unsigned COE:1;
      unsigned CON:1;
    };
    struct {
      unsigned CCH0:1;
      unsigned CCH1:1;
      unsigned :4;
      unsigned EVPOL0:1;
      unsigned EVPOL1:1;
      unsigned :7;
      unsigned CEN:1;
    };
  };
} CM1CONBITS;
extern volatile CM1CONBITS CM1CONbits __attribute__((__sfr__));


extern volatile unsigned int CM2CON __attribute__((__sfr__));
__extension__ typedef struct tagCM2CONBITS {
  union {
    struct {
      unsigned CCH:2;
      unsigned :2;
      unsigned CREF:1;
      unsigned :1;
      unsigned EVPOL:2;
      unsigned COUT:1;
      unsigned CEVT:1;
      unsigned :3;
      unsigned CPOL:1;
      unsigned COE:1;
      unsigned CON:1;
    };
    struct {
      unsigned CCH0:1;
      unsigned CCH1:1;
      unsigned :4;
      unsigned EVPOL0:1;
      unsigned EVPOL1:1;
      unsigned :7;
      unsigned CEN:1;
    };
  };
} CM2CONBITS;
extern volatile CM2CONBITS CM2CONbits __attribute__((__sfr__));


extern volatile unsigned int CM3CON __attribute__((__sfr__));
__extension__ typedef struct tagCM3CONBITS {
  union {
    struct {
      unsigned CCH0:1;
      unsigned CCH1:1;
      unsigned :2;
      unsigned CREF:1;
      unsigned :1;
      unsigned EVPOL0:1;
      unsigned EVPOL1:1;
      unsigned COUT:1;
      unsigned CEVT:1;
      unsigned :3;
      unsigned CPOL:1;
      unsigned COE:1;
      unsigned CON:1;
    };
    struct {
      unsigned CCH:2;
      unsigned :4;
      unsigned EVPOL:2;
      unsigned :7;
      unsigned CEN:1;
    };
  };
} CM3CONBITS;
extern volatile CM3CONBITS CM3CONbits __attribute__((__sfr__));


extern volatile unsigned int RPINR0 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR0BITS {
  union {
    struct {
      unsigned :8;
      unsigned INT1R:5;
    };
    struct {
      unsigned :8;
      unsigned INT1R0:1;
      unsigned INT1R1:1;
      unsigned INT1R2:1;
      unsigned INT1R3:1;
      unsigned INT1R4:1;
    };
  };
} RPINR0BITS;
extern volatile RPINR0BITS RPINR0bits __attribute__((__sfr__));


extern volatile unsigned int RPINR1 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR1BITS {
  union {
    struct {
      unsigned INT2R:5;
    };
    struct {
      unsigned INT2R0:1;
      unsigned INT2R1:1;
      unsigned INT2R2:1;
      unsigned INT2R3:1;
      unsigned INT2R4:1;
    };
  };
} RPINR1BITS;
extern volatile RPINR1BITS RPINR1bits __attribute__((__sfr__));


extern volatile unsigned int RPINR3 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR3BITS {
  union {
    struct {
      unsigned T2CKR:5;
      unsigned :3;
      unsigned T3CKR:5;
    };
    struct {
      unsigned T2CKR0:1;
      unsigned T2CKR1:1;
      unsigned T2CKR2:1;
      unsigned T2CKR3:1;
      unsigned T2CKR4:1;
      unsigned :3;
      unsigned T3CKR0:1;
      unsigned T3CKR1:1;
      unsigned T3CKR2:1;
      unsigned T3CKR3:1;
      unsigned T3CKR4:1;
    };
  };
} RPINR3BITS;
extern volatile RPINR3BITS RPINR3bits __attribute__((__sfr__));


extern volatile unsigned int RPINR4 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR4BITS {
  union {
    struct {
      unsigned T4CKR:5;
      unsigned :3;
      unsigned T5CKR:5;
    };
    struct {
      unsigned T4CKR0:1;
      unsigned T4CKR1:1;
      unsigned T4CKR2:1;
      unsigned T4CKR3:1;
      unsigned T4CKR4:1;
      unsigned :3;
      unsigned T5CKR0:1;
      unsigned T5CKR1:1;
      unsigned T5CKR2:1;
      unsigned T5CKR3:1;
      unsigned T5CKR4:1;
    };
  };
} RPINR4BITS;
extern volatile RPINR4BITS RPINR4bits __attribute__((__sfr__));


extern volatile unsigned int RPINR7 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR7BITS {
  union {
    struct {
      unsigned IC1R:5;
      unsigned :3;
      unsigned IC2R:5;
    };
    struct {
      unsigned IC1R0:1;
      unsigned IC1R1:1;
      unsigned IC1R2:1;
      unsigned IC1R3:1;
      unsigned IC1R4:1;
      unsigned :3;
      unsigned IC2R0:1;
      unsigned IC2R1:1;
      unsigned IC2R2:1;
      unsigned IC2R3:1;
      unsigned IC2R4:1;
    };
  };
} RPINR7BITS;
extern volatile RPINR7BITS RPINR7bits __attribute__((__sfr__));


extern volatile unsigned int RPINR8 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR8BITS {
  union {
    struct {
      unsigned IC3R:5;
      unsigned :3;
      unsigned IC4R:5;
    };
    struct {
      unsigned IC3R0:1;
      unsigned IC3R1:1;
      unsigned IC3R2:1;
      unsigned IC3R3:1;
      unsigned IC3R4:1;
      unsigned :3;
      unsigned IC4R0:1;
      unsigned IC4R1:1;
      unsigned IC4R2:1;
      unsigned IC4R3:1;
      unsigned IC4R4:1;
    };
  };
} RPINR8BITS;
extern volatile RPINR8BITS RPINR8bits __attribute__((__sfr__));


extern volatile unsigned int RPINR9 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR9BITS {
  union {
    struct {
      unsigned IC5R:5;
    };
    struct {
      unsigned IC5R0:1;
      unsigned IC5R1:1;
      unsigned IC5R2:1;
      unsigned IC5R3:1;
      unsigned IC5R4:1;
    };
  };
} RPINR9BITS;
extern volatile RPINR9BITS RPINR9bits __attribute__((__sfr__));


extern volatile unsigned int RPINR11 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR11BITS {
  union {
    struct {
      unsigned OCFAR:5;
      unsigned :3;
      unsigned OCFBR:5;
    };
    struct {
      unsigned OCFAR0:1;
      unsigned OCFAR1:1;
      unsigned OCFAR2:1;
      unsigned OCFAR3:1;
      unsigned OCFAR4:1;
      unsigned :3;
      unsigned OCFBR0:1;
      unsigned OCFBR1:1;
      unsigned OCFBR2:1;
      unsigned OCFBR3:1;
      unsigned OCFBR4:1;
    };
  };
} RPINR11BITS;
extern volatile RPINR11BITS RPINR11bits __attribute__((__sfr__));


extern volatile unsigned int RPINR18 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR18BITS {
  union {
    struct {
      unsigned U1RXR:5;
      unsigned :3;
      unsigned U1CTSR:5;
    };
    struct {
      unsigned U1RXR0:1;
      unsigned U1RXR1:1;
      unsigned U1RXR2:1;
      unsigned U1RXR3:1;
      unsigned U1RXR4:1;
      unsigned :3;
      unsigned U1CTSR0:1;
      unsigned U1CTSR1:1;
      unsigned U1CTSR2:1;
      unsigned U1CTSR3:1;
      unsigned U1CTSR4:1;
    };
  };
} RPINR18BITS;
extern volatile RPINR18BITS RPINR18bits __attribute__((__sfr__));


extern volatile unsigned int RPINR19 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR19BITS {
  union {
    struct {
      unsigned U2RXR:5;
      unsigned :3;
      unsigned U2CTSR:5;
    };
    struct {
      unsigned U2RXR0:1;
      unsigned U2RXR1:1;
      unsigned U2RXR2:1;
      unsigned U2RXR3:1;
      unsigned U2RXR4:1;
      unsigned :3;
      unsigned U2CTSR0:1;
      unsigned U2CTSR1:1;
      unsigned U2CTSR2:1;
      unsigned U2CTSR3:1;
      unsigned U2CTSR4:1;
    };
  };
} RPINR19BITS;
extern volatile RPINR19BITS RPINR19bits __attribute__((__sfr__));


extern volatile unsigned int RPINR20 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR20BITS {
  union {
    struct {
      unsigned SDI1R:5;
      unsigned :3;
      unsigned SCK1R:5;
    };
    struct {
      unsigned SDI1R0:1;
      unsigned SDI1R1:1;
      unsigned SDI1R2:1;
      unsigned SDI1R3:1;
      unsigned SDI1R4:1;
      unsigned :3;
      unsigned SCK1R0:1;
      unsigned SCK1R1:1;
      unsigned SCK1R2:1;
      unsigned SCK1R3:1;
      unsigned SCK1R4:1;
    };
  };
} RPINR20BITS;
extern volatile RPINR20BITS RPINR20bits __attribute__((__sfr__));


extern volatile unsigned int RPINR21 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR21BITS {
  union {
    struct {
      unsigned SS1R:5;
    };
    struct {
      unsigned SS1R0:1;
      unsigned SS1R1:1;
      unsigned SS1R2:1;
      unsigned SS1R3:1;
      unsigned SS1R4:1;
    };
  };
} RPINR21BITS;
extern volatile RPINR21BITS RPINR21bits __attribute__((__sfr__));


extern volatile unsigned int RPINR22 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR22BITS {
  union {
    struct {
      unsigned SDI2R:5;
      unsigned :3;
      unsigned SCK2R:5;
    };
    struct {
      unsigned SDI2R0:1;
      unsigned SDI2R1:1;
      unsigned SDI2R2:1;
      unsigned SDI2R3:1;
      unsigned SDI2R4:1;
      unsigned :3;
      unsigned SCK2R0:1;
      unsigned SCK2R1:1;
      unsigned SCK2R2:1;
      unsigned SCK2R3:1;
      unsigned SCK2R4:1;
    };
  };
} RPINR22BITS;
extern volatile RPINR22BITS RPINR22bits __attribute__((__sfr__));


extern volatile unsigned int RPINR23 __attribute__((__sfr__));
__extension__ typedef struct tagRPINR23BITS {
  union {
    struct {
      unsigned SS2R:5;
    };
    struct {
      unsigned SS2R0:1;
      unsigned SS2R1:1;
      unsigned SS2R2:1;
      unsigned SS2R3:1;
      unsigned SS2R4:1;
    };
  };
} RPINR23BITS;
extern volatile RPINR23BITS RPINR23bits __attribute__((__sfr__));


extern volatile unsigned int RPOR0 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR0BITS {
  union {
    struct {
      unsigned RP0R:5;
      unsigned :3;
      unsigned RP1R:5;
    };
    struct {
      unsigned RP0R0:1;
      unsigned RP0R1:1;
      unsigned RP0R2:1;
      unsigned RP0R3:1;
      unsigned RP0R4:1;
      unsigned :3;
      unsigned RP1R0:1;
      unsigned RP1R1:1;
      unsigned RP1R2:1;
      unsigned RP1R3:1;
      unsigned RP1R4:1;
    };
  };
} RPOR0BITS;
extern volatile RPOR0BITS RPOR0bits __attribute__((__sfr__));


extern volatile unsigned int RPOR1 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR1BITS {
  union {
    struct {
      unsigned RP2R:5;
      unsigned :3;
      unsigned RP3R:5;
    };
    struct {
      unsigned RP2R0:1;
      unsigned RP2R1:1;
      unsigned RP2R2:1;
      unsigned RP2R3:1;
      unsigned RP2R4:1;
      unsigned :3;
      unsigned RP3R0:1;
      unsigned RP3R1:1;
      unsigned RP3R2:1;
      unsigned RP3R3:1;
      unsigned RP3R4:1;
    };
  };
} RPOR1BITS;
extern volatile RPOR1BITS RPOR1bits __attribute__((__sfr__));


extern volatile unsigned int RPOR2 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR2BITS {
  union {
    struct {
      unsigned RP4R:5;
      unsigned :3;
      unsigned RP5R:5;
    };
    struct {
      unsigned RP4R0:1;
      unsigned RP4R1:1;
      unsigned RP4R2:1;
      unsigned RP4R3:1;
      unsigned RP4R4:1;
      unsigned :3;
      unsigned RP5R0:1;
      unsigned RP5R1:1;
      unsigned RP5R2:1;
      unsigned RP5R3:1;
      unsigned RP5R4:1;
    };
  };
} RPOR2BITS;
extern volatile RPOR2BITS RPOR2bits __attribute__((__sfr__));


extern volatile unsigned int RPOR3 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR3BITS {
  union {
    struct {
      unsigned RP6R:5;
      unsigned :3;
      unsigned RP7R:5;
    };
    struct {
      unsigned RP6R0:1;
      unsigned RP6R1:1;
      unsigned RP6R2:1;
      unsigned RP6R3:1;
      unsigned RP6R4:1;
      unsigned :3;
      unsigned RP7R0:1;
      unsigned RP7R1:1;
      unsigned RP7R2:1;
      unsigned RP7R3:1;
      unsigned RP7R4:1;
    };
  };
} RPOR3BITS;
extern volatile RPOR3BITS RPOR3bits __attribute__((__sfr__));


extern volatile unsigned int RPOR4 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR4BITS {
  union {
    struct {
      unsigned RP8R:5;
      unsigned :3;
      unsigned RP9R:5;
    };
    struct {
      unsigned RP8R0:1;
      unsigned RP8R1:1;
      unsigned RP8R2:1;
      unsigned RP8R3:1;
      unsigned RP8R4:1;
      unsigned :3;
      unsigned RP9R0:1;
      unsigned RP9R1:1;
      unsigned RP9R2:1;
      unsigned RP9R3:1;
      unsigned RP9R4:1;
    };
  };
} RPOR4BITS;
extern volatile RPOR4BITS RPOR4bits __attribute__((__sfr__));


extern volatile unsigned int RPOR5 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR5BITS {
  union {
    struct {
      unsigned RP10R:5;
      unsigned :3;
      unsigned RP11R:5;
    };
    struct {
      unsigned RP10R0:1;
      unsigned RP10R1:1;
      unsigned RP10R2:1;
      unsigned RP10R3:1;
      unsigned RP10R4:1;
      unsigned :3;
      unsigned RP11R0:1;
      unsigned RP11R1:1;
      unsigned RP11R2:1;
      unsigned RP11R3:1;
      unsigned RP11R4:1;
    };
  };
} RPOR5BITS;
extern volatile RPOR5BITS RPOR5bits __attribute__((__sfr__));


extern volatile unsigned int RPOR6 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR6BITS {
  union {
    struct {
      unsigned :8;
      unsigned RP13R:5;
    };
    struct {
      unsigned :8;
      unsigned RP13R0:1;
      unsigned RP13R1:1;
      unsigned RP13R2:1;
      unsigned RP13R3:1;
      unsigned RP13R4:1;
    };
  };
} RPOR6BITS;
extern volatile RPOR6BITS RPOR6bits __attribute__((__sfr__));


extern volatile unsigned int RPOR7 __attribute__((__sfr__));
__extension__ typedef struct tagRPOR7BITS {
  union {
    struct {
      unsigned RP14R:5;
      unsigned :3;
      unsigned RP15R:5;
    };
    struct {
      unsigned RP14R0:1;
      unsigned RP14R1:1;
      unsigned RP14R2:1;
      unsigned RP14R3:1;
      unsigned RP14R4:1;
      unsigned :3;
      unsigned RP15R0:1;
      unsigned RP15R1:1;
      unsigned RP15R2:1;
      unsigned RP15R3:1;
      unsigned RP15R4:1;
    };
  };
} RPOR7BITS;
extern volatile RPOR7BITS RPOR7bits __attribute__((__sfr__));


extern volatile unsigned int RCON __attribute__((__sfr__));
__extension__ typedef struct tagRCONBITS {
  union {
    struct {
      unsigned POR:1;
      unsigned BOR:1;
      unsigned IDLE:1;
      unsigned SLEEP:1;
      unsigned WDTO:1;
      unsigned SWDTEN:1;
      unsigned SWR:1;
      unsigned EXTR:1;
      unsigned VREGS:1;
      unsigned CM:1;
      unsigned DPSLP:1;
      unsigned :3;
      unsigned IOPUWR:1;
      unsigned TRAPR:1;
    };
    struct {
      unsigned :8;
      unsigned PMSLP:1;
    };
  };
} RCONBITS;
extern volatile RCONBITS RCONbits __attribute__((__sfr__));


extern volatile unsigned int OSCCON __attribute__((__sfr__));
__extension__ typedef struct tagOSCCONBITS {
  union {
    struct {
      unsigned OSWEN:1;
      unsigned SOSCEN:1;
      unsigned POSCEN:1;
      unsigned CF:1;
      unsigned :1;
      unsigned LOCK:1;
      unsigned IOLOCK:1;
      unsigned CLKLOCK:1;
      unsigned NOSC:3;
      unsigned :1;
      unsigned COSC:3;
    };
    struct {
      unsigned :1;
      unsigned LPOSCEN:1;
      unsigned :6;
      unsigned NOSC0:1;
      unsigned NOSC1:1;
      unsigned NOSC2:1;
      unsigned :1;
      unsigned COSC0:1;
      unsigned COSC1:1;
      unsigned COSC2:1;
    };
  };
} OSCCONBITS;
extern volatile OSCCONBITS OSCCONbits __attribute__((__sfr__));


extern volatile unsigned char OSCCONL __attribute__((__sfr__));

extern volatile unsigned char OSCCONH __attribute__((__sfr__));

extern volatile unsigned int CLKDIV __attribute__((__sfr__));
__extension__ typedef struct tagCLKDIVBITS {
  union {
    struct {
      unsigned :5;
      unsigned PLLEN:1;
      unsigned CPDIV:2;
      unsigned RCDIV:3;
      unsigned DOZEN:1;
      unsigned DOZE:3;
      unsigned ROI:1;
    };
    struct {
      unsigned :6;
      unsigned CPDIV0:1;
      unsigned CPDIV1:1;
      unsigned RCDIV0:1;
      unsigned RCDIV1:1;
      unsigned RCDIV2:1;
      unsigned :1;
      unsigned DOZE0:1;
      unsigned DOZE1:1;
      unsigned DOZE2:1;
    };
  };
} CLKDIVBITS;
extern volatile CLKDIVBITS CLKDIVbits __attribute__((__sfr__));


extern volatile unsigned int OSCTUN __attribute__((__sfr__));
__extension__ typedef struct tagOSCTUNBITS {
  union {
    struct {
      unsigned TUN:6;
    };
    struct {
      unsigned TUN0:1;
      unsigned TUN1:1;
      unsigned TUN2:1;
      unsigned TUN3:1;
      unsigned TUN4:1;
      unsigned TUN5:1;
    };
  };
} OSCTUNBITS;
extern volatile OSCTUNBITS OSCTUNbits __attribute__((__sfr__));


extern volatile unsigned int REFOCON __attribute__((__sfr__));
__extension__ typedef struct tagREFOCONBITS {
  union {
    struct {
      unsigned :8;
      unsigned RODIV:4;
      unsigned ROSEL:1;
      unsigned ROSSLP:1;
      unsigned :1;
      unsigned ROEN:1;
    };
    struct {
      unsigned :8;
      unsigned RODIV0:1;
      unsigned RODIV1:1;
      unsigned RODIV2:1;
      unsigned RODIV3:1;
      unsigned :3;
      unsigned ROON:1;
    };
  };
} REFOCONBITS;
extern volatile REFOCONBITS REFOCONbits __attribute__((__sfr__));


extern volatile unsigned int DSCON __attribute__((__sfr__));
typedef struct tagDSCONBITS {
  unsigned RELEASE:1;
  unsigned DSBOR:1;
  unsigned :13;
  unsigned DSEN:1;
} DSCONBITS;
extern volatile DSCONBITS DSCONbits __attribute__((__sfr__));


extern volatile unsigned int DSWAKE __attribute__((__sfr__));
typedef struct tagDSWAKEBITS {
  unsigned DSPOR:1;
  unsigned :1;
  unsigned DSMCLR:1;
  unsigned DSRTC:1;
  unsigned DSWDT:1;
  unsigned :2;
  unsigned DSFLT:1;
  unsigned DSINT0:1;
} DSWAKEBITS;
extern volatile DSWAKEBITS DSWAKEbits __attribute__((__sfr__));


extern volatile unsigned int DSGPR0 __attribute__((__sfr__));
__extension__ typedef struct tagDSGPR0BITS {
  union {
    struct {
      unsigned DSGPR:16;
    };
    struct {
      unsigned DSGPR0:1;
      unsigned DSGPR1:1;
      unsigned DSGPR2:1;
      unsigned DSGPR3:1;
      unsigned DSGPR4:1;
      unsigned DSGPR5:1;
      unsigned DSGPR6:1;
      unsigned DSGPR7:1;
      unsigned DSGPR8:1;
      unsigned DSGPR9:1;
      unsigned DSGPR10:1;
      unsigned DSGPR11:1;
      unsigned DSGPR12:1;
      unsigned DSGPR13:1;
      unsigned DSGPR14:1;
      unsigned DSGPR15:1;
    };
  };
} DSGPR0BITS;
extern volatile DSGPR0BITS DSGPR0bits __attribute__((__sfr__));


extern volatile unsigned int DSGPR1 __attribute__((__sfr__));
__extension__ typedef struct tagDSGPR1BITS {
  union {
    struct {
      unsigned DSGPR:16;
    };
    struct {
      unsigned DSGPR0:1;
      unsigned DSGPR1:1;
      unsigned DSGPR2:1;
      unsigned DSGPR3:1;
      unsigned DSGPR4:1;
      unsigned DSGPR5:1;
      unsigned DSGPR6:1;
      unsigned DSGPR7:1;
      unsigned DSGPR8:1;
      unsigned DSGPR9:1;
      unsigned DSGPR10:1;
      unsigned DSGPR11:1;
      unsigned DSGPR12:1;
      unsigned DSGPR13:1;
      unsigned DSGPR14:1;
      unsigned DSGPR15:1;
    };
  };
} DSGPR1BITS;
extern volatile DSGPR1BITS DSGPR1bits __attribute__((__sfr__));


extern volatile unsigned int NVMCON __attribute__((__sfr__));
__extension__ typedef struct tagNVMCONBITS {
  union {
    struct {
      unsigned NVMOP:4;
      unsigned :2;
      unsigned ERASE:1;
      unsigned :6;
      unsigned WRERR:1;
      unsigned WREN:1;
      unsigned WR:1;
    };
    struct {
      unsigned NVMOP0:1;
      unsigned NVMOP1:1;
      unsigned NVMOP2:1;
      unsigned NVMOP3:1;
    };
    struct {
      unsigned PROGOP0:1;
      unsigned PROGOP1:1;
      unsigned PROGOP2:1;
      unsigned PROGOP3:1;
    };
    struct {
      unsigned PROGOP:4;
    };
  };
} NVMCONBITS;
extern volatile NVMCONBITS NVMCONbits __attribute__((__sfr__));


extern volatile unsigned int NVMKEY __attribute__((__sfr__));

extern volatile unsigned int PMD1 __attribute__((__sfr__));
typedef struct tagPMD1BITS {
  unsigned ADC1MD:1;
  unsigned :2;
  unsigned SPI1MD:1;
  unsigned SPI2MD:1;
  unsigned U1MD:1;
  unsigned U2MD:1;
  unsigned I2C1MD:1;
  unsigned :3;
  unsigned T1MD:1;
  unsigned T2MD:1;
  unsigned T3MD:1;
  unsigned T4MD:1;
  unsigned T5MD:1;
} PMD1BITS;
extern volatile PMD1BITS PMD1bits __attribute__((__sfr__));


extern volatile unsigned int PMD2 __attribute__((__sfr__));
typedef struct tagPMD2BITS {
  unsigned OC1MD:1;
  unsigned OC2MD:1;
  unsigned OC3MD:1;
  unsigned OC4MD:1;
  unsigned OC5MD:1;
  unsigned :3;
  unsigned IC1MD:1;
  unsigned IC2MD:1;
  unsigned IC3MD:1;
  unsigned IC4MD:1;
  unsigned IC5MD:1;
} PMD2BITS;
extern volatile PMD2BITS PMD2bits __attribute__((__sfr__));


extern volatile unsigned int PMD3 __attribute__((__sfr__));
__extension__ typedef struct tagPMD3BITS {
  union {
    struct {
      unsigned :1;
      unsigned I2C2MD:1;
      unsigned :5;
      unsigned CRCMD:1;
      unsigned PMPMD:1;
      unsigned RTCCMD:1;
      unsigned CMPMD:1;
    };
    struct {
      unsigned :7;
      unsigned CRCPMD:1;
    };
  };
} PMD3BITS;
extern volatile PMD3BITS PMD3bits __attribute__((__sfr__));


extern volatile unsigned int PMD4 __attribute__((__sfr__));
typedef struct tagPMD4BITS {
  unsigned USB1MD:1;
  unsigned LVDMD:1;
  unsigned CTMUMD:1;
  unsigned REFOMD:1;
  unsigned :2;
  unsigned UPWMMD:1;
} PMD4BITS;
extern volatile PMD4BITS PMD4bits __attribute__((__sfr__));
# 15456 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\support\\PIC24F\\h/p24FJ64GB002.h" 3 4
extern __attribute__((space(prog))) unsigned int _CONFIG4;
# 15535 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\support\\PIC24F\\h/p24FJ64GB002.h" 3 4
extern __attribute__((space(prog))) unsigned int _CONFIG3;
# 15679 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\support\\PIC24F\\h/p24FJ64GB002.h" 3 4
extern __attribute__((space(prog))) unsigned int _CONFIG2;
# 15786 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\support\\PIC24F\\h/p24FJ64GB002.h" 3 4
extern __attribute__((space(prog))) unsigned int _CONFIG1;
# 567 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\support\\generic\\h/xc.h" 2 3 4
# 27 "../src/system.h" 2
# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/stdbool.h" 1 3 4
# 28 "../src/system.h" 2
# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 13 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/stdint.h" 3 4
typedef signed char int8_t;






typedef signed int int16_t;






typedef signed long int int32_t;






typedef signed long long int int64_t;
# 43 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/stdint.h" 3 4
typedef unsigned char uint8_t;





typedef unsigned int uint16_t;





typedef unsigned long int uint32_t;





typedef unsigned long long int uint64_t;
# 70 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/stdint.h" 3 4
typedef signed char int_least8_t;






typedef signed int int_least16_t;






typedef signed long int int_least24_t;






typedef signed long int int_least32_t;






typedef signed long long int int_least64_t;






typedef unsigned char uint_least8_t;





typedef unsigned int uint_least16_t;





typedef long int uint_least24_t;





typedef unsigned long int uint_least32_t;





typedef unsigned long long int uint_least64_t;







typedef signed int int_fast8_t;






typedef signed int int_fast16_t;






typedef signed long int int_fast24_t;






typedef signed long int int_fast32_t;






typedef signed long long int int_fast64_t;






typedef unsigned int uint_fast8_t;





typedef unsigned int uint_fast16_t;





typedef unsigned long int uint_fast24_t;





typedef unsigned long int uint_fast32_t;





typedef unsigned long long int uint_fast64_t;





typedef long long int intmax_t;




typedef unsigned long long int uintmax_t;
# 29 "../src/system.h" 2
# 1 "../src/io_mapping.h" 1
# 30 "../src/system.h" 2






extern volatile uint16_t ticker;




typedef enum
{
    SYSTEM_STATE_USB_START,
    SYSTEM_STATE_USB_SUSPEND,
    SYSTEM_STATE_USB_RESUME
} SYSTEM_STATE;
# 60 "../src/system.h"
void SYSTEM_Initialize( void );
# 43 "../src/usb/usb.h" 2
# 1 "../src/system_config.h" 1
# 23 "../src/system_config.h"
# 1 "../src/usb_config.h" 1
# 24 "../src/system_config.h" 2
# 1 "../src/fileio_config.h" 1
# 36 "../src/fileio_config.h"
# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 37 "../src/fileio_config.h" 2
# 132 "../src/fileio_config.h"
extern const uint8_t MasterBootRecord[512];
# 25 "../src/system_config.h" 2
# 44 "../src/usb/usb.h" 2

# 1 "../src/usb/usb_common.h" 1
# 31 "../src/usb/usb_common.h"
# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/limits.h" 1 3 4
# 32 "../src/usb/usb_common.h" 2

# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 34 "../src/usb/usb_common.h" 2


# 1 "../src/system_config.h" 1
# 37 "../src/usb/usb_common.h" 2
# 120 "../src/usb/usb_common.h"
typedef union
{
    uint8_t bitmap;
    struct
    {
        uint8_t ep_num: 4;
        uint8_t zero_pkt: 1;
        uint8_t dts: 1;
        uint8_t force_dts: 1;
        uint8_t direction: 1;
    }field;

} TRANSFER_FLAGS;
# 194 "../src/usb/usb_common.h"
typedef enum
{

    EVENT_NONE = 0,

    EVENT_DEVICE_STACK_BASE = 1,

    EVENT_HOST_STACK_BASE = 100,


    EVENT_HUB_ATTACH,


    EVENT_STALL,


    EVENT_VBUS_SES_REQUEST,




    EVENT_VBUS_OVERCURRENT,





    EVENT_VBUS_REQUEST_POWER,




    EVENT_VBUS_RELEASE_POWER,
# 235 "../src/usb/usb_common.h"
    EVENT_VBUS_POWER_AVAILABLE,



    EVENT_UNSUPPORTED_DEVICE,



    EVENT_CANNOT_ENUMERATE,



    EVENT_CLIENT_INIT_ERROR,





    EVENT_OUT_OF_MEMORY,


    EVENT_UNSPECIFIED_ERROR,



    EVENT_DETACH,




    EVENT_TRANSFER,



    EVENT_SOF,


    EVENT_RESUME,



    EVENT_SUSPEND,



    EVENT_RESET,





    EVENT_DATA_ISOC_READ,





    EVENT_DATA_ISOC_WRITE,
# 302 "../src/usb/usb_common.h"
    EVENT_OVERRIDE_CLIENT_DRIVER_SELECTION,







    EVENT_1MS,


    EVENT_GENERIC_BASE = 400,

    EVENT_MSD_BASE = 500,

    EVENT_HID_BASE = 600,

    EVENT_PRINTER_BASE = 700,

    EVENT_CDC_BASE = 800,

    EVENT_CHARGER_BASE = 900,

    EVENT_AUDIO_BASE = 1000,

 EVENT_USER_BASE = 10000,




    EVENT_BUS_ERROR = 0x7fff

} USB_EVENT;
# 346 "../src/usb/usb_common.h"
typedef struct _transfer_event_data
{
    TRANSFER_FLAGS flags;
    uint32_t size;
    uint8_t pid;

} USB_TRANSFER_EVENT_DATA;
# 363 "../src/usb/usb_common.h"
typedef struct _vbus_power_data
{
    uint8_t port;
    uint8_t current;
} USB_VBUS_POWER_EVENT_DATA;
# 376 "../src/usb/usb_common.h"
typedef struct _override_client_driver_data
{
    uint16_t idVendor;
    uint16_t idProduct;
    uint8_t bDeviceClass;
    uint8_t bDeviceSubClass;
    uint8_t bDeviceProtocol;
} USB_OVERRIDE_CLIENT_DRIVER_EVENT_DATA;
# 438 "../src/usb/usb_common.h"
typedef _Bool (*USB_EVENT_HANDLER) ( USB_EVENT event, void *data, unsigned int size );
# 46 "../src/usb/usb.h" 2
# 1 "../src/usb/usb_ch9.h" 1
# 31 "../src/usb/usb_ch9.h"
# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 32 "../src/usb/usb_ch9.h" 2
# 60 "../src/usb/usb_ch9.h"
typedef struct __attribute__ ((packed)) _USB_DEVICE_DESCRIPTOR
{
    uint8_t bLength;
    uint8_t bDescriptorType;
    uint16_t bcdUSB;
    uint8_t bDeviceClass;
    uint8_t bDeviceSubClass;
    uint8_t bDeviceProtocol;
    uint8_t bMaxPacketSize0;
    uint16_t idVendor;
    uint16_t idProduct;
    uint16_t bcdDevice;
    uint8_t iManufacturer;
    uint8_t iProduct;
    uint8_t iSerialNumber;
    uint8_t bNumConfigurations;
} USB_DEVICE_DESCRIPTOR;
# 86 "../src/usb/usb_ch9.h"
typedef struct __attribute__ ((packed)) _USB_CONFIGURATION_DESCRIPTOR
{
    uint8_t bLength;
    uint8_t bDescriptorType;
    uint16_t wTotalLength;
    uint8_t bNumInterfaces;
    uint8_t bConfigurationValue;
    uint8_t iConfiguration;
    uint8_t bmAttributes;
    uint8_t bMaxPower;
} USB_CONFIGURATION_DESCRIPTOR;
# 111 "../src/usb/usb_ch9.h"
typedef struct __attribute__ ((packed)) _USB_INTERFACE_DESCRIPTOR
{
    uint8_t bLength;
    uint8_t bDescriptorType;
    uint8_t bInterfaceNumber;
    uint8_t bAlternateSetting;
    uint8_t bNumEndpoints;
    uint8_t bInterfaceClass;
    uint8_t bInterfaceSubClass;
    uint8_t bInterfaceProtocol;
    uint8_t iInterface;
} USB_INTERFACE_DESCRIPTOR;
# 132 "../src/usb/usb_ch9.h"
typedef struct __attribute__ ((packed)) _USB_ENDPOINT_DESCRIPTOR
{
    uint8_t bLength;
    uint8_t bDescriptorType;
    uint8_t bEndpointAddress;
    uint8_t bmAttributes;
    uint16_t wMaxPacketSize;
    uint8_t bInterval;
} USB_ENDPOINT_DESCRIPTOR;
# 182 "../src/usb/usb_ch9.h"
typedef struct
{
    uint8_t index;
    uint8_t type;
    uint16_t language_id;

} DESCRIPTOR_ID;
# 197 "../src/usb/usb_ch9.h"
typedef struct __attribute__ ((packed)) _USB_OTG_DESCRIPTOR
{
    uint8_t bLength;
    uint8_t bDescriptorType;
    uint8_t bmAttributes;
} USB_OTG_DESCRIPTOR;
# 221 "../src/usb/usb_ch9.h"
typedef struct __attribute__ ((packed)) _USB_STRING_DSC
{
    uint8_t bLength;
    uint8_t bDescriptorType;

} USB_STRING_DESCRIPTOR;
# 240 "../src/usb/usb_ch9.h"
typedef struct __attribute__ ((packed)) _USB_DEVICE_QUALIFIER_DESCRIPTOR
{
    uint8_t bLength;
    uint8_t bType;
    uint16_t bcdUSB;
    uint8_t bDeviceClass;
    uint8_t bDeviceSubClass;
    uint8_t bDeviceProtocol;
    uint8_t bMaxPacketSize0;
    uint8_t bNumConfigurations;
    uint8_t bReserved;

} USB_DEVICE_QUALIFIER_DESCRIPTOR;
# 263 "../src/usb/usb_ch9.h"
typedef union __attribute__ ((packed))
{

    struct __attribute__ ((packed))
    {
        uint8_t bmRequestType;
        uint8_t bRequest;
        uint16_t wValue;
        uint16_t wIndex;
        uint16_t wLength;
    };
    struct __attribute__ ((packed))
    {
        unsigned :8;
        unsigned :8;
        union
        {
            uint16_t Val;
            uint8_t v[2];
            struct
            {
                uint8_t LB;
                uint8_t HB;
            } byte;
        } W_Value;

        union
        {
            uint16_t Val;
            uint8_t v[2];
            struct
            {
                uint8_t LB;
                uint8_t HB;
            } byte;
        } W_Index;

        union
        {
            uint16_t Val;
            uint8_t v[2];
            struct
            {
                uint8_t LB;
                uint8_t HB;
            } byte;
        } W_Length;
    };
    struct __attribute__ ((packed))
    {
        unsigned Recipient:5;
        unsigned RequestType:2;
        unsigned DataDir:1;
        unsigned :8;
        uint8_t bFeature;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
    };
    struct __attribute__ ((packed))
    {
        union
        {
            uint8_t bmRequestType;
            struct
            {
                uint8_t recipient: 5;
                uint8_t type: 2;
                uint8_t direction: 1;
            };
        }requestInfo;
    };
    struct __attribute__ ((packed))
    {
        unsigned :8;
        unsigned :8;
        uint8_t bDscIndex;
        uint8_t bDescriptorType;
        uint16_t wLangID;
        unsigned :8;
        unsigned :8;
    };
    struct __attribute__ ((packed))
    {
        unsigned :8;
        unsigned :8;
        uint8_t bDevADR;
        uint8_t bDevADRH;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
    };
    struct __attribute__ ((packed))
    {
        unsigned :8;
        unsigned :8;
        uint8_t bConfigurationValue;
        uint8_t bCfgRSD;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
    };
    struct __attribute__ ((packed))
    {
        unsigned :8;
        unsigned :8;
        uint8_t bAltID;
        uint8_t bAltID_H;
        uint8_t bIntfID;
        uint8_t bIntfID_H;
        unsigned :8;
        unsigned :8;
    };
    struct __attribute__ ((packed))
    {
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        uint8_t bEPID;
        uint8_t bEPID_H;
        unsigned :8;
        unsigned :8;
    };
    struct __attribute__ ((packed))
    {
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned EPNum:4;
        unsigned :3;
        unsigned EPDir:1;
        unsigned :8;
        unsigned :8;
        unsigned :8;
    };



} CTRL_TRF_SETUP, SETUP_PKT, *PSETUP_PKT;
# 47 "../src/usb/usb.h" 2


# 1 "../src/usb/usb_device.h" 1
# 32 "../src/usb/usb_device.h"
# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 33 "../src/usb/usb_device.h" 2
# 62 "../src/usb/usb_device.h"
typedef enum
{



    DETACHED_STATE
                            = 0x00 ,


    ATTACHED_STATE
                            = 0x01 ,


    POWERED_STATE
                            = 0x02 ,


    DEFAULT_STATE
                            = 0x04 ,





    ADR_PENDING_STATE
                            = 0x08 ,


    ADDRESS_STATE
                            = 0x10 ,





    CONFIGURED_STATE
                            = 0x20
} USB_DEVICE_STATE;



typedef enum
{

    EVENT_CONFIGURED
                            = EVENT_DEVICE_STACK_BASE ,


    EVENT_SET_DESCRIPTOR,





    EVENT_EP0_REQUEST,
# 145 "../src/usb/usb_device.h"
    EVENT_ATTACH,




    EVENT_TRANSFER_TERMINATED

} USB_DEVICE_STACK_EVENTS;
# 184 "../src/usb/usb_device.h"
void USBDeviceInit(void);
# 288 "../src/usb/usb_device.h"
void USBDeviceTasks(void);
# 340 "../src/usb/usb_device.h"
void USBEnableEndpoint(uint8_t ep, uint8_t options);
# 433 "../src/usb/usb_device.h"
void* USBTransferOnePacket(uint8_t ep,uint8_t dir,uint8_t* data,uint8_t len);
# 458 "../src/usb/usb_device.h"
void USBStallEndpoint(uint8_t ep, uint8_t dir);
# 482 "../src/usb/usb_device.h"
void USBCancelIO(uint8_t endpoint);
# 579 "../src/usb/usb_device.h"
void USBDeviceDetach(void);
# 624 "../src/usb/usb_device.h"
void USBDeviceAttach(void);
# 663 "../src/usb/usb_device.h"
void USBCtrlEPAllowStatusStage(void);
# 693 "../src/usb/usb_device.h"
void USBCtrlEPAllowDataStage(void);
# 769 "../src/usb/usb_device.h"
void USBDeferOUTDataStage(void);
extern volatile _Bool USBDeferOUTDataStagePackets;
# 839 "../src/usb/usb_device.h"
void USBDeferStatusStage(void);
extern volatile _Bool USBDeferStatusStagePacket;
# 891 "../src/usb/usb_device.h"
_Bool USBOUTDataStageDeferred(void);
# 974 "../src/usb/usb_device.h"
void USBDeferINDataStage(void);
extern volatile _Bool USBDeferINDataStagePackets;
# 1028 "../src/usb/usb_device.h"
_Bool USBINDataStageDeferred(void);
# 1098 "../src/usb/usb_device.h"
_Bool USBGetRemoteWakeupStatus(void);
# 1155 "../src/usb/usb_device.h"
USB_DEVICE_STATE USBGetDeviceState(void);
# 1211 "../src/usb/usb_device.h"
_Bool USBGetSuspendState(void);
# 1246 "../src/usb/usb_device.h"
_Bool USBIsDeviceSuspended(void);
# 1289 "../src/usb/usb_device.h"
_Bool USBIsBusSuspended(void);
# 1315 "../src/usb/usb_device.h"
void USBSoftDetach(void);
# 1353 "../src/usb/usb_device.h"
_Bool USBHandleBusy(void* handle);
# 1387 "../src/usb/usb_device.h"
uint16_t USBHandleGetLength(void* handle);
# 1419 "../src/usb/usb_device.h"
uint16_t USBHandleGetAddr(void*);
# 1519 "../src/usb/usb_device.h"
void* USBGetNextHandle(uint8_t ep_num, uint8_t ep_dir);
# 1552 "../src/usb/usb_device.h"
void USBEP0Transmit(uint8_t options);
# 1580 "../src/usb/usb_device.h"
void USBEP0SendRAMPtr(uint8_t* src, uint16_t size, uint8_t Options);
# 1612 "../src/usb/usb_device.h"
void USBEP0SendROMPtr(uint8_t* src, uint16_t size, uint8_t Options);
# 1640 "../src/usb/usb_device.h"
void USBEP0Receive(uint8_t* dest, uint16_t size, void (*function));
# 1675 "../src/usb/usb_device.h"
void* USBTxOnePacket(uint8_t ep, uint8_t* data, uint16_t len);
# 1712 "../src/usb/usb_device.h"
void* USBRxOnePacket(uint8_t ep, uint8_t* data, uint16_t len);
# 1744 "../src/usb/usb_device.h"
_Bool USB_APPLICATION_EVENT_HANDLER(uint8_t address, USB_EVENT event, void *pdata, uint16_t size);
# 1812 "../src/usb/usb_device.h"
typedef union
{
    uint16_t Val;
    uint8_t v[2];
    struct
    {
        uint8_t LB;
        uint8_t HB;
    } byte;
} uint16_t_VAL;




typedef struct __attribute__ ((packed))
{
    union __attribute__ ((packed))
    {


        uint8_t *bRam;
        const uint8_t *bRom;
        uint16_t *wRam;
        const uint16_t *wRom;
    }pSrc;
    union __attribute__ ((packed))
    {
        struct __attribute__ ((packed))
        {

            uint8_t ctrl_trf_mem :1;
            uint8_t reserved :5;


            uint8_t includeZero :1;

            uint8_t busy :1;
        }bits;
        uint8_t Val;
    }info;
    uint16_t_VAL __attribute__((aligned)) wCount;
}IN_PIPE;

extern volatile IN_PIPE inPipes[];

typedef struct __attribute__ ((packed))
{
    union __attribute__ ((packed))
    {


        uint8_t *bRam;
        uint16_t *wRam;
    }pDst;
    union __attribute__ ((packed))
    {
        struct __attribute__ ((packed))
        {
            uint8_t reserved :7;

            uint8_t busy :1;
        }bits;
        uint8_t Val;
    }info;
    uint16_t_VAL wCount;
    void (*pFunc)(void);
}OUT_PIPE;
# 1888 "../src/usb/usb_device.h"
extern volatile _Bool RemoteWakeup;
extern volatile _Bool USBBusIsSuspended;
extern volatile USB_DEVICE_STATE USBDeviceState;
extern volatile uint8_t USBActiveConfiguration;



# 1 "../src/usb/usb_hal.h" 1
# 34 "../src/usb/usb_hal.h"
# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 35 "../src/usb/usb_hal.h" 2
# 48 "../src/usb/usb_hal.h"
# 1 "../src/usb/usb_hal_pic24f.h" 1
# 34 "../src/usb/usb_hal_pic24f.h"
# 1 "../src/system_config.h" 1
# 35 "../src/usb/usb_hal_pic24f.h" 2

# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 37 "../src/usb/usb_hal_pic24f.h" 2
# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/string.h" 1 3 4
# 11 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/string.h" 3 4
# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/stddef.h" 1 3 4



typedef int ptrdiff_t;
typedef unsigned int size_t;
typedef short unsigned int wchar_t;







extern int errno;
# 12 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/string.h" 2 3 4


extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);

extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);

extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strrchr(const char *, int);
# 38 "../src/usb/usb_hal_pic24f.h" 2
# 198 "../src/usb/usb_hal_pic24f.h"
typedef union _BD_STAT
{
    struct{
        unsigned :2;
        unsigned BSTALL :1;
        unsigned DTSEN :1;
        unsigned :2;
        unsigned DTS :1;
        unsigned UOWN :1;
    };
    struct{
        unsigned :2;
        unsigned PID0 :1;
        unsigned PID1 :1;
        unsigned PID2 :1;
        unsigned PID3 :1;
    };
    struct{
        unsigned :2;
        unsigned PID :4;
    };
    uint8_t Val;
} BD_STAT;


typedef union __BDT
{
    union
    {
        struct
        {
            uint8_t CNT;
            BD_STAT STAT __attribute__ ((packed));
        };
        struct
        {
            uint16_t count:10;
            uint8_t :6;
            uint16_t ADR;
        };
    };
    uint32_t Val;
    uint16_t v[2];
} BDT_ENTRY;


typedef union __USTAT
{
    struct
    {
        unsigned char filler1 :2;
        unsigned char ping_pong :1;
        unsigned char direction :1;
        unsigned char endpoint_number :4;
    };
    uint8_t Val;
} USTAT_FIELDS;







typedef union _POINTER
{
    struct
    {
        uint8_t bLow;
        uint8_t bHigh;

    };
    uint16_t _word;



    uint8_t* bRam;

    uint16_t* wRam;


    const uint8_t* bRom;
    const uint16_t* wRom;




} POINTER;
# 354 "../src/usb/usb_hal_pic24f.h"
_Bool USBSleepOnSuspend(void);
# 507 "../src/usb/usb_hal_pic24f.h"
        extern volatile uint8_t USBActiveConfiguration;
        extern volatile IN_PIPE inPipes[1];
        extern volatile OUT_PIPE outPipes[1];

 extern volatile BDT_ENTRY* pBDTEntryOut[1 +1];
 extern volatile BDT_ENTRY* pBDTEntryIn[1 +1];
# 49 "../src/usb/usb_hal.h" 2
# 167 "../src/usb/usb_hal.h"
void OTGCORE_SetDeviceAddr( uint8_t addr );
# 206 "../src/usb/usb_hal.h"
    void OTGCORE_ControlUsbResistors( uint8_t flags );
# 237 "../src/usb/usb_hal.h"
_Bool USBHALSessionIsValid( void );
# 263 "../src/usb/usb_hal.h"
_Bool USBHALControlBusPower( uint8_t cmd );
# 293 "../src/usb/usb_hal.h"
unsigned long USBHALGetLastError( void );
# 326 "../src/usb/usb_hal.h"
void USBHALHandleBusEvent ( void );
# 367 "../src/usb/usb_hal.h"
_Bool OTGCORE_StallPipe( TRANSFER_FLAGS pipe );
# 404 "../src/usb/usb_hal.h"
_Bool OTGCORE_UnstallPipe( TRANSFER_FLAGS pipe );
# 438 "../src/usb/usb_hal.h"
uint16_t OTGCORE_GetStalledEndpoints ( void );
# 475 "../src/usb/usb_hal.h"
_Bool USBHALFlushPipe( TRANSFER_FLAGS pipe );
# 535 "../src/usb/usb_hal.h"
_Bool USBHALTransferData ( TRANSFER_FLAGS flags,
                          void *buffer,
                          unsigned int size );
# 575 "../src/usb/usb_hal.h"
_Bool USBHALSetEpConfiguration ( uint8_t ep_num, uint16_t max_pkt_size, uint16_t flags );
# 603 "../src/usb/usb_hal.h"
_Bool USBHALInitialize ( unsigned long flags );
# 1896 "../src/usb/usb_device.h" 2
# 50 "../src/usb/usb.h" 2
# 32 "../src/usb/usb_device_msd.c" 2

# 1 "../src/system_config.h" 1
# 34 "../src/usb/usb_device_msd.c" 2

# 1 "../src/usb/usb_device_msd.h" 1
# 30 "../src/usb/usb_device_msd.h"
# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 31 "../src/usb/usb_device_msd.h" 2
# 1 "../src/fileio/fileio.h" 1
# 38 "../src/fileio/fileio.h"
# 1 "c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include/stdint.h" 1 3 4
# 39 "../src/fileio/fileio.h" 2


# 1 "../src/system_config.h" 1
# 42 "../src/fileio/fileio.h" 2
# 57 "../src/fileio/fileio.h"
typedef enum
{
    FILEIO_RESULT_SUCCESS = 0,
    FILEIO_RESULT_FAILURE = -1
} FILEIO_RESULT;
# 70 "../src/fileio/fileio.h"
typedef enum
{
    FILEIO_FORMAT_ERASE = 0,
    FILEIO_FORMAT_BOOT_SECTOR
} FILEIO_FORMAT_MODE;


typedef enum
{
    FILEIO_ERROR_NONE = 0,
    FILEIO_ERROR_ERASE_FAIL,
    FILEIO_ERROR_NOT_PRESENT,
    FILEIO_ERROR_NOT_FORMATTED,
    FILEIO_ERROR_BAD_PARTITION,
    FILEIO_ERROR_UNSUPPORTED_FS,
    FILEIO_ERROR_INIT_ERROR,
    FILEIO_ERROR_UNINITIALIZED,
    FILEIO_ERROR_BAD_SECTOR_READ,
    FILEIO_ERROR_WRITE,
    FILEIO_ERROR_INVALID_CLUSTER,
    FILEIO_ERROR_DRIVE_NOT_FOUND,
    FILEIO_ERROR_FILE_NOT_FOUND,
    FILEIO_ERROR_DIR_NOT_FOUND,
    FILEIO_ERROR_BAD_FILE,
    FILEIO_ERROR_DONE,
    FILEIO_ERROR_COULD_NOT_GET_CLUSTER,
    FILEIO_ERROR_FILENAME_TOO_LONG,
    FILEIO_ERROR_FILENAME_EXISTS,
    FILEIO_ERROR_INVALID_FILENAME,
    FILEIO_ERROR_DELETE_DIR,
    FILEIO_ERROR_DELETE_FILE,
    FILEIO_ERROR_DIR_FULL,
    FILEIO_ERROR_DRIVE_FULL,
    FILEIO_ERROR_DIR_NOT_EMPTY,
    FILEIO_ERROR_UNSUPPORTED_SIZE,
    FILEIO_ERROR_WRITE_PROTECTED,
    FILEIO_ERROR_FILE_UNOPENED,
    FILEIO_ERROR_SEEK_ERROR,
    FILEIO_ERROR_BAD_CACHE_READ,
    FILEIO_ERROR_FAT32_UNSUPPORTED,
    FILEIO_ERROR_READ_ONLY,
    FILEIO_ERROR_WRITE_ONLY,
    FILEIO_ERROR_INVALID_ARGUMENT,
    FILEIO_ERROR_TOO_MANY_FILES_OPEN,
    FILEIO_ERROR_TOO_MANY_DRIVES_OPEN,
    FILEIO_ERROR_UNSUPPORTED_SECTOR_SIZE,
    FILEIO_ERROR_NO_LONG_FILE_NAME,
    FILEIO_ERROR_EOF
} FILEIO_ERROR_TYPE;


typedef enum
{
    FILEIO_ATTRIBUTE_READ_ONLY = 0x01,
    FILEIO_ATTRIBUTE_HIDDEN = 0x02,
    FILEIO_ATTRIBUTE_SYSTEM = 0x04,
    FILEIO_ATTRIBUTE_VOLUME = 0x08,
    FILEIO_ATTRIBUTE_LONG_NAME = 0x0F,
    FILEIO_ATTRIBUTE_DIRECTORY = 0x10,
    FILEIO_ATTRIBUTE_ARCHIVE = 0x20,
    FILEIO_ATTRIBUTE_MASK = 0x3F
} FILEIO_ATTRIBUTES;


typedef enum
{
    FILEIO_SEEK_SET = 0,
    FILEIO_SEEK_CUR,
    FILEIO_SEEK_END
} FILEIO_SEEK_BASE;


typedef enum
{
    FILEIO_OPEN_READ = 0x01,
    FILEIO_OPEN_WRITE = 0x02,
    FILEIO_OPEN_CREATE = 0x04,
    FILEIO_OPEN_TRUNCATE = 0x08,
    FILEIO_OPEN_APPEND = 0x10
} FILEIO_OPEN_ACCESS_MODES;


typedef enum
{
    FILEIO_FILE_SYSTEM_TYPE_NONE = 0,
    FILEIO_FILE_SYSTEM_TYPE_FAT12,
    FILEIO_FILE_SYSTEM_TYPE_FAT16,
    FILEIO_FILE_SYSTEM_TYPE_FAT32
} FILEIO_FILE_SYSTEM_TYPE;




typedef struct
{
    uint32_t baseClusterDir;
    uint32_t currentClusterDir;
    uint32_t firstCluster;
    uint32_t currentCluster;
    uint32_t size;
    uint32_t absoluteOffset;
    void * disk;
    uint16_t currentSector;
    uint16_t currentOffset;
    uint16_t entry;
    uint16_t attributes;
    uint16_t time;
    uint16_t date;
    uint8_t timeMs;
    char name[11];
    struct
    {
        unsigned writeEnabled :1;
        unsigned readEnabled :1;

    } flags;
} FILEIO_OBJECT;


typedef enum
{
    FILEIO_GET_PROPERTIES_NO_ERRORS = 0,
    FILEIO_GET_PROPERTIES_CACHE_ERROR,
    FILEIO_GET_PROPERTIES_DRIVE_NOT_MOUNTED,
    FILEIO_GET_PROPERTIES_CLUSTER_FAILURE,
    FILEIO_GET_PROPERTIES_STILL_WORKING = 0xFF
} FILEIO_DRIVE_ERRORS;


typedef enum
{
    MEDIA_NO_ERROR,
    MEDIA_DEVICE_NOT_PRESENT,
    MEDIA_CANNOT_INITIALIZE
} FILEIO_MEDIA_ERRORS;


typedef struct
{
    FILEIO_MEDIA_ERRORS errorCode;

    union
    {
        uint8_t value;
        struct
        {
            uint8_t sectorSize : 1;
            uint8_t maxLUN : 1;
        } bits;
    } validityFlags;

    uint16_t sectorSize;
    uint8_t maxLUN;
} FILEIO_MEDIA_INFORMATION;
# 246 "../src/fileio/fileio.h"
typedef void (*FILEIO_DRIVER_IOInitialize)(void * mediaConfig);
# 270 "../src/fileio/fileio.h"
typedef _Bool (*FILEIO_DRIVER_MediaDetect)(void * mediaConfig);
# 294 "../src/fileio/fileio.h"
typedef FILEIO_MEDIA_INFORMATION * (*FILEIO_DRIVER_MediaInitialize)(void * mediaConfig);
# 318 "../src/fileio/fileio.h"
typedef _Bool (*FILEIO_DRIVER_MediaDeinitialize)(void * mediaConfig);
# 346 "../src/fileio/fileio.h"
typedef _Bool (*FILEIO_DRIVER_SectorRead)(void * mediaConfig, uint32_t sector_addr, uint8_t* buffer);
# 379 "../src/fileio/fileio.h"
typedef uint8_t (*FILEIO_DRIVER_SectorWrite)(void * mediaConfig, uint32_t sector_addr, uint8_t* buffer, _Bool allowWriteToZero);
# 403 "../src/fileio/fileio.h"
typedef _Bool (*FILEIO_DRIVER_WriteProtectStateGet)(void * mediaConfig);



typedef struct
{
    FILEIO_DRIVER_IOInitialize funcIOInit;
    FILEIO_DRIVER_MediaDetect funcMediaDetect;
    FILEIO_DRIVER_MediaInitialize funcMediaInit;
    FILEIO_DRIVER_MediaDeinitialize funcMediaDeinit;
    FILEIO_DRIVER_SectorRead funcSectorRead;
    FILEIO_DRIVER_SectorWrite funcSectorWrite;
    FILEIO_DRIVER_WriteProtectStateGet funcWriteProtectGet;
} FILEIO_DRIVE_CONFIG;


typedef struct
{
    char disk;
    _Bool new_request;
    FILEIO_DRIVE_ERRORS properties_status;

    struct
    {
        uint8_t disk_format;
        uint16_t sector_size;
        uint8_t sectors_per_cluster;
        uint32_t total_clusters;
        uint32_t free_clusters;
    } results;

    struct
    {
        uint32_t c;
        uint32_t curcls;
        uint32_t EndClusterLimit;
        uint32_t ClusterFailValue;
    } private;



} FILEIO_DRIVE_PROPERTIES;


typedef union
{
    struct
    {
        uint16_t day : 5;
        uint16_t month : 4;
        uint16_t year : 7;
    } bitfield;
    uint16_t value;
} FILEIO_DATE;


typedef union
{
    struct
    {
        uint16_t secondsDiv2 : 5;
        uint16_t minutes : 6;
        uint16_t hours : 5;
    } bitfield;
    uint16_t value;
} FILEIO_TIME;


typedef struct
{
    FILEIO_DATE date;
    FILEIO_TIME time;
    uint8_t timeMs;
} FILEIO_TIMESTAMP;


typedef struct
{


    uint8_t shortFileName[13];
    uint8_t attributes;
    uint32_t fileSize;
    FILEIO_TIMESTAMP timeStamp;


    uint32_t baseDirCluster;
    uint32_t currentDirCluster;
    uint16_t currentClusterOffset;
    uint16_t currentEntryOffset;
    uint16_t pathOffset;
    char driveId;
} FILEIO_SEARCH_RECORD;
# 521 "../src/fileio/fileio.h"
int FILEIO_Initialize (void);
# 543 "../src/fileio/fileio.h"
int FILEIO_Reinitialize (void);
# 568 "../src/fileio/fileio.h"
typedef void (*FILEIO_TimestampGet)(FILEIO_TIMESTAMP *);
# 591 "../src/fileio/fileio.h"
void FILEIO_RegisterTimestampGet (FILEIO_TimestampGet timestampFunction);
# 619 "../src/fileio/fileio.h"
_Bool FILEIO_MediaDetect (const FILEIO_DRIVE_CONFIG * driveConfig, void * mediaParameters);
# 663 "../src/fileio/fileio.h"
FILEIO_ERROR_TYPE FILEIO_DriveMount (char driveId, const FILEIO_DRIVE_CONFIG * driveConfig, void * mediaParameters);
# 690 "../src/fileio/fileio.h"
int FILEIO_Format (FILEIO_DRIVE_CONFIG * config, void * mediaParameters, FILEIO_FORMAT_MODE mode, uint32_t serialNumber, char * volumeId);
# 709 "../src/fileio/fileio.h"
int FILEIO_DriveUnmount (const char driveId);
# 745 "../src/fileio/fileio.h"
int FILEIO_Remove (const char * pathName);
# 791 "../src/fileio/fileio.h"
int FILEIO_Rename (const char * oldPathName, const char * newFileName);
# 813 "../src/fileio/fileio.h"
int FILEIO_DirectoryMake (const char * path);
# 837 "../src/fileio/fileio.h"
int FILEIO_DirectoryChange (const char * path);
# 866 "../src/fileio/fileio.h"
uint16_t FILEIO_DirectoryGetCurrent (char * buffer, uint16_t size);
# 884 "../src/fileio/fileio.h"
int FILEIO_DirectoryRemove (const char * pathName);
# 905 "../src/fileio/fileio.h"
FILEIO_ERROR_TYPE FILEIO_ErrorGet (char driveId);
# 926 "../src/fileio/fileio.h"
void FILEIO_ErrorClear (char driveId);
# 976 "../src/fileio/fileio.h"
int FILEIO_Open (FILEIO_OBJECT * filePtr, const char * pathName, uint16_t mode);
# 1006 "../src/fileio/fileio.h"
int FILEIO_Close (FILEIO_OBJECT * handle);
# 1037 "../src/fileio/fileio.h"
int FILEIO_Flush (FILEIO_OBJECT * handle);
# 1072 "../src/fileio/fileio.h"
int FILEIO_GetChar (FILEIO_OBJECT * handle);
# 1111 "../src/fileio/fileio.h"
int FILEIO_PutChar (char c, FILEIO_OBJECT * handle);
# 1150 "../src/fileio/fileio.h"
size_t FILEIO_Read (void * buffer, size_t size, size_t count, FILEIO_OBJECT * handle);
# 1192 "../src/fileio/fileio.h"
size_t FILEIO_Write (const void * buffer, size_t size, size_t count, FILEIO_OBJECT * handle);
# 1236 "../src/fileio/fileio.h"
int FILEIO_Seek (FILEIO_OBJECT * handle, int32_t offset, int base);
# 1261 "../src/fileio/fileio.h"
_Bool FILEIO_Eof (FILEIO_OBJECT * handle);
# 1284 "../src/fileio/fileio.h"
long FILEIO_Tell (FILEIO_OBJECT * handle);
# 1330 "../src/fileio/fileio.h"
int FILEIO_Find (const char * fileName, unsigned int attr, FILEIO_SEARCH_RECORD * record, _Bool newSearch);
# 1374 "../src/fileio/fileio.h"
int FILEIO_LongFileNameGet (FILEIO_SEARCH_RECORD * record, uint16_t * buffer, uint16_t length);
# 1392 "../src/fileio/fileio.h"
FILEIO_FILE_SYSTEM_TYPE FILEIO_FileSystemTypeGet (char driveId);
# 1500 "../src/fileio/fileio.h"
void FILEIO_DrivePropertiesGet (FILEIO_DRIVE_PROPERTIES* properties, char driveId);
# 32 "../src/usb/usb_device_msd.h" 2
# 230 "../src/usb/usb_device_msd.h"
typedef struct _USB_MSD_CBW
{
    uint32_t dCBWSignature;
    uint32_t dCBWTag;
    uint32_t dCBWDataTransferLength;
    uint8_t bCBWFlags;

    uint8_t bCBWLUN;
    uint8_t bCBWCBLength;
 uint8_t CBWCB[16];
} USB_MSD_CBW;

typedef union
{
    uint8_t v[4];
    uint16_t w[2];
    uint32_t Val;
} USB_MSD_LBA;

typedef union
{
    uint8_t v[4];
    uint16_t w[2];
    uint32_t Val;
} USB_MSD_BLK;

typedef union
{
    uint8_t v[4];
    uint16_t w[2];
    uint32_t Val;
} USB_MSD_SECTOR_SIZE;

typedef union
{
    uint8_t v[4];
    uint16_t w[2];
    uint32_t Val;
} USB_MSD_CAPACITY;

typedef union
{
    uint8_t v[2];
    struct __attribute__((__packed__))
    {
        uint8_t LB;
        uint8_t HB;
    }byte;
    uint16_t Val;
} USB_MSD_TRANSFER_LENGTH;

typedef struct {
    uint8_t Opcode;
    uint8_t Flags;
    USB_MSD_LBA LBA;
    uint8_t GroupNumber;
    USB_MSD_TRANSFER_LENGTH TransferLength;
    uint8_t Control;
} ReadWriteCB;

typedef struct {
 uint8_t Opcode;
 uint8_t EVPD;
 uint8_t PageCode;
 uint16_t AllocationLength;
 uint8_t Control;
} InquiryCB;

typedef struct {
 uint8_t Opcode;
 uint8_t Reserved1;
 uint32_t LBA;
 uint16_t Reserved2;
 uint8_t PMI;
 uint8_t Control;
} ReadCapacityCB;

typedef struct {
 uint8_t Opcode;
 uint8_t Desc;
 uint16_t Reserved;
 uint8_t AllocationLength;
 uint8_t Control;
} RequestSenseCB;

typedef struct {
 uint8_t Opcode;
 uint8_t DBD;
 uint8_t PageCode;

 uint8_t SubPageCode;
 uint8_t AllocationLength;
 uint8_t Control;
} ModeSenseCB;

typedef struct {
 uint8_t Opcode;
 uint8_t Reserved[3];
 uint8_t Prevent;
 uint8_t Control;
} PreventAllowMediumRemovalCB;

typedef struct {
 uint8_t Opcode;
 uint32_t Reserved;
 uint8_t Control;
} TestUnitReadyCB;

typedef struct {
 uint8_t Opcode;
 uint8_t VRProtect;
 uint32_t LBA;
 uint8_t GroupNumber;
 uint16_t VerificationLength;
 uint8_t Control;
} VerifyCB;

typedef struct {
 uint8_t Opcode;
 uint8_t Immed;
 uint16_t Reserved;
 uint8_t Start;
 uint8_t Control;
} StopStartCB;


typedef struct _USB_MSD_CSW
{
 uint32_t dCSWSignature;
 uint32_t dCSWTag;
 uint32_t dCSWDataResidue;
 uint8_t bCSWStatus;
} USB_MSD_CSW;

typedef struct
{
  uint8_t Peripheral;
 uint8_t Removble;
 uint8_t Version;
 uint8_t Response_Data_Format;

 uint8_t AdditionalLength;
 uint8_t Sccstp;
 uint8_t bqueetc;
    uint8_t CmdQue;
 char vendorID[8];
 char productID[16];
 char productRev[4];
} InquiryResponse;

typedef struct {
 uint8_t ModeDataLen;
 uint8_t MediumType;
 unsigned Resv:4;
 unsigned DPOFUA:1;
 unsigned notused:2;
 unsigned WP:1;
 uint8_t BlockDscLen;
} tModeParamHdr;


typedef struct {
 uint8_t NumBlocks[4];
 uint8_t Resv;
 uint8_t BlockLen[3];
} tBlockDescriptor;


typedef struct {

 unsigned PageCode:6;
 unsigned SPF:1;
 unsigned PS:1;

 uint8_t PageLength;
 uint8_t ModeParam[];
} tModePage;

typedef struct {
 tModeParamHdr Header;
 tBlockDescriptor BlockDsc;
 tModePage modePage;
} ModeSenseResponse;

typedef union
{
    uint8_t v[4];
    uint16_t w[2];
    uint32_t Val;
} USB_MSD_CMD_SPECIFIC_INFO;


typedef union __attribute__((packed)){
 struct
    {
        uint8_t _byte[18];
    };
 struct __attribute__((packed)){
     unsigned ResponseCode:7;
     unsigned VALID:1;

     uint8_t Obsolete;

     unsigned SenseKey:4;
     unsigned Resv:1;
     unsigned ILI:1;
     unsigned EOM:1;
     unsigned FILEMARK:1;

     uint8_t InformationB0;
        uint8_t InformationB1;
        uint8_t InformationB2;
        uint8_t InformationB3;
     uint8_t AddSenseLen;
     USB_MSD_CMD_SPECIFIC_INFO CmdSpecificInfo;
     uint8_t ASC;
     uint8_t ASCQ;
     uint8_t FRUC;

     uint8_t SenseKeySpecific[3];


    };
} RequestSenseResponse;
# 494 "../src/usb/usb_device_msd.h"
typedef struct
{


    FILEIO_MEDIA_INFORMATION* (*MediaInitialize)(void * config);


    uint32_t (*ReadCapacity)(void * config);


    uint16_t (*ReadSectorSize)(void * config);


    _Bool (*MediaDetect)(void * config);


    uint8_t (*SectorRead)(void * config, uint32_t sector_addr, uint8_t* buffer);


    uint8_t (*WriteProtectState)(void * config);


    uint8_t (*SectorWrite)(void * config, uint32_t sector_addr, uint8_t* buffer, uint8_t allowWriteToZero);

    void * mediaParameters;
} LUN_FUNCTIONS;


extern void* USBMSDOutHandle;
extern void* USBMSDInHandle;
extern volatile USB_MSD_CBW msd_cbw;
extern volatile USB_MSD_CSW msd_csw;
extern volatile char msd_buffer[512];
extern _Bool SoftDetach[0u + 1];
extern volatile CTRL_TRF_SETUP SetupPkt;
extern volatile uint8_t CtrlTrfData[8];
extern _Bool MSDCBWValid;
extern uint8_t MSD_State;


void USBCheckMSDRequest(void);
uint8_t MSDTasks(void);
void USBMSDInit(void);
# 36 "../src/usb/usb_device_msd.c" 2
# 53 "../src/usb/usb_device_msd.c"
extern LUN_FUNCTIONS LUN[0u + 1];
# 72 "../src/usb/usb_device_msd.c"
uint8_t MSD_State;
uint8_t MSDCommandState;
uint8_t MSDReadState;
uint8_t MSDWriteState;
uint8_t MSDRetryAttempt;

USB_MSD_CBW gblCBW;
uint8_t gblCBWLength;
RequestSenseResponse gblSenseData[0u + 1];
uint8_t *ptrNextData;
void* USBMSDOutHandle;
void* USBMSDInHandle;
uint16_t MSBBufferIndex;
uint16_t gblMediaPresent;
_Bool SoftDetach[0u + 1];
_Bool MSDHostNoData;
_Bool MSDCBWValid;

static USB_MSD_TRANSFER_LENGTH TransferLength;
static USB_MSD_LBA LBA;






USB_MSD_BLK gblNumBLKS,gblBLKLen;
extern const InquiryResponse inq_resp;


uint8_t MSDProcessCommand(void);
void MSDProcessCommandMediaAbsent(void);
void MSDProcessCommandMediaPresent(void);
uint8_t MSDReadHandler(void);
uint8_t MSDWriteHandler(void);
void ResetSenseData(void);
uint8_t MSDCheckForErrorCases(uint32_t);
void MSDErrorHandler(uint8_t);
static void MSDComputeDeviceInAndResidue(uint16_t);
# 150 "../src/usb/usb_device_msd.c"
void USBMSDInit(void)
{

    USBMSDOutHandle = USBTransferOnePacket(1u,0,(uint8_t*)&msd_cbw,64u);

    USBMSDInHandle = ((1 == 0)?((void*)pBDTEntryOut[1u]):((void*)pBDTEntryIn[1u]));
    MSD_State = 0x00;
    MSDCommandState = 0xFF;
    MSDReadState = 0x00;
    MSDWriteState = 0x00;
    MSDHostNoData = 0;
    gblNumBLKS.Val = 0;
    gblBLKLen.Val = 0;
    MSDCBWValid = 1;

    gblMediaPresent = 0;


    for(gblCBW.bCBWLUN=0;gblCBW.bCBWLUN<(0u + 1);gblCBW.bCBWLUN++)
    {

        SoftDetach[gblCBW.bCBWLUN] = 0;


        if(LUN[0].MediaDetect(LUN[0].mediaParameters))
        {

            if(LUN[0].MediaInitialize(LUN[0].mediaParameters))
            {


                gblMediaPresent |= ((uint16_t)1<<gblCBW.bCBWLUN);
            }
        }
        ResetSenseData();
    }
}
# 226 "../src/usb/usb_device_msd.c"
void USBCheckMSDRequest(void)
{
    if(SetupPkt.Recipient != (0x01))
    {
        return;
    }

    if(SetupPkt.bIntfID != 0x00)
    {
        return;
    }

    switch(SetupPkt.bRequest)
    {
        case 0xff:


            if((SetupPkt.wValue != 0) || (SetupPkt.wLength != 0))
            {
                return;
            }







            MSD_State = 0x00;
            MSDCommandState = 0xFF;
            MSDReadState = 0x00;
            MSDWriteState = 0x00;
            MSDCBWValid = 1;




            if(!(((0 == 0)?((void*)pBDTEntryOut[1u]):((void*)pBDTEntryIn[1u]))==0?0:((volatile BDT_ENTRY*)((0 == 0)?((void*)pBDTEntryOut[1u]):((void*)pBDTEntryIn[1u])))->STAT.UOWN))
            {
                USBMSDOutHandle = USBTransferOnePacket(1u,0,(uint8_t*)&msd_cbw,64u);
            }



            inPipes[0].info.Val = 0x00 | 0x80;
            break;

        case 0xfe:


            if((SetupPkt.wValue != 0) || (SetupPkt.wLength != 1))
            {
                break;
            }



            CtrlTrfData[0] = 0u;
            { inPipes[0].pSrc.bRam = (uint8_t*)&CtrlTrfData[0]; inPipes[0].wCount.Val = 1; inPipes[0].info.Val = 0x40 | 0x80 | 0x01; };
            break;
    }
}
# 343 "../src/usb/usb_device_msd.c"
uint8_t MSDTasks(void)
{
    uint8_t i;




    if(USBDeviceState != CONFIGURED_STATE)
    {
        return 0x00;
    }







    {IEC5bits.USB1IE = 0;};



    switch(MSD_State)
    {
        case 0x00:
        {

            if(!(USBMSDOutHandle==0?0:((volatile BDT_ENTRY*)USBMSDOutHandle)->STAT.UOWN))
            {







                for(i = 0; i < 0x1f; i++)
                {
                    *((uint8_t*)&gblCBW.dCBWSignature + i) = *((uint8_t*)&msd_cbw.dCBWSignature + i);
                }


                if(((((volatile BDT_ENTRY*)USBMSDOutHandle)->CNT) == 0x1f) && (gblCBW.dCBWSignature == (uint32_t)0x43425355))
                {


                    MSDCBWValid = 1;


                    if((gblCBW.bCBWLUN <= 0u)
                        &&(gblCBW.bCBWCBLength <= 0x10)
                        &&(gblCBW.bCBWCBLength >= 0x01)
                        &&((gblCBW.bCBWFlags & 0x3F) == 0x00))
                    {






                        msd_csw.dCSWSignature = (uint32_t)0x53425355;
                        msd_csw.dCSWTag = gblCBW.dCBWTag;
                        msd_csw.dCSWDataResidue = 0x0;
                        msd_csw.bCSWStatus = 0x00;






                        MSDCommandState = 0xFF;
                        MSDReadState = 0x00;
                        MSDWriteState = 0x00;



                        MSDRetryAttempt = 0;
# 428 "../src/usb/usb_device_msd.c"
                        if(gblCBW.CBWCB[0] != 0x03)
                        {
                            gblSenseData[0].SenseKey=0x0;
                            gblSenseData[0].ASC=0x00;
                            gblSenseData[0].ASCQ=0x00;
                        }





                        if (gblCBW.bCBWFlags & 0x80)
                        {
                            MSD_State = 0x01;
                        }
                        else
                        {
                            MSD_State = 0x02;
                        }



                        if(gblCBW.dCBWDataTransferLength != 0)
                        {
                            MSDHostNoData = 0;
                        }
                        else
                        {
                            MSDHostNoData = 1;
                        }



                        MSDCommandState = gblCBW.CBWCB[0];
                    }
                    else
                    {



                        USBStallEndpoint(1u, 1);
                        USBStallEndpoint(1u, 0);
                    }
                }
                else
                {



                    USBStallEndpoint(1u, 1);
                    USBStallEndpoint(1u, 0);
                    MSDCBWValid = 0;


                }
            }
            break;
        }
        case 0x01:
            if(MSDProcessCommand() == 0xFF)
            {

                MSD_State = 0x03;
            }
            break;
        case 0x02:
            if(MSDProcessCommand() == 0xFF)
            {

                if ((msd_csw.bCSWStatus == 0x00)&&(msd_csw.dCSWDataResidue!=0))
                {
                    msd_csw.bCSWStatus = 0x02;
                }
                MSD_State = 0x03;
            }
            break;
        case 0x03:


            if((((1 == 0)?((void*)pBDTEntryOut[1u]):((void*)pBDTEntryIn[1u]))==0?0:((volatile BDT_ENTRY*)((1 == 0)?((void*)pBDTEntryOut[1u]):((void*)pBDTEntryIn[1u])))->STAT.UOWN) == 1)
            {
                break;
            }


            USBMSDInHandle = USBTransferOnePacket(1u,1,(uint8_t*)&msd_csw,0x0d);


            if(!(USBMSDOutHandle==0?0:((volatile BDT_ENTRY*)USBMSDOutHandle)->STAT.UOWN))
            {
                USBMSDOutHandle = USBTransferOnePacket(1u,0,(uint8_t*)&msd_cbw,64u);
            }
            MSD_State=0x00;
            break;
        default:



            MSD_State=0x00;
            msd_csw.bCSWStatus = 0x02;
            USBStallEndpoint(1u, 0);
    }


    {IEC5bits.USB1IE = 1;};

    return MSD_State;
}
# 561 "../src/usb/usb_device_msd.c"
uint8_t MSDProcessCommand(void)
{


    if((LUN[0].MediaDetect(LUN[0].mediaParameters) == 0) || (SoftDetach[gblCBW.bCBWLUN] == 1))
    {


        gblMediaPresent &= ~((uint16_t)1<<gblCBW.bCBWLUN);
        MSDProcessCommandMediaAbsent();
    }
    else
    {

        if((gblMediaPresent & ((uint16_t)1<<gblCBW.bCBWLUN)) == 0)
        {

            if(LUN[0].MediaInitialize(LUN[0].mediaParameters))
            {



                gblMediaPresent |= ((uint16_t)1<<gblCBW.bCBWLUN);





                gblSenseData[0].SenseKey = 0x6;
                gblSenseData[0].ASC = 0x28;
                gblSenseData[0].ASCQ = 0x00;


                msd_csw.bCSWStatus = 0x01;

                MSDProcessCommandMediaPresent();
            }
            else
            {

                MSDProcessCommandMediaAbsent();
            }
        }
        else
        {


            MSDProcessCommandMediaPresent();
        }
    }

    return MSDCommandState;
}
# 643 "../src/usb/usb_device_msd.c"
void MSDProcessCommandMediaAbsent(void)
{

    switch(MSDCommandState)
    {
        case 0x03:





            ResetSenseData();
            gblSenseData[0].SenseKey=0x2;
            gblSenseData[0].ASC=0x3a;
            gblSenseData[0].ASCQ=0x00;




            MSDProcessCommandMediaPresent();
            break;

        case 0x1e:
        case 0x00:




            msd_csw.bCSWStatus = 0x01;
            MSDCommandState = 0xFF;
            break;

        case 0x12:


            MSDProcessCommandMediaPresent();
            break;

        case 0xFD:


            MSDProcessCommandMediaPresent();
            break;

        default:



            MSDErrorHandler(0x7F);
            break;
    }
}
# 720 "../src/usb/usb_device_msd.c"
void MSDProcessCommandMediaPresent(void)
{
    uint8_t i;
    uint8_t NumBytesInPacket;


    switch(MSDCommandState)
    {
        case 0x28:




            if(MSDReadHandler() == 0x00)
            {
                MSDCommandState = 0xFF;
            }
            break;

     case 0x2a:




            if(MSDWriteHandler() == 0x00)
            {
                MSDCommandState = 0xFF;
            }
            break;

     case 0x12:
     {




            if(MSDHostNoData == 1)
            {
                MSDCommandState = 0xFF;
                break;
            }



            TransferLength.byte.HB = gblCBW.CBWCB[3];
            TransferLength.byte.LB = gblCBW.CBWCB[4];

            if(MSDCheckForErrorCases(TransferLength.Val) != 0x00)
            {
                break;
            }


            MSDComputeDeviceInAndResidue(sizeof(InquiryResponse));





            memcpy((void *)&msd_buffer[0], (const void*)&inq_resp, sizeof(InquiryResponse));
            MSDCommandState = 0xFD;
            break;
        }
        case 0x25:
        {


            USB_MSD_SECTOR_SIZE sectorSize;
            USB_MSD_CAPACITY capacity;


            capacity.Val = LUN[0].ReadCapacity(LUN[0].mediaParameters);
            sectorSize.Val = LUN[0].ReadSectorSize(LUN[0].mediaParameters);


            msd_buffer[0]=capacity.v[3];
            msd_buffer[1]=capacity.v[2];
            msd_buffer[2]=capacity.v[1];
            msd_buffer[3]=capacity.v[0];

            msd_buffer[4]=sectorSize.v[3];
            msd_buffer[5]=sectorSize.v[2];
            msd_buffer[6]=sectorSize.v[1];
            msd_buffer[7]=sectorSize.v[0];


            TransferLength.Val = 0x08;
            MSDComputeDeviceInAndResidue(0x08);

            MSDCommandState = 0xFD;
            break;
        }
        case 0x03:






            if(MSDHostNoData == 1)
            {
                MSDCommandState = 0xFF;
                break;
            }


            TransferLength.Val = sizeof(RequestSenseResponse);
            MSDComputeDeviceInAndResidue(sizeof(RequestSenseResponse));


            for(i=0;i<sizeof(RequestSenseResponse);i++)
            {
                msd_buffer[i]=gblSenseData[0]._byte[i];
            }
            MSDCommandState = 0xFD;
            break;

        case 0x1a:
            msd_buffer[0]=0x03;
            msd_buffer[1]=0x00;
            msd_buffer[2]=(LUN[0].WriteProtectState(LUN[0].mediaParameters)) ? 0x80 : 0x00;
            msd_buffer[3]= 0x00;


            TransferLength.Val = 0x04;
            MSDComputeDeviceInAndResidue(0x04);
            MSDCommandState = 0xFD;
         break;

        case 0x1e:
            gblSenseData[0].SenseKey=0x5;
            gblSenseData[0].ASC=0x20;
            gblSenseData[0].ASCQ=0x00;
            msd_csw.bCSWStatus = 0x01;
            msd_csw.dCSWDataResidue = 0x00;
            MSDCommandState = 0xFF;
            break;

        case 0x00:







            if(MSDCheckForErrorCases(0) != 0x00)
            {
                break;
            }





            if((gblSenseData[0].SenseKey==0x6) && (msd_csw.bCSWStatus==0x01))
            {
                MSDCommandState = 0xFF;
            }
            else
            {
             ResetSenseData();
             msd_csw.dCSWDataResidue=0x00;
                MSDCommandState = 0xFF;
            }
            break;

        case 0x2f:


        case 0x1b:
            msd_csw.dCSWDataResidue=0x00;
            MSDCommandState = 0xFF;
            break;

        case 0xFD:




            if((USBMSDInHandle==0?0:((volatile BDT_ENTRY*)USBMSDInHandle)->STAT.UOWN) == 0)
            {


                if(gblCBW.dCBWDataTransferLength >= 64u)
                {
                    NumBytesInPacket = 64u;
                    gblCBW.dCBWDataTransferLength -= 64u;
                }
                else
                {


                    NumBytesInPacket = gblCBW.dCBWDataTransferLength;
                    gblCBW.dCBWDataTransferLength = 0;
                }






                if(TransferLength.Val >= NumBytesInPacket)
                {

                    TransferLength.Val -= NumBytesInPacket;
                }
                else
                {






                    for(i = 0; i < NumBytesInPacket; i++)
                    {
                        if(TransferLength.Val != 0)
                        {
                            TransferLength.Val--;
                        }
                        else
                        {
                            msd_buffer[i] = 0x00;
                        }
                    }
                }


                USBMSDInHandle = USBTransferOnePacket(1u,1,(uint8_t*)&msd_buffer[0],NumBytesInPacket);


                if(gblCBW.dCBWDataTransferLength == 0)
                {


                    MSDCommandState = 0xFF;
                    break;
                }
            }
            break;
        case 0xFE:
            default:



                MSDErrorHandler(0x7F);
                break;
 }
}
# 1001 "../src/usb/usb_device_msd.c"
static void MSDComputeDeviceInAndResidue(uint16_t DiExpected)
{

    if(gblCBW.dCBWDataTransferLength < DiExpected)
    {


        msd_csw.dCSWDataResidue = 0;
        TransferLength.Val = gblCBW.dCBWDataTransferLength;
    }
    else
    {

        if(DiExpected < TransferLength.Val)
        {
            TransferLength.Val = DiExpected;
        }
        msd_csw.dCSWDataResidue = gblCBW.dCBWDataTransferLength - TransferLength.Val;
    }
}
# 1046 "../src/usb/usb_device_msd.c"
uint8_t MSDReadHandler(void)
{
    switch(MSDReadState)
    {
        case 0x00:



            LBA.v[3]=gblCBW.CBWCB[2];
            LBA.v[2]=gblCBW.CBWCB[3];
            LBA.v[1]=gblCBW.CBWCB[4];
            LBA.v[0]=gblCBW.CBWCB[5];

            TransferLength.byte.HB = gblCBW.CBWCB[7];
            TransferLength.byte.LB = gblCBW.CBWCB[8];


            if(MSDCheckForErrorCases(TransferLength.Val * (uint32_t)512) != 0x00)
            {
                break;
            }

            MSDReadState = 0x01;


        case 0x01:
            if(TransferLength.Val == 0)
            {
                MSDReadState = 0x00;
                break;
            }

            TransferLength.Val--;
            MSDReadState = 0x02;


        case 0x02:

            if((USBMSDInHandle==0?0:((volatile BDT_ENTRY*)USBMSDInHandle)->STAT.UOWN) != 0)
            {
                break;
            }



            if(LUN[0].SectorRead(LUN[0].mediaParameters, LBA.Val, (uint8_t*)&msd_buffer[0]) != 1)
            {
                if(MSDRetryAttempt < (uint8_t)100u)
                {
                    MSDRetryAttempt++;
                    break;
                }
                else
                {
# 1108 "../src/usb/usb_device_msd.c"
                    msd_csw.bCSWStatus=0x02;



                    gblSenseData[0].SenseKey=0x3;
                    gblSenseData[0].ASC=0x00;
                    gblSenseData[0].ASCQ=0x00;
                    USBStallEndpoint(1u, 1);
                    MSDReadState = 0x00;
                    break;
                }
            }

            LBA.Val++;
            msd_csw.dCSWDataResidue=0x0200;


            ptrNextData=(uint8_t *)&msd_buffer[0];

            MSDReadState = 0x03;


        case 0x03:
            if(msd_csw.dCSWDataResidue == 0)
            {
                MSDReadState = 0x01;
                break;
            }

            MSDReadState = 0x04;


        case 0x04:



            if((USBMSDInHandle==0?0:((volatile BDT_ENTRY*)USBMSDInHandle)->STAT.UOWN))
            {
                break;
            }


            USBMSDInHandle = USBTransferOnePacket(1u,1,ptrNextData,64u);

            MSDReadState = 0x03;

            gblCBW.dCBWDataTransferLength-= 64u;
            msd_csw.dCSWDataResidue-=64u;
            ptrNextData+=64u;
            break;

        default:


            msd_csw.bCSWStatus=0x02;
            USBStallEndpoint(1u, 1);

            MSDReadState = 0x00;
            break;
    }

    return MSDReadState;
}
# 1196 "../src/usb/usb_device_msd.c"
uint8_t MSDWriteHandler(void)
{
    switch(MSDWriteState)
    {
        case 0x00:


            LBA.v[3]=gblCBW.CBWCB[2];
            LBA.v[2]=gblCBW.CBWCB[3];
            LBA.v[1]=gblCBW.CBWCB[4];
            LBA.v[0]=gblCBW.CBWCB[5];
            TransferLength.v[1]=gblCBW.CBWCB[7];
            TransferLength.v[0]=gblCBW.CBWCB[8];


            if(MSDCheckForErrorCases(TransferLength.Val * (uint32_t)512) != 0x00)
            {


                break;
            }



            if(LUN[0].WriteProtectState(LUN[0].mediaParameters))
            {



                msd_csw.bCSWStatus = 0x01;


                gblSenseData[0].SenseKey=0x7;
                gblSenseData[0].ASC=0x27;
                gblSenseData[0].ASCQ=0x00;



                USBStallEndpoint(1u, 0);
                MSDWriteState = 0x00;
                return MSDWriteState;
            }

            MSD_State = 0x01;


        case 0x01:
            if(TransferLength.Val == 0)
            {
                MSDWriteState = 0x00;
                break;
            }

            MSDWriteState = 0x03;
            ptrNextData=(uint8_t *)&msd_buffer[0];

            msd_csw.dCSWDataResidue=0x0200;


        case 0x03:
        {

            if(msd_csw.dCSWDataResidue>0)
            {
                if((USBMSDOutHandle==0?0:((volatile BDT_ENTRY*)USBMSDOutHandle)->STAT.UOWN) == 1)
                {
                    break;
                }

                USBMSDOutHandle = USBTransferOnePacket(1u,0,ptrNextData,64u);
                MSDWriteState = 0x04;

           }
           else
           {



                if(LUN[0].WriteProtectState(LUN[0].mediaParameters))
                {



                    msd_csw.bCSWStatus=0x01;


                    gblSenseData[0].SenseKey=0x2;
                    gblSenseData[0].ASC=0x27;
                    gblSenseData[0].ASCQ=0x00;
                }

                MSDWriteState = 0x02;
                break;
            }
        }

        case 0x04:
            if((USBMSDOutHandle==0?0:((volatile BDT_ENTRY*)USBMSDOutHandle)->STAT.UOWN) == 1)
            {
                break;
            }

            gblCBW.dCBWDataTransferLength-=(((volatile BDT_ENTRY*)USBMSDOutHandle)->CNT);
            msd_csw.dCSWDataResidue-=(((volatile BDT_ENTRY*)USBMSDOutHandle)->CNT);
            ptrNextData += 64u;

            MSDWriteState = 0x03;
            break;

        case 0x02:
        {






            if(msd_csw.bCSWStatus == 0x00)
            {
                if(LUN[0].SectorWrite(LUN[0].mediaParameters, LBA.Val, (uint8_t*)&msd_buffer[0], (LBA.Val==0)?1:0) != 1)
                {


                    if(MSDRetryAttempt < (uint8_t)100u)
                    {
                        MSDRetryAttempt++;
                        break;
                    }
                    else
                    {


                        msd_csw.bCSWStatus = 0x01;


                        gblSenseData[0].SenseKey=0x3;
                        gblSenseData[0].ASC=0x00;
                        gblSenseData[0].ASCQ=0x00;
                    }
                }
            }



            LBA.Val++;
            TransferLength.Val--;
            MSDWriteState = 0x01;
            break;
        }

        default:


            msd_csw.bCSWStatus=0x02;
            USBStallEndpoint(1u, 0);
            MSDWriteState = 0x00;
            break;
    }

    return MSDWriteState;
}
# 1381 "../src/usb/usb_device_msd.c"
void ResetSenseData(void)
{
    gblSenseData[0].ResponseCode=0x70;
    gblSenseData[0].VALID=0;
    gblSenseData[0].Obsolete=0x0;
    gblSenseData[0].SenseKey=0x0;

    gblSenseData[0].ILI=0;
    gblSenseData[0].EOM=0;
    gblSenseData[0].FILEMARK=0;
    gblSenseData[0].InformationB0=0x00;
    gblSenseData[0].InformationB1=0x00;
    gblSenseData[0].InformationB2=0x00;
    gblSenseData[0].InformationB3=0x00;
    gblSenseData[0].AddSenseLen=0x0a;
    gblSenseData[0].CmdSpecificInfo.Val=0x0;
    gblSenseData[0].ASC=0x0;
    gblSenseData[0].ASCQ=0x0;
    gblSenseData[0].FRUC=0x0;
    gblSenseData[0].SenseKeySpecific[0]=0x0;
    gblSenseData[0].SenseKeySpecific[1]=0x0;
    gblSenseData[0].SenseKeySpecific[2]=0x0;
}
# 1442 "../src/usb/usb_device_msd.c"
uint8_t MSDCheckForErrorCases(uint32_t DeviceBytes)
{
    uint8_t MSDErrorCase;
    _Bool HostMoreDataThanDevice;
    _Bool DeviceNoData;


    if(DeviceBytes == 0)
    {
        DeviceNoData = 1;
    }
    else
    {
        DeviceNoData = 0;
    }




    if((MSDHostNoData == 1) && (DeviceNoData == 1))
    {
        return 0x00;
    }


    if(gblCBW.dCBWDataTransferLength == DeviceBytes)
    {

        if(MSD_State == 0x01)
        {

            if(MSDCommandState != 0x2a)
            {
                return 0x00;
            }
        }
        else
        {


            if(MSDCommandState == 0x2a)
            {
                return 0x00;
            }
        }
    }





    if(gblCBW.dCBWDataTransferLength > DeviceBytes)
    {
        HostMoreDataThanDevice = 1;
    }
    else
    {
        HostMoreDataThanDevice = 0;
    }


 if(MSD_State == 0x02)
 {

     if((MSDCommandState != 0x2a) && (DeviceNoData == 0))
         MSDErrorCase = 0x05;

     else if(MSDHostNoData == 1)
         MSDErrorCase = 0x01;

     else if(DeviceNoData == 1)
         MSDErrorCase = 0x04;

     else if(HostMoreDataThanDevice == 1)
         MSDErrorCase = 0x04;

     else
         MSDErrorCase = 0x05;
    }
    else
    {

     if(MSDCommandState == 0x2a)
         MSDErrorCase = 0x03;

     else if(MSDHostNoData == 1)
         MSDErrorCase = 0x01;

     else if(DeviceNoData == 1)
         MSDErrorCase = 0x02;

     else if(HostMoreDataThanDevice == 1)
         MSDErrorCase = 0x02;

     else
         MSDErrorCase = 0x03;
    }

    MSDErrorHandler(MSDErrorCase);
    return MSDErrorCase;
}
# 1585 "../src/usb/usb_device_msd.c"
void MSDErrorHandler(uint8_t ErrorCase)
{
    uint8_t OldMSD_State;



    if(((USBMSDInHandle==0?0:((volatile BDT_ENTRY*)USBMSDInHandle)->STAT.UOWN)) || ((USBMSDOutHandle==0?0:((volatile BDT_ENTRY*)USBMSDOutHandle)->STAT.UOWN)))
    {
     return;
    }



    OldMSD_State = MSD_State;


    MSDCommandState = 0xFF;
    MSDReadState = 0x00;
    MSDWriteState = 0x00;

    msd_csw.dCSWDataResidue = gblCBW.dCBWDataTransferLength;
    msd_csw.bCSWStatus = 0x01;
    MSD_State = 0x03;



    switch(ErrorCase)
    {
        case 0x01:
            msd_csw.bCSWStatus = 0x02;
            break;

        case 0x02:
            USBStallEndpoint(1u, 1);
            break;

        case 0x03:
            msd_csw.bCSWStatus = 0x02;
            USBStallEndpoint(1u, 1);
            break;

        case 0x04:
            USBStallEndpoint(1u, 0);
            break;

        case 0x05:
            msd_csw.bCSWStatus = 0x02;
            USBStallEndpoint(1u, 0);
            break;

        case 0x7F:
            ResetSenseData();
            gblSenseData[0].SenseKey=0x5;
            gblSenseData[0].ASC=0x20;
            gblSenseData[0].ASCQ=0x00;

            if((OldMSD_State == 0x02) && (gblCBW.dCBWDataTransferLength != 0))
            {
                USBStallEndpoint(1u, 0);
            }
            else
            {
                USBStallEndpoint(1u, 1);
            }
            break;
        default:
            break;
    }
}
