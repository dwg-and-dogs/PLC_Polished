	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b
.frame2
	db $00 ; bitmask
	db $1c, $1d, $1b
.frame3
	db $01 ; bitmask
	db $00, $1e, $1f, $20, $21, $22, $23, $24
