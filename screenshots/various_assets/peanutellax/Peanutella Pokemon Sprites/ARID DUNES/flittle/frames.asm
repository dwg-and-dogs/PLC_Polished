	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28
.frame2
	db $01 ; bitmask
	db $24, $29, $2a, $27, $2b, $2c
.frame3
	db $02 ; bitmask
	db $2d, $2e, $2f, $30, $24, $31, $32, $33, $34, $35, $02, $36
.frame4
	db $03 ; bitmask
	db $37, $38, $39, $3a
