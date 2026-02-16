	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $00, $31, $00, $32, $33, $34, $35, $36, $37, $38, $39, $3a
	db $3b, $3c, $3d, $3e, $3f, $40
.frame2
	db $01 ; bitmask
	db $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c
	db $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $00, $00
.frame3
	db $02 ; bitmask
	db $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61
	db $62, $63, $64, $65, $66, $00, $67, $68, $69, $00, $00
.frame4
	db $03 ; bitmask
	db $6a, $6b
