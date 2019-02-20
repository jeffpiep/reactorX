; Imported symbols
	.globalzp CLS
	.globalzp COLCRS
	.globalzp COLOR
	.globalzp DRAWLN
	.globalzp ROWCRS

; Exported symbols
	.export bytecode_start
	.exportzp NUM_VARS

	.include "atari.inc"

; TOKENS:
	.importzp	TOK_NUM
	.importzp	TOK_BYTE
	.importzp	TOK_CSTRING
	.importzp	TOK_CDATA
	.importzp	TOK_VAR_SADDR
	.importzp	TOK_VAR_LOAD
	.importzp	TOK_BYTE_SADDR
	.importzp	TOK_0
	.importzp	TOK_1
	.importzp	TOK_PUSH
	.importzp	TOK_PUSH_VAR_LOAD
	.importzp	TOK_PUSH_BYTE
	.importzp	TOK_PUSH_0
	.importzp	TOK_PUSH_1
	.importzp	TOK_NEG
	.importzp	TOK_SGN
	.importzp	TOK_ADD
	.importzp	TOK_SUB
	.importzp	TOK_MUL
	.importzp	TOK_DIV
	.importzp	TOK_MOD
	.importzp	TOK_BIT_AND
	.importzp	TOK_PEEK
	.importzp	TOK_DPEEK
	.importzp	TOK_RAND
	.importzp	TOK_L_NOT
	.importzp	TOK_L_AND
	.importzp	TOK_LT
	.importzp	TOK_GT
	.importzp	TOK_EQ
	.importzp	TOK_COMP_0
	.importzp	TOK_POKE
	.importzp	TOK_DPOKE
	.importzp	TOK_MOVE
	.importzp	TOK_MSET
	.importzp	TOK_VAR_STORE
	.importzp	TOK_SADDR
	.importzp	TOK_INCVAR
	.importzp	TOK_DECVAR
	.importzp	TOK_GRAPHICS
	.importzp	TOK_PLOT
	.importzp	TOK_DRAWTO
	.importzp	TOK_PRINT_STR
	.importzp	TOK_PRINT_TAB
	.importzp	TOK_CLOSE
	.importzp	TOK_PUT
	.importzp	TOK_JUMP
	.importzp	TOK_CJUMP
	.importzp	TOK_CALL
	.importzp	TOK_RET
	.importzp	TOK_FOR
	.importzp	TOK_FOR_NEXT
	.importzp	TOK_FOR_EXIT
	.importzp	TOK_DIM
	.importzp	TOK_USHL
	.importzp	TOK_INT_STR
	.importzp	TOK_SOUND_OFF
	.importzp	TOK_PAUSE
;-----------------------------
; Variables
NUM_VARS = 23
	.import heap_start
	.export fb_var_A
	.export fb_var_B
	.export fb_var_C
	.export fb_var_D
	.export fb_var_E
	.export fb_var_F
	.export fb_var_G
	.export fb_var_I
	.export fb_var_J
	.export fb_var_K
	.export fb_var_L
	.export fb_var_M
	.export fb_var_N
	.export fb_var_P
	.export fb_var_Q
	.export fb_var_R
	.export fb_var_S
	.export fb_var_T
	.export fb_var_U
	.export fb_var_V
	.export fb_var_W
	.export fb_var_X
	.export fb_var_Y
fb_var_A	= heap_start + 4	; Word Array variable
fb_var_B	= heap_start + 22	; Word variable
fb_var_C	= heap_start + 20	; Word variable
fb_var_D	= heap_start + 42	; Word variable
fb_var_E	= heap_start + 10	; Word variable
fb_var_F	= heap_start + 36	; Word variable
fb_var_G	= heap_start + 44	; Word variable
fb_var_I	= heap_start + 32	; Word variable
fb_var_J	= heap_start + 38	; Word variable
fb_var_K	= heap_start + 14	; Word variable
fb_var_L	= heap_start + 16	; Word variable
fb_var_M	= heap_start + 34	; Word variable
fb_var_N	= heap_start + 40	; Word variable
fb_var_P	= heap_start + 12	; Word variable
fb_var_Q	= heap_start + 26	; Word variable
fb_var_R	= heap_start + 30	; Word variable
fb_var_S	= heap_start + 24	; Word variable
fb_var_T	= heap_start + 18	; Word variable
fb_var_U	= heap_start + 6	; Word Array variable
fb_var_V	= heap_start + 8	; Word Array variable
fb_var_W	= heap_start + 28	; Word variable
fb_var_X	= heap_start + 0	; Word Array variable
fb_var_Y	= heap_start + 2	; Word Array variable
;-----------------------------
; Bytecode
bytecode_start:
@FastBasic_LINE_1:  ; LINE 1
	.byte	TOK_VAR_SADDR
	.byte	0
	.byte	TOK_CDATA
	.word	jump_lbl_1
	.word	0
	.word	10
	.word	0
	.word	65526
	.word	0
jump_lbl_1:
	.byte	TOK_VAR_SADDR
	.byte	1
	.byte	TOK_CDATA
	.word	jump_lbl_2
	.word	65516
	.word	20
	.word	20
	.word	20
	.word	0
jump_lbl_2:
	.byte	TOK_VAR_SADDR
	.byte	2
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_DIM
	.byte	TOK_VAR_SADDR
	.byte	3
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_DIM
	.byte	TOK_VAR_SADDR
	.byte	4
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_DIM
	.byte	TOK_CSTRING
	.byte	14, "     0Xx0     "
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
	.byte	TOK_CSTRING
	.byte	16, "    !!q", 194, 176, "q!!    "
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	6
	.byte	TOK_0
	.byte	TOK_VAR_STORE
	.byte	7
@FastBasic_LINE_2:  ; LINE 2
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	8
	.byte	TOK_BYTE
	.byte	9
	.byte	TOK_VAR_STORE
	.byte	9
	.byte	TOK_VAR_LOAD
	.byte	9
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	10
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_BYTE
	.byte	7
	.byte	TOK_GRAPHICS
	.byte	TOK_NUM
	.word	752
	.byte	TOK_SADDR
	.byte	TOK_1
	.byte	TOK_POKE
	.byte	TOK_NUM
	.word	40960
	.byte	TOK_VAR_STORE
	.byte	11
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_PUSH
	.byte	TOK_NUM
	.word	1024
	.byte	TOK_PUSH_0
	.byte	TOK_MSET
	.byte	TOK_NUM
	.word	54279
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	160
	.byte	TOK_POKE
	.byte	TOK_NUM
	.word	53277
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_POKE
	.byte	TOK_NUM
	.word	559
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_POKE
	.byte	TOK_0
	.byte	TOK_VAR_STORE
	.byte	12
	.byte	TOK_NUM
	.word	704
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	17423
	.byte	TOK_DPOKE
	.byte	TOK_NUM
	.word	706
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	17476
	.byte	TOK_DPOKE
	.byte	TOK_NUM
	.word	709
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	16463
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	COLOR
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_3:  ; LINE 3
	.byte	TOK_BYTE
	.byte	80
	.byte	TOK_VAR_STORE
	.byte	13
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_VAR_STORE
	.byte	14
	.byte	TOK_BYTE
	.byte	39
	.byte	TOK_VAR_STORE
	.byte	15
	.byte	TOK_CALL
	.word	proc_lbl_O
	.byte	TOK_PRINT_TAB
	.byte	TOK_CSTRING
	.byte	4, "FIRE"
	.byte	TOK_PRINT_STR
jump_lbl_3:
	.byte	TOK_NUM
	.word	644
	.byte	TOK_PEEK
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_3
	.byte	TOK_BYTE
	.byte	CLS
	.byte	TOK_PUT
jump_lbl_5:
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_LT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_6
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_INCVAR
	.byte	10
	.byte	TOK_NUM
	.word	709
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_USHL
	.byte	TOK_USHL
	.byte	TOK_USHL
	.byte	TOK_USHL
	.byte	TOK_PUSH_BYTE
	.byte	15
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_VAR_LOAD
	.byte	9
	.byte	TOK_MOD
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_7
	.byte	TOK_BYTE_SADDR
	.byte	COLOR
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_POKE
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_VAR_LOAD
	.byte	9
	.byte	TOK_DIV
	.byte	TOK_VAR_STORE
	.byte	15
	.byte	TOK_CALL
	.word	proc_lbl_O
jump_lbl_7:
	.byte	TOK_0
	.byte	TOK_PAUSE
@FastBasic_LINE_4:  ; LINE 4
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_VAR_LOAD
	.byte	11
	.byte	TOK_PUSH
	.byte	TOK_NUM
	.word	561
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	15
	.byte	TOK_MOVE
	.byte	TOK_NUM
	.word	53248
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	124
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_VAR_SADDR
	.byte	16
	.byte	TOK_PUSH_1
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_8
jump_lbl_9:
	.byte	TOK_NUM
	.word	53248
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	125
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_PUSH_VAR_LOAD
	.byte	11
	.byte	TOK_PUSH
	.byte	TOK_NUM
	.word	561
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_PUSH_BYTE
	.byte	128
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	14
	.byte	TOK_MOVE
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_9
jump_lbl_8:
	.byte	TOK_FOR_EXIT
	.byte	TOK_NUM
	.word	53278
	.byte	TOK_SADDR
	.byte	TOK_1
	.byte	TOK_POKE
	.byte	TOK_1
	.byte	TOK_PAUSE
	.byte	TOK_VAR_SADDR
	.byte	16
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_11_x
jump_lbl_11:
@FastBasic_LINE_5:  ; LINE 5
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_NUM
	.word	53252
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	17
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_PUSH_1
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_12
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_1
	.byte	TOK_DPOKE
	.byte	TOK_VAR_LOAD
	.byte	16
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_13
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_NEG
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_DECVAR
	.byte	8
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_PUSH
	.byte	TOK_NUM
	.word	512
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	128
	.byte	TOK_PUSH_0
	.byte	TOK_MSET
	.byte	TOK_JUMP
	.word	jump_lbl_11_x
jump_lbl_13:
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	65493
	.byte	TOK_PUSH_VAR_LOAD
	.byte	13
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_INCVAR
	.byte	7
@FastBasic_LINE_6:  ; LINE 6
	.byte	TOK_JUMP
	.word	jump_lbl_15
jump_lbl_12:
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_15
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_VAR_STORE
	.byte	18
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	19
	.byte	TOK_CALL
	.word	proc_lbl__
jump_lbl_15:
	.byte	TOK_NUM
	.word	53260
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	20
	.byte	TOK_VAR_LOAD
	.byte	20
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_17
	.byte	TOK_VAR_LOAD
	.byte	20
	.byte	TOK_PUSH_1
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_18
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_VAR_STORE
	.byte	18
	.byte	TOK_0
	.byte	TOK_VAR_STORE
	.byte	19
	.byte	TOK_VAR_LOAD
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	12
	.byte	TOK_JUMP
	.word	jump_lbl_19
jump_lbl_18:
	.byte	TOK_VAR_LOAD
	.byte	20
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_20
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	19
	.byte	TOK_JUMP
	.word	jump_lbl_19
jump_lbl_20:
	.byte	TOK_VAR_LOAD
	.byte	20
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_22
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_VAR_STORE
	.byte	19
	.byte	TOK_JUMP
	.word	jump_lbl_19
jump_lbl_22:
	.byte	TOK_VAR_LOAD
	.byte	20
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_19
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_VAR_STORE
	.byte	19
jump_lbl_19:
@FastBasic_LINE_7:  ; LINE 7
	.byte	TOK_CALL
	.word	proc_lbl__
jump_lbl_17:
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_11
jump_lbl_11_x:
	.byte	TOK_FOR_EXIT
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_25
	.byte	TOK_NUM
	.word	53760
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH
	.byte	TOK_NUM
	.word	44800
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_NUM
	.word	53768
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
	.byte	TOK_NUM
	.word	53775
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_POKE
	.byte	TOK_JUMP
	.word	jump_lbl_26
jump_lbl_25:
	.byte	TOK_SOUND_OFF
jump_lbl_26:
	.byte	TOK_0
	.byte	TOK_VAR_STORE
	.byte	18
	.byte	TOK_VAR_SADDR
	.byte	16
	.byte	TOK_PUSH_1
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_27
jump_lbl_28:
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_29
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_DPEEK
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_DIV
	.byte	TOK_SGN
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_RAND
	.byte	TOK_VAR_STORE
	.byte	21
@FastBasic_LINE_8:  ; LINE 8
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_DPEEK
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_DIV
	.byte	TOK_SGN
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	4
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	21
	.byte	TOK_ADD
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_DPOKE
jump_lbl_29:
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_28
jump_lbl_27:
	.byte	TOK_FOR_EXIT
	.byte	TOK_NUM
	.word	632
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	22
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	4
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	22
	.byte	TOK_PUSH_1
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	22
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_SUB
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	22
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	22
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_EQ
	.byte	TOK_SUB
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	21
@FastBasic_LINE_9:  ; LINE 9
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	21
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_NUM
	.word	657
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_POKE
	.byte	TOK_VAR_LOAD
	.byte	12
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_TAB
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_JUMP
	.word	jump_lbl_5
jump_lbl_6:
	.byte	TOK_SOUND_OFF
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_DPEEK
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_30
	.byte	TOK_PRINT_TAB
	.byte	TOK_CSTRING
	.byte	4, "win!"
	.byte	TOK_PRINT_STR
	.byte	TOK_JUMP
	.word	jump_lbl_32
jump_lbl_30:
	.byte	TOK_PRINT_TAB
	.byte	TOK_CSTRING
	.byte	8, "meltdown"
	.byte	TOK_PRINT_STR
jump_lbl_32:
	.byte	TOK_JUMP
	.word	jump_lbl_32
proc_lbl__:
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_SUB
	.byte	TOK_SGN
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_DPOKE
@FastBasic_LINE_10:  ; LINE 10
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_SUB
	.byte	TOK_SGN
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_RET
proc_lbl_O:
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_PLOT
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_SUB
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_SUB
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_11:  ; LINE 11
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_RET
