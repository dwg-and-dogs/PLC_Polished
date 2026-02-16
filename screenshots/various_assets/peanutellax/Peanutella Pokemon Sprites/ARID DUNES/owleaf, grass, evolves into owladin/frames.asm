	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29
.frame2
	db $01 ; bitmask
	db $2a, $2b, $24, $25, $2c, $2d, $27, $28, $29, $2e, $2f, $30
	db $31
.frame3
	db $02 ; bitmask
	db $32, $33, $34, $24, $35, $36, $2d, $27, $28, $37, $38, $39
	db $3a, $3b, $3c, $3d
.frame4
	db $03 ; bitmask
	db $3e, $3f, $24, $40, $41, $2d, $27, $28, $42, $43, $44, $45
	db $46, $47, $48
.frame5
	db $04 ; bitmask
	db $00, $49, $4a, $4b, $4c, $4d
