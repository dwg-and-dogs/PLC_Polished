	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $24, $25
.frame2
	db $01 ; bitmask
	db $26, $27, $28, $29, $2a, $24, $2b, $2c, $2d, $25
.frame3
	db $01 ; bitmask
	db $26, $27, $2e, $2f, $2a, $24, $2b, $30, $2d, $25
.frame4
	db $01 ; bitmask
	db $26, $27, $31, $32, $2a, $24, $2b, $33, $2d, $25
.frame5
	db $02 ; bitmask
	db $24, $34, $25, $35, $36, $37
.frame6
	db $03 ; bitmask
	db $38, $39, $3a
.frame7
	db $04 ; bitmask
	db $3b, $3c, $3d, $3e, $3f, $40, $24, $41, $42, $25, $43
