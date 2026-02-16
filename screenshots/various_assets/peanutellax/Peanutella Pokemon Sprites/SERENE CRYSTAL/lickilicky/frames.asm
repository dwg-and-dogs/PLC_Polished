	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38
.frame2
	db $01 ; bitmask
	db $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44
	db $45
.frame3
	db $02 ; bitmask
.frame4
	db $03 ; bitmask
	db $46, $47, $48
.frame5
	db $02 ; bitmask
.frame6
	db $04 ; bitmask
	db $46, $47, $48, $49
