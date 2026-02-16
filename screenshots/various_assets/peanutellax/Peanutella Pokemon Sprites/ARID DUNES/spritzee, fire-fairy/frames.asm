	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $30
.frame2
	db $01 ; bitmask
	db $31, $32, $33, $34, $35, $29, $36, $37, $38, $39, $3a, $3b
	db $3c, $3d, $3e
.frame3
	db $01 ; bitmask
	db $3f, $40, $41, $42, $43, $29, $44, $45, $46, $47, $48, $49
	db $4a, $4b, $3e
.frame4
	db $00 ; bitmask
	db $24, $4c, $4d, $4e, $4f, $29, $50, $51, $52, $48, $53, $54
	db $3e
.frame5
	db $02 ; bitmask
	db $55, $56, $57, $58
