;
;WZ1239 TV SERVER
;
;Optimised SPI I/O routines for fastest possible access to WIZ550io board
;
;The PIC is limited to 8MBits/s maximum speed but has a FIFO
;
.section	.text,code
	.align	2

    .extern _BUFFER_ADDR
    .extern _BUFFER_LEN

;
;Optimised 512 byte sector read via SPI. Uses SPI FIFO feature
;
_SECTOR_READ:

	clr     _SPI1BUF
	clr     _SPI1BUF
	clr     _SPI1BUF
 
	mov.b	#127,w0
	
.L54:
    btsc    _SPI1STATbits,#5
    bra     .L54

	clr     _SPI1BUF
	mov	    _SPI1BUF,w5
	mov.b	w5,[w7++]

.L30:
    btsc    _SPI1STATbits,#5
    bra     .L30

	clr     _SPI1BUF
	mov     _SPI1BUF,w5
	mov.b	w5,[w7++]

.L31:
    btsc    _SPI1STATbits,#5
    bra     .L31

	clr     _SPI1BUF
	mov     _SPI1BUF,w5
	mov.b	w5,[w7++]

.L32:
    btsc    _SPI1STATbits,#5
    bra     .L32

	clr     _SPI1BUF
	mov     _SPI1BUF,w5
	mov.b	w5,[w7++]

	dec.b	w0,w0
    bra     nz,.L54

.L34:
    btsc    _SPI1STATbits,#5
    bra     .L34
	mov     _SPI1BUF,w5
	mov.b	 w5,[w7++]

.L35:
    btsc    _SPI1STATbits,#5
    bra     .L35
	mov     _SPI1BUF,w5
	mov.b	 w5,[w7++]

.L36:
    btsc    _SPI1STATbits,#5
    bra     .L36
	mov     _SPI1BUF,w5
	mov.b	 w5,[w7++]

.L37:
    btsc    _SPI1STATbits,#5
    bra     .L37
	mov     _SPI1BUF,w5
	mov.b	 w5,[w7]

	return

	.align	2
	.global	_BUFFER_READ	; export
	.type	_BUFFER_READ,@function
;
;Optimised SPI read buffer function (variable length)
;
_BUFFER_READ:

    mov     _BUFFER_ADDR,w7
    mov     _BUFFER_LEN,w0

    ;Skip 3 bytes
.L13:
    btsc    _SPI1STATbits,#5
    bra     .L13
	mov	    _SPI1BUF,w5
.L14:
    btsc    _SPI1STATbits,#5
    bra     .L14
	mov	    _SPI1BUF,w5
.L15:
    btsc    _SPI1STATbits,#5
    bra     .L15
	mov	    _SPI1BUF,w5

    mov     #512,w5
    cp      w0,w5
    bra     z,_SECTOR_READ
    dec     w0,w0

.L11:
	clr     _SPI1BUF

.L10:
    btsc    _SPI1STATbits,#5
    bra     .L10

	mov	    _SPI1BUF,w5
	mov.b	w5,[w7++]
    dec     w0,w0
    bra     nz,.L11

.L12:
    btsc    _SPI1STATbits,#5
    bra     .L12

	mov     _SPI1BUF,w5
	mov.b	w5,[w7]

	return

	.align	2
	.global	_BUFFER_WRITE	; export
	.type	_BUFFER_WRITE,@function
;
;Optimised SPI write buffer function (variable length)
;
_BUFFER_WRITE:

    mov     _BUFFER_ADDR,w7
    mov     _BUFFER_LEN,w0

    cp0     w0
    bra     z,.L16
.L18:
    mov.b   [w7++],w5
    mov     w5,_SPI1BUF
    dec     w0,w0

.L17:
    btsc    _SPI1STATbits,#5
    bra     .L17
    mov     _SPI1BUF,w5

    cp0     w0
    bra     nz,.L18
.L16:
    ;Skip 3 bytes
    btsc    _SPI1STATbits,#5
    bra     .L16
    mov     _SPI1BUF,w5
.L19:
    btsc    _SPI1STATbits,#5
    bra     .L19
    mov     _SPI1BUF,w5
.L20:
    btsc    _SPI1STATbits,#5
    bra     .L20
    mov     _SPI1BUF,w5
    return

    .end



