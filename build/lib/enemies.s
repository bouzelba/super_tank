
;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	enemies.c
	.globl _enemie0_vectors
	.area .data
_enemie0_vectors:
	.byte	0
	.byte	30
	.byte	2
	.byte	-1
	.byte	0
	.byte	-4
	.byte	-1
	.byte	-30
	.byte	0
	.byte	-1
	.byte	0
	.byte	-8
	.byte	-1
	.byte	10
	.byte	0
	.byte	-1
	.byte	5
	.byte	-2
	.byte	-1
	.byte	0
	.byte	-5
	.byte	-1
	.byte	-5
	.byte	-3
	.byte	-1
	.byte	-40
	.byte	0
	.byte	-1
	.byte	-10
	.byte	3
	.byte	-1
	.byte	0
	.byte	34
	.byte	-1
	.byte	10
	.byte	3
	.byte	-1
	.byte	40
	.byte	0
	.byte	-1
	.byte	5
	.byte	-3
	.byte	-1
	.byte	0
	.byte	-5
	.byte	-1
	.byte	-5
	.byte	-2
	.byte	-1
	.byte	-10
	.byte	0
	.byte	-1
	.byte	0
	.byte	-8
	.byte	-1
	.byte	30
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.globl _enemie0_shape
_enemie0_shape:
	.byte	0
	.byte	20
	.word	_enemie0_vectors
	.globl _enemie0
_enemie0:
	.byte	0
	.byte	0
	.byte	32
	.byte	30
	.word	_enemie0_shape
	.globl _enemie1_vectors
_enemie1_vectors:
	.word	0	;skip space 8
	.word	0	;skip space 6
	.word	0	;skip space 4
	.word	0	;skip space 2
	.globl _enemie1_shape
_enemie1_shape:
	.byte	1
	.byte	9
	.word	_enemie1_vectors
	.globl _enemie1
_enemie1:
	.byte	0
	.byte	0
	.byte	0
	.byte	35
	.word	_enemie1_shape
	.globl _enemie2_vectors
_enemie2_vectors:
	.word	0	;skip space 8
	.word	0	;skip space 6
	.word	0	;skip space 4
	.word	0	;skip space 2
	.globl _enemie2_shape
_enemie2_shape:
	.byte	1
	.byte	9
	.word	_enemie2_vectors
	.globl _enemie2
_enemie2:
	.byte	0
	.byte	0
	.byte	0
	.byte	75
	.word	_enemie2_shape
	.globl _enemies
_enemies:
	.word	_enemie0
	.word	_enemie1
	.word	_enemie2
	.area .text
	.globl _init_enemies
_init_enemies:
	pshs	y
	ldy	_enemies
	jsr	__Random
	stb	1,y
	ldy	_enemies
	jsr	__Random
	stb	,y
	puls	y,pc
	.globl _move_enemies
_move_enemies:
	pshs	y
	ldy	_enemies
	ldx	_enemies
	ldb	1,x
	addb	#2
	stb	1,y
	puls	y,pc
	.globl _draw_enemies
_draw_enemies:
	ldx	_enemies
	jsr	_draw_sprite
	rts
