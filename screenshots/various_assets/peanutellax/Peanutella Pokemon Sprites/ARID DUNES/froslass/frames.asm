	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $00, $00, $00, $31, $32, $33, $34, $35, $36, $37, $38, $39
	db $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $00, $00, $00
.frame2
	db $00 ; bitmask
	db $00, $00, $00, $42, $43, $44, $45, $46, $47, $48, $49, $4a
	db $4b, $4c, $4d, $3d, $3e, $3f, $40, $41, $00, $00, $00
.frame3
	db $01 ; bitmask
	db $4e, $4f
