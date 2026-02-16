	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $02, $25, $26, $27
.frame2
	db $00 ; bitmask
	db $28, $29, $2a, $2b, $2c
.frame3
	db $01 ; bitmask
	db $2d, $2e, $2f, $30, $31, $32
.frame4
	db $02 ; bitmask
	db $33, $34, $35
