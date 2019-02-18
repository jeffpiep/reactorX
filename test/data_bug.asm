; Imported symbols

; Exported symbols
	.export bytecode_start
	.exportzp NUM_VARS

	.include "atari.inc"

; TOKENS:
	.importzp	TOK_END
	.importzp	TOK_CDATA
	.importzp	TOK_VAR_SADDR
;-----------------------------
; Variables
NUM_VARS = 1
	.import heap_start
	.export fb_var_TEST
fb_var_TEST	= heap_start + 0	; Word Array variable
;-----------------------------
; Bytecode
bytecode_start:
@FastBasic_LINE_1:  ; LINE 1
	.byte	TOK_VAR_SADDR
	.byte	0
	.byte	TOK_CDATA
	.word	jump_lbl_1
	.word	1
	.word	0
	.word	65535
	.word	0
	.word	1
jump_lbl_1:
	.byte	TOK_END
