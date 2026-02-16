	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24
.frame2
	db $01 ; bitmask
	db $25, $26, $27, $28, $29, $2a, $2b
.frame3
	db $02 ; bitmask
	db $2c
.frame4
	db $03 ; bitmask
	db $2d, $2e, $2f
