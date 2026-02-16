	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34
.frame2
	db $01 ; bitmask
	db $35, $36, $37, $38, $39, $31, $32, $33, $34
.frame3
	db $02 ; bitmask
	db $3a, $3b, $3c, $3d, $38, $3e, $3f, $31, $32, $33, $34
.frame4
	db $02 ; bitmask
	db $2f, $40, $41, $42, $38, $3e, $3f, $31, $32, $33, $34
.frame5
	db $03 ; bitmask
	db $31, $32, $43, $33, $34
.frame6
	db $03 ; bitmask
	db $31, $32, $44, $33, $34
