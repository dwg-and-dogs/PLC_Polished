	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $00, $35, $36, $37, $38, $39, $3a, $3b
	db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $00, $46
	db $47
.frame2
	db $00 ; bitmask
	db $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53
	db $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $00, $5e
	db $5f
.frame3
	db $00 ; bitmask
	db $48, $49, $4a, $4b, $4c, $4d, $4e, $60, $61, $51, $52, $53
	db $62, $63, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $00, $5e
	db $5f
.frame4
	db $01 ; bitmask
	db $00, $00, $64, $65, $66, $67, $00, $00
.frame5
	db $02 ; bitmask
	db $68, $69, $6a
.frame6
	db $03 ; bitmask
	db $6b, $6c, $6d, $6e
