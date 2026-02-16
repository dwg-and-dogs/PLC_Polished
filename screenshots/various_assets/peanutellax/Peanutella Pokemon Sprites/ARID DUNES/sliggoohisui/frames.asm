	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $00, $00, $00, $00, $00, $00, $00, $31, $32, $00, $00, $00
	db $00, $33, $34, $00, $00
.frame2
	db $00 ; bitmask
	db $00, $35, $36, $37, $38, $39, $3a, $3b, $3c, $00, $3d, $3e
	db $3f, $40, $41, $42, $00
.frame3
	db $01 ; bitmask
	db $43, $44
