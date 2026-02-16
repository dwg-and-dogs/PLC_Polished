	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37
.frame2
	db $01 ; bitmask
	db $38, $39, $3a, $3b, $3c, $3d, $3e
.frame3
	db $02 ; bitmask
	db $3f, $03, $40, $41, $42
.frame4
	db $03 ; bitmask
	db $43, $44, $45, $46, $03
.frame5
	db $04 ; bitmask
	db $47, $48
