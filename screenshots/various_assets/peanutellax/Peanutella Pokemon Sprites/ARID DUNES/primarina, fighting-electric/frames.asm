	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d, $3e, $3f, $40
.frame2
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $41, $38, $39, $3a, $3b, $3c
	db $3d, $3e, $3f, $40
.frame3
	db $01 ; bitmask
	db $42, $43, $44, $45, $46, $47, $48, $34, $35, $36, $41, $38
	db $39, $3a, $3b, $3c, $3d, $3e, $3f, $40
.frame4
	db $01 ; bitmask
	db $49, $4a, $4b, $4c, $4d, $4e, $4f, $34, $35, $36, $41, $38
	db $39, $3a, $3b, $3c, $3d, $3e, $3f, $40
.frame5
	db $02 ; bitmask
	db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $00
