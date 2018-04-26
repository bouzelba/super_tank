                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	game.c
                              7 	.area .text
   0410                       8 LC0:
   0410 47 45 54 20 52 45     9 	.ascii "GET READY\0"
        41 44 59 00
                             10 	.globl _game_init
   041A                      11 _game_init:
   041A 32 7F         [ 5]   12 	leas	-1,s
   041C BD 04 5C      [ 8]   13 	jsr	_enable_controller_1_x
   041F BD 04 56      [ 8]   14 	jsr	_enable_controller_1_y
   0422 BD 04 52      [ 8]   15 	jsr	_disable_controller_2_x
   0425 BD 04 4E      [ 8]   16 	jsr	_disable_controller_2_y
   0428 BD 04 F1      [ 8]   17 	jsr	_init_player
   042B BD 03 D5      [ 8]   18 	jsr	_init_enemies
   042E C6 4B         [ 2]   19 	ldb	#75
   0430 E7 E4         [ 4]   20 	stb	,s
   0432 20 13         [ 3]   21 	bra	L2
   0434                      22 L3:
   0434 BD F1 92      [ 8]   23 	jsr	___Wait_Recal
   0437 BD F3 54      [ 8]   24 	jsr	___Reset0Ref
   043A C6 C4         [ 2]   25 	ldb	#-60
   043C E7 E2         [ 6]   26 	stb	,-s
   043E 8E 04 10      [ 3]   27 	ldx	#LC0
   0441 5F            [ 2]   28 	clrb
   0442 BD 07 D2      [ 8]   29 	jsr	_print_str
   0445 32 61         [ 5]   30 	leas	1,s
   0447                      31 L2:
   0447 6A E4         [ 6]   32 	dec	,s
                             33 	; tst	,s	; optimization 1
   0449 26 E9         [ 3]   34 	bne	L3
   044B 32 61         [ 5]   35 	leas	1,s
   044D 39            [ 5]   36 	rts
   044E                      37 _disable_controller_2_y:
   044E 7F C8 22      [ 7]   38 	clr	_Vec_Joy_Mux_2_Y
   0451 39            [ 5]   39 	rts
   0452                      40 _disable_controller_2_x:
   0452 7F C8 21      [ 7]   41 	clr	_Vec_Joy_Mux_2_X
   0455 39            [ 5]   42 	rts
   0456                      43 _enable_controller_1_y:
   0456 C6 03         [ 2]   44 	ldb	#3
   0458 F7 C8 20      [ 5]   45 	stb	_Vec_Joy_Mux_1_Y
   045B 39            [ 5]   46 	rts
   045C                      47 _enable_controller_1_x:
   045C C6 01         [ 2]   48 	ldb	#1
   045E F7 C8 1F      [ 5]   49 	stb	_Vec_Joy_Mux_1_X
   0461 39            [ 5]   50 	rts
                             51 	.globl _game_loop
   0462                      52 _game_loop:
   0462 32 7F         [ 5]   53 	leas	-1,s
   0464 C6 01         [ 2]   54 	ldb	#1
   0466 E7 E4         [ 4]   55 	stb	,s
   0468 20 17         [ 3]   56 	bra	L14
   046A                      57 L15:
   046A BD F1 92      [ 8]   58 	jsr	___Wait_Recal
   046D BD 05 02      [ 8]   59 	jsr	_move_player
   0470 BD 03 EB      [ 8]   60 	jsr	_move_enemies
   0473 BD 04 03      [ 8]   61 	jsr	_draw_field
   0476 BD 07 C8      [ 8]   62 	jsr	_draw_player
   0479 BD 03 FC      [ 8]   63 	jsr	_draw_enemies
   047C BD 07 CF      [ 8]   64 	jsr	_check_player
   047F E7 E4         [ 4]   65 	stb	,s
   0481                      66 L14:
   0481 6D E4         [ 6]   67 	tst	,s
   0483 26 E5         [ 3]   68 	bne	L15
   0485 32 61         [ 5]   69 	leas	1,s
   0487 39            [ 5]   70 	rts
   0488                      71 LC1:
   0488 47 41 4D 45 20 4F    72 	.ascii "GAME OVER\0"
        56 45 52 00
                             73 	.globl _game_over
   0492                      74 _game_over:
   0492 32 7F         [ 5]   75 	leas	-1,s
   0494 C6 96         [ 2]   76 	ldb	#-106
   0496 E7 E4         [ 4]   77 	stb	,s
   0498 20 13         [ 3]   78 	bra	L18
   049A                      79 L19:
   049A BD F1 92      [ 8]   80 	jsr	___Wait_Recal
   049D BD F3 54      [ 8]   81 	jsr	___Reset0Ref
   04A0 C6 BA         [ 2]   82 	ldb	#-70
   04A2 E7 E2         [ 6]   83 	stb	,-s
   04A4 8E 04 88      [ 3]   84 	ldx	#LC1
   04A7 5F            [ 2]   85 	clrb
   04A8 BD 07 D2      [ 8]   86 	jsr	_print_str
   04AB 32 61         [ 5]   87 	leas	1,s
   04AD                      88 L18:
   04AD 6A E4         [ 6]   89 	dec	,s
                             90 	; tst	,s	; optimization 1
   04AF 26 E9         [ 3]   91 	bne	L19
   04B1 32 61         [ 5]   92 	leas	1,s
   04B3 39            [ 5]   93 	rts
                             94 	.globl _game
   04B4                      95 _game:
   04B4 BD 04 1A      [ 8]   96 	jsr	_game_init
   04B7 BD 04 62      [ 8]   97 	jsr	_game_loop
   04BA BD 04 92      [ 8]   98 	jsr	_game_over
   04BD C6 FF         [ 2]   99 	ldb	#-1
   04BF 39            [ 5]  100 	rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L14                0071 R   |   2 L15                005A R
  2 L18                009D R   |   2 L19                008A R
  2 L2                 0037 R   |   2 L3                 0024 R
  2 LC0                0000 R   |   2 LC1                0078 R
    _Vec_Joy_Mux_1     **** GX  |     _Vec_Joy_Mux_1     **** GX
    _Vec_Joy_Mux_2     **** GX  |     _Vec_Joy_Mux_2     **** GX
    ___Reset0Ref       **** GX  |     ___Wait_Recal      **** GX
    _check_player      **** GX  |   2 _disable_contr     0042 R
  2 _disable_contr     003E R   |     _draw_enemies      **** GX
    _draw_field        **** GX  |     _draw_player       **** GX
  2 _enable_contro     004C R   |   2 _enable_contro     0046 R
  2 _game              00A4 GR  |   2 _game_init         000A GR
  2 _game_loop         0052 GR  |   2 _game_over         0082 GR
    _init_enemies      **** GX  |     _init_player       **** GX
    _move_enemies      **** GX  |     _move_player       **** GX
    _print_str         **** GX

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size   B0   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

