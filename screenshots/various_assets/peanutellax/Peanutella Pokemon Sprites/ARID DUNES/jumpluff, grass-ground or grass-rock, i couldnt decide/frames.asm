	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
.frame2
	db $01 ; bitmask
	db $3d, $3e, $3f, $31, $32, $00, $40, $41, $34, $35, $42, $43
	db $44, $45, $36, $46, $47, $48, $38, $39, $49, $4a, $4b, $3b
	db $3c
.frame3
	db $02 ; bitmask
	db $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57
	db $58
.frame4
	db $03 ; bitmask
	db $4e, $4f, $52, $55, $56
