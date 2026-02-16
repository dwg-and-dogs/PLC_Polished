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
	db $35, $36, $37, $38, $39, $3a, $3b
.frame3
	db $02 ; bitmask
	db $3c, $31, $32, $3d, $3e, $34, $3f, $40, $41, $42, $43
.frame4
	db $03 ; bitmask
	db $44, $36, $37, $38, $3a, $3b
.frame5
	db $02 ; bitmask
	db $45, $31, $32, $3d, $3e, $34, $3f, $40, $46, $42, $43
