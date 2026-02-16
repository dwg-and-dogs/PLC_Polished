	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31
.frame2
	db $01 ; bitmask
	db $32, $33, $34, $35, $36, $37, $38
.frame3
	db $02 ; bitmask
	db $32, $33, $34, $39, $3a, $35, $36, $3b, $3c, $37, $38, $3d
	db $3e, $3f, $40
.frame4
	db $03 ; bitmask
	db $41, $42
