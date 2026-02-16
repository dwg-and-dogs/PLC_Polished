	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35
.frame2
	db $01 ; bitmask
	db $00, $00, $36, $37, $38, $39, $3a, $3b, $31, $3c, $3d, $3e
	db $3f, $40, $41
.frame3
	db $01 ; bitmask
	db $00, $00, $42, $00, $38, $43, $44, $45, $31, $3c, $46, $3e
	db $3f, $40, $41
.frame4
	db $02 ; bitmask
	db $47, $48, $49, $4a, $4b, $4c, $4d
