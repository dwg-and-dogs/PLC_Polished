	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24
.frame2
	db $01 ; bitmask
	db $25, $26, $27, $28, $24, $29, $2a, $2b, $2c, $2d
.frame3
	db $02 ; bitmask
	db $25, $26, $2e, $2f, $28, $30, $24, $31, $29, $32, $2a, $2b
	db $2c, $2d
.frame4
	db $03 ; bitmask
	db $33, $34, $35
