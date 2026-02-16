	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36
.frame2
	db $00 ; bitmask
	db $37, $38, $39, $3a, $3b, $3c
.frame3
	db $01 ; bitmask
	db $37, $38, $39, $3a, $3d, $3e, $3c, $3f, $40
.frame4
	db $02 ; bitmask
	db $3d, $41, $3f, $42
.frame5
	db $01 ; bitmask
	db $31, $32, $33, $34, $3d, $43, $36, $3f, $42
.frame6
	db $03 ; bitmask
	db $44, $45, $46
