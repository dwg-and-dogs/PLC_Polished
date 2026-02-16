	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35
.frame2
	db $01 ; bitmask
	db $31, $32, $36, $37, $38, $33, $34, $39, $3a, $3b, $35, $3c
	db $3d, $3e
.frame3
	db $02 ; bitmask
	db $3f, $36, $37, $38, $40, $39, $3a, $3b, $3c, $3d, $3e
.frame4
	db $03 ; bitmask
	db $41, $42, $43, $44, $36, $37, $38, $40, $39, $3a, $3b, $3c
	db $3d, $3e
.frame5
	db $04 ; bitmask
	db $41, $42, $43, $45
.frame6
	db $05 ; bitmask
	db $46, $47
