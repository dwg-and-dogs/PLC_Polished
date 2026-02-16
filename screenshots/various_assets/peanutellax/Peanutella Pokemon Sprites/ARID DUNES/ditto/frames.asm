	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24
	db $25, $26, $27, $28
.frame2
	db $00 ; bitmask
	db $29, $2a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24
	db $25, $26, $2b, $28
.frame3
	db $01 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $2c, $2d
	db $2e, $27, $28
.frame4
	db $01 ; bitmask
	db $29, $2a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $2c, $2d
	db $2e, $27, $28
.frame5
	db $02 ; bitmask
	db $2f, $30
