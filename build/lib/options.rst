                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	options.c
                              7 	.globl _turbo
                              8 	.area .data
   C9E0                       9 _turbo:
   C9E0 00                   10 	.byte	0	;skip space
                             11 	.globl _lives_number
   C9E1                      12 _lives_number:
   C9E1 03                   13 	.byte	3
                             14 	.area .text
                             15 	.globl _check_heigh_score
   04CE                      16 _check_heigh_score:
   04CE 5F            [ 2]   17 	clrb
   04CF 39            [ 5]   18 	rts
                             19 	.globl _clear_score
   04D0                      20 _clear_score:
   04D0 39            [ 5]   21 	rts
                             22 	.globl _check_turbo_colision
   04D1                      23 _check_turbo_colision:
   04D1 5F            [ 2]   24 	clrb
   04D2 39            [ 5]   25 	rts
                             26 	.globl _check_turbo_use
   04D3                      27 _check_turbo_use:
   04D3 32 7D         [ 5]   28 	leas	-3,s
   04D5 AF 61         [ 6]   29 	stx	1,s
   04D7 E6 F8 01      [ 8]   30 	ldb	[1,s]
                             31 	; tstb	; optimization 6
   04DA 27 0E         [ 3]   32 	beq	L8
   04DC E6 F8 01      [ 8]   33 	ldb	[1,s]
   04DF CB F6         [ 2]   34 	addb	#-10
   04E1 E7 F8 01      [ 8]   35 	stb	[1,s]
   04E4 C6 01         [ 2]   36 	ldb	#1
   04E6 E7 E4         [ 4]   37 	stb	,s
   04E8 20 02         [ 3]   38 	bra	L9
   04EA                      39 L8:
   04EA 6F E4         [ 6]   40 	clr	,s
   04EC                      41 L9:
   04EC E6 E4         [ 4]   42 	ldb	,s
   04EE 32 63         [ 5]   43 	leas	3,s
   04F0 39            [ 5]   44 	rts
                             45 	.area .bss
                             46 	.globl	_score
   CAD9                      47 _score:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  3 L8                 001C R   |   3 L9                 001E R
  3 _check_heigh_s     0000 GR  |   3 _check_turbo_c     0003 GR
  3 _check_turbo_u     0005 GR  |   3 _clear_score       0002 GR
  2 _lives_number      0001 GR  |   4 _score             0000 GR
  2 _turbo             0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .data            size    2   flags  100
   3 .text            size   23   flags  100
   4 .bss             size    1   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

