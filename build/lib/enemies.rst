                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	enemies.c
                              7 	.globl _enemie0_vectors
                              8 	.area .data
   C880                       9 _enemie0_vectors:
   C880 00                   10 	.byte	0
   C881 1E                   11 	.byte	30
   C882 02                   12 	.byte	2
   C883 FF                   13 	.byte	-1
   C884 00                   14 	.byte	0
   C885 FC                   15 	.byte	-4
   C886 FF                   16 	.byte	-1
   C887 E2                   17 	.byte	-30
   C888 00                   18 	.byte	0
   C889 FF                   19 	.byte	-1
   C88A 00                   20 	.byte	0
   C88B F8                   21 	.byte	-8
   C88C FF                   22 	.byte	-1
   C88D 0A                   23 	.byte	10
   C88E 00                   24 	.byte	0
   C88F FF                   25 	.byte	-1
   C890 05                   26 	.byte	5
   C891 FE                   27 	.byte	-2
   C892 FF                   28 	.byte	-1
   C893 00                   29 	.byte	0
   C894 FB                   30 	.byte	-5
   C895 FF                   31 	.byte	-1
   C896 FB                   32 	.byte	-5
   C897 FD                   33 	.byte	-3
   C898 FF                   34 	.byte	-1
   C899 D8                   35 	.byte	-40
   C89A 00                   36 	.byte	0
   C89B FF                   37 	.byte	-1
   C89C F6                   38 	.byte	-10
   C89D 03                   39 	.byte	3
   C89E FF                   40 	.byte	-1
   C89F 00                   41 	.byte	0
   C8A0 22                   42 	.byte	34
   C8A1 FF                   43 	.byte	-1
   C8A2 0A                   44 	.byte	10
   C8A3 03                   45 	.byte	3
   C8A4 FF                   46 	.byte	-1
   C8A5 28                   47 	.byte	40
   C8A6 00                   48 	.byte	0
   C8A7 FF                   49 	.byte	-1
   C8A8 05                   50 	.byte	5
   C8A9 FD                   51 	.byte	-3
   C8AA FF                   52 	.byte	-1
   C8AB 00                   53 	.byte	0
   C8AC FB                   54 	.byte	-5
   C8AD FF                   55 	.byte	-1
   C8AE FB                   56 	.byte	-5
   C8AF FE                   57 	.byte	-2
   C8B0 FF                   58 	.byte	-1
   C8B1 F6                   59 	.byte	-10
   C8B2 00                   60 	.byte	0
   C8B3 FF                   61 	.byte	-1
   C8B4 00                   62 	.byte	0
   C8B5 F8                   63 	.byte	-8
   C8B6 FF                   64 	.byte	-1
   C8B7 1E                   65 	.byte	30
   C8B8 00                   66 	.byte	0
   C8B9 01                   67 	.byte	1
   C8BA 00                   68 	.byte	0
   C8BB 00                   69 	.byte	0
                             70 	.globl _enemie0_shape
   C8BC                      71 _enemie0_shape:
   C8BC 00                   72 	.byte	0
   C8BD 14                   73 	.byte	20
   C8BE C8 80                74 	.word	_enemie0_vectors
                             75 	.globl _enemie0
   C8C0                      76 _enemie0:
   C8C0 00                   77 	.byte	0
   C8C1 00                   78 	.byte	0
   C8C2 20                   79 	.byte	32
   C8C3 1E                   80 	.byte	30
   C8C4 C8 BC                81 	.word	_enemie0_shape
                             82 	.globl _enemie1_vectors
   C8C6                      83 _enemie1_vectors:
   C8C6 00 00                84 	.word	0	;skip space 8
   C8C8 00 00                85 	.word	0	;skip space 6
   C8CA 00 00                86 	.word	0	;skip space 4
   C8CC 00 00                87 	.word	0	;skip space 2
                             88 	.globl _enemie1_shape
   C8CE                      89 _enemie1_shape:
   C8CE 01                   90 	.byte	1
   C8CF 09                   91 	.byte	9
   C8D0 C8 C6                92 	.word	_enemie1_vectors
                             93 	.globl _enemie1
   C8D2                      94 _enemie1:
   C8D2 00                   95 	.byte	0
   C8D3 00                   96 	.byte	0
   C8D4 00                   97 	.byte	0
   C8D5 23                   98 	.byte	35
   C8D6 C8 CE                99 	.word	_enemie1_shape
                            100 	.globl _enemie2_vectors
   C8D8                     101 _enemie2_vectors:
   C8D8 00 00               102 	.word	0	;skip space 8
   C8DA 00 00               103 	.word	0	;skip space 6
   C8DC 00 00               104 	.word	0	;skip space 4
   C8DE 00 00               105 	.word	0	;skip space 2
                            106 	.globl _enemie2_shape
   C8E0                     107 _enemie2_shape:
   C8E0 01                  108 	.byte	1
   C8E1 09                  109 	.byte	9
   C8E2 C8 D8               110 	.word	_enemie2_vectors
                            111 	.globl _enemie2
   C8E4                     112 _enemie2:
   C8E4 00                  113 	.byte	0
   C8E5 00                  114 	.byte	0
   C8E6 00                  115 	.byte	0
   C8E7 4B                  116 	.byte	75
   C8E8 C8 E0               117 	.word	_enemie2_shape
                            118 	.globl _enemies
   C8EA                     119 _enemies:
   C8EA C8 C0               120 	.word	_enemie0
   C8EC C8 D2               121 	.word	_enemie1
   C8EE C8 E4               122 	.word	_enemie2
                            123 	.area .text
                            124 	.globl _init_enemies
   03D5                     125 _init_enemies:
   03D5 34 20         [ 6]  126 	pshs	y
   03D7 10 BE C8 EA   [ 7]  127 	ldy	_enemies
   03DB BD 02 0A      [ 8]  128 	jsr	__Random
   03DE E7 21         [ 5]  129 	stb	1,y
   03E0 10 BE C8 EA   [ 7]  130 	ldy	_enemies
   03E4 BD 02 0A      [ 8]  131 	jsr	__Random
   03E7 E7 A4         [ 4]  132 	stb	,y
   03E9 35 A0         [ 7]  133 	puls	y,pc
                            134 	.globl _move_enemies
   03EB                     135 _move_enemies:
   03EB 34 20         [ 6]  136 	pshs	y
   03ED 10 BE C8 EA   [ 7]  137 	ldy	_enemies
   03F1 BE C8 EA      [ 6]  138 	ldx	_enemies
   03F4 E6 01         [ 5]  139 	ldb	1,x
   03F6 CB 02         [ 2]  140 	addb	#2
   03F8 E7 21         [ 5]  141 	stb	1,y
   03FA 35 A0         [ 7]  142 	puls	y,pc
                            143 	.globl _draw_enemies
   03FC                     144 _draw_enemies:
   03FC BE C8 EA      [ 6]  145 	ldx	_enemies
   03FF BD 09 8D      [ 8]  146 	jsr	_draw_sprite
   0402 39            [ 5]  147 	rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
    __Random           **** GX  |   3 _draw_enemies      0027 GR
    _draw_sprite       **** GX  |   2 _enemie0           0040 GR
  2 _enemie0_shape     003C GR  |   2 _enemie0_vecto     0000 GR
  2 _enemie1           0052 GR  |   2 _enemie1_shape     004E GR
  2 _enemie1_vecto     0046 GR  |   2 _enemie2           0064 GR
  2 _enemie2_shape     0060 GR  |   2 _enemie2_vecto     0058 GR
  2 _enemies           006A GR  |   3 _init_enemies      0000 GR
  3 _move_enemies      0016 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .data            size   70   flags  100
   3 .text            size   2E   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

