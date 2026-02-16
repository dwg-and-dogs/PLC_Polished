	dw .frame1
	dw .frame2
.frame1
	db $00 ; bitmask
	db $31, $32, $33
.frame2
	db $01 ; bitmask
	db $34, $35, $36, $37, $38, $39, $31, $32, $33, $3a, $3b, $3c
	db $3d, $3e, $3f, $40, $41
