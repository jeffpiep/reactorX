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
	.importzp	TOK_PRINT_EOL
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
NUM_VARS = 29
	.import heap_start
	.export fb_var_ALIVE
	.export fb_var_COLSNX
	.export fb_var_COLSNY
	.export fb_var_COUNTER
	.export fb_var_I
	.export fb_var_J
	.export fb_var_LEVEL
	.export fb_var_LR
	.export fb_var_NL
	.export fb_var_NUMKILLED
	.export fb_var_NUMLIVES
	.export fb_var_PARTICLE
	.export fb_var_PARTLEN
	.export fb_var_PARTLOC
	.export fb_var_PIPF
	.export fb_var_PIPJ
	.export fb_var_PLAYER
	.export fb_var_PLAYERLEN
	.export fb_var_PLAYERLOC
	.export fb_var_PM
	.export fb_var_RADIUS
	.export fb_var_RATE
	.export fb_var_S
	.export fb_var_SC
	.export fb_var_UD
	.export fb_var_X
	.export fb_var_X0
	.export fb_var_Y
	.export fb_var_Y0
fb_var_ALIVE	= heap_start + 8	; Byte Array variable
fb_var_COLSNX	= heap_start + 4	; Word Array variable
fb_var_COLSNY	= heap_start + 6	; Word Array variable
fb_var_COUNTER	= heap_start + 44	; Word variable
fb_var_I	= heap_start + 28	; Word variable
fb_var_J	= heap_start + 50	; Word variable
fb_var_LEVEL	= heap_start + 32	; Word variable
fb_var_LR	= heap_start + 54	; Word variable
fb_var_NL	= heap_start + 34	; Word variable
fb_var_NUMKILLED	= heap_start + 10	; Word variable
fb_var_NUMLIVES	= heap_start + 12	; Word variable
fb_var_PARTICLE	= heap_start + 14	; Byte Array variable
fb_var_PARTLEN	= heap_start + 18	; Word variable
fb_var_PARTLOC	= heap_start + 16	; Word variable
fb_var_PIPF	= heap_start + 46	; Word variable
fb_var_PIPJ	= heap_start + 48	; Word variable
fb_var_PLAYER	= heap_start + 20	; Byte Array variable
fb_var_PLAYERLEN	= heap_start + 24	; Word variable
fb_var_PLAYERLOC	= heap_start + 22	; Word variable
fb_var_PM	= heap_start + 26	; Word variable
fb_var_RADIUS	= heap_start + 40	; Word variable
fb_var_RATE	= heap_start + 42	; Word variable
fb_var_S	= heap_start + 52	; Word variable
fb_var_SC	= heap_start + 30	; Word variable
fb_var_UD	= heap_start + 56	; Word variable
fb_var_X	= heap_start + 0	; Word Array variable
fb_var_X0	= heap_start + 36	; Word variable
fb_var_Y	= heap_start + 2	; Word Array variable
fb_var_Y0	= heap_start + 38	; Word variable
;-----------------------------
; Bytecode
bytecode_start:
@FastBasic_LINE_21:  ; LINE 21
	.byte	TOK_VAR_SADDR
	.byte	0
	.byte	TOK_CDATA
	.word	jump_lbl_1
	.word	0
	.word	10
	.word	0
	.word	65526
jump_lbl_1:
@FastBasic_LINE_22:  ; LINE 22
	.byte	TOK_VAR_SADDR
	.byte	1
	.byte	TOK_CDATA
	.word	jump_lbl_2
	.word	65516
	.word	20
	.word	20
	.word	20
jump_lbl_2:
@FastBasic_LINE_24:  ; LINE 24
	.byte	TOK_VAR_SADDR
	.byte	2
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_DIM
@FastBasic_LINE_25:  ; LINE 25
	.byte	TOK_VAR_SADDR
	.byte	3
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_DIM
@FastBasic_LINE_26:  ; LINE 26
	.byte	TOK_VAR_SADDR
	.byte	4
	.byte	TOK_CDATA
	.word	jump_lbl_3
	.byte	1
	.byte	1
	.byte	1
	.byte	1
jump_lbl_3:
@FastBasic_LINE_27:  ; LINE 27
	.byte	TOK_0
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_28:  ; LINE 28
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	6
@FastBasic_LINE_30:  ; LINE 30
	.byte	TOK_VAR_SADDR
	.byte	7
	.byte	TOK_CDATA
	.word	jump_lbl_4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	9
	.byte	9
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
jump_lbl_4:
@FastBasic_LINE_31:  ; LINE 31
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_32:  ; LINE 32
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_33:  ; LINE 33
	.byte	TOK_VAR_SADDR
	.byte	10
	.byte	TOK_CDATA
	.word	jump_lbl_5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	14
	.byte	27
	.byte	14
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
jump_lbl_5:
@FastBasic_LINE_34:  ; LINE 34
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_VAR_STORE
	.byte	11
@FastBasic_LINE_35:  ; LINE 35
	.byte	TOK_BYTE
	.byte	13
	.byte	TOK_VAR_STORE
	.byte	12
@FastBasic_LINE_37:  ; LINE 37
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_BYTE
	.byte	7
	.byte	TOK_GRAPHICS
@FastBasic_LINE_38:  ; LINE 38
	.byte	TOK_NUM
	.word	752
	.byte	TOK_SADDR
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_42:  ; LINE 42
	.byte	TOK_NUM
	.word	40960
	.byte	TOK_VAR_STORE
	.byte	13
@FastBasic_LINE_43:  ; LINE 43
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_6
jump_lbl_7:
@FastBasic_LINE_44:  ; LINE 44
	.byte	TOK_NUM
	.word	704
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_POKE
@FastBasic_LINE_45:  ; LINE 45
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_7
jump_lbl_6:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_47:  ; LINE 47
	.byte	TOK_NUM
	.word	54279
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH
	.byte	TOK_NUM
	.word	256
	.byte	TOK_DIV
	.byte	TOK_POKE
@FastBasic_LINE_48:  ; LINE 48
	.byte	TOK_NUM
	.word	53277
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_POKE
@FastBasic_LINE_49:  ; LINE 49
	.byte	TOK_NUM
	.word	559
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_POKE
@FastBasic_LINE_59:  ; LINE 59
	.byte	TOK_NUM
	.word	1000
	.byte	TOK_VAR_STORE
	.byte	15
	.byte	TOK_0
	.byte	TOK_VAR_STORE
	.byte	16
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_VAR_STORE
	.byte	17
@FastBasic_LINE_63:  ; LINE 63
	.byte	TOK_BYTE
	.byte	80
	.byte	TOK_VAR_STORE
	.byte	18
@FastBasic_LINE_64:  ; LINE 64
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_VAR_STORE
	.byte	19
@FastBasic_LINE_65:  ; LINE 65
	.byte	TOK_BYTE_SADDR
	.byte	COLOR
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_66:  ; LINE 66
	.byte	TOK_BYTE
	.byte	39
	.byte	TOK_VAR_STORE
	.byte	20
@FastBasic_LINE_67:  ; LINE 67
	.byte	TOK_CALL
	.word	proc_lbl_OCTOGON
@FastBasic_LINE_72:  ; LINE 72
	.byte	TOK_PRINT_EOL
	.byte	TOK_PRINT_TAB
	.byte	TOK_CSTRING
	.byte	19, "press FIRE to start"
	.byte	TOK_PRINT_STR
@FastBasic_LINE_73:  ; LINE 73
jump_lbl_8:
	.byte	TOK_NUM
	.word	644
	.byte	TOK_PEEK
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_8
@FastBasic_LINE_74:  ; LINE 74
	.byte	TOK_BYTE
	.byte	CLS
	.byte	TOK_PUT
@FastBasic_LINE_75:  ; LINE 75
	.byte	TOK_0
	.byte	TOK_VAR_STORE
	.byte	16
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_VAR_STORE
	.byte	17
@FastBasic_LINE_77:  ; LINE 77
	.byte	TOK_PRINT_EOL
	.byte	TOK_VAR_LOAD
	.byte	16
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_TAB
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
@FastBasic_LINE_79:  ; LINE 79
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_VAR_STORE
	.byte	21
@FastBasic_LINE_80:  ; LINE 80
	.byte	TOK_VAR_LOAD
	.byte	21
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	22
@FastBasic_LINE_82:  ; LINE 82
jump_lbl_10:
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_LT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_11
@FastBasic_LINE_83:  ; LINE 83
	.byte	TOK_INCVAR
	.byte	22
@FastBasic_LINE_84:  ; LINE 84
	.byte	TOK_VAR_LOAD
	.byte	22
	.byte	TOK_PUSH_VAR_LOAD
	.byte	21
	.byte	TOK_MOD
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_12
@FastBasic_LINE_85:  ; LINE 85
	.byte	TOK_BYTE_SADDR
	.byte	COLOR
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_POKE
@FastBasic_LINE_86:  ; LINE 86
	.byte	TOK_VAR_LOAD
	.byte	22
	.byte	TOK_PUSH_VAR_LOAD
	.byte	21
	.byte	TOK_DIV
	.byte	TOK_VAR_STORE
	.byte	20
@FastBasic_LINE_87:  ; LINE 87
	.byte	TOK_CALL
	.word	proc_lbl_OCTOGON
@FastBasic_LINE_88:  ; LINE 88
jump_lbl_12:
@FastBasic_LINE_90:  ; LINE 90
	.byte	TOK_NUM
	.word	657
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	22
	.byte	TOK_POKE
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_CSTRING
	.byte	1, " "
	.byte	TOK_PRINT_STR
@FastBasic_LINE_92:  ; LINE 92
	.byte	TOK_0
	.byte	TOK_PAUSE
@FastBasic_LINE_94:  ; LINE 94
	.byte	TOK_NUM
	.word	53248
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	43
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_POKE
@FastBasic_LINE_95:  ; LINE 95
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_PUSH_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH
	.byte	TOK_NUM
	.word	512
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	11
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	12
	.byte	TOK_MOVE
@FastBasic_LINE_96:  ; LINE 96
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_1
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_13
jump_lbl_14:
@FastBasic_LINE_98:  ; LINE 98
	.byte	TOK_NUM
	.word	53248
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	43
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_POKE
@FastBasic_LINE_99:  ; LINE 99
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH
	.byte	TOK_NUM
	.word	512
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	128
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	11
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	9
	.byte	TOK_MOVE
@FastBasic_LINE_100:  ; LINE 100
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_14
jump_lbl_13:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_103:  ; LINE 103
	.byte	TOK_NUM
	.word	53278
	.byte	TOK_SADDR
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_104:  ; LINE 104
	.byte	TOK_1
	.byte	TOK_PAUSE
@FastBasic_LINE_105:  ; LINE 105
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_16_x
jump_lbl_16:
@FastBasic_LINE_106:  ; LINE 106
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
@FastBasic_LINE_107:  ; LINE 107
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
@FastBasic_LINE_109:  ; LINE 109
	.byte	TOK_NUM
	.word	53252
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	23
@FastBasic_LINE_110:  ; LINE 110
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_1
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_17
@FastBasic_LINE_111:  ; LINE 111
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_112:  ; LINE 112
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_18
@FastBasic_LINE_113:  ; LINE 113
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
@FastBasic_LINE_114:  ; LINE 114
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	65516
	.byte	TOK_DPOKE
@FastBasic_LINE_115:  ; LINE 115
	.byte	TOK_DECVAR
	.byte	6
@FastBasic_LINE_116:  ; LINE 116
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH
	.byte	TOK_NUM
	.word	512
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	128
	.byte	TOK_PUSH_0
	.byte	TOK_MSET
@FastBasic_LINE_117:  ; LINE 117
	.byte	TOK_JUMP
	.word	jump_lbl_16_x
@FastBasic_LINE_118:  ; LINE 118
jump_lbl_18:
@FastBasic_LINE_119:  ; LINE 119
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	65493
	.byte	TOK_PUSH_VAR_LOAD
	.byte	18
	.byte	TOK_SUB
	.byte	TOK_DPOKE
@FastBasic_LINE_120:  ; LINE 120
	.byte	TOK_INCVAR
	.byte	5
@FastBasic_LINE_122:  ; LINE 122
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_EOL
@FastBasic_LINE_124:  ; LINE 124
	.byte	TOK_JUMP
	.word	jump_lbl_20
jump_lbl_17:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_20
@FastBasic_LINE_125:  ; LINE 125
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_SGN
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_DPOKE
@FastBasic_LINE_126:  ; LINE 126
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_SGN
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_DPOKE
@FastBasic_LINE_127:  ; LINE 127
jump_lbl_20:
@FastBasic_LINE_129:  ; LINE 129
	.byte	TOK_NUM
	.word	53260
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	24
@FastBasic_LINE_130:  ; LINE 130
	.byte	TOK_VAR_LOAD
	.byte	24
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_22
@FastBasic_LINE_131:  ; LINE 131
	.byte	TOK_VAR_LOAD
	.byte	24
	.byte	TOK_PUSH_1
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_23
@FastBasic_LINE_132:  ; LINE 132
	.byte	TOK_0
	.byte	TOK_VAR_STORE
	.byte	25
@FastBasic_LINE_133:  ; LINE 133
	.byte	TOK_JUMP
	.word	jump_lbl_24
jump_lbl_23:
	.byte	TOK_VAR_LOAD
	.byte	24
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_25
@FastBasic_LINE_134:  ; LINE 134
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	25
@FastBasic_LINE_135:  ; LINE 135
	.byte	TOK_JUMP
	.word	jump_lbl_24
jump_lbl_25:
	.byte	TOK_VAR_LOAD
	.byte	24
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_27
@FastBasic_LINE_136:  ; LINE 136
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_VAR_STORE
	.byte	25
@FastBasic_LINE_137:  ; LINE 137
	.byte	TOK_JUMP
	.word	jump_lbl_24
jump_lbl_27:
	.byte	TOK_VAR_LOAD
	.byte	24
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_24
@FastBasic_LINE_138:  ; LINE 138
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_VAR_STORE
	.byte	25
@FastBasic_LINE_139:  ; LINE 139
jump_lbl_24:
@FastBasic_LINE_141:  ; LINE 141
	.byte	TOK_CALL
	.word	proc_lbl_BOUNCE
@FastBasic_LINE_142:  ; LINE 142
jump_lbl_22:
@FastBasic_LINE_143:  ; LINE 143
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_16
jump_lbl_16_x:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_145:  ; LINE 145
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_1
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_30
jump_lbl_31:
@FastBasic_LINE_146:  ; LINE 146
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_32
@FastBasic_LINE_150:  ; LINE 150
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
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
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
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
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	33
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_DPOKE
@FastBasic_LINE_151:  ; LINE 151
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
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
	.byte	3
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
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
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	33
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_DPOKE
@FastBasic_LINE_152:  ; LINE 152
jump_lbl_32:
@FastBasic_LINE_153:  ; LINE 153
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_31
jump_lbl_30:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_156:  ; LINE 156
	.byte	TOK_NUM
	.word	632
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	26
@FastBasic_LINE_157:  ; LINE 157
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	26
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_EQ
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	27
@FastBasic_LINE_158:  ; LINE 158
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_PUSH_1
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	26
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	28
@FastBasic_LINE_159:  ; LINE 159
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	3
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	28
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	28
	.byte	TOK_ADD
	.byte	TOK_DPOKE
@FastBasic_LINE_160:  ; LINE 160
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	27
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	27
	.byte	TOK_ADD
	.byte	TOK_DPOKE
@FastBasic_LINE_162:  ; LINE 162
	.byte	TOK_JUMP
	.word	jump_lbl_10
jump_lbl_11:
@FastBasic_LINE_165:  ; LINE 165
	.byte	TOK_PRINT_TAB
	.byte	TOK_CSTRING
	.byte	6, "SCORE:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_EOL
@FastBasic_LINE_166:  ; LINE 166
	.byte	TOK_SOUND_OFF
@FastBasic_LINE_168:  ; LINE 168
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_34
	.byte	TOK_CSTRING
	.byte	7, "you win"
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_EOL
@FastBasic_LINE_169:  ; LINE 169
jump_lbl_34:
@FastBasic_LINE_170:  ; LINE 170
	.byte	TOK_JUMP
	.word	jump_lbl_34
@FastBasic_LINE_172:  ; LINE 172
proc_lbl_BOUNCE:
@FastBasic_LINE_173:  ; LINE 173
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	25
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_SUB
	.byte	TOK_SGN
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_DPOKE
@FastBasic_LINE_174:  ; LINE 174
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	25
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_SUB
	.byte	TOK_SGN
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_DPOKE
@FastBasic_LINE_175:  ; LINE 175
	.byte	TOK_RET
@FastBasic_LINE_177:  ; LINE 177
proc_lbl_OCTOGON:
@FastBasic_LINE_178:  ; LINE 178
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_PLOT
@FastBasic_LINE_179:  ; LINE 179
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_180:  ; LINE 180
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_181:  ; LINE 181
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_182:  ; LINE 182
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_SUB
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_183:  ; LINE 183
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_SUB
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_184:  ; LINE 184
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_185:  ; LINE 185
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_186:  ; LINE 186
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_187:  ; LINE 187
	.byte	TOK_RET
