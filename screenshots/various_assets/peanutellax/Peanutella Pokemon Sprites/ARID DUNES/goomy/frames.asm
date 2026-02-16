	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24
	db $25, $26, $27, $28, $29, $2a, $00, $2b, $2c, $2d, $2e
.frame2
	db $01 ; bitmask
	db $2f, $00, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39
	db $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $00, $00
.frame3
	db $02 ; bitmask
	db $42, $43
