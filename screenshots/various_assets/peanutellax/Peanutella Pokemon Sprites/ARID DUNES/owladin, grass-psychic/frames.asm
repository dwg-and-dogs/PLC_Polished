	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33
.frame2
	db $01 ; bitmask
	db $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
	db $40, $31, $41, $42, $43, $44, $32, $45, $46, $33
.frame3
	db $02 ; bitmask
	db $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52
	db $00, $53, $54, $55, $31, $56, $57, $58, $44, $32, $45, $46
	db $33
.frame4
	db $03 ; bitmask
	db $59, $5a, $5b, $5c
