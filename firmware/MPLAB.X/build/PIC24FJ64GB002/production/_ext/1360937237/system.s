	.file "F:\\microchip\\mla\\v2013_12_20\\apps\\usb\\device\\msd_internal_flash\\firmware\\MPLAB.X\\..\\src\\system.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.section	.text,code
	.align	2
	.global	_SYSTEM_Initialize	; export
	.type	_SYSTEM_Initialize,@function
_SYSTEM_Initialize:
.LFB0:
.LSM0:
	.set ___PA___,1
.LSM1:
	setm	_AD1PCFG
.LSM2:
	return	
	.set ___PA___,0
.LFE0:
	.align	2
	.global	__USB1Interrupt	; export
	.type	__USB1Interrupt,@function
__USB1Interrupt:
.LFB1:
.LSM3:
	.set ___PA___,1
	push	_RCOUNT
	mov.d	w0,[w15++]
	mov.d	w2,[w15++]
	mov.d	w4,[w15++]
	mov.d	w6,[w15++]
	push	_PSVPAG
	mov	#__const_psvpage,w0
	mov	w0,_PSVPAG
.LSM4:
	rcall	_USBDeviceTasks
.LSM5:
	pop	_PSVPAG
	mov.d	[--w15],w6
	mov.d	[--w15],w4
	mov.d	[--w15],w2
	mov.d	[--w15],w0
	pop	_RCOUNT
	retfie	
	.set ___PA___,0
.LFE1:
	.section	.debug_frame,info
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.byte	0
	.uleb128 0x1
	.sleb128 2
	.byte	0x25
	.byte	0x12
	.uleb128 0xf
	.sleb128 -2
	.byte	0x9
	.uleb128 0x25
	.uleb128 0xf
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align	4
.LEFDE2:
	.section	.text,code
.Letext0:
	.section	.debug_info,info
	.4byte	0x1c9
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1_21) (A) Build date: Jan  2 2014"
	.byte	0x1
	.asciz	"../src/system.c"
	.ascii	"F:\\\\microchip\\\\mla\\\\v2013_12_20\\\\apps\\\\usb\\\\device\\\\ms"
	.asciz	"d_internal_flash\\\\firmware\\\\MPLAB.X"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.asciz	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.asciz	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.asciz	"long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.asciz	"long long int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.asciz	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"short unsigned int"
	.uleb128 0x3
	.byte	0x1
	.asciz	"SYSTEM_Initialize"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5f
	.uleb128 0x4
	.byte	0x1
	.asciz	"_USB1Interrupt"
	.byte	0x1
	.byte	0x55
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5f
	.uleb128 0x5
	.asciz	"AD1PCFG"
	.byte	0x2
	.2byte	0x9cb
	.4byte	0x1b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0xc3
	.uleb128 0x5
	.asciz	"AD1PCFG"
	.byte	0x2
	.2byte	0x9cb
	.4byte	0x1b5
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section	.debug_abbrev,info
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x37
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1cd
	.4byte	0x165
	.asciz	"SYSTEM_Initialize"
	.4byte	0x186
	.asciz	"_USB1Interrupt"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0xe
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1cd
	.4byte	0x0
	.section	.debug_aranges,info
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_line,info
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x2
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"../src"
	.byte 0
	.ascii	"c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\support"
	.ascii	"\\PIC24F\\h"
	.byte 0
	.byte	0x0
	.asciz	"system.c"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"p24FJ64GB002.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM0
	.byte	0x61
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM1
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM2
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM3
	.byte	0x69
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM4
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM5
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE1
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,info
	.section	.text,code

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words
; Configuration word @ 0x0000abfe
	.section	.config_JTAGEN, code, address(0xabfe), keep
__config_JTAGEN:
	.pword	7551
; Configuration word @ 0x0000abfc
	.section	.config_IESO, code, address(0xabfc), keep
__config_IESO:
	.pword	35247
; Configuration word @ 0x0000abfa
	.section	.config_WPEND, code, address(0xabfa), keep
__config_WPEND:
	.pword	64767
; Configuration word @ 0x0000abf8
	.section	.config_DSWDTEN, code, address(0xabf8), keep
__config_DSWDTEN:
	.pword	65375

	.set ___PA___,0
	.end
