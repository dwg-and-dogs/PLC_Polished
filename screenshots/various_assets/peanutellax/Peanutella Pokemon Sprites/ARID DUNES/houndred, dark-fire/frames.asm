	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37
.frame2
	db $01 ; bitmask
	db $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
.frame3
	db $02 ; bitmask
	db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b
.frame4
	db $03 ; bitmask
	db $40, $41, $4c, $43, $44, $45, $4d, $4e, $48, $4f, $50, $51
	db $52, $53, $54, $55, $56
.frame5
	db $03 ; bitmask
	db $40, $57, $58, $59, $44, $45, $5a, $5b, $48, $5c, $5d, $4b
	db $5e, $5f, $60, $61, $56
.frame6
	db $04 ; bitmask
	db $40, $62, $63, $64, $44, $45, $65, $66, $48, $67, $68, $4b
	db $69, $6a, $6b, $6c, $61, $56
.frame7
	db $03 ; bitmask
	db $40, $41, $6d, $6e, $44, $45, $65, $6f, $48, $70, $71, $4b
	db $72, $73, $74, $75, $56
