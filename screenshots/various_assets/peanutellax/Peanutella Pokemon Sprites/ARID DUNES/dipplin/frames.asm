	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $30, $31
.frame2
	db $00 ; bitmask
	db $32, $25, $26, $33, $34, $29, $2a, $2b, $35, $2d, $2e, $36
	db $37, $31
.frame3
	db $00 ; bitmask
	db $32, $38, $39, $33, $3a, $3b, $3c, $2b, $3d, $3e, $3f, $36
	db $40, $41
.frame4
	db $00 ; bitmask
	db $32, $38, $26, $33, $3a, $29, $2a, $2b, $3d, $42, $2e, $36
	db $40, $41
.frame5
	db $01 ; bitmask
	db $43, $44, $45, $46
