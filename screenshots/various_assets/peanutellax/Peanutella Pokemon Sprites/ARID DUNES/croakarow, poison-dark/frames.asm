	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $30, $31, $32, $33, $34, $35, $36, $37, $38
.frame2
	db $01 ; bitmask
	db $39, $00, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43
	db $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
	db $50, $51, $52, $53, $54
.frame3
	db $02 ; bitmask
	db $55, $56
.frame4
	db $03 ; bitmask
	db $57, $58, $55, $56, $59, $5a, $5b, $5c
