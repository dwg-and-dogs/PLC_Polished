	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39
.frame2
	db $01 ; bitmask
	db $3a, $3b
.frame3
	db $02 ; bitmask
	db $3c, $3a, $3d, $3e, $3f
.frame4
	db $03 ; bitmask
	db $40, $41, $42, $43
.frame5
	db $04 ; bitmask
	db $44, $45, $46, $47, $48, $49, $00, $4a, $41, $42, $43
.frame6
	db $05 ; bitmask
	db $4b, $4c, $4d, $4e, $45, $46, $47, $48, $49, $00, $4a, $41
	db $42, $43
.frame7
	db $06 ; bitmask
	db $4f, $50, $51, $52, $53, $54
