	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27
.frame2
	db $01 ; bitmask
	db $28, $29, $24, $25, $2a, $2b, $26, $27, $2c, $2d
.frame3
	db $02 ; bitmask
	db $2e, $2f, $30, $31, $32, $24, $25, $33, $34, $35, $36, $37
.frame4
	db $03 ; bitmask
	db $2e, $2f, $30, $31, $32, $28, $29, $24, $25, $2a, $2b, $33
	db $34, $2c, $2d, $35, $36, $37
