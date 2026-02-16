	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32
.frame2
	db $01 ; bitmask
	db $33, $34, $06, $06, $31, $35, $36, $37, $38, $39, $3a, $3b
	db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47
	db $48, $49, $4a
.frame3
	db $02 ; bitmask
	db $4b, $4c, $4d, $4e, $06, $06, $4f, $50, $51, $36, $52, $53
	db $54, $55, $39, $56, $57, $58, $59, $3e, $3f, $5a, $5b, $5c
	db $5d, $5e, $45, $5f, $60, $61, $62, $63, $4a
.frame4
	db $03 ; bitmask
	db $64
