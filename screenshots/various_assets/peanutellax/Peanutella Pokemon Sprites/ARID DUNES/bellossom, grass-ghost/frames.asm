	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $24, $00, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e
	db $00, $2f
.frame2
	db $01 ; bitmask
	db $30, $31, $32, $33, $34, $35, $36, $37, $2a, $38, $39, $3a
	db $3b, $3c, $3d
.frame3
	db $02 ; bitmask
.frame4
	db $03 ; bitmask
	db $3e, $3f, $40, $41, $42, $43, $44
.frame5
	db $04 ; bitmask
	db $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $43, $00
