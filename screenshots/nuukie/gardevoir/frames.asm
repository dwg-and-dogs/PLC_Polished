	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $05, $38
.frame2
	db $01 ; bitmask
	db $05, $05, $39, $3a, $3b, $3c, $3d, $3e, $3f, $05, $37, $05
	db $38
.frame3
	db $02 ; bitmask
	db $40, $41, $42, $05, $05, $43, $44, $45, $3a, $46, $47, $48
	db $49, $4a, $3c, $3d, $3e, $4b, $4c, $3f, $05, $37, $4d, $4e
	db $05, $38
.frame4
	db $03 ; bitmask
	db $40, $41, $42, $05, $05, $43, $44, $45, $3a, $46, $47, $48
	db $49, $4a, $3c, $3d, $3e, $4b, $4c, $3f, $05, $4f, $50, $51
	db $05, $38, $52, $53, $54
.frame5
	db $04 ; bitmask
	db $40, $41, $42, $05, $05, $43, $44, $45, $3a, $3b, $49, $4a
	db $3c, $3d, $3e, $3f, $05, $37, $05, $55, $56, $57, $58, $59
	db $5a, $5b, $5c
.frame6
	db $05 ; bitmask
	db $40, $41, $42, $05, $05, $43, $44, $45, $3a, $3b, $49, $4a
	db $3c, $3d, $3e, $3f, $05, $37, $05, $38
.frame7
	db $06 ; bitmask
	db $5d, $4a
