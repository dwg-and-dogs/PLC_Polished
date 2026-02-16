	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27
.frame2
	db $01 ; bitmask
	db $28, $29, $00, $2a, $2b, $2c, $2d, $2e, $2f, $30, $19, $31
	db $32
.frame3
	db $02 ; bitmask
	db $33, $34, $00, $35, $36, $2c, $37, $38, $39, $3a, $3b, $00
