	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b
.frame2
	db $01 ; bitmask
	db $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27
	db $28, $29, $2a, $2b
.frame3
	db $02 ; bitmask
	db $19, $2c, $2d, $1b, $2e, $2f, $30, $31, $32, $33
.frame4
	db $02 ; bitmask
	db $19, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
.frame5
	db $02 ; bitmask
	db $19, $34, $3d, $3e, $3f, $40, $41, $42, $43, $44
