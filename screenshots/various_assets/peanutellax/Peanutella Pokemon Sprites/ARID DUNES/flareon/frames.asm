	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $00, $00, $31, $32, $33, $34, $35, $36
.frame2
	db $01 ; bitmask
	db $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42
	db $43, $44, $00, $45, $46, $47, $48
.frame3
	db $02 ; bitmask
	db $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54
	db $55, $56, $00, $57, $58, $59
.frame4
	db $03 ; bitmask
	db $5a, $5b, $5c
.frame5
	db $00 ; bitmask
	db $00, $5d, $31, $32, $5e, $5f, $35, $36
