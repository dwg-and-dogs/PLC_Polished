	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d, $3e, $3f, $40, $41
.frame2
	db $01 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d, $42, $43, $40, $41, $44
.frame3
	db $01 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d, $45, $46, $40, $41, $47
.frame4
	db $01 ; bitmask
	db $48, $49, $33, $34, $4a, $4b, $37, $38, $39, $3a, $4c, $3c
	db $3d, $45, $46, $40, $41, $47
.frame5
	db $02 ; bitmask
	db $4d, $4e
