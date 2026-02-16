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
	db $24, $2a, $2b, $26, $2c, $2d, $2e, $2f, $30, $31
.frame3
	db $02 ; bitmask
	db $00, $00, $32, $33, $34, $35, $36, $26, $27, $37, $38, $39
	db $3a, $3b, $3c, $3d, $3e, $3f
.frame4
	db $03 ; bitmask
	db $00, $00, $32, $33, $34, $35, $40, $2b, $26, $2c, $2d, $41
	db $2f, $38, $39, $42, $43, $3c, $3d, $3e, $3f
.frame5
	db $04 ; bitmask
	db $44, $45, $46, $47, $48
