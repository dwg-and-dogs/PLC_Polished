	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $31
.frame2
	db $01 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d, $23
.frame3
	db $01 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $3e, $3a, $1c, $3f
	db $23, $23
.frame4
	db $02 ; bitmask
	db $31, $40, $41, $42
.frame5
	db $03 ; bitmask
	db $43, $44, $31, $45, $46, $47, $41, $48, $49, $42, $4a, $4b
