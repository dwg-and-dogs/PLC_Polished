	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28
.frame2
	db $00 ; bitmask
	db $29, $2a, $2b, $2c, $2d
.frame3
	db $01 ; bitmask
	db $2e, $2f, $30, $31
.frame4
	db $01 ; bitmask
	db $32, $33, $34, $35
.frame5
	db $02 ; bitmask
	db $36, $37, $38
