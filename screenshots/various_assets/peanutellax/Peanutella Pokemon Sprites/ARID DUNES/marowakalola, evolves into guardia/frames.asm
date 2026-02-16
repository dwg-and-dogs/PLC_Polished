	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27
.frame2
	db $01 ; bitmask
	db $28, $29, $2a, $2b, $2c
.frame3
	db $02 ; bitmask
	db $2d, $2e, $2f, $30, $31, $28, $32, $33, $34, $35, $29, $2a
	db $00, $36, $37, $00, $38, $39, $3a, $3b, $3c, $00, $00
.frame4
	db $03 ; bitmask
	db $3d, $3e, $3f, $40, $28, $41, $42, $43, $44, $45, $2a, $46
	db $47, $48, $49, $38, $39, $4a, $4b, $4c, $00, $00, $00
