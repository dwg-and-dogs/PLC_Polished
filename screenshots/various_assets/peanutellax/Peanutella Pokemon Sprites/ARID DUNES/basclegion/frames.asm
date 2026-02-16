	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36
.frame2
	db $01 ; bitmask
	db $37, $38, $39, $3a, $3b, $36, $3c
.frame3
	db $02 ; bitmask
	db $3d, $3e, $3f, $40, $41, $42, $43, $44, $45
.frame4
	db $03 ; bitmask
	db $46
	db $4d
