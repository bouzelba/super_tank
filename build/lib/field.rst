                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	field.c
                              7 	.globl _walls_vectors
                              8 	.area .data
   C8F0                       9 _walls_vectors:
   C8F0 00                   10 	.byte	0
   C8F1 B0                   11 	.byte	-80
   C8F2 1E                   12 	.byte	30
   C8F3 FF                   13 	.byte	-1
   C8F4 00                   14 	.byte	0
   C8F5 C4                   15 	.byte	-60
   C8F6 FF                   16 	.byte	-1
   C8F7 D3                   17 	.byte	-45
   C8F8 00                   18 	.byte	0
   C8F9 FF                   19 	.byte	-1
   C8FA 00                   20 	.byte	0
   C8FB 0A                   21 	.byte	10
   C8FC FF                   22 	.byte	-1
   C8FD 23                   23 	.byte	35
   C8FE 00                   24 	.byte	0
   C8FF FF                   25 	.byte	-1
   C900 00                   26 	.byte	0
   C901 28                   27 	.byte	40
   C902 FF                   28 	.byte	-1
   C903 DD                   29 	.byte	-35
   C904 00                   30 	.byte	0
   C905 FF                   31 	.byte	-1
   C906 00                   32 	.byte	0
   C907 0A                   33 	.byte	10
   C908 FF                   34 	.byte	-1
   C909 2D                   35 	.byte	45
   C90A 00                   36 	.byte	0
   C90B 00                   37 	.byte	0
   C90C E7                   38 	.byte	-25
   C90D EC                   39 	.byte	-20
   C90E FF                   40 	.byte	-1
   C90F 00                   41 	.byte	0
   C910 FB                   42 	.byte	-5
   C911 FF                   43 	.byte	-1
   C912 05                   44 	.byte	5
   C913 FB                   45 	.byte	-5
   C914 FF                   46 	.byte	-1
   C915 FB                   47 	.byte	-5
   C916 FB                   48 	.byte	-5
   C917 FF                   49 	.byte	-1
   C918 00                   50 	.byte	0
   C919 FB                   51 	.byte	-5
   C91A FF                   52 	.byte	-1
   C91B EC                   53 	.byte	-20
   C91C 00                   54 	.byte	0
   C91D FF                   55 	.byte	-1
   C91E 00                   56 	.byte	0
   C91F 14                   57 	.byte	20
   C920 FF                   58 	.byte	-1
   C921 14                   59 	.byte	20
   C922 00                   60 	.byte	0
   C923 FF                   61 	.byte	-1
   C924 00                   62 	.byte	0
   C925 EC                   63 	.byte	-20
   C926 01                   64 	.byte	1
   C927 00                   65 	.byte	0
   C928 00                   66 	.byte	0
                             67 	.globl _walls_shape
   C929                      68 _walls_shape:
   C929 00                   69 	.byte	0
   C92A 13                   70 	.byte	19
   C92B C8 F0                71 	.word	_walls_vectors
                             72 	.globl _walls
   C92D                      73 _walls:
   C92D 8D                   74 	.byte	-115
   C92E 00                   75 	.byte	0
   C92F 00                   76 	.byte	0
   C930 50                   77 	.byte	80
   C931 C9 29                78 	.word	_walls_shape
                             79 	.globl _city_vectors
   C933                      80 _city_vectors:
   C933 00                   81 	.byte	0
   C934 B0                   82 	.byte	-80
   C935 1E                   83 	.byte	30
   C936 FF                   84 	.byte	-1
   C937 00                   85 	.byte	0
   C938 C4                   86 	.byte	-60
   C939 FF                   87 	.byte	-1
   C93A D3                   88 	.byte	-45
   C93B 00                   89 	.byte	0
   C93C FF                   90 	.byte	-1
   C93D 00                   91 	.byte	0
   C93E 0A                   92 	.byte	10
   C93F FF                   93 	.byte	-1
   C940 23                   94 	.byte	35
   C941 00                   95 	.byte	0
   C942 FF                   96 	.byte	-1
   C943 00                   97 	.byte	0
   C944 28                   98 	.byte	40
   C945 FF                   99 	.byte	-1
   C946 DD                  100 	.byte	-35
   C947 00                  101 	.byte	0
   C948 FF                  102 	.byte	-1
   C949 00                  103 	.byte	0
   C94A 0A                  104 	.byte	10
   C94B FF                  105 	.byte	-1
   C94C 2D                  106 	.byte	45
   C94D 00                  107 	.byte	0
   C94E 00                  108 	.byte	0
   C94F E7                  109 	.byte	-25
   C950 EC                  110 	.byte	-20
   C951 FF                  111 	.byte	-1
   C952 00                  112 	.byte	0
   C953 FB                  113 	.byte	-5
   C954 FF                  114 	.byte	-1
   C955 05                  115 	.byte	5
   C956 FB                  116 	.byte	-5
   C957 FF                  117 	.byte	-1
   C958 FB                  118 	.byte	-5
   C959 FB                  119 	.byte	-5
   C95A FF                  120 	.byte	-1
   C95B 00                  121 	.byte	0
   C95C FB                  122 	.byte	-5
   C95D FF                  123 	.byte	-1
   C95E EC                  124 	.byte	-20
   C95F 00                  125 	.byte	0
   C960 FF                  126 	.byte	-1
   C961 00                  127 	.byte	0
   C962 14                  128 	.byte	20
   C963 FF                  129 	.byte	-1
   C964 14                  130 	.byte	20
   C965 00                  131 	.byte	0
   C966 FF                  132 	.byte	-1
   C967 00                  133 	.byte	0
   C968 EC                  134 	.byte	-20
   C969 01                  135 	.byte	1
   C96A 00                  136 	.byte	0
   C96B 00                  137 	.byte	0
                            138 	.globl _city_shape
   C96C                     139 _city_shape:
   C96C 00                  140 	.byte	0
   C96D 13                  141 	.byte	19
   C96E C9 33               142 	.word	_city_vectors
                            143 	.globl _city
   C970                     144 _city:
   C970 8D                  145 	.byte	-115
   C971 00                  146 	.byte	0
   C972 00                  147 	.byte	0
   C973 50                  148 	.byte	80
   C974 C9 6C               149 	.word	_city_shape
                            150 	.globl _corners_vectors
   C976                     151 _corners_vectors:
   C976 00                  152 	.byte	0
   C977 8D                  153 	.byte	-115
   C978 4B                  154 	.byte	75
   C979 FF                  155 	.byte	-1
   C97A F6                  156 	.byte	-10
   C97B 00                  157 	.byte	0
   C97C FF                  158 	.byte	-1
   C97D 00                  159 	.byte	0
   C97E 32                  160 	.byte	50
   C97F FF                  161 	.byte	-1
   C980 28                  162 	.byte	40
   C981 00                  163 	.byte	0
   C982 FF                  164 	.byte	-1
   C983 00                  165 	.byte	0
   C984 F6                  166 	.byte	-10
   C985 FF                  167 	.byte	-1
   C986 E2                  168 	.byte	-30
   C987 00                  169 	.byte	0
   C988 FF                  170 	.byte	-1
   C989 00                  171 	.byte	0
   C98A D8                  172 	.byte	-40
   C98B 00                  173 	.byte	0
   C98C 73                  174 	.byte	115
   C98D 00                  175 	.byte	0
   C98E 00                  176 	.byte	0
   C98F 73                  177 	.byte	115
   C990 00                  178 	.byte	0
   C991 FF                  179 	.byte	-1
   C992 0A                  180 	.byte	10
   C993 00                  181 	.byte	0
   C994 FF                  182 	.byte	-1
   C995 00                  183 	.byte	0
   C996 32                  184 	.byte	50
   C997 FF                  185 	.byte	-1
   C998 D3                  186 	.byte	-45
   C999 00                  187 	.byte	0
   C99A FF                  188 	.byte	-1
   C99B 00                  189 	.byte	0
   C99C F6                  190 	.byte	-10
   C99D FF                  191 	.byte	-1
   C99E 23                  192 	.byte	35
   C99F 00                  193 	.byte	0
   C9A0 FF                  194 	.byte	-1
   C9A1 00                  195 	.byte	0
   C9A2 D8                  196 	.byte	-40
   C9A3 00                  197 	.byte	0
   C9A4 00                  198 	.byte	0
   C9A5 B5                  199 	.byte	-75
   C9A6 00                  200 	.byte	0
   C9A7 00                  201 	.byte	0
   C9A8 B5                  202 	.byte	-75
   C9A9 FF                  203 	.byte	-1
   C9AA 0A                  204 	.byte	10
   C9AB 00                  205 	.byte	0
   C9AC FF                  206 	.byte	-1
   C9AD 00                  207 	.byte	0
   C9AE CE                  208 	.byte	-50
   C9AF FF                  209 	.byte	-1
   C9B0 C9                  210 	.byte	-55
   C9B1 00                  211 	.byte	0
   C9B2 FF                  212 	.byte	-1
   C9B3 00                  213 	.byte	0
   C9B4 0A                  214 	.byte	10
   C9B5 FF                  215 	.byte	-1
   C9B6 2D                  216 	.byte	45
   C9B7 00                  217 	.byte	0
   C9B8 FF                  218 	.byte	-1
   C9B9 00                  219 	.byte	0
   C9BA 28                  220 	.byte	40
   C9BB 00                  221 	.byte	0
   C9BC 8D                  222 	.byte	-115
   C9BD 00                  223 	.byte	0
   C9BE 00                  224 	.byte	0
   C9BF 8D                  225 	.byte	-115
   C9C0 00                  226 	.byte	0
   C9C1 FF                  227 	.byte	-1
   C9C2 F6                  228 	.byte	-10
   C9C3 00                  229 	.byte	0
   C9C4 FF                  230 	.byte	-1
   C9C5 00                  231 	.byte	0
   C9C6 CE                  232 	.byte	-50
   C9C7 FF                  233 	.byte	-1
   C9C8 2D                  234 	.byte	45
   C9C9 00                  235 	.byte	0
   C9CA FF                  236 	.byte	-1
   C9CB 00                  237 	.byte	0
   C9CC 0A                  238 	.byte	10
   C9CD FF                  239 	.byte	-1
   C9CE DD                  240 	.byte	-35
   C9CF 00                  241 	.byte	0
   C9D0 FF                  242 	.byte	-1
   C9D1 00                  243 	.byte	0
   C9D2 28                  244 	.byte	40
   C9D3 01                  245 	.byte	1
   C9D4 00                  246 	.byte	0
   C9D5 00                  247 	.byte	0
                            248 	.globl _corners_shape
   C9D6                     249 _corners_shape:
   C9D6 00                  250 	.byte	0
   C9D7 23                  251 	.byte	35
   C9D8 C9 76               252 	.word	_corners_vectors
                            253 	.globl _corners
   C9DA                     254 _corners:
   C9DA 00                  255 	.byte	0
   C9DB 00                  256 	.byte	0
   C9DC 00                  257 	.byte	0
   C9DD 6E                  258 	.byte	110
   C9DE C9 D6               259 	.word	_corners_shape
                            260 	.area .text
                            261 	.globl _draw_field
   0403                     262 _draw_field:
   0403 8E C9 70      [ 3]  263 	ldx	#_city
   0406 BD 09 8D      [ 8]  264 	jsr	_draw_sprite
   0409 8E C9 DA      [ 3]  265 	ldx	#_corners
   040C BD 09 8D      [ 8]  266 	jsr	_draw_sprite
   040F 39            [ 5]  267 	rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 _city              0080 GR  |   2 _city_shape        007C GR
  2 _city_vectors      0043 GR  |   2 _corners           00EA GR
  2 _corners_shape     00E6 GR  |   2 _corners_vecto     0086 GR
  3 _draw_field        0000 GR  |     _draw_sprite       **** GX
  2 _walls             003D GR  |   2 _walls_shape       0039 GR
  2 _walls_vectors     0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .data            size   F0   flags  100
   3 .text            size    D   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

