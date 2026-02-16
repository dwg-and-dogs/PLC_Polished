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
	db $31, $35, $36
.frame3
	db $02 ; bitmask
	db $37, $38, $39
.frame4
	db $03 ; bitmask
	db $3a, $3b, $3c, $3d, $3e, $3f
.frame5
	db $04 ; bitmask
	db $3a, $3b, $3c, $3d, $40, $3e, $3f, $41, $42
