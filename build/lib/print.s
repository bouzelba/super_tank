
;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	print.c
	.area .text
	.globl _print_str
_print_str:
	leas	-29,s
	stb	7,s
	stx	5,s
	ldb	7,s
	stb	8,s
	ldb	31,s
	stb	9,s
	ldb	#2
	stb	28,s
L3:
	ldb	28,s
	stb	2,s
	ldb	[5,s]
	stb	4,s
	ldb	2,s
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	leax	8,s
	exg	d,x
	addd	,s
	exg	d,x
	ldb	4,s
	stb	,x
	inc	28,s
	ldb	[5,s]
	stb	3,s
	; tst	3,s	; optimization 3
	beq	L2
	ldb	#1
	stb	3,s
L2:
	ldb	3,s
	stb	2,s
	ldd	5,s
	addd	#1
	std	5,s
	tst	2,s
	bne	L3
	ldb	28,s
	decb
	clra		;zero_extendqihi: R:b -> R:d
	leax	8,s
	leax	d,x
	ldb	#-128
	stb	,x
	jsr	___Reset0Ref_D0
	leax	8,s
	jsr	__Print_Str_yx
	leas	29,s
	rts
	.globl _print_int
_print_int:
	leas	-13,s
	stb	5,s
	; ldb	5,s	; optimization 5
	stb	6,s
	ldb	15,s
	stb	7,s
	ldb	#-128
	stb	11,s
	ldb	#4
	stb	12,s
L6:
	ldb	12,s
	stb	3,s
	ldb	16,s
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	ldx	#10
	pshs	x
	ldx	2,s
	jsr	_umodhi3
	leas	2,s
	tfr	x,d	;movlsbqihi: R:x -> R:b
	stb	2,s
	; ldb	2,s	; optimization 5
	addb	#48
	stb	4,s
	ldb	3,s
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	leax	6,s
	exg	d,x
	addd	,s
	exg	d,x
	ldb	4,s
	stb	,x
	dec	12,s
	ldb	16,s
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	ldx	#10
	pshs	x
	ldx	2,s
	jsr	_udivhi3
	leas	2,s
	tfr	x,d
	stb	16,s	;movlsbqihi: R:d -> 16,s
	ldb	12,s
	cmpb	#1	;cmpqi:
	bhi	L6
	jsr	___Reset0Ref_D0
	leax	6,s
	jsr	__Print_Str_yx
	leas	13,s
	rts
	.globl _print_bin
_print_bin:
	leas	-18,s
	stb	5,s
	; ldb	5,s	; optimization 5
	stb	6,s
	ldb	20,s
	stb	7,s
	ldb	#-128
	stb	16,s
	ldb	#9
	stb	17,s
L9:
	ldb	17,s
	stb	3,s
	ldb	21,s
	stb	,s
	ldb	#1
	andb	,s
	stb	2,s
	; ldb	2,s	; optimization 5
	addb	#48
	stb	4,s
	ldb	3,s
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	leax	6,s
	exg	d,x
	addd	,s
	exg	d,x
	ldb	4,s
	stb	,x
	dec	17,s
	lsr	21,s
	ldb	17,s
	cmpb	#1	;cmpqi:
	bhi	L9
	jsr	___Reset0Ref_D0
	leax	6,s
	jsr	__Print_Str_yx
	leas	18,s
	rts
	.globl _print_long_int
_print_long_int:
	pshs	y
	leas	-17,s
	stb	7,s
	stx	5,s
	ldb	7,s
	stb	8,s
	ldb	21,s
	stb	9,s
	ldb	#-128
	stb	15,s
	ldb	#6
	stb	16,s
L12:
	ldb	16,s
	stb	3,s
	ldy	5,s
	ldx	#10
	pshs	x
	leax	,y
	jsr	_umodhi3
	leas	2,s
	tfr	x,d	;movlsbqihi: R:x -> R:b
	stb	2,s
	; ldb	2,s	; optimization 5
	addb	#48
	stb	4,s
	ldb	3,s
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	leax	8,s
	exg	d,x
	addd	,s
	exg	d,x
	ldb	4,s
	stb	,x
	dec	16,s
	ldy	5,s
	ldx	#10
	pshs	x
	leax	,y
	jsr	_udivhi3
	leas	2,s
	stx	5,s
	ldb	16,s
	cmpb	#1	;cmpqi:
	bhi	L12
	jsr	___Reset0Ref_D0
	leax	8,s
	jsr	__Print_Str_yx
	leas	17,s
	puls	y,pc
