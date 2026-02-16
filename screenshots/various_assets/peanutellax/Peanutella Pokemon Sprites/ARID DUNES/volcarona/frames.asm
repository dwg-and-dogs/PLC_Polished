	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37
.frame2
	db $01 ; bitmask
	db $31, $32, $38, $34, $39, $3a, $36, $3b, $3c
.frame3
	db $02 ; bitmask
	db $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48
	db $49
.frame4
	db $03 ; bitmask
	db $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55
	db $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61
	db $00, $62
