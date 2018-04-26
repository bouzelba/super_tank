
;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	options.c
	.globl _turbo
	.area .data
_turbo:
	.byte	0	;skip space
	.globl _lives_number
_lives_number:
	.byte	3
	.area .text
	.globl _check_heigh_score
_check_heigh_score:
	clrb
	rts
	.globl _clear_score
_clear_score:
	rts
	.globl _check_turbo_colision
_check_turbo_colision:
	clrb
	rts
	.globl _check_turbo_use
_check_turbo_use:
	leas	-3,s
	stx	1,s
	ldb	[1,s]
	; tstb	; optimization 6
	beq	L8
	ldb	[1,s]
	addb	#-10
	stb	[1,s]
	ldb	#1
	stb	,s
	bra	L9
L8:
	clr	,s
L9:
	ldb	,s
	leas	3,s
	rts
	.area .bss
	.globl	_score
_score:	.blkb	1
