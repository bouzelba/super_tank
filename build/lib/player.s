
;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	player.c
	.globl _turbo
	.area .data
_turbo:
	.byte	0	;skip space
	.globl _lives_number
_lives_number:
	.byte	3
	.globl _turbo_use
_turbo_use:
	.byte	100
	.globl _player_angle
_player_angle:
	.byte	0	;skip space
	.globl _dx
_dx:
	.byte	0
	.byte	-1
	.byte	-2
	.byte	-3
	.byte	-4
	.byte	-5
	.byte	-6
	.byte	-7
	.byte	-8
	.byte	-9
	.byte	-10
	.byte	-11
	.byte	-12
	.byte	-13
	.byte	-14
	.byte	-16
	.byte	-15
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.byte	-5
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.globl _dy
_dy:
	.byte	16
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	-1
	.byte	-2
	.byte	-3
	.byte	-4
	.byte	-5
	.byte	-6
	.byte	-7
	.byte	-8
	.byte	-9
	.byte	-10
	.byte	-11
	.byte	-12
	.byte	-13
	.byte	-14
	.byte	-15
	.byte	-16
	.byte	-15
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.byte	-5
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.globl _player_voctors
_player_voctors:
	.byte	0
	.byte	30
	.byte	2
	.byte	-1
	.byte	0
	.byte	-4
	.byte	-1
	.byte	-20
	.byte	0
	.byte	-1
	.byte	0
	.byte	-8
	.byte	-1
	.byte	5
	.byte	-2
	.byte	-1
	.byte	0
	.byte	-3
	.byte	-1
	.byte	-5
	.byte	-3
	.byte	-1
	.byte	-30
	.byte	0
	.byte	-1
	.byte	-5
	.byte	3
	.byte	-1
	.byte	0
	.byte	3
	.byte	-1
	.byte	5
	.byte	2
	.byte	-1
	.byte	0
	.byte	20
	.byte	-1
	.byte	-5
	.byte	2
	.byte	-1
	.byte	0
	.byte	3
	.byte	-1
	.byte	5
	.byte	3
	.byte	-1
	.byte	30
	.byte	0
	.byte	-1
	.byte	5
	.byte	-3
	.byte	-1
	.byte	0
	.byte	-3
	.byte	-1
	.byte	-5
	.byte	-2
	.byte	-1
	.byte	0
	.byte	-8
	.byte	-1
	.byte	20
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.globl _player_shape
_player_shape:
	.byte	0
	.byte	22
	.word	_player_voctors
	.globl _player
_player:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	_player_shape
	.area .text
	.globl _init_player
_init_player:
	ldb	#-95
	stb	_player
	clr	_player+1
	clr	_player+2
	ldb	#30
	stb	_player+3
	rts
	.globl _move_player
_move_player:
	leas	-31,s
	jsr	_check_joysticks
	ldb	_turbo
	; tstb	; optimization 6
	lbeq	L4
	jsr	_joystick_1_left
	tstb
	beq	L5
	ldb	_player+2
	stb	2,s
	ldb	#63
	andb	2,s
	stb	11,s
	; ldb	11,s	; optimization 5
	stb	_player_angle
	ldb	2,s
	decb
	stb	_player+2
	bra	L6
L5:
	jsr	_joystick_1_right
	tstb
	beq	L6
	ldb	_player+2
	stb	2,s
	ldb	#63
	andb	2,s
	stb	12,s
	; ldb	12,s	; optimization 5
	stb	_player_angle
	ldb	2,s
	incb
	stb	_player+2
L6:
	jsr	_joystick_1_up
	tstb
	lbeq	L7
	ldb	_player+1
	stb	13,s
	ldb	_player_angle
	clra		;zero_extendqihi: R:b -> R:d
	tfr	d,x
	ldb	_dx,x
	stb	14,s
	; ldb	14,s	; optimization 5
	lda	#103	;mulqihi3
	mul
	std	,s
	; ldd	,s	; optimization 5
	tfr	a,b
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	ldb	1,s	;movlsbqihi: msb:,s -> R:b
	asrb
	stb	10,s
	ldb	14,s
	rolb
	rolb
	andb	#1
	negb
	subb	10,s
	negb
	addb	13,s
	stb	_player+1
	ldb	_player
	stb	15,s
	ldb	_player_angle
	clra		;zero_extendqihi: R:b -> R:d
	tfr	d,x
	ldb	_dy,x
	stb	16,s
	; ldb	16,s	; optimization 5
	lda	#103	;mulqihi3
	mul
	std	,s
	; ldd	,s	; optimization 5
	tfr	a,b
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	ldb	1,s	;movlsbqihi: msb:,s -> R:b
	asrb
	stb	9,s
	ldb	16,s
	rolb
	rolb
	andb	#1
	negb
	subb	9,s
	negb
	addb	15,s
	stb	_player
	jmp	L9
L7:
	jsr	_joystick_1_down
	tstb
	lbeq	L9
	ldb	_player+1
	stb	17,s
	ldb	_player_angle
	clra		;zero_extendqihi: R:b -> R:d
	tfr	d,x
	ldb	_dx,x
	stb	18,s
	; ldb	18,s	; optimization 5
	lda	#103	;mulqihi3
	mul
	std	,s
	; ldd	,s	; optimization 5
	tfr	a,b
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	ldb	1,s	;movlsbqihi: msb:,s -> R:b
	asrb
	stb	8,s
	ldb	18,s
	rolb
	rolb
	andb	#1
	negb
	subb	8,s
	negb
	addb	17,s
	stb	_player+1
	ldb	_player
	stb	19,s
	ldb	_player_angle
	clra		;zero_extendqihi: R:b -> R:d
	tfr	d,x
	ldb	_dy,x
	stb	20,s
	; ldb	20,s	; optimization 5
	lda	#103	;mulqihi3
	mul
	std	,s
	; ldd	,s	; optimization 5
	tfr	a,b
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	ldb	1,s	;movlsbqihi: msb:,s -> R:b
	asrb
	stb	7,s
	ldb	20,s
	rolb
	rolb
	andb	#1
	negb
	subb	7,s
	negb
	addb	19,s
	stb	_player
	jmp	L9
L4:
	jsr	_joystick_1_left
	tstb
	beq	L10
	ldb	_player+2
	stb	2,s
	ldb	#63
	andb	2,s
	stb	21,s
	; ldb	21,s	; optimization 5
	stb	_player_angle
	ldb	2,s
	decb
	stb	_player+2
	bra	L11
L10:
	jsr	_joystick_1_right
	tstb
	beq	L11
	ldb	_player+2
	stb	2,s
	ldb	#63
	andb	2,s
	stb	22,s
	; ldb	22,s	; optimization 5
	stb	_player_angle
	ldb	2,s
	incb
	stb	_player+2
L11:
	jsr	_joystick_1_up
	tstb
	lbeq	L12
	ldb	_player+1
	stb	23,s
	ldb	_player_angle
	clra		;zero_extendqihi: R:b -> R:d
	tfr	d,x
	ldb	_dx,x
	stb	24,s
	; ldb	24,s	; optimization 5
	lda	#103	;mulqihi3
	mul
	std	,s
	; ldd	,s	; optimization 5
	tfr	a,b
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	ldb	1,s	;movlsbqihi: msb:,s -> R:b
	asrb
	stb	6,s
	ldb	24,s
	rolb
	rolb
	andb	#1
	negb
	subb	6,s
	negb
	addb	23,s
	stb	_player+1
	ldb	_player
	stb	25,s
	ldb	_player_angle
	clra		;zero_extendqihi: R:b -> R:d
	tfr	d,x
	ldb	_dy,x
	stb	26,s
	; ldb	26,s	; optimization 5
	lda	#103	;mulqihi3
	mul
	std	,s
	; ldd	,s	; optimization 5
	tfr	a,b
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	ldb	1,s	;movlsbqihi: msb:,s -> R:b
	asrb
	stb	5,s
	ldb	26,s
	rolb
	rolb
	andb	#1
	negb
	subb	5,s
	negb
	addb	25,s
	stb	_player
	jmp	L9
L12:
	jsr	_joystick_1_down
	tstb
	lbeq	L9
	ldb	_player+1
	stb	27,s
	ldb	_player_angle
	clra		;zero_extendqihi: R:b -> R:d
	tfr	d,x
	ldb	_dx,x
	stb	28,s
	; ldb	28,s	; optimization 5
	lda	#103	;mulqihi3
	mul
	std	,s
	; ldd	,s	; optimization 5
	tfr	a,b
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	ldb	1,s	;movlsbqihi: msb:,s -> R:b
	asrb
	stb	4,s
	ldb	28,s
	rolb
	rolb
	andb	#1
	negb
	subb	4,s
	negb
	subb	27,s
	negb
	stb	_player+1
	ldb	_player
	stb	29,s
	ldb	_player_angle
	clra		;zero_extendqihi: R:b -> R:d
	tfr	d,x
	ldb	_dy,x
	stb	30,s
	; ldb	30,s	; optimization 5
	lda	#103	;mulqihi3
	mul
	std	,s
	; ldd	,s	; optimization 5
	tfr	a,b
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	ldb	1,s	;movlsbqihi: msb:,s -> R:b
	asrb
	stb	3,s
	ldb	30,s
	rolb
	rolb
	andb	#1
	negb
	subb	3,s
	negb
	subb	29,s
	negb
	stb	_player
L9:
	jsr	_check_buttons
	jsr	_button_1_4_held
	tstb
	bne	L14
	jsr	_button_1_3_held
	tstb
	beq	L14
	jsr	_check_turbo_colision
	tstb
	beq	L14
	ldx	#_turbo_use
	jsr	_check_turbo_use
	stb	_turbo
L14:
	leas	31,s
	rts
_check_joysticks:
	jsr	___Joy_Digital
	rts
_joystick_1_left:
	leas	-1,s
	jsr	_joystick_1_x
	clr	,s
	tstb
	bge	L18
	ldb	#1
	stb	,s
L18:
	ldb	,s
	leas	1,s
	rts
_joystick_1_x:
	ldb	_Vec_Joy_1_X
	rts
_joystick_1_right:
	leas	-1,s
	jsr	_joystick_1_x
	clr	,s
	tstb
	ble	L23
	ldb	#1
	stb	,s
L23:
	ldb	,s
	leas	1,s
	rts
_joystick_1_up:
	leas	-1,s
	jsr	_joystick_1_y
	clr	,s
	tstb
	ble	L26
	ldb	#1
	stb	,s
L26:
	ldb	,s
	leas	1,s
	rts
_joystick_1_y:
	ldb	_Vec_Joy_1_Y
	rts
_joystick_1_down:
	leas	-1,s
	jsr	_joystick_1_y
	clr	,s
	tstb
	bge	L31
	ldb	#1
	stb	,s
L31:
	ldb	,s
	leas	1,s
	rts
_check_buttons:
	jsr	___Read_Btns
	rts
_button_1_4_held:
	jsr	_buttons_held
	andb	#8
	rts
_buttons_held:
	ldb	_Vec_Btn_State
	rts
_button_1_3_held:
	jsr	_buttons_held
	andb	#4
	rts
	.globl _draw_player
_draw_player:
	ldx	#_player
	jsr	_draw_sprite
	rts
	.globl _check_player
_check_player:
	ldb	#1
	rts
	.area .bss
	.globl	_score
_score:	.blkb	1
