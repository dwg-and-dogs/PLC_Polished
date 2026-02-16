	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $00, $24, $25, $26, $27, $28, $00, $29
.frame2
	db $01 ; bitmask
	db $00, $2a, $2b, $2c, $2d, $2e, $2f, $00, $00
.frame3
	db $02 ; bitmask
	db $30, $31
