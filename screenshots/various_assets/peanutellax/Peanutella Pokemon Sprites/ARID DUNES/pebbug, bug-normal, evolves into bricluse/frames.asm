	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b
.frame2
	db $01 ; bitmask
	db $1c, $00, $19, $1a, $1b
.frame3
	db $02 ; bitmask
	db $1d, $1e, $1f
.frame4
	db $03 ; bitmask
	db $20, $21, $22, $23, $24, $25, $26
