	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39
.frame2
	db $00 ; bitmask
	db $31, $3a, $3b, $34, $35, $36, $37, $38, $39
.frame3
	db $01 ; bitmask
	db $3c, $3d, $3e, $3b, $34, $3f, $40, $36, $37, $41, $42, $39
.frame4
	db $01 ; bitmask
	db $3c, $3d, $43, $3b, $34, $3f, $40, $44, $37, $41, $42, $39
