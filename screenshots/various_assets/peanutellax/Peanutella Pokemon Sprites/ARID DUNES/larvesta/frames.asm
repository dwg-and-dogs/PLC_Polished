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
	db $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35
	db $36
.frame3
	db $02 ; bitmask
	db $37, $2b, $2c, $38, $2e, $2f, $30, $31, $32, $33, $34, $39
	db $3a, $36
.frame4
	db $03 ; bitmask
	db $3b, $3c, $2b, $2c, $3d, $2e, $2f, $30, $31, $32, $33, $34
	db $3e, $3f, $36
.frame5
	db $03 ; bitmask
	db $40, $41, $2b, $2c, $42, $2e, $2f, $30, $31, $32, $33, $34
	db $43, $35, $36
