	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d
.frame2
	db $01 ; bitmask
	db $00, $00, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47
	db $48, $49, $4a, $4b, $4c
.frame3
	db $02 ; bitmask
	db $4d, $00, $4e, $4f, $50, $51, $52, $43, $53, $54, $55, $56
	db $57, $58, $59, $5a
.frame4
	db $03 ; bitmask
	db $00, $00, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64
	db $65, $66, $67, $68, $69, $6a, $6b
.frame5
	db $03 ; bitmask
	db $6c, $6d, $6e, $6f, $70, $71, $72, $60, $61, $73, $74, $64
	db $75, $76, $67, $77, $78, $79, $7a
.frame6
	db $04 ; bitmask
	db $7b, $7c, $7d, $7e
