                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	shot.c
                              7 	.globl _turbo
                              8 	.area .data
   CAB1                       9 _turbo:
   CAB1 00                   10 	.byte	0	;skip space
                             11 	.globl _lives_number
   CAB2                      12 _lives_number:
   CAB2 03                   13 	.byte	3
                             14 	.globl _missils_voctors
   CAB3                      15 _missils_voctors:
   CAB3 00                   16 	.byte	0
   CAB4 1E                   17 	.byte	30
   CAB5 02                   18 	.byte	2
   CAB6 FF                   19 	.byte	-1
   CAB7 00                   20 	.byte	0
   CAB8 FC                   21 	.byte	-4
   CAB9 01                   22 	.byte	1
   CABA 00                   23 	.byte	0
   CABB 00                   24 	.byte	0
                             25 	.globl _missils_shape
   CABC                      26 _missils_shape:
   CABC 02                   27 	.byte	2
   CABD 03                   28 	.byte	3
   CABE CA B3                29 	.word	_missils_voctors
                             30 	.globl _missils
   CAC0                      31 _missils:
   CAC0 00                   32 	.byte	0
   CAC1 00                   33 	.byte	0
   CAC2 00                   34 	.byte	0
   CAC3 00                   35 	.byte	0
   CAC4 CA BC                36 	.word	_missils_shape
                             37 	.globl _shots_voctors
   CAC6                      38 _shots_voctors:
   CAC6 00                   39 	.byte	0
   CAC7 1E                   40 	.byte	30
   CAC8 02                   41 	.byte	2
   CAC9 FF                   42 	.byte	-1
   CACA 00                   43 	.byte	0
   CACB FC                   44 	.byte	-4
   CACC 01                   45 	.byte	1
   CACD 00                   46 	.byte	0
   CACE 00                   47 	.byte	0
                             48 	.globl _shots_shape
   CACF                      49 _shots_shape:
   CACF 02                   50 	.byte	2
   CAD0 03                   51 	.byte	3
   CAD1 CA C6                52 	.word	_shots_voctors
                             53 	.globl _shots
   CAD3                      54 _shots:
   CAD3 00                   55 	.byte	0
   CAD4 00                   56 	.byte	0
   CAD5 00                   57 	.byte	0
   CAD6 00                   58 	.byte	0
   CAD7 CA CF                59 	.word	_shots_shape
                             60 	.globl _fire_objects
                             61 	.area .text
   0967                      62 _fire_objects:
   0967 CA D3                63 	.word	_shots
   0969 CA C0                64 	.word	_missils
                             65 	.globl _init_shot
   096B                      66 _init_shot:
   096B BE 09 67      [ 6]   67 	ldx	_fire_objects
   096E 6F 01         [ 7]   68 	clr	1,x
   0970 BE 09 67      [ 6]   69 	ldx	_fire_objects
   0973 6F 84         [ 6]   70 	clr	,x
   0975 BE 09 67      [ 6]   71 	ldx	_fire_objects
   0978 6F 03         [ 7]   72 	clr	3,x
   097A 39            [ 5]   73 	rts
                             74 	.globl _init_missils
   097B                      75 _init_missils:
   097B BE 09 69      [ 6]   76 	ldx	_fire_objects+2
   097E 6F 01         [ 7]   77 	clr	1,x
   0980 BE 09 69      [ 6]   78 	ldx	_fire_objects+2
   0983 6F 84         [ 6]   79 	clr	,x
   0985 BE 09 69      [ 6]   80 	ldx	_fire_objects+2
   0988 6F 03         [ 7]   81 	clr	3,x
   098A 39            [ 5]   82 	rts
                             83 	.globl _fire_shots
   098B                      84 _fire_shots:
   098B 39            [ 5]   85 	rts
                             86 	.area .bss
                             87 	.globl	_score
   CADB                      88 _score:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  3 _fire_objects      0000 GR  |   3 _fire_shots        0024 GR
  3 _init_missils      0014 GR  |   3 _init_shot         0004 GR
  2 _lives_number      0001 GR  |   2 _missils           000F GR
  2 _missils_shape     000B GR  |   2 _missils_vocto     0002 GR
  4 _score             0000 GR  |   2 _shots             0022 GR
  2 _shots_shape       001E GR  |   2 _shots_voctors     0015 GR
  2 _turbo             0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .data            size   28   flags  100
   3 .text            size   25   flags  100
   4 .bss             size    1   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

