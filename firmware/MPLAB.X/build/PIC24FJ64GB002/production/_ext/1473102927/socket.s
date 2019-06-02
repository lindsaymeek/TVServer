	.file "F:\\microchip\\mla\\v2013_12_20\\apps\\usb\\device\\msd_internal_flash\\firmware\\MPLAB.X\\..\\src\\Ethernet\\socket.c"
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
	.global	_close	; export
	.type	_close,@function
_close:
.LFB1:
.LSM0:
	.set ___PA___,1
	mov.d	w8,[w15++]
	mov	w10,[w15++]
	mov.d	w12,[w15++]
	mov.b	w0,w10
.LSM1:
	setm.b	w0
	sub.b	w10,#8,[w15]
	.set ___BP___,61
	bra	gtu,.L2
.LSM2:
	ze	w10,w10
	sl	w10,#5,w12
	add	w12,#8,w12
	asr	w12,#15,w13
	mov.d	w12,w8
	add	#256,w8
	addc	#0,w9
	mov.b	#16,w2
	mov.d	w8,w0
	rcall	_WIZCHIP_WRITE
.L3:
.LSM3:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,86
	bra	nz,.L3
.LSM4:
	mov.d	w12,w0
	add	#512,w0
	addc	#0,w1
	mov.b	#31,w2
	rcall	_WIZCHIP_WRITE
.LSM5:
	mov	#1,w0
	sl	w0,w10,w0
	com	w0,w0
	and	_sock_is_sending
.LSM6:
	add	w10,w10,w4
	mov	#_sock_remained_size,w5
	add	w5,w4,w5
	clr	w4
	mov	w4,[w5]
.LSM7:
	mov	#_sock_pack_info,w5
	mov.b	w4,[w5+w10]
.LSM8:
	mov.d	w12,w8
	add	#768,w8
	addc	#0,w9
.L4:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,86
	bra	nz,.L4
.LSM9:
	mov.b	#1,w0
.L2:
.LSM10:
	mov.d	[--w15],w12
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE1:
	.align	2
	.global	_socket	; export
	.type	_socket,@function
_socket:
.LFB0:
.LSM11:
	.set ___PA___,1
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w14,[w15++]
	mov.b	w0,w10
	mov.b	w1,w8
	mov	w2,w11
	mov.b	w3,w9
.LSM12:
	setm.b	w0
	sub.b	w10,#8,[w15]
	.set ___BP___,96
	bra	gtu,.L9
.LSM13:
	sub.b	w8,#4,[w15]
	.set ___BP___,50
	bra	gtu,.L18
	se	w8,w4
	mov	#1,w5
	sl	w5,w4,w4
	and	w4,#22,w4
	.set ___BP___,50
	bra	z,.L18
.LSM14:
	ze	w9,w13
	and	w13,#6,w4
	mov.b	#-6,w0
	.set ___BP___,39
	bra	nz,.L9
.LSM15:
	sub.b	w9,#0,[w15]
	.set ___BP___,29
	bra	z,.L11
.LSM16:
	sub.b	w8,#1,[w15]
	.set ___BP___,29
	bra	z,.L12
	sub.b	w8,#2,[w15]
	.set ___BP___,71
	bra	nz,.L11
	bra	.L24
.L12:
.LSM17:
	mov	w13,w4
	and	#33,w4
	mov.b	#-6,w0
	.set ___BP___,61
	bra	nz,.L11
	bra	.L9
.L24:
.LSM18:
	mov	w13,w4
	and	#32,w4
	.set ___BP___,96
	bra	z,.L14
.LSM19:
	mov.b	#-6,w0
	sub.b	w9,#0,[w15]
	.set ___BP___,63
	bra	ge,.L9
.L14:
.LSM20:
	and	w13,#16,w4
	.set ___BP___,96
	bra	z,.L11
.LSM21:
	mov.b	#-6,w0
	sub.b	w9,#0,[w15]
	.set ___BP___,63
	bra	ge,.L9
.L11:
.LSM22:
	mov.b	w10,w0
	rcall	_close
.LSM23:
	ze	w10,w12
	sl	w12,#5,w14
	add	w14,#8,w14
	mov.b	#-16,w2
	and.b	w9,w2,w2
	ior.b	w2,w8,w2
	mul.su	w14,#1,w0
	rcall	_WIZCHIP_WRITE
.LSM24:
	sub	w11,#0,[w15]
	.set ___BP___,50
	bra	nz,.L15
.LSM25:
	mov	_sock_any_port,w11
	inc	w11,w4
	mov	w4,_sock_any_port
.LSM26:
	add	w4,#16,[w15]
	.set ___BP___,72
	bra	nz,.L15
	mov	#-16384,w4
	mov	w4,_sock_any_port
.L15:
.LSM27:
	mul.su	w14,#1,w8
	lsr	w11,#8,w2
	mov	#1024,w0
	mov	#0,w1
	add	w0,w8,w0
	addc	w1,w9,w1
	rcall	_WIZCHIP_WRITE
	mov	#1280,w0
	mov	#0,w1
	add	w0,w8,w0
	addc	w1,w9,w1
	mov.b	w11,w2
	rcall	_WIZCHIP_WRITE
.LSM28:
	add	#256,w8
	addc	#0,w9
	mov.b	#1,w2
	mov.d	w8,w0
	rcall	_WIZCHIP_WRITE
.L16:
.LSM29:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,86
	bra	nz,.L16
.LSM30:
	and	w13,#1,w0
	sl	w0,w12,w0
	ior	_sock_io_mode
.LSM31:
	mov	#1,w0
	sl	w0,w12,w0
	com	w0,w0
	and	_sock_is_sending
.LSM32:
	add	w12,w12,w4
	mov	#_sock_remained_size,w5
	add	w5,w4,w5
	clr	w4
	mov	w4,[w5]
.LSM33:
	mov	#_sock_pack_info,w5
	mov.b	w4,[w5+w12]
.LSM34:
	mov.b	w10,w0
	bra	.L9
.L18:
.LSM35:
	mov.b	#-5,w0
.L9:
.LSM36:
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE0:
	.align	2
	.global	_listen	; export
	.type	_listen,@function
_listen:
.LFB2:
.LSM37:
	.set ___PA___,1
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov	w12,[w15++]
	mov.b	w0,w12
.LSM38:
	setm.b	w0
	sub.b	w12,#8,[w15]
	.set ___BP___,98
	bra	gtu,.L26
.LSM39:
	ze	w12,w8
	sl	w8,#5,w8
	add	w8,#8,w8
	mul.su	w8,#1,w0
	rcall	_WIZCHIP_READ
	and	w0,#15,w4
	mov.b	#-5,w0
	sub	w4,#1,[w15]
	.set ___BP___,99
	bra	nz,.L26
.LSM40:
	asr	w8,#15,w9
	mov.d	w8,w10
	add	#768,w10
	addc	#0,w11
	mov.d	w10,w0
	rcall	_WIZCHIP_READ
	mov.b	w0,w4
	mov.b	#-3,w0
	sub.b	w4,#19,[w15]
	.set ___BP___,80
	bra	nz,.L26
.LSM41:
	add	#256,w8
	addc	#0,w9
	mov.b	#2,w2
	mov.d	w8,w0
	rcall	_WIZCHIP_WRITE
.L27:
.LSM42:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,86
	bra	nz,.L27
	bra	.L33
.L29:
.LSM43:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,86
	bra	nz,.L33
.LSM44:
	mov.b	w12,w0
	rcall	_close
.LSM45:
	mov.b	#-4,w0
	bra	.L26
.L33:
.LSM46:
	mov.d	w10,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#20,[w15]
	.set ___BP___,95
	bra	nz,.L29
.LSM47:
	mov.b	#1,w0
.L26:
.LSM48:
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE2:
	.align	2
	.global	_connect	; export
	.type	_connect,@function
_connect:
.LFB3:
.LSM49:
	.set ___PA___,1
	lnk	#4
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w1,w8
	mov	w2,w12
.LSM50:
	setm.b	w4
	sub.b	w0,#8,[w15]
	.set ___BP___,98
	bra	gtu,.L37
.LSM51:
	ze	w0,w13
	sl	w13,#5,w10
	add	w10,#8,w10
	mul.su	w10,#1,w0
	rcall	_WIZCHIP_READ
	and	w0,#15,w5
	mov.b	#-5,w4
	sub	w5,#1,[w15]
	.set ___BP___,99
	bra	nz,.L37
.LSM52:
	mul.su	w10,#1,w4
	mov	w4,[w15-16]
	mov	w5,[w15-14]
	mov.d	w4,w10
	add	#768,w10
	addc	#0,w11
	mov.d	w10,w0
	rcall	_WIZCHIP_READ
	mov.b	#-3,w4
	sub.b	w0,#19,[w15]
	.set ___BP___,98
	bra	nz,.L37
.LSM53:
	setm	w4
	setm	w5
	add	w4,[w8++],w6
	addc	w5,[w8--],w7
	mov.b	#-12,w4
	add	w6,#3,[w15]
	addc	w7,#0,[w15]
	.set ___BP___,96
	bra	gtu,.L37
.LSM54:
	mov.b	#-11,w4
	sub	w12,#0,[w15]
	.set ___BP___,61
	bra	z,.L37
.LSM55:
	mov	#3072,w0
	mov	#0,w1
	mov	[w15-16],w4
	mov	[w15-14],w5
	add	w0,w4,w0
	addc	w1,w5,w1
	mov	#4,w3
	mov	w8,w2
	rcall	_WIZCHIP_WRITE_BUF
.LSM56:
	lsr	w12,#8,w2
	mov	#4096,w0
	mov	#0,w1
	mov	[w15-16],w4
	mov	[w15-14],w5
	add	w0,w4,w0
	addc	w1,w5,w1
	rcall	_WIZCHIP_WRITE
	mov	#4352,w0
	mov	#0,w1
	mov	[w15-16],w4
	mov	[w15-14],w5
	add	w0,w4,w0
	addc	w1,w5,w1
	mov.b	w12,w2
	rcall	_WIZCHIP_WRITE
.LSM57:
	mov	[w15-16],w8
	mov	[w15-14],w9
	add	#256,w8
	addc	#0,w9
	mov.b	#4,w2
	mov.d	w8,w0
	rcall	_WIZCHIP_WRITE
.L38:
.LSM58:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,86
	bra	nz,.L38
.LSM59:
	mov	#1,w5
	sl	w5,w13,w5
	mov	_sock_io_mode,w4
	and	w4,w5,w5
	clr.b	w4
	.set ___BP___,61
	bra	z,.L50
	bra	.L37
.L40:
.LSM60:
	mov.d	w12,w0
	rcall	_WIZCHIP_READ
	mov.b	w0,w4
	and	w4,#8,w4
	.set ___BP___,86
	bra	z,.L47
.LSM61:
	mov.b	#8,w2
	mov.d	w12,w0
	rcall	_WIZCHIP_WRITE
.LSM62:
	mov.b	#-13,w4
	bra	.L37
.L50:
.LSM63:
	mov	[w15-16],w12
	mov	[w15-14],w13
	add	#512,w12
	addc	#0,w13
.L47:
.LSM64:
	mov.d	w10,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#23,[w15]
	.set ___BP___,95
	bra	nz,.L40
.LSM65:
	mov.b	#1,w4
.L37:
.LSM66:
	mov.b	w4,w0
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE3:
	.align	2
	.global	_disconnect	; export
	.type	_disconnect,@function
_disconnect:
.LFB4:
.LSM67:
	.set ___PA___,1
	lnk	#4
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov	w12,[w15++]
	mov.b	w0,w12
.LSM68:
	setm.b	w0
	sub.b	w12,#8,[w15]
	.set ___BP___,98
	bra	gtu,.L52
.LSM69:
	ze	w12,w10
	sl	w10,#5,w8
	add	w8,#8,w8
	mul.su	w8,#1,w0
	rcall	_WIZCHIP_READ
	and	w0,#15,w4
	mov.b	#-5,w0
	sub	w4,#1,[w15]
	.set ___BP___,80
	bra	nz,.L52
.LSM70:
	mul.su	w8,#1,w4
	mov	w4,[w15-14]
	mov	w5,[w15-12]
	mov.d	w4,w8
	add	#256,w8
	addc	#0,w9
	mov.b	#8,w2
	mov.d	w8,w0
	rcall	_WIZCHIP_WRITE
.L53:
.LSM71:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,86
	bra	nz,.L53
.LSM72:
	mov	#1,w4
	sl	w4,w10,w10
	com	w10,w0
	and	_sock_is_sending
.LSM73:
	mov	_sock_io_mode,w5
	and	w5,w10,w10
	clr.b	w0
	.set ___BP___,61
	bra	z,.L62
	bra	.L52
.L55:
.LSM74:
	mov.d	w10,w0
	rcall	_WIZCHIP_READ
	and	w0,#8,w4
	.set ___BP___,86
	bra	z,.L59
.LSM75:
	mov.b	w12,w0
	rcall	_close
.LSM76:
	mov.b	#-13,w0
	bra	.L52
.L62:
.LSM77:
	mov	[w15-14],w8
	mov	[w15-12],w9
	add	#768,w8
	addc	#0,w9
.LSM78:
	mov	[w15-14],w10
	mov	[w15-12],w11
	add	#512,w10
	addc	#0,w11
.L59:
.LSM79:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,95
	bra	nz,.L55
.LSM80:
	mov.b	#1,w0
.L52:
.LSM81:
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE4:
	.align	2
	.global	_send	; export
	.type	_send,@function
_send:
.LFB5:
.LSM82:
	.set ___PA___,1
	add	w15,#10,w15
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w14,[w15++]
	mov.b	w0,w12
	mov	w1,w14
	mov	w2,w13
.LSM83:
	setm	w0
	setm	w1
	sub.b	w12,#8,[w15]
	.set ___BP___,98
	bra	gtu,.L64
.LSM84:
	ze	w12,w9
	sl	w9,#5,w8
	add	w8,#8,w8
	mul.su	w8,#1,w0
	rcall	_WIZCHIP_READ
	and	w0,#15,w4
	mov	#65531,w0
	mov	#65535,w1
	sub	w4,#1,[w15]
	.set ___BP___,98
	bra	nz,.L64
.LSM85:
	mov	#65522,w0
	mov	#65535,w1
	sub	w13,#0,[w15]
	.set ___BP___,61
	bra	z,.L64
.LSM86:
	mul.su	w8,#1,w4
	mov	w4,[w15-20]
	mov	w5,[w15-18]
	mov.d	w4,w10
	add	#768,w10
	addc	#0,w11
	mov.d	w10,w0
	rcall	_WIZCHIP_READ
	mov.b	w0,w4
.LSM87:
	sub.b	w4,#23,[w15]
	.set ___BP___,90
	bra	z,.L65
	mov	#65529,w0
	mov	#65535,w1
	sub.b	w4,#28,[w15]
	.set ___BP___,62
	bra	nz,.L64
.L65:
.LSM88:
	mov	#1,w4
	sl	w4,w9,w4
	mov	w4,[w15-16]
	mov	w4,w5
	mov	w5,[w15-22]
	mov	w5,w6
	mov	_sock_is_sending,w0
	and	w0,w6,w4
	.set ___BP___,50
	bra	z,.L66
.LSM89:
	mov	[w15-20],w8
	mov	[w15-18],w9
	add	#512,w8
	addc	#0,w9
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	mov.b	w0,w4
.LSM90:
	and	w4,#31,w4
	and	w4,#16,w5
	.set ___BP___,71
	bra	z,.L67
.LSM91:
	mov.b	#16,w2
	mov.d	w8,w0
	rcall	_WIZCHIP_WRITE
.LSM92:
	mov	[w15-16],w4
	com	w4,w0
	and	_sock_is_sending
	bra	.L66
.L67:
.LSM93:
	and	w4,#8,w4
.LSM94:
	mul.uu	w0,#0,w0
.LSM95:
	.set ___BP___,98
	bra	z,.L64
.LSM96:
	mov.b	w12,w0
	rcall	_close
.LSM97:
	mov	#65523,w0
	mov	#65535,w1
	bra	.L64
.L66:
.LSM98:
	mov	#7936,w0
	mov	#0,w1
	mov	[w15-20],w4
	mov	[w15-18],w5
	add	w0,w4,w0
	addc	w1,w5,w1
	rcall	_WIZCHIP_READ
	sl	w0,#10,w0
	mov	w0,[w15-16]
	sub	w0,w13,[w15]
	.set ___BP___,50
	bra	leu,.L80
	mov	w13,[w15-16]
.L80:
.LSM99:
	mov.b	w12,w0
	rcall	_getSn_TX_FSR
	mov	w0,w8
.LSM100:
	mov.d	w10,w0
	rcall	_WIZCHIP_READ
.LSM101:
	sub.b	w0,#23,[w15]
	.set ___BP___,28
	bra	z,.L69
	sub.b	w0,#28,[w15]
	.set ___BP___,97
	bra	z,.L69
.LSM102:
	mov.b	w12,w0
	rcall	_close
.LSM103:
	mov	#65529,w0
	mov	#65535,w1
	bra	.L64
.L69:
.LSM104:
	mov	[w15-22],w5
	mov	_sock_io_mode,w6
	and	w6,w5,w4
	.set ___BP___,50
	bra	z,.L70
	mul.uu	w0,#0,w0
	mov	[w15-16],w4
	sub	w8,w4,[w15]
	.set ___BP___,97
	bra	geu,.L71
	bra	.L64
.L70:
.LSM105:
	mov	[w15-16],w5
	sub	w8,w5,[w15]
	.set ___BP___,100
	bra	ltu,.L80
.L71:
.LSM106:
	mov	[w15-16],w2
	mov	w14,w1
	mov.b	w12,w0
	rcall	_wiz_send_data
.LSM107:
	mov	[w15-20],w8
	mov	[w15-18],w9
	add	#256,w8
	addc	#0,w9
	mov.b	#32,w2
	mov.d	w8,w0
	rcall	_WIZCHIP_WRITE
.L73:
.LSM108:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,86
	bra	nz,.L73
.LSM109:
	mov	[w15-22],w0
	ior	_sock_is_sending
.LSM110:
	mov	[w15-16],w4
	mul.uu	w4,#1,w0
.L64:
.LSM111:
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#10
	return	
	.set ___PA___,0
.LFE5:
	.align	2
	.global	_recv	; export
	.type	_recv,@function
_recv:
.LFB6:
.LSM112:
	.set ___PA___,1
	add	w15,#14,w15
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w14,[w15++]
	mov.b	w0,w12
	mov	w1,w14
	mov	w2,w13
.LSM113:
	setm	w0
	setm	w1
	sub.b	w12,#8,[w15]
	.set ___BP___,98
	bra	gtu,.L84
.LSM114:
	ze	w12,w10
	sl	w10,#5,w8
	add	w8,#8,w8
	mul.su	w8,#1,w0
	rcall	_WIZCHIP_READ
	and	w0,#15,w4
	mov	#65531,w0
	mov	#65535,w1
	sub	w4,#1,[w15]
	.set ___BP___,98
	bra	nz,.L84
.LSM115:
	mov	#65522,w0
	mov	#65535,w1
	sub	w13,#0,[w15]
	.set ___BP___,61
	bra	z,.L84
.LSM116:
	mul.su	w8,#1,w4
	mov	w4,[w15-20]
	mov	w5,[w15-18]
	mov	#7680,w0
	mov	#0,w1
	add	w0,w4,w0
	addc	w1,w5,w1
	rcall	_WIZCHIP_READ
	mov.b	w0,[w15-22]
.LSM117:
	mov	#1,w4
	sl	w4,w10,w4
	mov	w4,[w15-26]
.LSM118:
	mov	[w15-20],w8
	mov	[w15-18],w9
	add	#768,w8
	addc	#0,w9
.LSM119:
	mov	#7936,w10
	mov	#0,w11
	mov	[w15-20],w4
	mov	[w15-18],w5
	add	w10,w4,w10
	addc	w11,w5,w11
.L89:
.LSM120:
	mov.b	w12,w0
	rcall	_getSn_RX_RSR
	mov	w0,[w15-16]
.LSM121:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
.LSM122:
	sub.b	w0,#23,[w15]
	.set ___BP___,28
	bra	z,.L85
.LSM123:
	sub.b	w0,#28,[w15]
	.set ___BP___,2
	bra	nz,.L86
.LSM124:
	mov	[w15-16],w5
	sub	w5,#0,[w15]
	.set ___BP___,2
	bra	nz,.L87
.LSM125:
	mov.b	w12,w0
	rcall	_getSn_TX_FSR
	mov	w0,[w15-24]
	mov.d	w10,w0
	rcall	_WIZCHIP_READ
	mov.b	w0,w4
	sl	w4,#10,w4
	mov	[w15-24],w6
	sub	w6,w4,[w15]
	.set ___BP___,98
	bra	nz,.L85
.LSM126:
	mov.b	w12,w0
	rcall	_close
.LSM127:
	mov	#65529,w0
	mov	#65535,w1
	bra	.L84
.L86:
.LSM128:
	mov.b	w12,w0
	rcall	_close
.LSM129:
	mov	#65529,w0
	mov	#65535,w1
	bra	.L84
.L85:
.LSM130:
	mov	[w15-26],w5
	mov	_sock_io_mode,w6
	and	w6,w5,w4
	.set ___BP___,50
	bra	z,.L88
	mul.uu	w0,#0,w0
	mov	[w15-16],w4
	sub	w4,#0,[w15]
	.set ___BP___,98
	bra	nz,.L87
	bra	.L84
.L88:
.LSM131:
	mov	[w15-16],w5
	sub	w5,#0,[w15]
	.set ___BP___,100
	bra	z,.L89
.L87:
.LSM132:
	mov.b	[w15-22],w6
	sl	w6,#10,w10
.LSM133:
	sub	w10,w13,[w15]
	.set ___BP___,50
	bra	leu,.L90
	mov	w13,w10
.L90:
	mov	[w15-16],w4
	sub	w10,w4,[w15]
	.set ___BP___,50
	bra	leu,.L91
	mov	w4,w10
.L91:
.LSM134:
	mov	w10,w2
	mov	w14,w1
	mov.b	w12,w0
	rcall	_wiz_recv_data
.LSM135:
	mov	[w15-20],w8
	mov	[w15-18],w9
	add	#256,w8
	addc	#0,w9
	mov.b	#64,w2
	mov.d	w8,w0
	rcall	_WIZCHIP_WRITE
.L92:
.LSM136:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,86
	bra	nz,.L92
.LSM137:
	mul.uu	w10,#1,w0
.L84:
.LSM138:
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#14
	return	
	.set ___PA___,0
.LFE6:
	.align	2
	.global	_sendto	; export
	.type	_sendto,@function
_sendto:
.LFB7:
.LSM139:
	.set ___PA___,1
	add	w15,#8,w15
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w14,[w15++]
	mov.b	w0,w10
	mov	w1,w14
	mov	w2,w13
	mov	w3,w11
	mov	w4,w12
.LSM140:
	setm	w0
	setm	w1
	sub.b	w10,#8,[w15]
	.set ___BP___,98
	bra	gtu,.L100
.LSM141:
	ze	w10,w4
	mov	w4,[w15-16]
	sl	w4,#5,w8
	add	w8,#8,w8
	mul.su	w8,#1,w0
	rcall	_WIZCHIP_READ
	and	w0,#15,w4
	sub	w4,#2,[w15]
	.set ___BP___,29
	bra	z,.L101
.LSM142:
	mov	#65531,w0
	mov	#65535,w1
.LSM143:
	sub	w4,#4,[w15]
	.set ___BP___,71
	bra	nz,.L100
.L101:
.LSM144:
	mov	#65522,w0
	mov	#65535,w1
	sub	w13,#0,[w15]
	.set ___BP___,96
	bra	z,.L100
.LSM145:
	mov.d	[w11],w4
	mov	#65524,w0
	mov	#65535,w1
	sub	w4,#0,[w15]
	subb	w5,#0,[w15]
	.set ___BP___,96
	bra	z,.L100
.LSM146:
	mov	#65525,w0
	mov	#65535,w1
	sub	w12,#0,[w15]
	.set ___BP___,61
	bra	z,.L100
.LSM147:
	mul.su	w8,#1,w4
	mov	w4,[w15-20]
	mov	w5,[w15-18]
	mov.d	w4,w8
	add	#768,w8
	addc	#0,w9
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	mov.b	w0,w4
.LSM148:
	mov.b	#66,w5
	sub.b	w4,w5,[w15]
	.set ___BP___,13
	bra	z,.L102
	mov	#65529,w0
	mov	#65535,w1
	mov.b	#34,w5
	sub.b	w4,w5,[w15]
	.set ___BP___,98
	bra	nz,.L100
.L102:
.LSM149:
	mov	#3072,w0
	mov	#0,w1
	mov	[w15-20],w4
	mov	[w15-18],w5
	add	w0,w4,w0
	addc	w1,w5,w1
	mov	#4,w3
	mov	w11,w2
	rcall	_WIZCHIP_WRITE_BUF
.LSM150:
	lsr	w12,#8,w2
	mov	#4096,w0
	mov	#0,w1
	mov	[w15-20],w4
	mov	[w15-18],w5
	add	w0,w4,w0
	addc	w1,w5,w1
	rcall	_WIZCHIP_WRITE
	mov	#4352,w0
	mov	#0,w1
	mov	[w15-20],w4
	mov	[w15-18],w5
	add	w0,w4,w0
	addc	w1,w5,w1
	mov.b	w12,w2
	rcall	_WIZCHIP_WRITE
.LSM151:
	mov	#7936,w0
	mov	#0,w1
	mov	[w15-20],w4
	mov	[w15-18],w5
	add	w0,w4,w0
	addc	w1,w5,w1
	rcall	_WIZCHIP_READ
	sl	w0,#10,w12
	sub	w12,w13,[w15]
	.set ___BP___,50
	bra	leu,.L103
	mov	w13,w12
.L103:
.LSM152:
	mov	#1,w13
	mov	[w15-16],w5
	sl	w13,w5,w13
.L106:
.LSM153:
	mov.b	w10,w0
	rcall	_getSn_TX_FSR
	mov	w0,w11
.LSM154:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,3
	bra	z,.L116
.LSM155:
	mov	_sock_io_mode,w5
	and	w5,w13,w4
	.set ___BP___,50
	bra	z,.L104
	mul.uu	w0,#0,w0
	sub	w12,w11,[w15]
	.set ___BP___,97
	bra	leu,.L105
	bra	.L100
.L104:
.LSM156:
	sub	w11,w12,[w15]
	.set ___BP___,86
	bra	ltu,.L106
.L105:
.LSM157:
	mov	w12,w2
	mov	w14,w1
	mov.b	w10,w0
	rcall	_wiz_send_data
.LSM158:
	mov	[w15-20],w8
	mov	[w15-18],w9
	add	#256,w8
	addc	#0,w9
	mov.b	#32,w2
	mov.d	w8,w0
	rcall	_WIZCHIP_WRITE
.L107:
.LSM159:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,86
	bra	nz,.L107
.LSM160:
	mov	[w15-20],w10
	mov	[w15-18],w11
	add	#512,w10
	addc	#0,w11
.L118:
	mov.d	w10,w0
	rcall	_WIZCHIP_READ
	mov.b	w0,w4
.LSM161:
	and	w4,#31,w4
	and	w4,#16,w5
	.set ___BP___,95
	bra	z,.L108
.LSM162:
	mov.b	#16,w2
	mov.d	w10,w0
	rcall	_WIZCHIP_WRITE
.LSM163:
	mul.uu	w12,#1,w0
	bra	.L100
.L108:
.LSM164:
	and	w4,#8,w4
	.set ___BP___,86
	bra	z,.L118
.LSM165:
	mov.b	#8,w2
	mov.d	w10,w0
	rcall	_WIZCHIP_WRITE
.LSM166:
	mov	#65523,w0
	mov	#65535,w1
	bra	.L100
.L116:
.LSM167:
	mov	#65532,w0
	mov	#65535,w1
.L100:
.LSM168:
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#8
	return	
	.set ___PA___,0
.LFE7:
	.align	2
	.global	_recvfrom	; export
	.type	_recvfrom,@function
_recvfrom:
.LFB8:
.LSM169:
	.set ___PA___,1
	add	w15,#20,w15
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w14,[w15++]
	mov.b	w0,w10
	mov	w1,w14
	mov	w2,w13
	mov	w3,w11
	mov	w4,w12
.LSM170:
	setm	w0
	setm	w1
	sub.b	w10,#8,[w15]
	.set ___BP___,98
	bra	gtu,.L124
.LSM171:
	ze	w10,w4
	mov	w4,[w15-16]
	mov	w4,w5
	sl	w5,#5,w4
	add	w4,#8,w4
	mov	w4,[w15-18]
	mul.su	w4,#1,w0
	rcall	_WIZCHIP_READ
	ze	w0,w0
	mov	w0,[w15-20]
	mov	w0,w6
	and	w6,#15,w4
	sub	w4,#2,[w15]
	.set ___BP___,29
	bra	z,.L125
.LSM172:
	mov	#65531,w0
	mov	#65535,w1
.LSM173:
	sub	w4,#4,[w15]
	.set ___BP___,71
	bra	nz,.L124
.L125:
.LSM174:
	mov	#65522,w0
	mov	#65535,w1
	sub	w13,#0,[w15]
	.set ___BP___,39
	bra	z,.L124
.LSM175:
	mov	[w15-16],w7
	add	w7,w7,w4
	mov	#_sock_remained_size,w5
	mov	[w5+w4],w4
.LSM176:
	clr	w5
	mov	w5,[w15-22]
.LSM177:
	sub	w4,w5,[w15]
	.set ___BP___,96
	bra	nz,.L126
.LSM178:
	mov	#1,w4
	sl	w4,w7,w4
	mov	w4,[w15-24]
.LSM179:
	mov	[w15-18],w6
	mul.su	w6,#1,w8
	add	#768,w8
	addc	#0,w9
.L128:
.LSM180:
	mov.b	w10,w0
	rcall	_getSn_RX_RSR
	mov	w0,[w15-22]
.LSM181:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,3
	bra	z,.L146
.LSM182:
	mov	[w15-24],w7
	mov	_sock_io_mode,w5
	and	w5,w7,w4
	.set ___BP___,50
	bra	z,.L127
	mul.uu	w0,#0,w0
	mov	[w15-22],w6
	sub	w6,#0,[w15]
	.set ___BP___,97
	bra	nz,.L126
	bra	.L124
.L127:
.LSM183:
	mov	[w15-22],w7
	sub	w7,#0,[w15]
	.set ___BP___,86
	bra	z,.L128
.L126:
.LSM184:
	clr.b	w5
	mov	#_sock_pack_info,w4
	mov	[w15-16],w6
	mov.b	w5,[w4+w6]
.LSM185:
	mov	[w15-20],w7
	and	w7,#7,w4
	sub	w4,#2,[w15]
	.set ___BP___,29
	bra	z,.L130
	sub	w4,#4,[w15]
	.set ___BP___,71
	bra	nz,.L153
	bra	.L154
.L130:
.LSM186:
	mov	[w15-16],w5
	add	w5,w5,w4
	mov	#_sock_remained_size,w5
	mov	[w5+w4],w4
	sub	w4,#0,[w15]
	.set ___BP___,71
	bra	nz,.L132
.LSM187:
	mov	#8,w2
	mov	#-32,w1
	add	w1,w15,w1
	mov.b	w10,w0
	rcall	_wiz_recv_data
.LSM188:
	mov	[w15-18],w6
	mul.su	w6,#1,w8
	add	#256,w8
	addc	#0,w9
	mov.b	#64,w2
	mov.d	w8,w0
	rcall	_WIZCHIP_WRITE
.L133:
.LSM189:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,86
	bra	nz,.L133
.LSM190:
	mov.b	[w15-32],w7
	mov.b	w7,[w11]
.LSM191:
	mov.b	[w15-31],w4
	mov.b	w4,[w11+1]
.LSM192:
	mov.b	[w15-30],w5
	mov.b	w5,[w11+2]
.LSM193:
	mov.b	[w15-29],w6
	mov.b	w6,[w11+3]
.LSM194:
	mov.b	[w15-28],w5
	sl	w5,#8,w5
	mov.b	[w15-27],w4
	ze	w4,w4
	add	w5,w4,[w12]
.LSM195:
	mov	[w15-16],w7
	add	w7,w7,w4
	mov	#_sock_remained_size,w5
	add	w5,w4,w4
	mov.b	[w15-26],w6
	sl	w6,#8,w6
	mov.b	[w15-25],w5
	ze	w5,w5
	add	w6,w5,[w4]
.LSM196:
	mov.b	#-128,w5
	mov	#_sock_pack_info,w4
	mov.b	w5,[w4+w7]
.L132:
.LSM197:
	mov	[w15-16],w5
	add	w5,w5,w4
	mov	#_sock_remained_size,w5
.LSM198:
	mov	[w5+w4],w5
	mov	w5,[w15-22]
	sub	w5,w13,[w15]
	.set ___BP___,50
	bra	leu,.L134
	mov	w13,[w15-22]
.L134:
.LSM199:
	mov	[w15-22],w2
	mov	w14,w1
	mov.b	w10,w0
	rcall	_wiz_recv_data
.LSM200:
	bra	.L135
.L154:
.LSM201:
	mov	[w15-16],w6
	add	w6,w6,w4
	mov	#_sock_remained_size,w5
	mov	[w5+w4],w4
	sub	w4,#0,[w15]
	.set ___BP___,71
	bra	nz,.L136
.LSM202:
	mov	#2,w2
	mov	#-32,w1
	add	w1,w15,w1
	mov.b	w10,w0
	rcall	_wiz_recv_data
.LSM203:
	mov	[w15-18],w7
	mul.su	w7,#1,w8
	add	#256,w8
	addc	#0,w9
	mov.b	#64,w2
	mov.d	w8,w0
	rcall	_WIZCHIP_WRITE
.L137:
.LSM204:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,86
	bra	nz,.L137
.LSM205:
	mov.b	[w15-32],w4
	ze	w4,w5
.LSM206:
	sl	w5,#8,w5
	mov.b	[w15-31],w4
	ze	w4,w4
	add	w5,w4,w4
	mov	[w15-16],w6
	add	w6,w6,w5
	mov	#_sock_remained_size,w6
	mov	w4,[w6+w5]
.LSM207:
	mov	#1514,w5
	sub	w4,w5,[w15]
	.set ___BP___,98
	bra	leu,.L138
.LSM208:
	mov.b	w10,w0
	rcall	_close
.LSM209:
	mov	#64535,w0
	mov	#65535,w1
	bra	.L124
.L138:
.LSM210:
	mov.b	#-128,w5
	mov	#_sock_pack_info,w4
	mov	[w15-16],w7
	mov.b	w5,[w4+w7]
.L136:
.LSM211:
	mov	[w15-16],w5
	add	w5,w5,w4
	mov	#_sock_remained_size,w5
.LSM212:
	mov	[w5+w4],w5
	mov	w5,[w15-22]
	sub	w5,w13,[w15]
	.set ___BP___,50
	bra	leu,.L139
	mov	w13,[w15-22]
.L139:
.LSM213:
	mov	[w15-22],w2
	mov	w14,w1
	mov.b	w10,w0
	rcall	_wiz_recv_data
.LSM214:
	bra	.L135
.L153:
.LSM215:
	mov	[w15-22],w1
	mov.b	w10,w0
	rcall	_wiz_recv_ignore
.LSM216:
	mov	[w15-16],w6
	add	w6,w6,w4
	mov	#_sock_remained_size,w5
	mov	[w15-22],w7
	mov	w7,[w5+w4]
.L135:
.LSM217:
	mov	[w15-18],w4
	mul.su	w4,#1,w8
	add	#256,w8
	addc	#0,w9
	mov.b	#64,w2
	mov.d	w8,w0
	rcall	_WIZCHIP_WRITE
.L140:
.LSM218:
	mov.d	w8,w0
	rcall	_WIZCHIP_READ
	sub.b	w0,#0,[w15]
	.set ___BP___,86
	bra	nz,.L140
.LSM219:
	mov	[w15-16],w6
	add	w6,w6,w5
	mov	#_sock_remained_size,w6
	mov	[w6+w5],w4
	mov	[w15-22],w7
	sub	w4,w7,w4
	mov	w4,[w6+w5]
.LSM220:
	.set ___BP___,50
	bra	z,.L141
	mov	#_sock_pack_info,w4
	mov	[w15-16],w6
	mov.b	[w4+w6],w5
	bset.b	w5,#0
	mov.b	w5,[w4+w6]
.L141:
.LSM221:
	mov	[w15-22],w7
	mul.uu	w7,#1,w0
	bra	.L124
.L146:
.LSM222:
	mov	#65532,w0
	mov	#65535,w1
.L124:
.LSM223:
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#20
	return	
	.set ___PA___,0
.LFE8:
	.align	2
	.global	_recvflush	; export
	.type	_recvflush,@function
_recvflush:
.LFB9:
.LSM224:
	.set ___PA___,1
	mov.b	w0,w5
.LSM225:
	ze	w5,w4
	add	w4,w4,w4
	mov	#_sock_remained_size,w6
	mov	[w6+w4],w2
.LSM226:
	mul.uu	w0,#0,w0
.LSM227:
	sub	w2,#0,[w15]
	.set ___BP___,61
	bra	z,.L156
.LSM228:
	clr	w4
	mov	w4,w3
	mov	w4,w1
	mov.b	w5,w0
	rcall	_recvfrom
.L156:
.LSM229:
	return	
	.set ___PA___,0
.LFE9:
	.pushsection	.nbss,bss,near
	.align	2
_sock_remained_size:	.space	16
	.popsection
	.pushsection	.nbss,bss,near
	.align	2
_sock_io_mode:	.space	2
	.popsection
	.pushsection	.nbss,bss,near
_sock_pack_info:	.space	8
	.popsection
	.pushsection	.nbss,bss,near
	.align	2
_sock_is_sending:	.space	2
	.popsection
	.section	.ndata,data,near
	.align	2
	.type	_sock_any_port,@object
_sock_any_port:
	.word	-16384
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.align	4
.LEFDE18:
	.section	.text,code
.Letext0:
	.section	.debug_info,info
	.4byte	0x57c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1_21) (A) Build date: Jan  2 2014"
	.byte	0x1
	.asciz	"../src/Ethernet/socket.c"
	.ascii	"F:\\\\microchip\\\\mla\\\\v2013_12_20\\\\apps\\\\usb\\\\device\\\\ms"
	.asciz	"d_internal_flash\\\\firmware\\\\MPLAB.X"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x3
	.asciz	"int8_t"
	.byte	0x2
	.byte	0xd
	.4byte	0xea
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.asciz	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.asciz	"int"
	.uleb128 0x3
	.asciz	"int32_t"
	.byte	0x2
	.byte	0x1b
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.asciz	"long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.asciz	"long long int"
	.uleb128 0x3
	.asciz	"uint8_t"
	.byte	0x2
	.byte	0x2b
	.4byte	0x13b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x2
	.byte	0x31
	.4byte	0xcc
	.uleb128 0x3
	.asciz	"uint32_t"
	.byte	0x2
	.byte	0x37
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.asciz	"long long unsigned int"
	.uleb128 0x4
	.byte	0x1
	.asciz	"close"
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.4byte	0xdc
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5f
	.4byte	0x1c5
	.uleb128 0x5
	.asciz	"sn"
	.byte	0x1
	.byte	0x91
	.4byte	0x12c
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x4
	.byte	0x1
	.asciz	"socket"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	0xdc
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5f
	.4byte	0x21e
	.uleb128 0x5
	.asciz	"sn"
	.byte	0x1
	.byte	0x52
	.4byte	0x12c
	.byte	0x1
	.byte	0x5a
	.uleb128 0x5
	.asciz	"protocol"
	.byte	0x1
	.byte	0x52
	.4byte	0x12c
	.byte	0x1
	.byte	0x58
	.uleb128 0x5
	.asciz	"port"
	.byte	0x1
	.byte	0x52
	.4byte	0x14c
	.byte	0x1
	.byte	0x5b
	.uleb128 0x5
	.asciz	"flag"
	.byte	0x1
	.byte	0x52
	.4byte	0x12c
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x4
	.byte	0x1
	.asciz	"listen"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.4byte	0xdc
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x5f
	.4byte	0x249
	.uleb128 0x5
	.asciz	"sn"
	.byte	0x1
	.byte	0xa2
	.4byte	0x12c
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x4
	.byte	0x1
	.asciz	"connect"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.4byte	0xdc
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5f
	.4byte	0x291
	.uleb128 0x5
	.asciz	"sn"
	.byte	0x1
	.byte	0xb5
	.4byte	0x12c
	.byte	0x1
	.byte	0x50
	.uleb128 0x5
	.asciz	"addr"
	.byte	0x1
	.byte	0xb5
	.4byte	0x291
	.byte	0x1
	.byte	0x58
	.uleb128 0x5
	.asciz	"port"
	.byte	0x1
	.byte	0xb5
	.4byte	0x14c
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.4byte	0x12c
	.uleb128 0x4
	.byte	0x1
	.asciz	"disconnect"
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.4byte	0xdc
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x5f
	.4byte	0x2c6
	.uleb128 0x5
	.asciz	"sn"
	.byte	0x1
	.byte	0xd6
	.4byte	0x12c
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x4
	.byte	0x1
	.asciz	"send"
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.4byte	0x100
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x5f
	.4byte	0x31f
	.uleb128 0x5
	.asciz	"sn"
	.byte	0x1
	.byte	0xea
	.4byte	0x12c
	.byte	0x1
	.byte	0x5c
	.uleb128 0x5
	.asciz	"buf"
	.byte	0x1
	.byte	0xea
	.4byte	0x291
	.byte	0x1
	.byte	0x5e
	.uleb128 0x5
	.asciz	"len"
	.byte	0x1
	.byte	0xea
	.4byte	0x14c
	.byte	0x1
	.byte	0x5d
	.uleb128 0x7
	.asciz	"tmp"
	.byte	0x1
	.byte	0xec
	.4byte	0x12c
	.uleb128 0x8
	.4byte	.LASF0
	.byte	0x1
	.byte	0xed
	.4byte	0x14c
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.asciz	"recv"
	.byte	0x1
	.2byte	0x125
	.byte	0x1
	.4byte	0x100
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5f
	.4byte	0x385
	.uleb128 0xa
	.asciz	"sn"
	.byte	0x1
	.2byte	0x125
	.4byte	0x12c
	.byte	0x1
	.byte	0x5c
	.uleb128 0xa
	.asciz	"buf"
	.byte	0x1
	.2byte	0x125
	.4byte	0x291
	.byte	0x1
	.byte	0x5e
	.uleb128 0xa
	.asciz	"len"
	.byte	0x1
	.2byte	0x125
	.4byte	0x14c
	.byte	0x1
	.byte	0x5d
	.uleb128 0xb
	.asciz	"tmp"
	.byte	0x1
	.2byte	0x127
	.4byte	0x12c
	.byte	0x1
	.byte	0x50
	.uleb128 0xc
	.asciz	"recvsize"
	.byte	0x1
	.2byte	0x128
	.4byte	0x14c
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.asciz	"sendto"
	.byte	0x1
	.2byte	0x14f
	.byte	0x1
	.4byte	0x100
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x5f
	.4byte	0x404
	.uleb128 0xa
	.asciz	"sn"
	.byte	0x1
	.2byte	0x14f
	.4byte	0x12c
	.byte	0x1
	.byte	0x5a
	.uleb128 0xa
	.asciz	"buf"
	.byte	0x1
	.2byte	0x14f
	.4byte	0x291
	.byte	0x1
	.byte	0x5e
	.uleb128 0xa
	.asciz	"len"
	.byte	0x1
	.2byte	0x14f
	.4byte	0x14c
	.byte	0x1
	.byte	0x5d
	.uleb128 0xa
	.asciz	"addr"
	.byte	0x1
	.2byte	0x14f
	.4byte	0x291
	.byte	0x1
	.byte	0x5b
	.uleb128 0xa
	.asciz	"port"
	.byte	0x1
	.2byte	0x14f
	.4byte	0x14c
	.byte	0x1
	.byte	0x5c
	.uleb128 0xc
	.asciz	"tmp"
	.byte	0x1
	.2byte	0x151
	.4byte	0x12c
	.uleb128 0xd
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x152
	.4byte	0x14c
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.asciz	"recvfrom"
	.byte	0x1
	.2byte	0x18d
	.byte	0x1
	.4byte	0x100
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x5f
	.4byte	0x49b
	.uleb128 0xa
	.asciz	"sn"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x12c
	.byte	0x1
	.byte	0x5a
	.uleb128 0xa
	.asciz	"buf"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x291
	.byte	0x1
	.byte	0x5e
	.uleb128 0xa
	.asciz	"len"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x14c
	.byte	0x1
	.byte	0x5d
	.uleb128 0xa
	.asciz	"addr"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x291
	.byte	0x1
	.byte	0x5b
	.uleb128 0xa
	.asciz	"port"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x49b
	.byte	0x1
	.byte	0x5c
	.uleb128 0xb
	.asciz	"mr"
	.byte	0x1
	.2byte	0x18f
	.4byte	0x12c
	.byte	0x1
	.byte	0x50
	.uleb128 0xb
	.asciz	"head"
	.byte	0x1
	.2byte	0x190
	.4byte	0x4a1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.asciz	"pack_len"
	.byte	0x1
	.2byte	0x191
	.4byte	0x14c
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.4byte	0x14c
	.uleb128 0xe
	.4byte	0x12c
	.4byte	0x4b1
	.uleb128 0xf
	.4byte	0xcc
	.byte	0x7
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.asciz	"recvflush"
	.byte	0x1
	.2byte	0x200
	.byte	0x1
	.4byte	0x100
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x5f
	.4byte	0x4e1
	.uleb128 0xa
	.asciz	"sn"
	.byte	0x1
	.2byte	0x200
	.4byte	0x12c
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x10
	.asciz	"sock_any_port"
	.byte	0x1
	.byte	0x32
	.4byte	0x14c
	.byte	0x5
	.byte	0x3
	.4byte	_sock_any_port
	.uleb128 0x10
	.asciz	"sock_io_mode"
	.byte	0x1
	.byte	0x33
	.4byte	0x14c
	.byte	0x5
	.byte	0x3
	.4byte	_sock_io_mode
	.uleb128 0x10
	.asciz	"sock_is_sending"
	.byte	0x1
	.byte	0x34
	.4byte	0x14c
	.byte	0x5
	.byte	0x3
	.4byte	_sock_is_sending
	.uleb128 0xe
	.4byte	0x14c
	.4byte	0x543
	.uleb128 0xf
	.4byte	0xcc
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.asciz	"sock_remained_size"
	.byte	0x1
	.byte	0x35
	.4byte	0x533
	.byte	0x5
	.byte	0x3
	.4byte	_sock_remained_size
	.uleb128 0x10
	.asciz	"sock_pack_info"
	.byte	0x1
	.byte	0x36
	.4byte	0x4a1
	.byte	0x5
	.byte	0x3
	.4byte	_sock_pack_info
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
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x81
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x580
	.4byte	0x19b
	.asciz	"close"
	.4byte	0x1c5
	.asciz	"socket"
	.4byte	0x21e
	.asciz	"listen"
	.4byte	0x249
	.asciz	"connect"
	.4byte	0x297
	.asciz	"disconnect"
	.4byte	0x2c6
	.asciz	"send"
	.4byte	0x31f
	.asciz	"recv"
	.4byte	0x385
	.asciz	"sendto"
	.4byte	0x404
	.asciz	"recvfrom"
	.4byte	0x4b1
	.asciz	"recvflush"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x4b
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x580
	.4byte	0xdc
	.asciz	"int8_t"
	.4byte	0x100
	.asciz	"int32_t"
	.4byte	0x12c
	.asciz	"uint8_t"
	.4byte	0x14c
	.asciz	"uint16_t"
	.4byte	0x15c
	.asciz	"uint32_t"
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
	.ascii	"../src/Ethernet"
	.byte 0
	.ascii	"c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include"
	.byte 0
	.byte	0x0
	.asciz	"socket.c"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"stdint.h"
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
	.byte	0xa5
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM1
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM2
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM3
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM4
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM5
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM6
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM7
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM8
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM9
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM10
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE1
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM11
	.byte	0x66
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM12
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM13
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM14
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM15
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM16
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM17
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM18
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM19
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM20
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM21
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM22
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM23
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM24
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM25
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM26
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM27
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM28
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM29
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM30
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM31
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM32
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM33
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM34
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM35
	.byte	0x3
	.sleb128 -45
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM36
	.byte	0x42
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
	.4byte	.LSM37
	.byte	0xb6
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM38
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM39
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM40
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM41
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM42
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM43
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM44
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM45
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM46
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM47
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM48
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE2
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM49
	.byte	0xc9
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM50
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM51
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM52
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM53
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM54
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM55
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM56
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM57
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM58
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM59
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM60
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM61
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM62
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM63
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM64
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM65
	.byte	0x23
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM66
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE3
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM67
	.byte	0xea
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM68
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM69
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM70
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM71
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM72
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM73
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM74
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM75
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM76
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM77
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM78
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM79
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM80
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM81
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE4
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM82
	.byte	0x3
	.sleb128 234
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM83
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM84
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM85
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM86
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM87
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM88
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM89
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM90
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM91
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM92
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM93
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM94
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM95
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM96
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM97
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM98
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM99
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM100
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM101
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM102
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM103
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM104
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM105
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM106
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM107
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM108
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM109
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM110
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM111
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE5
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM112
	.byte	0x3
	.sleb128 293
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM113
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM114
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM115
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM116
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM117
	.byte	0x2b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM118
	.byte	0x3
	.sleb128 -18
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM119
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM120
	.byte	0xd
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM121
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM122
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM123
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM124
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM125
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM126
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM127
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM128
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM129
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM130
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM131
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM132
	.byte	0x3
	.sleb128 -24
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM133
	.byte	0x2c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM134
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM135
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM136
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM137
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM138
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE6
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM139
	.byte	0x3
	.sleb128 335
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM140
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM141
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM142
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM143
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM144
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM145
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM146
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM147
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM148
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM149
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM150
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM151
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM152
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM153
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM154
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM155
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM156
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM157
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM158
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM159
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM160
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM161
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM162
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM163
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM164
	.byte	0xd
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM165
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM166
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM167
	.byte	0x3
	.sleb128 -29
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM168
	.byte	0x36
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE7
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM169
	.byte	0x3
	.sleb128 397
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM170
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM171
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM172
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM173
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM174
	.byte	0x21
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM175
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM176
	.byte	0x3
	.sleb128 -18
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM177
	.byte	0x26
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM178
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM179
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM180
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM181
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM182
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM183
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM184
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM185
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM186
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM187
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM188
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM189
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM190
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM191
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM192
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM193
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM194
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM195
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM196
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM197
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM198
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM199
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM200
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM201
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM202
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM203
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM204
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM205
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM206
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM207
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM208
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM209
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM210
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM211
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM212
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM213
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM214
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM215
	.byte	0x2d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM216
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM217
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM218
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM219
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM220
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM221
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM222
	.byte	0x3
	.sleb128 -85
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM223
	.byte	0x6a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE8
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM224
	.byte	0x3
	.sleb128 512
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM225
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM226
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM227
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM228
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM229
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE9
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,info
.LASF0:
	.asciz	"freesize"
	.section	.text,code

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
