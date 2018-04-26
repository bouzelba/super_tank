                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	sprites.c
                              7 	.globl _grid_scale
                              8 	.area .text
   098C                       9 _grid_scale:
   098C 50                   10 	.byte	80
                             11 	.globl _draw_sprite
   098D                      12 _draw_sprite:
   098D 34 60         [ 7]   13 	pshs	y,u
   098F 32 E8 BD      [ 5]   14 	leas	-67,s
   0992 33 E4         [ 4]   15 	leau	,s
   0994 AF C8 1C      [ 6]   16 	stx	28,u
   0997 10 EF 43      [ 7]   17 	sts	3,u
   099A AE C8 1C      [ 6]   18 	ldx	28,u
   099D E6 02         [ 5]   19 	ldb	2,x
                             20 	; tstb	; optimization 6
   099F 10 27 01 DC   [ 6]   21 	lbeq	L2
   09A3 AE C8 1C      [ 6]   22 	ldx	28,u
   09A6 AE 04         [ 6]   23 	ldx	4,x
   09A8 E6 84         [ 4]   24 	ldb	,x
                             25 	; tstb	; optimization 6
   09AA 10 26 00 DB   [ 6]   26 	lbne	L3
   09AE 30 E4         [ 4]   27 	leax	,s
   09B0 AF 4E         [ 6]   28 	stx	14,u
   09B2 AE C8 1C      [ 6]   29 	ldx	28,u
   09B5 AE 04         [ 6]   30 	ldx	4,x
   09B7 E6 01         [ 5]   31 	ldb	1,x
   09B9 4F            [ 2]   32 	clra		;zero_extendqihi: R:b -> R:d
   09BA 1F 01         [ 6]   33 	tfr	d,x
   09BC AF 49         [ 6]   34 	stx	9,u
   09BE EC 49         [ 6]   35 	ldd	9,u
   09C0 58            [ 2]   36 	aslb
   09C1 49            [ 2]   37 	rola
   09C2 ED 49         [ 6]   38 	std	9,u
                             39 	; ldd	9,u	; optimization 5
   09C4 30 8B         [ 8]   40 	leax	d,x
   09C6 AF 49         [ 6]   41 	stx	9,u
   09C8 EC 49         [ 6]   42 	ldd	9,u
   09CA 58            [ 2]   43 	aslb
   09CB 49            [ 2]   44 	rola
   09CC 58            [ 2]   45 	aslb
   09CD 49            [ 2]   46 	rola
   09CE 58            [ 2]   47 	aslb
   09CF 49            [ 2]   48 	rola
   09D0 ED 49         [ 6]   49 	std	9,u
   09D2 AE C8 1C      [ 6]   50 	ldx	28,u
   09D5 AE 04         [ 6]   51 	ldx	4,x
   09D7 E6 01         [ 5]   52 	ldb	1,x
   09D9 4F            [ 2]   53 	clra		;zero_extendqihi: R:b -> R:d
   09DA 1F 01         [ 6]   54 	tfr	d,x
   09DC 1F 10         [ 6]   55 	tfr	x,d
   09DE 58            [ 2]   56 	aslb
   09DF 49            [ 2]   57 	rola
   09E0 1F 01         [ 6]   58 	tfr	d,x
   09E2 AE C8 1C      [ 6]   59 	ldx	28,u
   09E5 AE 04         [ 6]   60 	ldx	4,x
   09E7 E6 01         [ 5]   61 	ldb	1,x
   09E9 4F            [ 2]   62 	clra		;zero_extendqihi: R:b -> R:d
   09EA 1F 01         [ 6]   63 	tfr	d,x
   09EC AF 47         [ 6]   64 	stx	7,u
   09EE EC 47         [ 6]   65 	ldd	7,u
   09F0 58            [ 2]   66 	aslb
   09F1 49            [ 2]   67 	rola
   09F2 ED 47         [ 6]   68 	std	7,u
                             69 	; ldd	7,u	; optimization 5
   09F4 30 8B         [ 8]   70 	leax	d,x
   09F6 AF 47         [ 6]   71 	stx	7,u
   09F8 EC 47         [ 6]   72 	ldd	7,u
   09FA 58            [ 2]   73 	aslb
   09FB 49            [ 2]   74 	rola
   09FC 58            [ 2]   75 	aslb
   09FD 49            [ 2]   76 	rola
   09FE 58            [ 2]   77 	aslb
   09FF 49            [ 2]   78 	rola
   0A00 ED 47         [ 6]   79 	std	7,u
   0A02 AE C8 1C      [ 6]   80 	ldx	28,u
   0A05 AE 04         [ 6]   81 	ldx	4,x
   0A07 E6 01         [ 5]   82 	ldb	1,x
   0A09 4F            [ 2]   83 	clra		;zero_extendqihi: R:b -> R:d
   0A0A 1F 01         [ 6]   84 	tfr	d,x
   0A0C AF 45         [ 6]   85 	stx	5,u
   0A0E EC 45         [ 6]   86 	ldd	5,u
   0A10 58            [ 2]   87 	aslb
   0A11 49            [ 2]   88 	rola
   0A12 ED 45         [ 6]   89 	std	5,u
   0A14 1E 01         [ 8]   90 	exg	d,x
   0A16 E3 45         [ 7]   91 	addd	5,u
   0A18 1E 01         [ 8]   92 	exg	d,x
   0A1A 1F 40         [ 6]   93 	tfr	s,d
   0A1C 34 10         [ 6]   94 	pshs	x	;subhi: R:d -= R:x
   0A1E A3 E1         [ 9]   95 	subd	,s++
   0A20 1F 04         [ 6]   96 	tfr	d,s
   0A22 10 EF 4B      [ 7]   97 	sts	11,u
   0A25 10 AE 4B      [ 7]   98 	ldy	11,u
   0A28 30 20         [ 5]   99 	leax	0,y
   0A2A AF 4B         [ 6]  100 	stx	11,u
   0A2C EC 4B         [ 6]  101 	ldd	11,u
   0A2E ED C8 1E      [ 6]  102 	std	30,u
   0A31 AE C8 1C      [ 6]  103 	ldx	28,u
   0A34 AE 04         [ 6]  104 	ldx	4,x
   0A36 10 AE 02      [ 7]  105 	ldy	2,x
   0A39 AE C8 1C      [ 6]  106 	ldx	28,u
   0A3C E6 02         [ 5]  107 	ldb	2,x
   0A3E E7 C8 26      [ 5]  108 	stb	38,u
   0A41 10 AF C8 24   [ 7]  109 	sty	36,u
   0A45 AE C8 1E      [ 6]  110 	ldx	30,u
   0A48 AF C8 22      [ 6]  111 	stx	34,u
                            112 	; ldx	34,u	; optimization 5
   0A4B 34 10         [ 6]  113 	pshs	x
   0A4D AE C8 24      [ 6]  114 	ldx	36,u
   0A50 E6 C8 26      [ 5]  115 	ldb	38,u
   0A53 BD 01 E7      [ 8]  116 	jsr	__Rot_VL_Mode
   0A56 32 62         [ 5]  117 	leas	2,s
   0A58 AE C8 1C      [ 6]  118 	ldx	28,u
   0A5B E6 01         [ 5]  119 	ldb	1,x
   0A5D E7 C4         [ 4]  120 	stb	,u
   0A5F E6 D8 1C      [ 8]  121 	ldb	[28,u]
   0A62 E7 4D         [ 5]  122 	stb	13,u
   0A64 E6 C4         [ 4]  123 	ldb	,u
   0A66 34 04         [ 6]  124 	pshs	b
   0A68 E6 4D         [ 5]  125 	ldb	13,u
   0A6A BD 0C 41      [ 8]  126 	jsr	_position_beam
   0A6D 32 61         [ 5]  127 	leas	1,s
   0A6F AE C8 1C      [ 6]  128 	ldx	28,u
   0A72 E6 03         [ 5]  129 	ldb	3,x
   0A74 E7 C8 29      [ 5]  130 	stb	41,u
   0A77 AE C8 1E      [ 6]  131 	ldx	30,u
   0A7A AF C8 27      [ 6]  132 	stx	39,u
                            133 	; ldx	39,u	; optimization 5
   0A7D E6 C8 29      [ 5]  134 	ldb	41,u
   0A80 BD F4 0E      [ 8]  135 	jsr	___Draw_VLp_b
   0A83 10 EE 4E      [ 7]  136 	lds	14,u
   0A86 7E 0C 39      [ 4]  137 	jmp	L11
   0A89                     138 L3:
   0A89 30 E4         [ 4]  139 	leax	,s
   0A8B AF C8 16      [ 6]  140 	stx	22,u
   0A8E AE C8 1C      [ 6]  141 	ldx	28,u
   0A91 AE 04         [ 6]  142 	ldx	4,x
   0A93 E6 01         [ 5]  143 	ldb	1,x
   0A95 4F            [ 2]  144 	clra		;zero_extendqihi: R:b -> R:d
   0A96 ED C4         [ 5]  145 	std	,u
                            146 	; ldd	,u	; optimization 5
   0A98 58            [ 2]  147 	aslb
   0A99 49            [ 2]  148 	rola
   0A9A ED C4         [ 5]  149 	std	,u
   0A9C 1F 40         [ 6]  150 	tfr	s,d
   0A9E A3 C4         [ 6]  151 	subd	,u	;subhi: R:d -= ,u
   0AA0 1F 04         [ 6]  152 	tfr	d,s
   0AA2 10 EF C8 10   [ 7]  153 	sts	16,u
   0AA6 10 AE C8 10   [ 7]  154 	ldy	16,u
   0AAA 30 20         [ 5]  155 	leax	0,y
   0AAC AF C8 10      [ 6]  156 	stx	16,u
   0AAF EC C8 10      [ 6]  157 	ldd	16,u
   0AB2 ED C8 20      [ 6]  158 	std	32,u
   0AB5 AE C8 1C      [ 6]  159 	ldx	28,u
   0AB8 AE 04         [ 6]  160 	ldx	4,x
   0ABA 10 AE 02      [ 7]  161 	ldy	2,x
   0ABD AE C8 1C      [ 6]  162 	ldx	28,u
   0AC0 AE 04         [ 6]  163 	ldx	4,x
   0AC2 E6 01         [ 5]  164 	ldb	1,x
   0AC4 E7 42         [ 5]  165 	stb	2,u
                            166 	; ldb	2,u	; optimization 5
   0AC6 5A            [ 2]  167 	decb
   0AC7 E7 C8 12      [ 5]  168 	stb	18,u
   0ACA AE C8 1C      [ 6]  169 	ldx	28,u
   0ACD E6 02         [ 5]  170 	ldb	2,x
   0ACF E7 C8 2F      [ 5]  171 	stb	47,u
   0AD2 E6 C8 12      [ 5]  172 	ldb	18,u
   0AD5 E7 C8 2E      [ 5]  173 	stb	46,u
   0AD8 10 AF C8 2C   [ 7]  174 	sty	44,u
   0ADC AE C8 20      [ 6]  175 	ldx	32,u
   0ADF AF C8 2A      [ 6]  176 	stx	42,u
                            177 	; ldx	42,u	; optimization 5
   0AE2 34 10         [ 6]  178 	pshs	x
   0AE4 E6 C8 2F      [ 5]  179 	ldb	47,u
   0AE7 E7 E2         [ 6]  180 	stb	,-s
   0AE9 AE C8 2C      [ 6]  181 	ldx	44,u
   0AEC E6 C8 2E      [ 5]  182 	ldb	46,u
   0AEF BD 03 5A      [ 8]  183 	jsr	__Rot_VL_ab
   0AF2 32 63         [ 5]  184 	leas	3,s
   0AF4 AE C8 1C      [ 6]  185 	ldx	28,u
   0AF7 E6 01         [ 5]  186 	ldb	1,x
   0AF9 E7 42         [ 5]  187 	stb	2,u
   0AFB E6 D8 1C      [ 8]  188 	ldb	[28,u]
   0AFE E7 C8 13      [ 5]  189 	stb	19,u
   0B01 E6 42         [ 5]  190 	ldb	2,u
   0B03 34 04         [ 6]  191 	pshs	b
   0B05 E6 C8 13      [ 5]  192 	ldb	19,u
   0B08 BD 0C 41      [ 8]  193 	jsr	_position_beam
   0B0B 32 61         [ 5]  194 	leas	1,s
   0B0D AE C8 1C      [ 6]  195 	ldx	28,u
   0B10 AE 04         [ 6]  196 	ldx	4,x
   0B12 E6 84         [ 4]  197 	ldb	,x
   0B14 C1 01         [ 2]  198 	cmpb	#1	;cmpqi:
   0B16 26 31         [ 3]  199 	bne	L5
   0B18 AE C8 1C      [ 6]  200 	ldx	28,u
   0B1B E6 03         [ 5]  201 	ldb	3,x
   0B1D E7 C8 14      [ 5]  202 	stb	20,u
   0B20 AE C8 1C      [ 6]  203 	ldx	28,u
   0B23 AE 04         [ 6]  204 	ldx	4,x
   0B25 E6 01         [ 5]  205 	ldb	1,x
   0B27 5A            [ 2]  206 	decb
   0B28 E7 C8 33      [ 5]  207 	stb	51,u
   0B2B E6 C8 14      [ 5]  208 	ldb	20,u
   0B2E E7 C8 32      [ 5]  209 	stb	50,u
   0B31 AE C8 20      [ 6]  210 	ldx	32,u
   0B34 AF C8 30      [ 6]  211 	stx	48,u
   0B37 E6 C8 33      [ 5]  212 	ldb	51,u
   0B3A E7 E2         [ 6]  213 	stb	,-s
   0B3C AE C8 30      [ 6]  214 	ldx	48,u
   0B3F E6 C8 32      [ 5]  215 	ldb	50,u
   0B42 BD 01 CE      [ 8]  216 	jsr	__Draw_VL_ab
   0B45 32 61         [ 5]  217 	leas	1,s
   0B47 20 2F         [ 3]  218 	bra	L6
   0B49                     219 L5:
   0B49 AE C8 1C      [ 6]  220 	ldx	28,u
   0B4C E6 03         [ 5]  221 	ldb	3,x
   0B4E E7 C8 15      [ 5]  222 	stb	21,u
   0B51 AE C8 1C      [ 6]  223 	ldx	28,u
   0B54 AE 04         [ 6]  224 	ldx	4,x
   0B56 E6 01         [ 5]  225 	ldb	1,x
   0B58 5A            [ 2]  226 	decb
   0B59 E7 C8 37      [ 5]  227 	stb	55,u
   0B5C E6 C8 15      [ 5]  228 	ldb	21,u
   0B5F E7 C8 36      [ 5]  229 	stb	54,u
   0B62 AE C8 20      [ 6]  230 	ldx	32,u
   0B65 AF C8 34      [ 6]  231 	stx	52,u
   0B68 E6 C8 37      [ 5]  232 	ldb	55,u
   0B6B E7 E2         [ 6]  233 	stb	,-s
   0B6D AE C8 34      [ 6]  234 	ldx	52,u
   0B70 E6 C8 36      [ 5]  235 	ldb	54,u
   0B73 BD 01 D8      [ 8]  236 	jsr	__Mov_Draw_VL_ab
   0B76 32 61         [ 5]  237 	leas	1,s
   0B78                     238 L6:
   0B78 10 EE C8 16   [ 7]  239 	lds	22,u
   0B7C 7E 0C 39      [ 4]  240 	jmp	L11
   0B7F                     241 L2:
   0B7F AE C8 1C      [ 6]  242 	ldx	28,u
   0B82 E6 01         [ 5]  243 	ldb	1,x
   0B84 E7 42         [ 5]  244 	stb	2,u
   0B86 E6 D8 1C      [ 8]  245 	ldb	[28,u]
   0B89 E7 C8 18      [ 5]  246 	stb	24,u
   0B8C E6 42         [ 5]  247 	ldb	2,u
   0B8E 34 04         [ 6]  248 	pshs	b
   0B90 E6 C8 18      [ 5]  249 	ldb	24,u
   0B93 BD 0C 41      [ 8]  250 	jsr	_position_beam
   0B96 32 61         [ 5]  251 	leas	1,s
   0B98 AE C8 1C      [ 6]  252 	ldx	28,u
   0B9B AE 04         [ 6]  253 	ldx	4,x
   0B9D E6 84         [ 4]  254 	ldb	,x
   0B9F E7 C8 19      [ 5]  255 	stb	25,u
                            256 	; tst	25,u	; optimization 3
   0BA2 27 09         [ 3]  257 	beq	L9
   0BA4 E6 C8 19      [ 5]  258 	ldb	25,u
   0BA7 C1 01         [ 2]  259 	cmpb	#1	;cmpqi:
   0BA9 27 22         [ 3]  260 	beq	L10
   0BAB 20 57         [ 3]  261 	bra	L12
   0BAD                     262 L9:
   0BAD AE C8 1C      [ 6]  263 	ldx	28,u
   0BB0 AE 04         [ 6]  264 	ldx	4,x
   0BB2 10 AE 02      [ 7]  265 	ldy	2,x
   0BB5 AE C8 1C      [ 6]  266 	ldx	28,u
   0BB8 E6 03         [ 5]  267 	ldb	3,x
   0BBA E7 C8 3A      [ 5]  268 	stb	58,u
   0BBD 10 AF C8 38   [ 7]  269 	sty	56,u
   0BC1 AE C8 38      [ 6]  270 	ldx	56,u
   0BC4 E6 C8 3A      [ 5]  271 	ldb	58,u
   0BC7 BD F4 0E      [ 8]  272 	jsr	___Draw_VLp_b
   0BCA 7E 0C 39      [ 4]  273 	jmp	L11
   0BCD                     274 L10:
   0BCD AE C8 1C      [ 6]  275 	ldx	28,u
   0BD0 AE 04         [ 6]  276 	ldx	4,x
   0BD2 10 AE 02      [ 7]  277 	ldy	2,x
   0BD5 AE C8 1C      [ 6]  278 	ldx	28,u
   0BD8 E6 03         [ 5]  279 	ldb	3,x
   0BDA E7 C8 1A      [ 5]  280 	stb	26,u
   0BDD AE C8 1C      [ 6]  281 	ldx	28,u
   0BE0 AE 04         [ 6]  282 	ldx	4,x
   0BE2 E6 01         [ 5]  283 	ldb	1,x
   0BE4 5A            [ 2]  284 	decb
   0BE5 E7 C8 3E      [ 5]  285 	stb	62,u
   0BE8 E6 C8 1A      [ 5]  286 	ldb	26,u
   0BEB E7 C8 3D      [ 5]  287 	stb	61,u
   0BEE 10 AF C8 3B   [ 7]  288 	sty	59,u
   0BF2 E6 C8 3E      [ 5]  289 	ldb	62,u
   0BF5 E7 E2         [ 6]  290 	stb	,-s
   0BF7 AE C8 3B      [ 6]  291 	ldx	59,u
   0BFA E6 C8 3D      [ 5]  292 	ldb	61,u
   0BFD BD 01 CE      [ 8]  293 	jsr	__Draw_VL_ab
   0C00 32 61         [ 5]  294 	leas	1,s
   0C02 20 35         [ 3]  295 	bra	L11
   0C04                     296 L12:
   0C04 AE C8 1C      [ 6]  297 	ldx	28,u
   0C07 AE 04         [ 6]  298 	ldx	4,x
   0C09 10 AE 02      [ 7]  299 	ldy	2,x
   0C0C AE C8 1C      [ 6]  300 	ldx	28,u
   0C0F E6 03         [ 5]  301 	ldb	3,x
   0C11 E7 C8 1B      [ 5]  302 	stb	27,u
   0C14 AE C8 1C      [ 6]  303 	ldx	28,u
   0C17 AE 04         [ 6]  304 	ldx	4,x
   0C19 E6 01         [ 5]  305 	ldb	1,x
   0C1B 5A            [ 2]  306 	decb
   0C1C E7 C8 42      [ 5]  307 	stb	66,u
   0C1F E6 C8 1B      [ 5]  308 	ldb	27,u
   0C22 E7 C8 41      [ 5]  309 	stb	65,u
   0C25 10 AF C8 3F   [ 7]  310 	sty	63,u
   0C29 E6 C8 42      [ 5]  311 	ldb	66,u
   0C2C E7 E2         [ 6]  312 	stb	,-s
   0C2E AE C8 3F      [ 6]  313 	ldx	63,u
   0C31 E6 C8 41      [ 5]  314 	ldb	65,u
   0C34 BD 01 D8      [ 8]  315 	jsr	__Mov_Draw_VL_ab
   0C37 32 61         [ 5]  316 	leas	1,s
   0C39                     317 L11:
   0C39 10 EE 43      [ 7]  318 	lds	3,u
   0C3C 32 E8 43      [ 5]  319 	leas	67,s
   0C3F 35 E0         [ 8]  320 	puls	y,u,pc
   0C41                     321 _position_beam:
   0C41 32 7F         [ 5]  322 	leas	-1,s
   0C43 E7 E4         [ 4]  323 	stb	,s
   0C45 BD 0C 5B      [ 8]  324 	jsr	_reset_beam
   0C48 F6 09 8C      [ 5]  325 	ldb	_grid_scale
   0C4B 34 04         [ 6]  326 	pshs	b
   0C4D E6 64         [ 5]  327 	ldb	4,s
   0C4F E7 E2         [ 6]  328 	stb	,-s
   0C51 E6 62         [ 5]  329 	ldb	2,s
   0C53 BD 0C 5F      [ 8]  330 	jsr	_move_beam
   0C56 32 62         [ 5]  331 	leas	2,s
   0C58 32 61         [ 5]  332 	leas	1,s
   0C5A 39            [ 5]  333 	rts
   0C5B                     334 _reset_beam:
   0C5B BD F3 54      [ 8]  335 	jsr	___Reset0Ref
   0C5E 39            [ 5]  336 	rts
   0C5F                     337 _move_beam:
   0C5F 32 7D         [ 5]  338 	leas	-3,s
   0C61 E7 E4         [ 4]  339 	stb	,s
   0C63 E6 66         [ 5]  340 	ldb	6,s
   0C65 F7 D0 04      [ 5]  341 	stb	_VIA_t1_cnt_lo
   0C68 E6 E4         [ 4]  342 	ldb	,s
   0C6A E7 62         [ 5]  343 	stb	2,s
   0C6C E6 65         [ 5]  344 	ldb	5,s
   0C6E E7 61         [ 5]  345 	stb	1,s
   0C70 E6 62         [ 5]  346 	ldb	2,s
   0C72 E7 E2         [ 6]  347 	stb	,-s
   0C74 E6 62         [ 5]  348 	ldb	2,s
   0C76 BD 02 FF      [ 8]  349 	jsr	__Moveto_d
   0C79 32 61         [ 5]  350 	leas	1,s
   0C7B 32 63         [ 5]  351 	leas	3,s
   0C7D 39            [ 5]  352 	rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L10                0241 R   |   2 L11                02AD R
  2 L12                0278 R   |   2 L2                 01F3 R
  2 L3                 00FD R   |   2 L5                 01BD R
  2 L6                 01EC R   |   2 L9                 0221 R
    _VIA_t1_cnt_lo     **** GX  |     __Draw_VL_ab       **** GX
    __Mov_Draw_VL_     **** GX  |     __Moveto_d         **** GX
    __Rot_VL_Mode      **** GX  |     __Rot_VL_ab        **** GX
    ___Draw_VLp_b      **** GX  |     ___Reset0Ref       **** GX
  2 _draw_sprite       0001 GR  |   2 _grid_scale        0000 GR
  2 _move_beam         02D3 R   |   2 _position_beam     02B5 R
  2 _reset_beam        02CF R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  2F2   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

