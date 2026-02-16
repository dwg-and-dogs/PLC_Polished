	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25
.frame2
	db $01 ; bitmask
	db $26, $27, $28, $29
.frame3
	db $02 ; bitmask
	db $2a, $2b, $26, $2c, $28, $29
.frame4
	db $03 ; bitmask
	db $2d, $2e, $2f
