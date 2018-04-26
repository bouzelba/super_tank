
;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	shot.c
	.globl _turbo
	.area .data
_turbo:
	.byte	0	;skip space
	.globl _lives_number
_lives_number:
	.byte	3
	.globl _missils_voctors
_missils_voctors:
	.byte	0
	.byte	30
	.byte	2
	.byte	-1
	.byte	0
	.byte	-4
	.byte	1
	.byte	0
	.byte	0
	.globl _missils_shape
_missils_shape:
	.byte	2
	.byte	3
	.word	_missils_voctors
	.globl _missils
_missils:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	_missils_shape
	.globl _shots_voctors
_shots_voctors:
	.byte	0
	.byte	30
	.byte	2
	.byte	-1
	.byte	0
	.byte	-4
	.byte	1
	.byte	0
	.byte	0
	.globl _shots_shape
_shots_shape:
	.byte	2
	.byte	3
	.word	_shots_voctors
	.globl _shots
_shots:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	_shots_shape
	.globl _fire_objects
	.area .text
_fire_objects:
	.word	_shots
	.word	_missils
	.globl _init_shot
_init_shot:
	ldx	_fire_objects
	clr	1,x
	ldx	_fire_objects
	clr	,x
	ldx	_fire_objects
	clr	3,x
	rts
	.globl _init_missils
_init_missils:
	ldx	_fire_objects+2
	clr	1,x
	ldx	_fire_objects+2
	clr	,x
	ldx	_fire_objects+2
	clr	3,x
	rts
	.globl _fire_shots
_fire_shots:
	rts
	.area .bss
	.globl	_score
_score:	.blkb	1
