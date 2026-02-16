	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21
.frame2
	db $00 ; bitmask
	db $22, $1a, $23, $1c, $1d, $24, $25, $26, $21
.frame3
	db $01 ; bitmask
	db $27, $28, $29, $04, $2a, $2b, $2c
.frame4
	db $02 ; bitmask
	db $2d, $2e, $2f
