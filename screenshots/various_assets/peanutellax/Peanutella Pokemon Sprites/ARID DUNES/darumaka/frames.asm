	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c
.frame2
	db $01 ; bitmask
	db $2d, $2e, $2f, $24, $25, $30, $31, $32, $26, $27, $28, $33
	db $29, $2a, $34, $35, $00, $2b, $2c, $36, $37, $00
.frame3
	db $02 ; bitmask
	db $00, $38, $24, $39, $3a, $3b, $26, $27, $28, $29, $3c, $3d
	db $3e, $2b, $3f, $40, $41, $00, $42, $43
.frame4
	db $03 ; bitmask
	db $44, $45, $46, $47, $48, $49, $4a, $4b
