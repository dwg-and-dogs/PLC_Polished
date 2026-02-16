	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
.frame2
	db $01 ; bitmask
	db $3c, $3d
.frame3
	db $02 ; bitmask
	db $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49
	db $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55
	db $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e
.frame4
	db $03 ; bitmask
	db $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a
	db $6b, $6c
