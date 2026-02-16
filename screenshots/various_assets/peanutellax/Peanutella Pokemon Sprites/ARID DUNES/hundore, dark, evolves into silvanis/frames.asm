	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25
.frame2
	db $01 ; bitmask
	db $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $20, $30
	db $31
.frame3
	db $02 ; bitmask
	db $32, $24, $33, $34
.frame4
	db $03 ; bitmask
	db $35, $36, $37, $38, $00, $00, $39
