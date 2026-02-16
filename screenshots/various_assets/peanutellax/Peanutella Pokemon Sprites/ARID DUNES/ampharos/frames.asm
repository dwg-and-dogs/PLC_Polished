	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $00, $37, $38, $39
.frame2
	db $01 ; bitmask
	db $3a, $3b, $3c, $3d, $31, $32, $33, $34, $35, $36, $00, $37
	db $38, $39
.frame3
	db $02 ; bitmask
	db $00, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48
	db $49, $4a, $35, $36, $00, $37, $38, $39
.frame4
	db $03 ; bitmask
	db $3a, $3b, $3c, $3d
