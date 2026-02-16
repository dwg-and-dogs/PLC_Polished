	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
	db $3c, $3d, $00
.frame2
	db $01 ; bitmask
	db $3e, $3f
.frame3
	db $01 ; bitmask
	db $3e, $40
.frame4
	db $01 ; bitmask
	db $41, $42
.frame5
	db $01 ; bitmask
	db $43, $44
