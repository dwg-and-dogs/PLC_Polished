	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $24
.frame2
	db $01 ; bitmask
	db $25, $26, $24, $27, $28, $29, $2a, $2b
.frame3
	db $02 ; bitmask
	db $2c, $2d, $2e, $24, $2f, $30, $31, $32
.frame4
	db $03 ; bitmask
	db $2c, $33, $2e, $24, $34, $35, $36, $37, $00
.frame5
	db $04 ; bitmask
	db $38, $39, $3a
.frame6
	db $04 ; bitmask
	db $3b, $3c, $3d
.frame7
	db $05 ; bitmask
	db $3e, $3f
