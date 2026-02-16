	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28
.frame2
	db $01 ; bitmask
	db $29, $2a, $2b, $2c, $2d, $26
.frame3
	db $01 ; bitmask
	db $2e, $2f, $2b, $2c, $2d, $26
.frame4
	db $01 ; bitmask
	db $29, $2a, $30, $31, $2d, $32
.frame5
	db $02 ; bitmask
	db $33, $34, $35, $36, $24, $2d, $26
.frame6
	db $03 ; bitmask
	db $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
.frame7
	db $03 ; bitmask
	db $40, $41, $42, $43, $44, $45, $46, $47, $3f
