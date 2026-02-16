	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
	dw .frame8
	dw .frame9
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d, $3e, $3f, $40, $41, $42, $43
.frame2
	db $01 ; bitmask
	db $44, $45, $33, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e
	db $4f, $50, $51, $52, $53, $54, $55, $43
.frame3
	db $01 ; bitmask
	db $44, $45, $33, $46, $47, $56, $57, $4a, $4b, $58, $59, $4e
	db $4f, $50, $51, $52, $53, $54, $55, $43
.frame4
	db $01 ; bitmask
	db $31, $32, $33, $34, $35, $36, $5a, $38, $39, $3a, $5b, $4e
	db $3c, $3d, $3e, $5c, $40, $41, $42, $43
.frame5
	db $02 ; bitmask
	db $31, $32, $33, $34, $35, $36, $5d, $5e, $38, $39, $3a, $5f
	db $60, $3c, $3d, $3e, $61, $40, $41, $42, $43
.frame6
	db $03 ; bitmask
	db $31, $32, $33, $62, $34, $35, $36, $63, $38, $39, $3a, $64
	db $4e, $3c, $3d, $3e, $65, $40, $41, $42, $43
.frame7
	db $04 ; bitmask
	db $31, $32, $66, $67, $34, $35, $36, $68, $38, $39, $3a, $64
	db $4e, $3c, $3d, $69, $6a, $40, $41, $6b, $42, $43
.frame8
	db $05 ; bitmask
	db $6c, $6d, $6e, $6f, $70
.frame9
	db $06 ; bitmask
	db $71, $72, $73, $74
