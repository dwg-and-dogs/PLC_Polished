	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $31, $32
.frame2
	db $01 ; bitmask
	db $33, $34, $35, $36, $31, $37, $32, $38, $39, $3a, $3b, $3c
.frame3
	db $02 ; bitmask
	db $3d, $3e, $3f, $40, $31, $41, $32, $42, $43, $44, $45, $46
	db $47
.frame4
	db $03 ; bitmask
	db $48, $49, $4a, $40, $31, $4b, $41, $32, $4c, $4d, $4e, $45
	db $4f, $50
.frame5
	db $04 ; bitmask
