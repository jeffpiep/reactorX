; Imported symbols
	.globalzp COLCRS
	.globalzp COLOR
	.globalzp DRAWLN
	.globalzp IOCHN
	.globalzp ROWCRS

; Exported symbols
	.export bytecode_start
	.exportzp NUM_VARS

	.include "atari.inc"

; TOKENS:
	.importzp	TOK_END
	.importzp	TOK_NUM
	.importzp	TOK_BYTE
	.importzp	TOK_CSTRING
	.importzp	TOK_CDATA
	.importzp	TOK_VAR_ADDR
	.importzp	TOK_VAR_LOAD
	.importzp	TOK_0
	.importzp	TOK_1
	.importzp	TOK_SGN
	.importzp	TOK_ADD
	.importzp	TOK_SUB
	.importzp	TOK_MUL
	.importzp	TOK_DIV
	.importzp	TOK_BIT_AND
	.importzp	TOK_PEEK
	.importzp	TOK_DPEEK
	.importzp	TOK_RAND
	.importzp	TOK_L_NOT
	.importzp	TOK_EQ
	.importzp	TOK_COMP_0
	.importzp	TOK_POKE
	.importzp	TOK_DPOKE
	.importzp	TOK_MOVE
	.importzp	TOK_GRAPHICS
	.importzp	TOK_PLOT
	.importzp	TOK_DRAWTO
	.importzp	TOK_PRINT_STR
	.importzp	TOK_PRINT_TAB
	.importzp	TOK_PRINT_EOL
	.importzp	TOK_CLOSE
	.importzp	TOK_JUMP
	.importzp	TOK_CJUMP
	.importzp	TOK_CALL
	.importzp	TOK_RET
	.importzp	TOK_FOR
	.importzp	TOK_FOR_START
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
;-----------------------------
; Bytecode
bytecode_start:
@FastBasic_LINE_21:  ; LINE 21
	.byte	TOK_VAR_ADDR
	.byte	0
	.byte	TOK_CDATA
	.word	jump_lbl_1
	.word	10
	.word	20
	.word	0
	.word	20
jump_lbl_1:
	.byte	TOK_DPOKE
@FastBasic_LINE_22:  ; LINE 22
	.byte	TOK_VAR_ADDR
	.byte	1
	.byte	TOK_CDATA
	.word	jump_lbl_2
	.word	10
	.word	0
	.word	20
	.word	0
jump_lbl_2:
	.byte	TOK_DPOKE
@FastBasic_LINE_23:  ; LINE 23
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD
	.byte	TOK_NUM
	.word	65516
	.byte	TOK_DPOKE
@FastBasic_LINE_24:  ; LINE 24
	.byte	TOK_VAR_ADDR
	.byte	2
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_DIM
@FastBasic_LINE_25:  ; LINE 25
	.byte	TOK_VAR_ADDR
	.byte	3
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_DIM
@FastBasic_LINE_27:  ; LINE 27
	.byte	TOK_VAR_ADDR
	.byte	4
	.byte	TOK_CDATA
	.word	jump_lbl_3
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
jump_lbl_3:
	.byte	TOK_DPOKE
@FastBasic_LINE_28:  ; LINE 28
	.byte	TOK_VAR_ADDR
	.byte	5
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_DPOKE
@FastBasic_LINE_29:  ; LINE 29
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_DPOKE
@FastBasic_LINE_30:  ; LINE 30
	.byte	TOK_VAR_ADDR
	.byte	7
	.byte	TOK_CDATA
	.word	jump_lbl_4
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
jump_lbl_4:
	.byte	TOK_DPOKE
@FastBasic_LINE_31:  ; LINE 31
	.byte	TOK_VAR_ADDR
	.byte	8
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_DPOKE
@FastBasic_LINE_32:  ; LINE 32
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_BYTE
	.byte	13
	.byte	TOK_DPOKE
@FastBasic_LINE_34:  ; LINE 34
	.byte	TOK_BYTE
	.byte	IOCHN
	.byte	TOK_BYTE
	.byte	96
	.byte	TOK_POKE
	.byte	TOK_CLOSE
	.byte	TOK_BYTE
	.byte	7
	.byte	TOK_GRAPHICS
@FastBasic_LINE_35:  ; LINE 35
	.byte	TOK_NUM
	.word	752
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_39:  ; LINE 39
	.byte	TOK_VAR_ADDR
	.byte	10
	.byte	TOK_NUM
	.word	40960
	.byte	TOK_DPOKE
@FastBasic_LINE_40:  ; LINE 40
	.byte	TOK_VAR_ADDR
	.byte	11
	.byte	TOK_0
	.byte	TOK_FOR_START
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_5
jump_lbl_6:
@FastBasic_LINE_41:  ; LINE 41
	.byte	TOK_NUM
	.word	704
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_ADD
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_POKE
@FastBasic_LINE_42:  ; LINE 42
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_6
jump_lbl_5:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_44:  ; LINE 44
	.byte	TOK_NUM
	.word	54279
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_NUM
	.word	256
	.byte	TOK_DIV
	.byte	TOK_POKE
@FastBasic_LINE_45:  ; LINE 45
	.byte	TOK_NUM
	.word	53277
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_POKE
@FastBasic_LINE_46:  ; LINE 46
	.byte	TOK_NUM
	.word	559
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_POKE
@FastBasic_LINE_56:  ; LINE 56
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_NUM
	.word	1000
	.byte	TOK_DPOKE
	.byte	TOK_VAR_ADDR
	.byte	13
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_VAR_ADDR
	.byte	14
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_DPOKE
@FastBasic_LINE_60:  ; LINE 60
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_BYTE
	.byte	80
	.byte	TOK_DPOKE
@FastBasic_LINE_61:  ; LINE 61
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_DPOKE
@FastBasic_LINE_62:  ; LINE 62
	.byte	TOK_BYTE
	.byte	COLOR
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_63:  ; LINE 63
	.byte	TOK_VAR_ADDR
	.byte	17
	.byte	TOK_BYTE
	.byte	39
	.byte	TOK_DPOKE
@FastBasic_LINE_64:  ; LINE 64
	.byte	TOK_CALL
	.word	proc_lbl_OCTOGON
@FastBasic_LINE_65:  ; LINE 65
	.byte	TOK_BYTE
	.byte	COLOR
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_POKE
@FastBasic_LINE_66:  ; LINE 66
	.byte	TOK_VAR_ADDR
	.byte	17
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_DPOKE
@FastBasic_LINE_67:  ; LINE 67
	.byte	TOK_CALL
	.word	proc_lbl_OCTOGON
@FastBasic_LINE_70:  ; LINE 70
jump_lbl_7:
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_8
@FastBasic_LINE_72:  ; LINE 72
	.byte	TOK_0
	.byte	TOK_PAUSE
@FastBasic_LINE_74:  ; LINE 74
	.byte	TOK_NUM
	.word	53248
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_BYTE
	.byte	43
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_POKE
@FastBasic_LINE_75:  ; LINE 75
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_NUM
	.word	512
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	16
	.byte	TOK_BYTE
	.byte	11
	.byte	TOK_ADD
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	9
	.byte	TOK_MOVE
@FastBasic_LINE_76:  ; LINE 76
	.byte	TOK_VAR_ADDR
	.byte	11
	.byte	TOK_1
	.byte	TOK_FOR_START
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_9
jump_lbl_10:
@FastBasic_LINE_78:  ; LINE 78
	.byte	TOK_NUM
	.word	53248
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_BYTE
	.byte	43
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_POKE
@FastBasic_LINE_79:  ; LINE 79
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_NUM
	.word	512
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_BYTE
	.byte	128
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	16
	.byte	TOK_BYTE
	.byte	11
	.byte	TOK_ADD
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_MOVE
@FastBasic_LINE_80:  ; LINE 80
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_10
jump_lbl_9:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_83:  ; LINE 83
	.byte	TOK_NUM
	.word	53278
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_84:  ; LINE 84
	.byte	TOK_1
	.byte	TOK_PAUSE
@FastBasic_LINE_85:  ; LINE 85
	.byte	TOK_VAR_ADDR
	.byte	11
	.byte	TOK_0
	.byte	TOK_FOR_START
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_11
jump_lbl_12:
@FastBasic_LINE_86:  ; LINE 86
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_NUM
	.word	53252
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_DPOKE
@FastBasic_LINE_87:  ; LINE 87
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_13
@FastBasic_LINE_88:  ; LINE 88
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_SGN
	.byte	TOK_MUL
	.byte	TOK_DPOKE
@FastBasic_LINE_89:  ; LINE 89
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_SGN
	.byte	TOK_MUL
	.byte	TOK_DPOKE
@FastBasic_LINE_90:  ; LINE 90
	.byte	TOK_JUMP
	.word	jump_lbl_14
jump_lbl_13:
@FastBasic_LINE_91:  ; LINE 91
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_0
	.byte	TOK_DPOKE
@FastBasic_LINE_92:  ; LINE 92
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_0
	.byte	TOK_DPOKE
@FastBasic_LINE_93:  ; LINE 93
jump_lbl_14:
@FastBasic_LINE_94:  ; LINE 94
	.byte	TOK_VAR_ADDR
	.byte	19
	.byte	TOK_NUM
	.word	53260
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_DPOKE
@FastBasic_LINE_95:  ; LINE 95
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_15
	.byte	TOK_CSTRING
	.byte	4, "hit "
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_EOL
jump_lbl_15:
@FastBasic_LINE_96:  ; LINE 96
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_12
jump_lbl_11:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_97:  ; LINE 97
	.byte	TOK_VAR_ADDR
	.byte	11
	.byte	TOK_1
	.byte	TOK_FOR_START
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_16
jump_lbl_17:
@FastBasic_LINE_99:  ; LINE 99
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_SGN
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_RAND
	.byte	TOK_1
	.byte	TOK_SUB
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_BYTE
	.byte	33
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_DPOKE
@FastBasic_LINE_100:  ; LINE 100
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_SGN
	.byte	TOK_SUB
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_RAND
	.byte	TOK_1
	.byte	TOK_SUB
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_BYTE
	.byte	33
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_DPOKE
@FastBasic_LINE_101:  ; LINE 101
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_17
jump_lbl_16:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_103:  ; LINE 103
	.byte	TOK_VAR_ADDR
	.byte	20
	.byte	TOK_NUM
	.word	632
	.byte	TOK_PEEK
	.byte	TOK_DPOKE
@FastBasic_LINE_104:  ; LINE 104
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_VAR_LOAD
	.byte	20
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_BIT_AND
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_VAR_LOAD
	.byte	20
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_BIT_AND
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_EQ
	.byte	TOK_SUB
	.byte	TOK_DPOKE
@FastBasic_LINE_105:  ; LINE 105
	.byte	TOK_VAR_ADDR
	.byte	22
	.byte	TOK_VAR_LOAD
	.byte	20
	.byte	TOK_1
	.byte	TOK_BIT_AND
	.byte	TOK_1
	.byte	TOK_EQ
	.byte	TOK_VAR_LOAD
	.byte	20
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_BIT_AND
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_SUB
	.byte	TOK_DPOKE
@FastBasic_LINE_107:  ; LINE 107
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_DPEEK
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_18
@FastBasic_LINE_108:  ; LINE 108
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_DPEEK
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_TAB
@FastBasic_LINE_109:  ; LINE 109
jump_lbl_18:
@FastBasic_LINE_110:  ; LINE 110
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_DPEEK
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_DPEEK
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	22
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	22
	.byte	TOK_ADD
	.byte	TOK_DPOKE
@FastBasic_LINE_111:  ; LINE 111
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_DPEEK
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_DPEEK
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	21
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	21
	.byte	TOK_ADD
	.byte	TOK_DPOKE
@FastBasic_LINE_113:  ; LINE 113
	.byte	TOK_JUMP
	.word	jump_lbl_7
jump_lbl_8:
@FastBasic_LINE_116:  ; LINE 116
	.byte	TOK_PRINT_TAB
	.byte	TOK_CSTRING
	.byte	6, "SCORE:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_LOAD
	.byte	12
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_EOL
@FastBasic_LINE_117:  ; LINE 117
	.byte	TOK_SOUND_OFF
@FastBasic_LINE_129:  ; LINE 129
	.byte	TOK_END
@FastBasic_LINE_119:  ; LINE 119
proc_lbl_OCTOGON:
@FastBasic_LINE_120:  ; LINE 120
	.byte	TOK_BYTE
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	16
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	COLOR
	.byte	TOK_PEEK
	.byte	TOK_PLOT
@FastBasic_LINE_121:  ; LINE 121
	.byte	TOK_BYTE
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	16
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_122:  ; LINE 122
	.byte	TOK_BYTE
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	16
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_123:  ; LINE 123
	.byte	TOK_BYTE
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	16
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_124:  ; LINE 124
	.byte	TOK_BYTE
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	16
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_SUB
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_125:  ; LINE 125
	.byte	TOK_BYTE
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	16
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_SUB
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_126:  ; LINE 126
	.byte	TOK_BYTE
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	16
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_127:  ; LINE 127
	.byte	TOK_BYTE
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	16
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_128:  ; LINE 128
	.byte	TOK_BYTE
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	16
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_129:  ; LINE 129
	.byte	TOK_RET
