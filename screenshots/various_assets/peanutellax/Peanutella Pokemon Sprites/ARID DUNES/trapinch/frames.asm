	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $0e, $1c, $1d, $1e, $1f, $20, $21, $22, $23
	db $24, $25, $26
.frame2
	db $01 ; bitmask
	db $03, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30
.frame3
	db $02 ; bitmask
	db $31, $03, $32, $33
.frame4
	db $03 ; bitmask
	db $34, $0e, $35, $36, $37, $03
