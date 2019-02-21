; Imported symbols
	.globalzp COLCRS
	.globalzp COLOR
	.globalzp DEGFLAG
	.globalzp DRAWLN
	.globalzp ROWCRS

; Exported symbols
	.export bytecode_start
	.exportzp NUM_VARS

	.include "atari.inc"

; TOKENS:
	.importzp	TOK_BYTE
	.importzp	TOK_VAR_SADDR
	.importzp	TOK_VAR_LOAD
	.importzp	TOK_BYTE_SADDR
	.importzp	TOK_1
	.importzp	TOK_PUSH_VAR_LOAD
	.importzp	TOK_PUSH_BYTE
	.importzp	TOK_PUSH_1
	.importzp	TOK_ADD
	.importzp	TOK_MUL
	.importzp	TOK_L_NOT
	.importzp	TOK_POKE
	.importzp	TOK_DPOKE
	.importzp	TOK_VAR_STORE
	.importzp	TOK_GRAPHICS
	.importzp	TOK_PLOT
	.importzp	TOK_DRAWTO
	.importzp	TOK_CLOSE
	.importzp	TOK_JUMP
	.importzp	TOK_CJUMP
	.importzp	TOK_FOR
	.importzp	TOK_FOR_NEXT
	.importzp	TOK_FOR_EXIT
	.importzp	TOK_INT_FP
	.importzp	TOK_FLOAT
	.importzp	TOK_FP_MUL
	.importzp	TOK_FP_ADD
	.importzp	TOK_FP_INT
	.importzp	TOK_FP_SIN
	.importzp	TOK_FP_COS
;-----------------------------
; Variables
NUM_VARS = 4
	.import heap_start
	.export fb_var_D
	.export fb_var_RADIUS
	.export fb_var_X0
	.export fb_var_Y0
fb_var_D	= heap_start + 6	; Word variable
fb_var_RADIUS	= heap_start + 0	; Word variable
fb_var_X0	= heap_start + 2	; Word variable
fb_var_Y0	= heap_start + 4	; Word variable
;-----------------------------
; Bytecode
bytecode_start:
@FastBasic_LINE_1:  ; LINE 1
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_BYTE
	.byte	7
	.byte	TOK_GRAPHICS
@FastBasic_LINE_2:  ; LINE 2
	.byte	TOK_BYTE_SADDR
	.byte	COLOR
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_3:  ; LINE 3
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_VAR_STORE
	.byte	0
@FastBasic_LINE_4:  ; LINE 4
	.byte	TOK_BYTE
	.byte	80
	.byte	TOK_VAR_STORE
	.byte	1
@FastBasic_LINE_5:  ; LINE 5
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_VAR_STORE
	.byte	2
@FastBasic_LINE_6:  ; LINE 6
	.byte	TOK_BYTE_SADDR
	.byte	DEGFLAG
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_7:  ; LINE 7
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_INT_FP
	.byte	TOK_FLOAT
	.byte	$40, $22, $50, $00, $00, $00
	.byte	TOK_FP_COS
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_INT_FP
	.byte	TOK_FLOAT
	.byte	$40, $22, $50, $00, $00, $00
	.byte	TOK_FP_SIN
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_PLOT
@FastBasic_LINE_16:  ; LINE 16
	.byte	TOK_VAR_SADDR
	.byte	3
	.byte	TOK_PUSH_1
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_1
jump_lbl_2:
@FastBasic_LINE_17:  ; LINE 17
	.byte	TOK_BYTE_SADDR
	.byte	COLCRS
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_INT_FP
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_BYTE
	.byte	45
	.byte	TOK_MUL
	.byte	TOK_INT_FP
	.byte	TOK_FLOAT
	.byte	$40, $22, $50, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_COS
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_BYTE_SADDR
	.byte	ROWCRS
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	0
	.byte	TOK_INT_FP
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_BYTE
	.byte	45
	.byte	TOK_MUL
	.byte	TOK_INT_FP
	.byte	TOK_FLOAT
	.byte	$40, $22, $50, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_SIN
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_18:  ; LINE 18
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_2
jump_lbl_1:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_19:  ; LINE 19
jump_lbl_3:
@FastBasic_LINE_20:  ; LINE 20
	.byte	TOK_JUMP
	.word	jump_lbl_3
