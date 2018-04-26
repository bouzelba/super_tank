                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	main.c
                              7 	.area .text
                              8 	.globl _main
   04C0                       9 _main:
   04C0 32 7F         [ 5]   10 	leas	-1,s
   04C2                      11 L2:
   04C2 BD 04 B4      [ 8]   12 	jsr	_game
   04C5 E7 E4         [ 4]   13 	stb	,s
                             14 	; tst	,s	; optimization 3
   04C7 27 F9         [ 3]   15 	beq	L2
   04C9 E6 E4         [ 4]   16 	ldb	,s
   04CB 32 61         [ 5]   17 	leas	1,s
   04CD 39            [ 5]   18 	rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L2                 0002 R   |     _game              **** GX
  2 _main              0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size    E   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

