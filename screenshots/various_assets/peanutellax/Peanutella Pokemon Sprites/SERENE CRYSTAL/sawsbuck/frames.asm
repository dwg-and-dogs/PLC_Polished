	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35
.frame2
	db $01 ; bitmask
	db $36, $37, $32, $38, $33, $39, $3a, $3b, $3c, $34, $3d, $35
.frame3
	db $02 ; bitmask
	db $3e, $3f, $40, $41, $42
.frame4
	db $03 ; bitmask
	db $43
