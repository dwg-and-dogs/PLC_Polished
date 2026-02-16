	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27
.frame2
	db $01 ; bitmask
	db $24, $25, $28, $29, $26, $27, $2a
.frame3
	db $02 ; bitmask
	db $24, $25, $26, $27, $2b, $2c, $2d
.frame4
	db $00 ; bitmask
	db $2e, $2f, $30, $31
