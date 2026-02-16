	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $31, $32
.frame2
	db $01 ; bitmask
	db $31, $32, $00, $33, $34
.frame3
	db $02 ; bitmask
	db $31, $32, $00, $33, $34, $35, $36
.frame4
	db $03 ; bitmask
	db $00, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $2f
.frame5
	db $04 ; bitmask
	db $41, $42
.frame6
	db $04 ; bitmask
	db $43, $44
.frame7
	db $04 ; bitmask
	db $43, $45
