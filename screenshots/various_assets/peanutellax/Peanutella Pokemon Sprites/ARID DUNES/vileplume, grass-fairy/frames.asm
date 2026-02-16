	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34
.frame2
	db $01 ; bitmask
	db $35, $31, $32, $36, $33, $34, $37, $38
.frame3
	db $02 ; bitmask
	db $00, $39, $3a, $31, $32, $3b, $3c, $33, $34, $3d, $3e, $3f
	db $40, $41, $00
.frame4
	db $03 ; bitmask
	db $00, $39, $3a, $31, $32, $3b, $3c, $33, $34, $3d, $3e, $3f
	db $40, $42, $43, $00, $44, $45
.frame5
	db $04 ; bitmask
	db $46, $47, $48, $49
