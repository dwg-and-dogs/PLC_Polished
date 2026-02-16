	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $03
.frame2
	db $01 ; bitmask
	db $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27
	db $03, $03
.frame3
	db $01 ; bitmask
	db $1c, $1d, $1e, $1f, $20, $28, $22, $23, $29, $25, $26, $27
	db $03, $03
.frame4
	db $02 ; bitmask
	db $2a
