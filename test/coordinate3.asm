; Imported symbols
	.globalzp COLCRS
	.globalzp COLOR
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
	.importzp	TOK_VAR_SADDR
	.importzp	TOK_VAR_LOAD
	.importzp	TOK_BYTE_SADDR
	.importzp	TOK_0
	.importzp	TOK_1
	.importzp	TOK_PUSH
	.importzp	TOK_PUSH_VAR_LOAD
	.importzp	TOK_PUSH_BYTE
	.importzp	TOK_PUSH_1
	.importzp	TOK_ADD
	.importzp	TOK_SUB
	.importzp	TOK_DIV
	.importzp	TOK_BIT_AND
	.importzp	TOK_PEEK
	.importzp	TOK_DPEEK
	.importzp	TOK_EQ
	.importzp	TOK_COMP_0
	.importzp	TOK_POKE
	.importzp	TOK_DPOKE
	.importzp	TOK_MOVE
	.importzp	TOK_VAR_STORE
	.importzp	TOK_SADDR
	.importzp	TOK_GRAPHICS
	.importzp	TOK_PLOT
	.importzp	TOK_PRINT_STR
	.importzp	TOK_PRINT_TAB
	.importzp	TOK_PRINT_EOL
	.importzp	TOK_CLOSE
	.importzp	TOK_JUMP
	.importzp	TOK_CJUMP
	.importzp	TOK_DIM
	.importzp	TOK_INT_STR
	.importzp	TOK_PAUSE
;-----------------------------
; Variables
NUM_VARS = 11
	.import heap_start
	.export fb_var_E
	.export fb_var_LL
	.export fb_var_LR
	.export fb_var_NL
	.export fb_var_PM
	.export fb_var_S
	.export fb_var_UD
	.export fb_var_X
	.export fb_var_X0
	.export fb_var_Y
	.export fb_var_Y0
fb_var_E	= heap_start + 0	; Word variable
fb_var_LL	= heap_start + 2	; Word variable
fb_var_LR	= heap_start + 18	; Word variable
fb_var_NL	= heap_start + 10	; Word variable
fb_var_PM	= heap_start + 8	; Word variable
fb_var_S	= heap_start + 16	; Word variable
fb_var_UD	= heap_start + 20	; Word variable
fb_var_X	= heap_start + 4	; Word Array variable
fb_var_X0	= heap_start + 12	; Word variable
fb_var_Y	= heap_start + 6	; Word Array variable
fb_var_Y0	= heap_start + 14	; Word variable
;-----------------------------
; Bytecode
bytecode_start:
@FastBasic_LINE_2:  ; LINE 2
	.byte	TOK_CSTRING
	.byte	14, "     0Xx0     "
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	0
@FastBasic_LINE_4:  ; LINE 4
	.byte	TOK_BYTE
	.byte	14
	.byte	TOK_VAR_STORE
	.byte	1
@FastBasic_LINE_5:  ; LINE 5
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
@FastBasic_LINE_7:  ; LINE 7
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_GRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_GRAPHICS
	.byte	TOK_NUM
	.word	752
	.byte	TOK_SADDR
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_8:  ; LINE 8
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_BYTE
	.byte	7
	.byte	TOK_GRAPHICS
@FastBasic_LINE_16:  ; LINE 16
	.byte	TOK_NUM
	.word	44032
	.byte	TOK_VAR_STORE
	.byte	4
@FastBasic_LINE_17:  ; LINE 17
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	4
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_MOVE
@FastBasic_LINE_18:  ; LINE 18
	.byte	TOK_NUM
	.word	704
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_POKE
@FastBasic_LINE_19:  ; LINE 19
	.byte	TOK_NUM
	.word	54279
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_PUSH
	.byte	TOK_NUM
	.word	256
	.byte	TOK_DIV
	.byte	TOK_POKE
@FastBasic_LINE_20:  ; LINE 20
	.byte	TOK_NUM
	.word	53277
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_POKE
@FastBasic_LINE_21:  ; LINE 21
	.byte	TOK_NUM
	.word	559
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_POKE
@FastBasic_LINE_30:  ; LINE 30
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_32:  ; LINE 32
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
@FastBasic_LINE_33:  ; LINE 33
	.byte	TOK_BYTE
	.byte	80
	.byte	TOK_VAR_STORE
	.byte	6
@FastBasic_LINE_34:  ; LINE 34
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_VAR_STORE
	.byte	7
@FastBasic_LINE_35:  ; LINE 35
	.byte	TOK_BYTE_SADDR
	.byte	COLOR
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_36:  ; LINE 36
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_POKE
	.byte	TOK_PLOT
@FastBasic_LINE_38:  ; LINE 38
jump_lbl_1:
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_2
@FastBasic_LINE_40:  ; LINE 40
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_PAUSE
@FastBasic_LINE_42:  ; LINE 42
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_PUSH_VAR_LOAD
	.byte	4
	.byte	TOK_PUSH
	.byte	TOK_NUM
	.word	512
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	3
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	9
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_MOVE
@FastBasic_LINE_43:  ; LINE 43
	.byte	TOK_NUM
	.word	53248
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	6
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	43
	.byte	TOK_ADD
	.byte	TOK_POKE
@FastBasic_LINE_45:  ; LINE 45
	.byte	TOK_NUM
	.word	632
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_46:  ; LINE 46
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_EQ
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_47:  ; LINE 47
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_1
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	10
@FastBasic_LINE_50:  ; LINE 50
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	9
	.byte	TOK_ADD
	.byte	TOK_DPOKE
@FastBasic_LINE_51:  ; LINE 51
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_ADD
	.byte	TOK_DPOKE
@FastBasic_LINE_53:  ; LINE 53
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_DPEEK
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_TAB
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_DPEEK
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_EOL
@FastBasic_LINE_55:  ; LINE 55
	.byte	TOK_JUMP
	.word	jump_lbl_1
jump_lbl_2:
	.byte	TOK_END
