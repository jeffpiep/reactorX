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
	.importzp	TOK_DIV
	.importzp	TOK_BIT_AND
	.importzp	TOK_PEEK
	.importzp	TOK_DPEEK
	.importzp	TOK_RAND
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
	.importzp	TOK_DIM
	.importzp	TOK_INT_STR
	.importzp	TOK_SOUND_OFF
	.importzp	TOK_PAUSE
;-----------------------------
; Variables
NUM_VARS = 14
;-----------------------------
; Bytecode
bytecode_start:
@FastBasic_LINE_21:  ; LINE 21
	.byte	TOK_VAR_ADDR
	.byte	0
	.byte	TOK_CDATA
	.word	jump_lbl_1
	.byte	0
	.byte	0
	.byte	0
	.byte	14
	.byte	17
	.byte	21
	.byte	17
	.byte	14
	.byte	0
	.byte	0
	.byte	0
jump_lbl_1:
	.byte	TOK_DPOKE
@FastBasic_LINE_22:  ; LINE 22
	.byte	TOK_VAR_ADDR
	.byte	1
	.byte	TOK_BYTE
	.byte	11
	.byte	TOK_DPOKE
@FastBasic_LINE_23:  ; LINE 23
	.byte	TOK_VAR_ADDR
	.byte	2
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_DIM
	.byte	TOK_VAR_ADDR
	.byte	3
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_DIM
@FastBasic_LINE_24:  ; LINE 24
	.byte	TOK_BYTE
	.byte	IOCHN
	.byte	TOK_BYTE
	.byte	96
	.byte	TOK_POKE
	.byte	TOK_CLOSE
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_GRAPHICS
@FastBasic_LINE_25:  ; LINE 25
	.byte	TOK_BYTE
	.byte	IOCHN
	.byte	TOK_BYTE
	.byte	96
	.byte	TOK_POKE
	.byte	TOK_CLOSE
	.byte	TOK_BYTE
	.byte	7
	.byte	TOK_GRAPHICS
@FastBasic_LINE_26:  ; LINE 26
	.byte	TOK_NUM
	.word	752
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_30:  ; LINE 30
	.byte	TOK_VAR_ADDR
	.byte	4
	.byte	TOK_NUM
	.word	44032
	.byte	TOK_DPOKE
@FastBasic_LINE_31:  ; LINE 31
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_MOVE
@FastBasic_LINE_32:  ; LINE 32
	.byte	TOK_NUM
	.word	704
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_POKE
@FastBasic_LINE_33:  ; LINE 33
	.byte	TOK_NUM
	.word	54279
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_NUM
	.word	256
	.byte	TOK_DIV
	.byte	TOK_POKE
@FastBasic_LINE_34:  ; LINE 34
	.byte	TOK_NUM
	.word	53277
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_POKE
@FastBasic_LINE_35:  ; LINE 35
	.byte	TOK_NUM
	.word	559
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_POKE
@FastBasic_LINE_46:  ; LINE 46
	.byte	TOK_VAR_ADDR
	.byte	5
	.byte	TOK_NUM
	.word	1000
	.byte	TOK_DPOKE
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_VAR_ADDR
	.byte	7
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_DPOKE
@FastBasic_LINE_50:  ; LINE 50
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_NUM
	.word	65516
	.byte	TOK_DPOKE
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_0
	.byte	TOK_DPOKE
@FastBasic_LINE_52:  ; LINE 52
	.byte	TOK_VAR_ADDR
	.byte	8
	.byte	TOK_BYTE
	.byte	80
	.byte	TOK_DPOKE
@FastBasic_LINE_53:  ; LINE 53
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_DPOKE
@FastBasic_LINE_54:  ; LINE 54
	.byte	TOK_BYTE
	.byte	COLOR
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_56:  ; LINE 56
	.byte	TOK_BYTE
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	9
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	COLOR
	.byte	TOK_PEEK
	.byte	TOK_PLOT
	.byte	TOK_BYTE
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	9
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	9
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_SUB
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_SUB
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	9
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	9
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_60:  ; LINE 60
jump_lbl_2:
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_3
@FastBasic_LINE_63:  ; LINE 63
	.byte	TOK_NUM
	.word	53248
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_BYTE
	.byte	43
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_POKE
@FastBasic_LINE_64:  ; LINE 64
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_NUM
	.word	512
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	9
	.byte	TOK_BYTE
	.byte	11
	.byte	TOK_ADD
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_MOVE
@FastBasic_LINE_67:  ; LINE 67
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_DPEEK
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_DPEEK
	.byte	TOK_SGN
	.byte	TOK_ADD
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_RAND
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_DPEEK
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_DIV
	.byte	TOK_SGN
	.byte	TOK_SUB
	.byte	TOK_DPOKE
@FastBasic_LINE_68:  ; LINE 68
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_DPEEK
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_DPEEK
	.byte	TOK_SGN
	.byte	TOK_SUB
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_RAND
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_ADD
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_DPEEK
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_DIV
	.byte	TOK_SGN
	.byte	TOK_SUB
	.byte	TOK_DPOKE
@FastBasic_LINE_71:  ; LINE 71
	.byte	TOK_VAR_ADDR
	.byte	10
	.byte	TOK_NUM
	.word	632
	.byte	TOK_PEEK
	.byte	TOK_DPOKE
@FastBasic_LINE_72:  ; LINE 72
	.byte	TOK_VAR_ADDR
	.byte	11
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_BIT_AND
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_BIT_AND
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_EQ
	.byte	TOK_SUB
	.byte	TOK_DPOKE
@FastBasic_LINE_73:  ; LINE 73
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_1
	.byte	TOK_BIT_AND
	.byte	TOK_1
	.byte	TOK_EQ
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_BIT_AND
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_SUB
	.byte	TOK_DPOKE
@FastBasic_LINE_76:  ; LINE 76
	.byte	TOK_NUM
	.word	53278
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_77:  ; LINE 77
	.byte	TOK_1
	.byte	TOK_PAUSE
@FastBasic_LINE_78:  ; LINE 78
	.byte	TOK_VAR_ADDR
	.byte	13
	.byte	TOK_NUM
	.word	53252
	.byte	TOK_PEEK
	.byte	TOK_DPOKE
@FastBasic_LINE_79:  ; LINE 79
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_2
@FastBasic_LINE_82:  ; LINE 82
	.byte	TOK_JUMP
	.word	jump_lbl_2
jump_lbl_3:
@FastBasic_LINE_85:  ; LINE 85
	.byte	TOK_PRINT_TAB
	.byte	TOK_CSTRING
	.byte	6, "SCORE:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_EOL
@FastBasic_LINE_86:  ; LINE 86
	.byte	TOK_SOUND_OFF
	.byte	TOK_END
