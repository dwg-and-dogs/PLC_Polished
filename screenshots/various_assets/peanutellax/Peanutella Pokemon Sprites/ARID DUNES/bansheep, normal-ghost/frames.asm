	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $00, $34, $35, $36, $00, $37, $38, $00, $39
	db $3a, $00
.frame2
	db $01 ; bitmask
	db $3b, $3c, $00, $00, $3d, $3e, $3f, $00, $40, $41, $42
.frame3
	db $00 ; bitmask
	db $43, $44, $00, $00, $45, $46, $47, $00, $48, $49, $00, $4a
	db $4b, $4c
.frame4
	db $02 ; bitmask
	db $4d, $4e, $4f
