
;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	game.c
	.area .text
LC0:
	.ascii "GET READY\0"
	.globl _game_init
_game_init:
	leas	-1,s
	jsr	_enable_controller_1_x
	jsr	_enable_controller_1_y
	jsr	_disable_controller_2_x
	jsr	_disable_controller_2_y
	jsr	_init_player
	jsr	_init_enemies
	ldb	#75
	stb	,s
	bra	L2
L3:
	jsr	___Wait_Recal
	jsr	___Reset0Ref
	ldb	#-60
	stb	,-s
	ldx	#LC0
	clrb
	jsr	_print_str
	leas	1,s
L2:
	dec	,s
	; tst	,s	; optimization 1
	bne	L3
	leas	1,s
	rts
_disable_controller_2_y:
	clr	_Vec_Joy_Mux_2_Y
	rts
_disable_controller_2_x:
	clr	_Vec_Joy_Mux_2_X
	rts
_enable_controller_1_y:
	ldb	#3
	stb	_Vec_Joy_Mux_1_Y
	rts
_enable_controller_1_x:
	ldb	#1
	stb	_Vec_Joy_Mux_1_X
	rts
	.globl _game_loop
_game_loop:
	leas	-1,s
	ldb	#1
	stb	,s
	bra	L14
L15:
	jsr	___Wait_Recal
	jsr	_move_player
	jsr	_move_enemies
	jsr	_draw_field
	jsr	_draw_player
	jsr	_draw_enemies
	jsr	_check_player
	stb	,s
L14:
	tst	,s
	bne	L15
	leas	1,s
	rts
LC1:
	.ascii "GAME OVER\0"
	.globl _game_over
_game_over:
	leas	-1,s
	ldb	#-106
	stb	,s
	bra	L18
L19:
	jsr	___Wait_Recal
	jsr	___Reset0Ref
	ldb	#-70
	stb	,-s
	ldx	#LC1
	clrb
	jsr	_print_str
	leas	1,s
L18:
	dec	,s
	; tst	,s	; optimization 1
	bne	L19
	leas	1,s
	rts
	.globl _game
_game:
	jsr	_game_init
	jsr	_game_loop
	jsr	_game_over
	ldb	#-1
	rts
