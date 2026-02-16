	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24
.frame2
	db $01 ; bitmask
	db $25, $26, $24, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $03, $30, $31
.frame3
	db $02 ; bitmask
	db $25, $26, $24, $32, $29, $33, $34, $2d, $35, $36, $03, $03
.frame4
	db $03 ; bitmask
	db $37, $38, $39, $3a, $3b, $3c
