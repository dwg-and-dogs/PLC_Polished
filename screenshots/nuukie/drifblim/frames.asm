	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $00, $00, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a
	db $00, $3b, $00
.frame2
	db $01 ; bitmask
	db $00, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $3a, $44, $3b
	db $00
.frame3
	db $02 ; bitmask
	db $00, $45, $46, $47, $48, $49, $4a, $4b, $4c
.frame4
	db $03 ; bitmask
	db $4d, $4e, $4f, $50, $51, $52, $53, $54
