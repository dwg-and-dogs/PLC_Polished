	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $1e, $1f, $03, $03, $03
.frame2
	db $01 ; bitmask
	db $20, $1b, $21, $22, $23, $03, $03, $24
.frame3
	db $02 ; bitmask
	db $25, $26, $27, $28, $29, $2a
.frame4
	db $03 ; bitmask
	db $2b, $2c, $03, $2d, $2e, $2f, $30, $31, $32
.frame5
	db $04 ; bitmask
	db $33, $34, $35
