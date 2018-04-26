                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	player.c
                              7 	.globl _turbo
                              8 	.area .data
   C9E2                       9 _turbo:
   C9E2 00                   10 	.byte	0	;skip space
                             11 	.globl _lives_number
   C9E3                      12 _lives_number:
   C9E3 03                   13 	.byte	3
                             14 	.globl _turbo_use
   C9E4                      15 _turbo_use:
   C9E4 64                   16 	.byte	100
                             17 	.globl _player_angle
   C9E5                      18 _player_angle:
   C9E5 00                   19 	.byte	0	;skip space
                             20 	.globl _dx
   C9E6                      21 _dx:
   C9E6 00                   22 	.byte	0
   C9E7 FF                   23 	.byte	-1
   C9E8 FE                   24 	.byte	-2
   C9E9 FD                   25 	.byte	-3
   C9EA FC                   26 	.byte	-4
   C9EB FB                   27 	.byte	-5
   C9EC FA                   28 	.byte	-6
   C9ED F9                   29 	.byte	-7
   C9EE F8                   30 	.byte	-8
   C9EF F7                   31 	.byte	-9
   C9F0 F6                   32 	.byte	-10
   C9F1 F5                   33 	.byte	-11
   C9F2 F4                   34 	.byte	-12
   C9F3 F3                   35 	.byte	-13
   C9F4 F2                   36 	.byte	-14
   C9F5 F0                   37 	.byte	-16
   C9F6 F1                   38 	.byte	-15
   C9F7 F2                   39 	.byte	-14
   C9F8 F3                   40 	.byte	-13
   C9F9 F4                   41 	.byte	-12
   C9FA F5                   42 	.byte	-11
   C9FB F6                   43 	.byte	-10
   C9FC F7                   44 	.byte	-9
   C9FD F8                   45 	.byte	-8
   C9FE F9                   46 	.byte	-7
   C9FF FA                   47 	.byte	-6
   CA00 FB                   48 	.byte	-5
   CA01 FC                   49 	.byte	-4
   CA02 FD                   50 	.byte	-3
   CA03 FE                   51 	.byte	-2
   CA04 FF                   52 	.byte	-1
   CA05 00                   53 	.byte	0
   CA06 01                   54 	.byte	1
   CA07 02                   55 	.byte	2
   CA08 03                   56 	.byte	3
   CA09 04                   57 	.byte	4
   CA0A 05                   58 	.byte	5
   CA0B 06                   59 	.byte	6
   CA0C 07                   60 	.byte	7
   CA0D 08                   61 	.byte	8
   CA0E 09                   62 	.byte	9
   CA0F 0A                   63 	.byte	10
   CA10 0B                   64 	.byte	11
   CA11 0C                   65 	.byte	12
   CA12 0D                   66 	.byte	13
   CA13 0E                   67 	.byte	14
   CA14 0F                   68 	.byte	15
   CA15 10                   69 	.byte	16
   CA16 0F                   70 	.byte	15
   CA17 0E                   71 	.byte	14
   CA18 0D                   72 	.byte	13
   CA19 0C                   73 	.byte	12
   CA1A 0B                   74 	.byte	11
   CA1B 0A                   75 	.byte	10
   CA1C 09                   76 	.byte	9
   CA1D 08                   77 	.byte	8
   CA1E 07                   78 	.byte	7
   CA1F 06                   79 	.byte	6
   CA20 05                   80 	.byte	5
   CA21 04                   81 	.byte	4
   CA22 03                   82 	.byte	3
   CA23 02                   83 	.byte	2
   CA24 01                   84 	.byte	1
                             85 	.globl _dy
   CA25                      86 _dy:
   CA25 10                   87 	.byte	16
   CA26 0F                   88 	.byte	15
   CA27 0E                   89 	.byte	14
   CA28 0D                   90 	.byte	13
   CA29 0C                   91 	.byte	12
   CA2A 0B                   92 	.byte	11
   CA2B 0A                   93 	.byte	10
   CA2C 09                   94 	.byte	9
   CA2D 08                   95 	.byte	8
   CA2E 07                   96 	.byte	7
   CA2F 06                   97 	.byte	6
   CA30 05                   98 	.byte	5
   CA31 04                   99 	.byte	4
   CA32 03                  100 	.byte	3
   CA33 02                  101 	.byte	2
   CA34 01                  102 	.byte	1
   CA35 00                  103 	.byte	0
   CA36 FF                  104 	.byte	-1
   CA37 FE                  105 	.byte	-2
   CA38 FD                  106 	.byte	-3
   CA39 FC                  107 	.byte	-4
   CA3A FB                  108 	.byte	-5
   CA3B FA                  109 	.byte	-6
   CA3C F9                  110 	.byte	-7
   CA3D F8                  111 	.byte	-8
   CA3E F7                  112 	.byte	-9
   CA3F F6                  113 	.byte	-10
   CA40 F5                  114 	.byte	-11
   CA41 F4                  115 	.byte	-12
   CA42 F3                  116 	.byte	-13
   CA43 F2                  117 	.byte	-14
   CA44 F1                  118 	.byte	-15
   CA45 F0                  119 	.byte	-16
   CA46 F1                  120 	.byte	-15
   CA47 F2                  121 	.byte	-14
   CA48 F3                  122 	.byte	-13
   CA49 F4                  123 	.byte	-12
   CA4A F5                  124 	.byte	-11
   CA4B F6                  125 	.byte	-10
   CA4C F7                  126 	.byte	-9
   CA4D F8                  127 	.byte	-8
   CA4E F9                  128 	.byte	-7
   CA4F FA                  129 	.byte	-6
   CA50 FB                  130 	.byte	-5
   CA51 FC                  131 	.byte	-4
   CA52 FD                  132 	.byte	-3
   CA53 FE                  133 	.byte	-2
   CA54 FF                  134 	.byte	-1
   CA55 00                  135 	.byte	0
   CA56 01                  136 	.byte	1
   CA57 02                  137 	.byte	2
   CA58 03                  138 	.byte	3
   CA59 04                  139 	.byte	4
   CA5A 05                  140 	.byte	5
   CA5B 06                  141 	.byte	6
   CA5C 07                  142 	.byte	7
   CA5D 08                  143 	.byte	8
   CA5E 09                  144 	.byte	9
   CA5F 0A                  145 	.byte	10
   CA60 0B                  146 	.byte	11
   CA61 0C                  147 	.byte	12
   CA62 0D                  148 	.byte	13
   CA63 0E                  149 	.byte	14
   CA64 0F                  150 	.byte	15
                            151 	.globl _player_voctors
   CA65                     152 _player_voctors:
   CA65 00                  153 	.byte	0
   CA66 1E                  154 	.byte	30
   CA67 02                  155 	.byte	2
   CA68 FF                  156 	.byte	-1
   CA69 00                  157 	.byte	0
   CA6A FC                  158 	.byte	-4
   CA6B FF                  159 	.byte	-1
   CA6C EC                  160 	.byte	-20
   CA6D 00                  161 	.byte	0
   CA6E FF                  162 	.byte	-1
   CA6F 00                  163 	.byte	0
   CA70 F8                  164 	.byte	-8
   CA71 FF                  165 	.byte	-1
   CA72 05                  166 	.byte	5
   CA73 FE                  167 	.byte	-2
   CA74 FF                  168 	.byte	-1
   CA75 00                  169 	.byte	0
   CA76 FD                  170 	.byte	-3
   CA77 FF                  171 	.byte	-1
   CA78 FB                  172 	.byte	-5
   CA79 FD                  173 	.byte	-3
   CA7A FF                  174 	.byte	-1
   CA7B E2                  175 	.byte	-30
   CA7C 00                  176 	.byte	0
   CA7D FF                  177 	.byte	-1
   CA7E FB                  178 	.byte	-5
   CA7F 03                  179 	.byte	3
   CA80 FF                  180 	.byte	-1
   CA81 00                  181 	.byte	0
   CA82 03                  182 	.byte	3
   CA83 FF                  183 	.byte	-1
   CA84 05                  184 	.byte	5
   CA85 02                  185 	.byte	2
   CA86 FF                  186 	.byte	-1
   CA87 00                  187 	.byte	0
   CA88 14                  188 	.byte	20
   CA89 FF                  189 	.byte	-1
   CA8A FB                  190 	.byte	-5
   CA8B 02                  191 	.byte	2
   CA8C FF                  192 	.byte	-1
   CA8D 00                  193 	.byte	0
   CA8E 03                  194 	.byte	3
   CA8F FF                  195 	.byte	-1
   CA90 05                  196 	.byte	5
   CA91 03                  197 	.byte	3
   CA92 FF                  198 	.byte	-1
   CA93 1E                  199 	.byte	30
   CA94 00                  200 	.byte	0
   CA95 FF                  201 	.byte	-1
   CA96 05                  202 	.byte	5
   CA97 FD                  203 	.byte	-3
   CA98 FF                  204 	.byte	-1
   CA99 00                  205 	.byte	0
   CA9A FD                  206 	.byte	-3
   CA9B FF                  207 	.byte	-1
   CA9C FB                  208 	.byte	-5
   CA9D FE                  209 	.byte	-2
   CA9E FF                  210 	.byte	-1
   CA9F 00                  211 	.byte	0
   CAA0 F8                  212 	.byte	-8
   CAA1 FF                  213 	.byte	-1
   CAA2 14                  214 	.byte	20
   CAA3 00                  215 	.byte	0
   CAA4 01                  216 	.byte	1
   CAA5 00                  217 	.byte	0
   CAA6 00                  218 	.byte	0
                            219 	.globl _player_shape
   CAA7                     220 _player_shape:
   CAA7 00                  221 	.byte	0
   CAA8 16                  222 	.byte	22
   CAA9 CA 65               223 	.word	_player_voctors
                            224 	.globl _player
   CAAB                     225 _player:
   CAAB 00                  226 	.byte	0
   CAAC 00                  227 	.byte	0
   CAAD 00                  228 	.byte	0
   CAAE 00                  229 	.byte	0
   CAAF CA A7               230 	.word	_player_shape
                            231 	.area .text
                            232 	.globl _init_player
   04F1                     233 _init_player:
   04F1 C6 A1         [ 2]  234 	ldb	#-95
   04F3 F7 CA AB      [ 5]  235 	stb	_player
   04F6 7F CA AC      [ 7]  236 	clr	_player+1
   04F9 7F CA AD      [ 7]  237 	clr	_player+2
   04FC C6 1E         [ 2]  238 	ldb	#30
   04FE F7 CA AE      [ 5]  239 	stb	_player+3
   0501 39            [ 5]  240 	rts
                            241 	.globl _move_player
   0502                     242 _move_player:
   0502 32 E8 E1      [ 5]  243 	leas	-31,s
   0505 BD 07 5C      [ 8]  244 	jsr	_check_joysticks
   0508 F6 C9 E2      [ 5]  245 	ldb	_turbo
                            246 	; tstb	; optimization 6
   050B 10 27 01 12   [ 6]  247 	lbeq	L4
   050F BD 07 60      [ 8]  248 	jsr	_joystick_1_left
   0512 5D            [ 2]  249 	tstb
   0513 27 16         [ 3]  250 	beq	L5
   0515 F6 CA AD      [ 5]  251 	ldb	_player+2
   0518 E7 62         [ 5]  252 	stb	2,s
   051A C6 3F         [ 2]  253 	ldb	#63
   051C E4 62         [ 5]  254 	andb	2,s
   051E E7 6B         [ 5]  255 	stb	11,s
                            256 	; ldb	11,s	; optimization 5
   0520 F7 C9 E5      [ 5]  257 	stb	_player_angle
   0523 E6 62         [ 5]  258 	ldb	2,s
   0525 5A            [ 2]  259 	decb
   0526 F7 CA AD      [ 5]  260 	stb	_player+2
   0529 20 1A         [ 3]  261 	bra	L6
   052B                     262 L5:
   052B BD 07 77      [ 8]  263 	jsr	_joystick_1_right
   052E 5D            [ 2]  264 	tstb
   052F 27 14         [ 3]  265 	beq	L6
   0531 F6 CA AD      [ 5]  266 	ldb	_player+2
   0534 E7 62         [ 5]  267 	stb	2,s
   0536 C6 3F         [ 2]  268 	ldb	#63
   0538 E4 62         [ 5]  269 	andb	2,s
   053A E7 6C         [ 5]  270 	stb	12,s
                            271 	; ldb	12,s	; optimization 5
   053C F7 C9 E5      [ 5]  272 	stb	_player_angle
   053F E6 62         [ 5]  273 	ldb	2,s
   0541 5C            [ 2]  274 	incb
   0542 F7 CA AD      [ 5]  275 	stb	_player+2
   0545                     276 L6:
   0545 BD 07 8A      [ 8]  277 	jsr	_joystick_1_up
   0548 5D            [ 2]  278 	tstb
   0549 10 27 00 63   [ 6]  279 	lbeq	L7
   054D F6 CA AC      [ 5]  280 	ldb	_player+1
   0550 E7 6D         [ 5]  281 	stb	13,s
   0552 F6 C9 E5      [ 5]  282 	ldb	_player_angle
   0555 4F            [ 2]  283 	clra		;zero_extendqihi: R:b -> R:d
   0556 1F 01         [ 6]  284 	tfr	d,x
   0558 E6 89 C9 E6   [ 8]  285 	ldb	_dx,x
   055C E7 6E         [ 5]  286 	stb	14,s
                            287 	; ldb	14,s	; optimization 5
   055E 86 67         [ 2]  288 	lda	#103	;mulqihi3
   0560 3D            [11]  289 	mul
   0561 ED E4         [ 5]  290 	std	,s
                            291 	; ldd	,s	; optimization 5
   0563 1F 89         [ 6]  292 	tfr	a,b
   0565 4F            [ 2]  293 	clra		;zero_extendqihi: R:b -> R:d
   0566 ED E4         [ 5]  294 	std	,s
   0568 E6 61         [ 5]  295 	ldb	1,s	;movlsbqihi: msb:,s -> R:b
   056A 57            [ 2]  296 	asrb
   056B E7 6A         [ 5]  297 	stb	10,s
   056D E6 6E         [ 5]  298 	ldb	14,s
   056F 59            [ 2]  299 	rolb
   0570 59            [ 2]  300 	rolb
   0571 C4 01         [ 2]  301 	andb	#1
   0573 50            [ 2]  302 	negb
   0574 E0 6A         [ 5]  303 	subb	10,s
   0576 50            [ 2]  304 	negb
   0577 EB 6D         [ 5]  305 	addb	13,s
   0579 F7 CA AC      [ 5]  306 	stb	_player+1
   057C F6 CA AB      [ 5]  307 	ldb	_player
   057F E7 6F         [ 5]  308 	stb	15,s
   0581 F6 C9 E5      [ 5]  309 	ldb	_player_angle
   0584 4F            [ 2]  310 	clra		;zero_extendqihi: R:b -> R:d
   0585 1F 01         [ 6]  311 	tfr	d,x
   0587 E6 89 CA 25   [ 8]  312 	ldb	_dy,x
   058B E7 E8 10      [ 5]  313 	stb	16,s
                            314 	; ldb	16,s	; optimization 5
   058E 86 67         [ 2]  315 	lda	#103	;mulqihi3
   0590 3D            [11]  316 	mul
   0591 ED E4         [ 5]  317 	std	,s
                            318 	; ldd	,s	; optimization 5
   0593 1F 89         [ 6]  319 	tfr	a,b
   0595 4F            [ 2]  320 	clra		;zero_extendqihi: R:b -> R:d
   0596 ED E4         [ 5]  321 	std	,s
   0598 E6 61         [ 5]  322 	ldb	1,s	;movlsbqihi: msb:,s -> R:b
   059A 57            [ 2]  323 	asrb
   059B E7 69         [ 5]  324 	stb	9,s
   059D E6 E8 10      [ 5]  325 	ldb	16,s
   05A0 59            [ 2]  326 	rolb
   05A1 59            [ 2]  327 	rolb
   05A2 C4 01         [ 2]  328 	andb	#1
   05A4 50            [ 2]  329 	negb
   05A5 E0 69         [ 5]  330 	subb	9,s
   05A7 50            [ 2]  331 	negb
   05A8 EB 6F         [ 5]  332 	addb	15,s
   05AA F7 CA AB      [ 5]  333 	stb	_player
   05AD 7E 07 3A      [ 4]  334 	jmp	L9
   05B0                     335 L7:
   05B0 BD 07 A1      [ 8]  336 	jsr	_joystick_1_down
   05B3 5D            [ 2]  337 	tstb
   05B4 10 27 01 82   [ 6]  338 	lbeq	L9
   05B8 F6 CA AC      [ 5]  339 	ldb	_player+1
   05BB E7 E8 11      [ 5]  340 	stb	17,s
   05BE F6 C9 E5      [ 5]  341 	ldb	_player_angle
   05C1 4F            [ 2]  342 	clra		;zero_extendqihi: R:b -> R:d
   05C2 1F 01         [ 6]  343 	tfr	d,x
   05C4 E6 89 C9 E6   [ 8]  344 	ldb	_dx,x
   05C8 E7 E8 12      [ 5]  345 	stb	18,s
                            346 	; ldb	18,s	; optimization 5
   05CB 86 67         [ 2]  347 	lda	#103	;mulqihi3
   05CD 3D            [11]  348 	mul
   05CE ED E4         [ 5]  349 	std	,s
                            350 	; ldd	,s	; optimization 5
   05D0 1F 89         [ 6]  351 	tfr	a,b
   05D2 4F            [ 2]  352 	clra		;zero_extendqihi: R:b -> R:d
   05D3 ED E4         [ 5]  353 	std	,s
   05D5 E6 61         [ 5]  354 	ldb	1,s	;movlsbqihi: msb:,s -> R:b
   05D7 57            [ 2]  355 	asrb
   05D8 E7 68         [ 5]  356 	stb	8,s
   05DA E6 E8 12      [ 5]  357 	ldb	18,s
   05DD 59            [ 2]  358 	rolb
   05DE 59            [ 2]  359 	rolb
   05DF C4 01         [ 2]  360 	andb	#1
   05E1 50            [ 2]  361 	negb
   05E2 E0 68         [ 5]  362 	subb	8,s
   05E4 50            [ 2]  363 	negb
   05E5 EB E8 11      [ 5]  364 	addb	17,s
   05E8 F7 CA AC      [ 5]  365 	stb	_player+1
   05EB F6 CA AB      [ 5]  366 	ldb	_player
   05EE E7 E8 13      [ 5]  367 	stb	19,s
   05F1 F6 C9 E5      [ 5]  368 	ldb	_player_angle
   05F4 4F            [ 2]  369 	clra		;zero_extendqihi: R:b -> R:d
   05F5 1F 01         [ 6]  370 	tfr	d,x
   05F7 E6 89 CA 25   [ 8]  371 	ldb	_dy,x
   05FB E7 E8 14      [ 5]  372 	stb	20,s
                            373 	; ldb	20,s	; optimization 5
   05FE 86 67         [ 2]  374 	lda	#103	;mulqihi3
   0600 3D            [11]  375 	mul
   0601 ED E4         [ 5]  376 	std	,s
                            377 	; ldd	,s	; optimization 5
   0603 1F 89         [ 6]  378 	tfr	a,b
   0605 4F            [ 2]  379 	clra		;zero_extendqihi: R:b -> R:d
   0606 ED E4         [ 5]  380 	std	,s
   0608 E6 61         [ 5]  381 	ldb	1,s	;movlsbqihi: msb:,s -> R:b
   060A 57            [ 2]  382 	asrb
   060B E7 67         [ 5]  383 	stb	7,s
   060D E6 E8 14      [ 5]  384 	ldb	20,s
   0610 59            [ 2]  385 	rolb
   0611 59            [ 2]  386 	rolb
   0612 C4 01         [ 2]  387 	andb	#1
   0614 50            [ 2]  388 	negb
   0615 E0 67         [ 5]  389 	subb	7,s
   0617 50            [ 2]  390 	negb
   0618 EB E8 13      [ 5]  391 	addb	19,s
   061B F7 CA AB      [ 5]  392 	stb	_player
   061E 7E 07 3A      [ 4]  393 	jmp	L9
   0621                     394 L4:
   0621 BD 07 60      [ 8]  395 	jsr	_joystick_1_left
   0624 5D            [ 2]  396 	tstb
   0625 27 17         [ 3]  397 	beq	L10
   0627 F6 CA AD      [ 5]  398 	ldb	_player+2
   062A E7 62         [ 5]  399 	stb	2,s
   062C C6 3F         [ 2]  400 	ldb	#63
   062E E4 62         [ 5]  401 	andb	2,s
   0630 E7 E8 15      [ 5]  402 	stb	21,s
                            403 	; ldb	21,s	; optimization 5
   0633 F7 C9 E5      [ 5]  404 	stb	_player_angle
   0636 E6 62         [ 5]  405 	ldb	2,s
   0638 5A            [ 2]  406 	decb
   0639 F7 CA AD      [ 5]  407 	stb	_player+2
   063C 20 1B         [ 3]  408 	bra	L11
   063E                     409 L10:
   063E BD 07 77      [ 8]  410 	jsr	_joystick_1_right
   0641 5D            [ 2]  411 	tstb
   0642 27 15         [ 3]  412 	beq	L11
   0644 F6 CA AD      [ 5]  413 	ldb	_player+2
   0647 E7 62         [ 5]  414 	stb	2,s
   0649 C6 3F         [ 2]  415 	ldb	#63
   064B E4 62         [ 5]  416 	andb	2,s
   064D E7 E8 16      [ 5]  417 	stb	22,s
                            418 	; ldb	22,s	; optimization 5
   0650 F7 C9 E5      [ 5]  419 	stb	_player_angle
   0653 E6 62         [ 5]  420 	ldb	2,s
   0655 5C            [ 2]  421 	incb
   0656 F7 CA AD      [ 5]  422 	stb	_player+2
   0659                     423 L11:
   0659 BD 07 8A      [ 8]  424 	jsr	_joystick_1_up
   065C 5D            [ 2]  425 	tstb
   065D 10 27 00 69   [ 6]  426 	lbeq	L12
   0661 F6 CA AC      [ 5]  427 	ldb	_player+1
   0664 E7 E8 17      [ 5]  428 	stb	23,s
   0667 F6 C9 E5      [ 5]  429 	ldb	_player_angle
   066A 4F            [ 2]  430 	clra		;zero_extendqihi: R:b -> R:d
   066B 1F 01         [ 6]  431 	tfr	d,x
   066D E6 89 C9 E6   [ 8]  432 	ldb	_dx,x
   0671 E7 E8 18      [ 5]  433 	stb	24,s
                            434 	; ldb	24,s	; optimization 5
   0674 86 67         [ 2]  435 	lda	#103	;mulqihi3
   0676 3D            [11]  436 	mul
   0677 ED E4         [ 5]  437 	std	,s
                            438 	; ldd	,s	; optimization 5
   0679 1F 89         [ 6]  439 	tfr	a,b
   067B 4F            [ 2]  440 	clra		;zero_extendqihi: R:b -> R:d
   067C ED E4         [ 5]  441 	std	,s
   067E E6 61         [ 5]  442 	ldb	1,s	;movlsbqihi: msb:,s -> R:b
   0680 57            [ 2]  443 	asrb
   0681 E7 66         [ 5]  444 	stb	6,s
   0683 E6 E8 18      [ 5]  445 	ldb	24,s
   0686 59            [ 2]  446 	rolb
   0687 59            [ 2]  447 	rolb
   0688 C4 01         [ 2]  448 	andb	#1
   068A 50            [ 2]  449 	negb
   068B E0 66         [ 5]  450 	subb	6,s
   068D 50            [ 2]  451 	negb
   068E EB E8 17      [ 5]  452 	addb	23,s
   0691 F7 CA AC      [ 5]  453 	stb	_player+1
   0694 F6 CA AB      [ 5]  454 	ldb	_player
   0697 E7 E8 19      [ 5]  455 	stb	25,s
   069A F6 C9 E5      [ 5]  456 	ldb	_player_angle
   069D 4F            [ 2]  457 	clra		;zero_extendqihi: R:b -> R:d
   069E 1F 01         [ 6]  458 	tfr	d,x
   06A0 E6 89 CA 25   [ 8]  459 	ldb	_dy,x
   06A4 E7 E8 1A      [ 5]  460 	stb	26,s
                            461 	; ldb	26,s	; optimization 5
   06A7 86 67         [ 2]  462 	lda	#103	;mulqihi3
   06A9 3D            [11]  463 	mul
   06AA ED E4         [ 5]  464 	std	,s
                            465 	; ldd	,s	; optimization 5
   06AC 1F 89         [ 6]  466 	tfr	a,b
   06AE 4F            [ 2]  467 	clra		;zero_extendqihi: R:b -> R:d
   06AF ED E4         [ 5]  468 	std	,s
   06B1 E6 61         [ 5]  469 	ldb	1,s	;movlsbqihi: msb:,s -> R:b
   06B3 57            [ 2]  470 	asrb
   06B4 E7 65         [ 5]  471 	stb	5,s
   06B6 E6 E8 1A      [ 5]  472 	ldb	26,s
   06B9 59            [ 2]  473 	rolb
   06BA 59            [ 2]  474 	rolb
   06BB C4 01         [ 2]  475 	andb	#1
   06BD 50            [ 2]  476 	negb
   06BE E0 65         [ 5]  477 	subb	5,s
   06C0 50            [ 2]  478 	negb
   06C1 EB E8 19      [ 5]  479 	addb	25,s
   06C4 F7 CA AB      [ 5]  480 	stb	_player
   06C7 7E 07 3A      [ 4]  481 	jmp	L9
   06CA                     482 L12:
   06CA BD 07 A1      [ 8]  483 	jsr	_joystick_1_down
   06CD 5D            [ 2]  484 	tstb
   06CE 10 27 00 68   [ 6]  485 	lbeq	L9
   06D2 F6 CA AC      [ 5]  486 	ldb	_player+1
   06D5 E7 E8 1B      [ 5]  487 	stb	27,s
   06D8 F6 C9 E5      [ 5]  488 	ldb	_player_angle
   06DB 4F            [ 2]  489 	clra		;zero_extendqihi: R:b -> R:d
   06DC 1F 01         [ 6]  490 	tfr	d,x
   06DE E6 89 C9 E6   [ 8]  491 	ldb	_dx,x
   06E2 E7 E8 1C      [ 5]  492 	stb	28,s
                            493 	; ldb	28,s	; optimization 5
   06E5 86 67         [ 2]  494 	lda	#103	;mulqihi3
   06E7 3D            [11]  495 	mul
   06E8 ED E4         [ 5]  496 	std	,s
                            497 	; ldd	,s	; optimization 5
   06EA 1F 89         [ 6]  498 	tfr	a,b
   06EC 4F            [ 2]  499 	clra		;zero_extendqihi: R:b -> R:d
   06ED ED E4         [ 5]  500 	std	,s
   06EF E6 61         [ 5]  501 	ldb	1,s	;movlsbqihi: msb:,s -> R:b
   06F1 57            [ 2]  502 	asrb
   06F2 E7 64         [ 5]  503 	stb	4,s
   06F4 E6 E8 1C      [ 5]  504 	ldb	28,s
   06F7 59            [ 2]  505 	rolb
   06F8 59            [ 2]  506 	rolb
   06F9 C4 01         [ 2]  507 	andb	#1
   06FB 50            [ 2]  508 	negb
   06FC E0 64         [ 5]  509 	subb	4,s
   06FE 50            [ 2]  510 	negb
   06FF E0 E8 1B      [ 5]  511 	subb	27,s
   0702 50            [ 2]  512 	negb
   0703 F7 CA AC      [ 5]  513 	stb	_player+1
   0706 F6 CA AB      [ 5]  514 	ldb	_player
   0709 E7 E8 1D      [ 5]  515 	stb	29,s
   070C F6 C9 E5      [ 5]  516 	ldb	_player_angle
   070F 4F            [ 2]  517 	clra		;zero_extendqihi: R:b -> R:d
   0710 1F 01         [ 6]  518 	tfr	d,x
   0712 E6 89 CA 25   [ 8]  519 	ldb	_dy,x
   0716 E7 E8 1E      [ 5]  520 	stb	30,s
                            521 	; ldb	30,s	; optimization 5
   0719 86 67         [ 2]  522 	lda	#103	;mulqihi3
   071B 3D            [11]  523 	mul
   071C ED E4         [ 5]  524 	std	,s
                            525 	; ldd	,s	; optimization 5
   071E 1F 89         [ 6]  526 	tfr	a,b
   0720 4F            [ 2]  527 	clra		;zero_extendqihi: R:b -> R:d
   0721 ED E4         [ 5]  528 	std	,s
   0723 E6 61         [ 5]  529 	ldb	1,s	;movlsbqihi: msb:,s -> R:b
   0725 57            [ 2]  530 	asrb
   0726 E7 63         [ 5]  531 	stb	3,s
   0728 E6 E8 1E      [ 5]  532 	ldb	30,s
   072B 59            [ 2]  533 	rolb
   072C 59            [ 2]  534 	rolb
   072D C4 01         [ 2]  535 	andb	#1
   072F 50            [ 2]  536 	negb
   0730 E0 63         [ 5]  537 	subb	3,s
   0732 50            [ 2]  538 	negb
   0733 E0 E8 1D      [ 5]  539 	subb	29,s
   0736 50            [ 2]  540 	negb
   0737 F7 CA AB      [ 5]  541 	stb	_player
   073A                     542 L9:
   073A BD 07 B4      [ 8]  543 	jsr	_check_buttons
   073D BD 07 B8      [ 8]  544 	jsr	_button_1_4_held
   0740 5D            [ 2]  545 	tstb
   0741 26 15         [ 3]  546 	bne	L14
   0743 BD 07 C2      [ 8]  547 	jsr	_button_1_3_held
   0746 5D            [ 2]  548 	tstb
   0747 27 0F         [ 3]  549 	beq	L14
   0749 BD 04 D1      [ 8]  550 	jsr	_check_turbo_colision
   074C 5D            [ 2]  551 	tstb
   074D 27 09         [ 3]  552 	beq	L14
   074F 8E C9 E4      [ 3]  553 	ldx	#_turbo_use
   0752 BD 04 D3      [ 8]  554 	jsr	_check_turbo_use
   0755 F7 C9 E2      [ 5]  555 	stb	_turbo
   0758                     556 L14:
   0758 32 E8 1F      [ 5]  557 	leas	31,s
   075B 39            [ 5]  558 	rts
   075C                     559 _check_joysticks:
   075C BD F1 F8      [ 8]  560 	jsr	___Joy_Digital
   075F 39            [ 5]  561 	rts
   0760                     562 _joystick_1_left:
   0760 32 7F         [ 5]  563 	leas	-1,s
   0762 BD 07 73      [ 8]  564 	jsr	_joystick_1_x
   0765 6F E4         [ 6]  565 	clr	,s
   0767 5D            [ 2]  566 	tstb
   0768 2C 04         [ 3]  567 	bge	L18
   076A C6 01         [ 2]  568 	ldb	#1
   076C E7 E4         [ 4]  569 	stb	,s
   076E                     570 L18:
   076E E6 E4         [ 4]  571 	ldb	,s
   0770 32 61         [ 5]  572 	leas	1,s
   0772 39            [ 5]  573 	rts
   0773                     574 _joystick_1_x:
   0773 F6 C8 1B      [ 5]  575 	ldb	_Vec_Joy_1_X
   0776 39            [ 5]  576 	rts
   0777                     577 _joystick_1_right:
   0777 32 7F         [ 5]  578 	leas	-1,s
   0779 BD 07 73      [ 8]  579 	jsr	_joystick_1_x
   077C 6F E4         [ 6]  580 	clr	,s
   077E 5D            [ 2]  581 	tstb
   077F 2F 04         [ 3]  582 	ble	L23
   0781 C6 01         [ 2]  583 	ldb	#1
   0783 E7 E4         [ 4]  584 	stb	,s
   0785                     585 L23:
   0785 E6 E4         [ 4]  586 	ldb	,s
   0787 32 61         [ 5]  587 	leas	1,s
   0789 39            [ 5]  588 	rts
   078A                     589 _joystick_1_up:
   078A 32 7F         [ 5]  590 	leas	-1,s
   078C BD 07 9D      [ 8]  591 	jsr	_joystick_1_y
   078F 6F E4         [ 6]  592 	clr	,s
   0791 5D            [ 2]  593 	tstb
   0792 2F 04         [ 3]  594 	ble	L26
   0794 C6 01         [ 2]  595 	ldb	#1
   0796 E7 E4         [ 4]  596 	stb	,s
   0798                     597 L26:
   0798 E6 E4         [ 4]  598 	ldb	,s
   079A 32 61         [ 5]  599 	leas	1,s
   079C 39            [ 5]  600 	rts
   079D                     601 _joystick_1_y:
   079D F6 C8 1C      [ 5]  602 	ldb	_Vec_Joy_1_Y
   07A0 39            [ 5]  603 	rts
   07A1                     604 _joystick_1_down:
   07A1 32 7F         [ 5]  605 	leas	-1,s
   07A3 BD 07 9D      [ 8]  606 	jsr	_joystick_1_y
   07A6 6F E4         [ 6]  607 	clr	,s
   07A8 5D            [ 2]  608 	tstb
   07A9 2C 04         [ 3]  609 	bge	L31
   07AB C6 01         [ 2]  610 	ldb	#1
   07AD E7 E4         [ 4]  611 	stb	,s
   07AF                     612 L31:
   07AF E6 E4         [ 4]  613 	ldb	,s
   07B1 32 61         [ 5]  614 	leas	1,s
   07B3 39            [ 5]  615 	rts
   07B4                     616 _check_buttons:
   07B4 BD F1 BA      [ 8]  617 	jsr	___Read_Btns
   07B7 39            [ 5]  618 	rts
   07B8                     619 _button_1_4_held:
   07B8 BD 07 BE      [ 8]  620 	jsr	_buttons_held
   07BB C4 08         [ 2]  621 	andb	#8
   07BD 39            [ 5]  622 	rts
   07BE                     623 _buttons_held:
   07BE F6 C8 0F      [ 5]  624 	ldb	_Vec_Btn_State
   07C1 39            [ 5]  625 	rts
   07C2                     626 _button_1_3_held:
   07C2 BD 07 BE      [ 8]  627 	jsr	_buttons_held
   07C5 C4 04         [ 2]  628 	andb	#4
   07C7 39            [ 5]  629 	rts
                            630 	.globl _draw_player
   07C8                     631 _draw_player:
   07C8 8E CA AB      [ 3]  632 	ldx	#_player
   07CB BD 09 8D      [ 8]  633 	jsr	_draw_sprite
   07CE 39            [ 5]  634 	rts
                            635 	.globl _check_player
   07CF                     636 _check_player:
   07CF C6 01         [ 2]  637 	ldb	#1
   07D1 39            [ 5]  638 	rts
                            639 	.area .bss
                            640 	.globl	_score
   CADA                     641 _score:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  3 L10                014D R   |   3 L11                0168 R
  3 L12                01D9 R   |   3 L14                0267 R
  3 L18                027D R   |   3 L23                0294 R
  3 L26                02A7 R   |   3 L31                02BE R
  3 L4                 0130 R   |   3 L5                 003A R
  3 L6                 0054 R   |   3 L7                 00BF R
  3 L9                 0249 R   |     _Vec_Btn_State     **** GX
    _Vec_Joy_1_X       **** GX  |     _Vec_Joy_1_Y       **** GX
    ___Joy_Digital     **** GX  |     ___Read_Btns       **** GX
  3 _button_1_3_he     02D1 R   |   3 _button_1_4_he     02C7 R
  3 _buttons_held      02CD R   |   3 _check_buttons     02C3 R
  3 _check_joystic     026B R   |   3 _check_player      02DE GR
    _check_turbo_c     **** GX  |     _check_turbo_u     **** GX
  3 _draw_player       02D7 GR  |     _draw_sprite       **** GX
  2 _dx                0004 GR  |   2 _dy                0043 GR
  3 _init_player       0000 GR  |   3 _joystick_1_do     02B0 R
  3 _joystick_1_le     026F R   |   3 _joystick_1_ri     0286 R
  3 _joystick_1_up     0299 R   |   3 _joystick_1_x      0282 R
  3 _joystick_1_y      02AC R   |   2 _lives_number      0001 GR
  3 _move_player       0011 GR  |   2 _player            00C9 GR
  2 _player_angle      0003 GR  |   2 _player_shape      00C5 GR
  2 _player_voctor     0083 GR  |   4 _score             0000 GR
  2 _turbo             0000 GR  |   2 _turbo_use         0002 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .data            size   CF   flags  100
   3 .text            size  2E1   flags  100
   4 .bss             size    1   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

