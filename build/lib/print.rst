                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	print.c
                              7 	.area .text
                              8 	.globl _print_str
   07D2                       9 _print_str:
   07D2 32 E8 E3      [ 5]   10 	leas	-29,s
   07D5 E7 67         [ 5]   11 	stb	7,s
   07D7 AF 65         [ 6]   12 	stx	5,s
   07D9 E6 67         [ 5]   13 	ldb	7,s
   07DB E7 68         [ 5]   14 	stb	8,s
   07DD E6 E8 1F      [ 5]   15 	ldb	31,s
   07E0 E7 69         [ 5]   16 	stb	9,s
   07E2 C6 02         [ 2]   17 	ldb	#2
   07E4 E7 E8 1C      [ 5]   18 	stb	28,s
   07E7                      19 L3:
   07E7 E6 E8 1C      [ 5]   20 	ldb	28,s
   07EA E7 62         [ 5]   21 	stb	2,s
   07EC E6 F8 05      [ 8]   22 	ldb	[5,s]
   07EF E7 64         [ 5]   23 	stb	4,s
   07F1 E6 62         [ 5]   24 	ldb	2,s
   07F3 4F            [ 2]   25 	clra		;zero_extendqihi: R:b -> R:d
   07F4 ED E4         [ 5]   26 	std	,s
   07F6 30 68         [ 5]   27 	leax	8,s
   07F8 1E 01         [ 8]   28 	exg	d,x
   07FA E3 E4         [ 6]   29 	addd	,s
   07FC 1E 01         [ 8]   30 	exg	d,x
   07FE E6 64         [ 5]   31 	ldb	4,s
   0800 E7 84         [ 4]   32 	stb	,x
   0802 6C E8 1C      [ 7]   33 	inc	28,s
   0805 E6 F8 05      [ 8]   34 	ldb	[5,s]
   0808 E7 63         [ 5]   35 	stb	3,s
                             36 	; tst	3,s	; optimization 3
   080A 27 04         [ 3]   37 	beq	L2
   080C C6 01         [ 2]   38 	ldb	#1
   080E E7 63         [ 5]   39 	stb	3,s
   0810                      40 L2:
   0810 E6 63         [ 5]   41 	ldb	3,s
   0812 E7 62         [ 5]   42 	stb	2,s
   0814 EC 65         [ 6]   43 	ldd	5,s
   0816 C3 00 01      [ 4]   44 	addd	#1
   0819 ED 65         [ 6]   45 	std	5,s
   081B 6D 62         [ 7]   46 	tst	2,s
   081D 26 C8         [ 3]   47 	bne	L3
   081F E6 E8 1C      [ 5]   48 	ldb	28,s
   0822 5A            [ 2]   49 	decb
   0823 4F            [ 2]   50 	clra		;zero_extendqihi: R:b -> R:d
   0824 30 68         [ 5]   51 	leax	8,s
   0826 30 8B         [ 8]   52 	leax	d,x
   0828 C6 80         [ 2]   53 	ldb	#-128
   082A E7 84         [ 4]   54 	stb	,x
   082C BD F3 4A      [ 8]   55 	jsr	___Reset0Ref_D0
   082F 30 68         [ 5]   56 	leax	8,s
   0831 BD 01 6B      [ 8]   57 	jsr	__Print_Str_yx
   0834 32 E8 1D      [ 5]   58 	leas	29,s
   0837 39            [ 5]   59 	rts
                             60 	.globl _print_int
   0838                      61 _print_int:
   0838 32 73         [ 5]   62 	leas	-13,s
   083A E7 65         [ 5]   63 	stb	5,s
                             64 	; ldb	5,s	; optimization 5
   083C E7 66         [ 5]   65 	stb	6,s
   083E E6 6F         [ 5]   66 	ldb	15,s
   0840 E7 67         [ 5]   67 	stb	7,s
   0842 C6 80         [ 2]   68 	ldb	#-128
   0844 E7 6B         [ 5]   69 	stb	11,s
   0846 C6 04         [ 2]   70 	ldb	#4
   0848 E7 6C         [ 5]   71 	stb	12,s
   084A                      72 L6:
   084A E6 6C         [ 5]   73 	ldb	12,s
   084C E7 63         [ 5]   74 	stb	3,s
   084E E6 E8 10      [ 5]   75 	ldb	16,s
   0851 4F            [ 2]   76 	clra		;zero_extendqihi: R:b -> R:d
   0852 ED E4         [ 5]   77 	std	,s
   0854 8E 00 0A      [ 3]   78 	ldx	#10
   0857 34 10         [ 6]   79 	pshs	x
   0859 AE 62         [ 6]   80 	ldx	2,s
   085B BD 0C 7E      [ 8]   81 	jsr	_umodhi3
   085E 32 62         [ 5]   82 	leas	2,s
   0860 1F 10         [ 6]   83 	tfr	x,d	;movlsbqihi: R:x -> R:b
   0862 E7 62         [ 5]   84 	stb	2,s
                             85 	; ldb	2,s	; optimization 5
   0864 CB 30         [ 2]   86 	addb	#48
   0866 E7 64         [ 5]   87 	stb	4,s
   0868 E6 63         [ 5]   88 	ldb	3,s
   086A 4F            [ 2]   89 	clra		;zero_extendqihi: R:b -> R:d
   086B ED E4         [ 5]   90 	std	,s
   086D 30 66         [ 5]   91 	leax	6,s
   086F 1E 01         [ 8]   92 	exg	d,x
   0871 E3 E4         [ 6]   93 	addd	,s
   0873 1E 01         [ 8]   94 	exg	d,x
   0875 E6 64         [ 5]   95 	ldb	4,s
   0877 E7 84         [ 4]   96 	stb	,x
   0879 6A 6C         [ 7]   97 	dec	12,s
   087B E6 E8 10      [ 5]   98 	ldb	16,s
   087E 4F            [ 2]   99 	clra		;zero_extendqihi: R:b -> R:d
   087F ED E4         [ 5]  100 	std	,s
   0881 8E 00 0A      [ 3]  101 	ldx	#10
   0884 34 10         [ 6]  102 	pshs	x
   0886 AE 62         [ 6]  103 	ldx	2,s
   0888 BD 0C 8F      [ 8]  104 	jsr	_udivhi3
   088B 32 62         [ 5]  105 	leas	2,s
   088D 1F 10         [ 6]  106 	tfr	x,d
   088F E7 E8 10      [ 5]  107 	stb	16,s	;movlsbqihi: R:d -> 16,s
   0892 E6 6C         [ 5]  108 	ldb	12,s
   0894 C1 01         [ 2]  109 	cmpb	#1	;cmpqi:
   0896 22 B2         [ 3]  110 	bhi	L6
   0898 BD F3 4A      [ 8]  111 	jsr	___Reset0Ref_D0
   089B 30 66         [ 5]  112 	leax	6,s
   089D BD 01 6B      [ 8]  113 	jsr	__Print_Str_yx
   08A0 32 6D         [ 5]  114 	leas	13,s
   08A2 39            [ 5]  115 	rts
                            116 	.globl _print_bin
   08A3                     117 _print_bin:
   08A3 32 E8 EE      [ 5]  118 	leas	-18,s
   08A6 E7 65         [ 5]  119 	stb	5,s
                            120 	; ldb	5,s	; optimization 5
   08A8 E7 66         [ 5]  121 	stb	6,s
   08AA E6 E8 14      [ 5]  122 	ldb	20,s
   08AD E7 67         [ 5]  123 	stb	7,s
   08AF C6 80         [ 2]  124 	ldb	#-128
   08B1 E7 E8 10      [ 5]  125 	stb	16,s
   08B4 C6 09         [ 2]  126 	ldb	#9
   08B6 E7 E8 11      [ 5]  127 	stb	17,s
   08B9                     128 L9:
   08B9 E6 E8 11      [ 5]  129 	ldb	17,s
   08BC E7 63         [ 5]  130 	stb	3,s
   08BE E6 E8 15      [ 5]  131 	ldb	21,s
   08C1 E7 E4         [ 4]  132 	stb	,s
   08C3 C6 01         [ 2]  133 	ldb	#1
   08C5 E4 E4         [ 4]  134 	andb	,s
   08C7 E7 62         [ 5]  135 	stb	2,s
                            136 	; ldb	2,s	; optimization 5
   08C9 CB 30         [ 2]  137 	addb	#48
   08CB E7 64         [ 5]  138 	stb	4,s
   08CD E6 63         [ 5]  139 	ldb	3,s
   08CF 4F            [ 2]  140 	clra		;zero_extendqihi: R:b -> R:d
   08D0 ED E4         [ 5]  141 	std	,s
   08D2 30 66         [ 5]  142 	leax	6,s
   08D4 1E 01         [ 8]  143 	exg	d,x
   08D6 E3 E4         [ 6]  144 	addd	,s
   08D8 1E 01         [ 8]  145 	exg	d,x
   08DA E6 64         [ 5]  146 	ldb	4,s
   08DC E7 84         [ 4]  147 	stb	,x
   08DE 6A E8 11      [ 7]  148 	dec	17,s
   08E1 64 E8 15      [ 7]  149 	lsr	21,s
   08E4 E6 E8 11      [ 5]  150 	ldb	17,s
   08E7 C1 01         [ 2]  151 	cmpb	#1	;cmpqi:
   08E9 22 CE         [ 3]  152 	bhi	L9
   08EB BD F3 4A      [ 8]  153 	jsr	___Reset0Ref_D0
   08EE 30 66         [ 5]  154 	leax	6,s
   08F0 BD 01 6B      [ 8]  155 	jsr	__Print_Str_yx
   08F3 32 E8 12      [ 5]  156 	leas	18,s
   08F6 39            [ 5]  157 	rts
                            158 	.globl _print_long_int
   08F7                     159 _print_long_int:
   08F7 34 20         [ 6]  160 	pshs	y
   08F9 32 E8 EF      [ 5]  161 	leas	-17,s
   08FC E7 67         [ 5]  162 	stb	7,s
   08FE AF 65         [ 6]  163 	stx	5,s
   0900 E6 67         [ 5]  164 	ldb	7,s
   0902 E7 68         [ 5]  165 	stb	8,s
   0904 E6 E8 15      [ 5]  166 	ldb	21,s
   0907 E7 69         [ 5]  167 	stb	9,s
   0909 C6 80         [ 2]  168 	ldb	#-128
   090B E7 6F         [ 5]  169 	stb	15,s
   090D C6 06         [ 2]  170 	ldb	#6
   090F E7 E8 10      [ 5]  171 	stb	16,s
   0912                     172 L12:
   0912 E6 E8 10      [ 5]  173 	ldb	16,s
   0915 E7 63         [ 5]  174 	stb	3,s
   0917 10 AE 65      [ 7]  175 	ldy	5,s
   091A 8E 00 0A      [ 3]  176 	ldx	#10
   091D 34 10         [ 6]  177 	pshs	x
   091F 30 A4         [ 4]  178 	leax	,y
   0921 BD 0C 7E      [ 8]  179 	jsr	_umodhi3
   0924 32 62         [ 5]  180 	leas	2,s
   0926 1F 10         [ 6]  181 	tfr	x,d	;movlsbqihi: R:x -> R:b
   0928 E7 62         [ 5]  182 	stb	2,s
                            183 	; ldb	2,s	; optimization 5
   092A CB 30         [ 2]  184 	addb	#48
   092C E7 64         [ 5]  185 	stb	4,s
   092E E6 63         [ 5]  186 	ldb	3,s
   0930 4F            [ 2]  187 	clra		;zero_extendqihi: R:b -> R:d
   0931 ED E4         [ 5]  188 	std	,s
   0933 30 68         [ 5]  189 	leax	8,s
   0935 1E 01         [ 8]  190 	exg	d,x
   0937 E3 E4         [ 6]  191 	addd	,s
   0939 1E 01         [ 8]  192 	exg	d,x
   093B E6 64         [ 5]  193 	ldb	4,s
   093D E7 84         [ 4]  194 	stb	,x
   093F 6A E8 10      [ 7]  195 	dec	16,s
   0942 10 AE 65      [ 7]  196 	ldy	5,s
   0945 8E 00 0A      [ 3]  197 	ldx	#10
   0948 34 10         [ 6]  198 	pshs	x
   094A 30 A4         [ 4]  199 	leax	,y
   094C BD 0C 8F      [ 8]  200 	jsr	_udivhi3
   094F 32 62         [ 5]  201 	leas	2,s
   0951 AF 65         [ 6]  202 	stx	5,s
   0953 E6 E8 10      [ 5]  203 	ldb	16,s
   0956 C1 01         [ 2]  204 	cmpb	#1	;cmpqi:
   0958 22 B8         [ 3]  205 	bhi	L12
   095A BD F3 4A      [ 8]  206 	jsr	___Reset0Ref_D0
   095D 30 68         [ 5]  207 	leax	8,s
   095F BD 01 6B      [ 8]  208 	jsr	__Print_Str_yx
   0962 32 E8 11      [ 5]  209 	leas	17,s
   0965 35 A0         [ 7]  210 	puls	y,pc
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L12                0140 R   |   2 L2                 003E R
  2 L3                 0015 R   |   2 L6                 0078 R
  2 L9                 00E7 R   |     __Print_Str_yx     **** GX
    ___Reset0Ref_D     **** GX  |   2 _print_bin         00D1 GR
  2 _print_int         0066 GR  |   2 _print_long_in     0125 GR
  2 _print_str         0000 GR  |     _udivhi3           **** GX
    _umodhi3           **** GX

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  195   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

