	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $00, $32, $33, $34, $00, $35, $36, $37, $00, $38
.frame2
	db $01 ; bitmask
	db $39, $3a, $3b, $3c, $3d
.frame3
	db $02 ; bitmask
	db $3e, $3f, $40, $41, $42, $43, $39, $44, $45, $3a, $3b, $46
	db $47, $3c, $3d, $48, $49, $4a, $4b
.frame4
	db $03 ; bitmask
	db $4c, $4d, $4e, $4f
