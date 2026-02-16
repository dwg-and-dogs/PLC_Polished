	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34
.frame2
	db $01 ; bitmask
	db $35, $36, $31, $37, $33, $38, $39, $3a, $3b
.frame3
	db $02 ; bitmask
	db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47
	db $48, $49, $4a, $00, $4b, $4c, $00, $00
.frame4
	db $03 ; bitmask
	db $4d, $3d, $3e, $4e, $4f, $50, $51, $52, $53, $54, $55, $56
	db $57, $58, $59, $5a, $00, $00, $00, $00, $00
