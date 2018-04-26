
;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	sprites.c
	.globl _grid_scale
	.area .text
_grid_scale:
	.byte	80
	.globl _draw_sprite
_draw_sprite:
	pshs	y,u
	leas	-67,s
	leau	,s
	stx	28,u
	sts	3,u
	ldx	28,u
	ldb	2,x
	; tstb	; optimization 6
	lbeq	L2
	ldx	28,u
	ldx	4,x
	ldb	,x
	; tstb	; optimization 6
	lbne	L3
	leax	,s
	stx	14,u
	ldx	28,u
	ldx	4,x
	ldb	1,x
	clra		;zero_extendqihi: R:b -> R:d
	tfr	d,x
	stx	9,u
	ldd	9,u
	aslb
	rola
	std	9,u
	; ldd	9,u	; optimization 5
	leax	d,x
	stx	9,u
	ldd	9,u
	aslb
	rola
	aslb
	rola
	aslb
	rola
	std	9,u
	ldx	28,u
	ldx	4,x
	ldb	1,x
	clra		;zero_extendqihi: R:b -> R:d
	tfr	d,x
	tfr	x,d
	aslb
	rola
	tfr	d,x
	ldx	28,u
	ldx	4,x
	ldb	1,x
	clra		;zero_extendqihi: R:b -> R:d
	tfr	d,x
	stx	7,u
	ldd	7,u
	aslb
	rola
	std	7,u
	; ldd	7,u	; optimization 5
	leax	d,x
	stx	7,u
	ldd	7,u
	aslb
	rola
	aslb
	rola
	aslb
	rola
	std	7,u
	ldx	28,u
	ldx	4,x
	ldb	1,x
	clra		;zero_extendqihi: R:b -> R:d
	tfr	d,x
	stx	5,u
	ldd	5,u
	aslb
	rola
	std	5,u
	exg	d,x
	addd	5,u
	exg	d,x
	tfr	s,d
	pshs	x	;subhi: R:d -= R:x
	subd	,s++
	tfr	d,s
	sts	11,u
	ldy	11,u
	leax	0,y
	stx	11,u
	ldd	11,u
	std	30,u
	ldx	28,u
	ldx	4,x
	ldy	2,x
	ldx	28,u
	ldb	2,x
	stb	38,u
	sty	36,u
	ldx	30,u
	stx	34,u
	; ldx	34,u	; optimization 5
	pshs	x
	ldx	36,u
	ldb	38,u
	jsr	__Rot_VL_Mode
	leas	2,s
	ldx	28,u
	ldb	1,x
	stb	,u
	ldb	[28,u]
	stb	13,u
	ldb	,u
	pshs	b
	ldb	13,u
	jsr	_position_beam
	leas	1,s
	ldx	28,u
	ldb	3,x
	stb	41,u
	ldx	30,u
	stx	39,u
	; ldx	39,u	; optimization 5
	ldb	41,u
	jsr	___Draw_VLp_b
	lds	14,u
	jmp	L11
L3:
	leax	,s
	stx	22,u
	ldx	28,u
	ldx	4,x
	ldb	1,x
	clra		;zero_extendqihi: R:b -> R:d
	std	,u
	; ldd	,u	; optimization 5
	aslb
	rola
	std	,u
	tfr	s,d
	subd	,u	;subhi: R:d -= ,u
	tfr	d,s
	sts	16,u
	ldy	16,u
	leax	0,y
	stx	16,u
	ldd	16,u
	std	32,u
	ldx	28,u
	ldx	4,x
	ldy	2,x
	ldx	28,u
	ldx	4,x
	ldb	1,x
	stb	2,u
	; ldb	2,u	; optimization 5
	decb
	stb	18,u
	ldx	28,u
	ldb	2,x
	stb	47,u
	ldb	18,u
	stb	46,u
	sty	44,u
	ldx	32,u
	stx	42,u
	; ldx	42,u	; optimization 5
	pshs	x
	ldb	47,u
	stb	,-s
	ldx	44,u
	ldb	46,u
	jsr	__Rot_VL_ab
	leas	3,s
	ldx	28,u
	ldb	1,x
	stb	2,u
	ldb	[28,u]
	stb	19,u
	ldb	2,u
	pshs	b
	ldb	19,u
	jsr	_position_beam
	leas	1,s
	ldx	28,u
	ldx	4,x
	ldb	,x
	cmpb	#1	;cmpqi:
	bne	L5
	ldx	28,u
	ldb	3,x
	stb	20,u
	ldx	28,u
	ldx	4,x
	ldb	1,x
	decb
	stb	51,u
	ldb	20,u
	stb	50,u
	ldx	32,u
	stx	48,u
	ldb	51,u
	stb	,-s
	ldx	48,u
	ldb	50,u
	jsr	__Draw_VL_ab
	leas	1,s
	bra	L6
L5:
	ldx	28,u
	ldb	3,x
	stb	21,u
	ldx	28,u
	ldx	4,x
	ldb	1,x
	decb
	stb	55,u
	ldb	21,u
	stb	54,u
	ldx	32,u
	stx	52,u
	ldb	55,u
	stb	,-s
	ldx	52,u
	ldb	54,u
	jsr	__Mov_Draw_VL_ab
	leas	1,s
L6:
	lds	22,u
	jmp	L11
L2:
	ldx	28,u
	ldb	1,x
	stb	2,u
	ldb	[28,u]
	stb	24,u
	ldb	2,u
	pshs	b
	ldb	24,u
	jsr	_position_beam
	leas	1,s
	ldx	28,u
	ldx	4,x
	ldb	,x
	stb	25,u
	; tst	25,u	; optimization 3
	beq	L9
	ldb	25,u
	cmpb	#1	;cmpqi:
	beq	L10
	bra	L12
L9:
	ldx	28,u
	ldx	4,x
	ldy	2,x
	ldx	28,u
	ldb	3,x
	stb	58,u
	sty	56,u
	ldx	56,u
	ldb	58,u
	jsr	___Draw_VLp_b
	jmp	L11
L10:
	ldx	28,u
	ldx	4,x
	ldy	2,x
	ldx	28,u
	ldb	3,x
	stb	26,u
	ldx	28,u
	ldx	4,x
	ldb	1,x
	decb
	stb	62,u
	ldb	26,u
	stb	61,u
	sty	59,u
	ldb	62,u
	stb	,-s
	ldx	59,u
	ldb	61,u
	jsr	__Draw_VL_ab
	leas	1,s
	bra	L11
L12:
	ldx	28,u
	ldx	4,x
	ldy	2,x
	ldx	28,u
	ldb	3,x
	stb	27,u
	ldx	28,u
	ldx	4,x
	ldb	1,x
	decb
	stb	66,u
	ldb	27,u
	stb	65,u
	sty	63,u
	ldb	66,u
	stb	,-s
	ldx	63,u
	ldb	65,u
	jsr	__Mov_Draw_VL_ab
	leas	1,s
L11:
	lds	3,u
	leas	67,s
	puls	y,u,pc
_position_beam:
	leas	-1,s
	stb	,s
	jsr	_reset_beam
	ldb	_grid_scale
	pshs	b
	ldb	4,s
	stb	,-s
	ldb	2,s
	jsr	_move_beam
	leas	2,s
	leas	1,s
	rts
_reset_beam:
	jsr	___Reset0Ref
	rts
_move_beam:
	leas	-3,s
	stb	,s
	ldb	6,s
	stb	_VIA_t1_cnt_lo
	ldb	,s
	stb	2,s
	ldb	5,s
	stb	1,s
	ldb	2,s
	stb	,-s
	ldb	2,s
	jsr	__Moveto_d
	leas	1,s
	leas	3,s
	rts
