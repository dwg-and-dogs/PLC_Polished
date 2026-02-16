	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $00, $00, $00, $24, $25, $26, $27, $28, $29, $2a, $2b, $00
	db $2c, $2d, $2e, $2f, $00, $00, $30, $31, $32, $33, $34
.frame2
	db $01 ; bitmask
	db $35, $36, $37
.frame3
	db $02 ; bitmask
	db $38, $39, $3a, $3b
