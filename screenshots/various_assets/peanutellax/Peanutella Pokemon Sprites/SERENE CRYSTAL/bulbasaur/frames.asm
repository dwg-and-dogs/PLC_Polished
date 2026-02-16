	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d
.frame2
	db $00 ; bitmask
	db $1e, $1a, $1b, $1f, $1d
.frame3
	db $01 ; bitmask
	db $20, $21, $22, $23, $24, $00, $25, $26
.frame4
	db $02 ; bitmask
	db $27, $28, $29, $2a, $2b, $2c, $2d
