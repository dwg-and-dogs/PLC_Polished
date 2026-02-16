	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24
.frame2
	db $01 ; bitmask
	db $25
.frame3
	db $02 ; bitmask
	db $26, $27
.frame4
	db $03 ; bitmask
	db $28, $29, $2a
