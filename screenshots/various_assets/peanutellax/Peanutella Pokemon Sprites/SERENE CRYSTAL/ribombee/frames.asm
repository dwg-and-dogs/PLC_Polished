	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $00, $31, $00, $32, $33, $34, $35, $36, $37, $38, $39, $3a
	db $3b, $3c, $00, $00, $00
.frame2
	db $01 ; bitmask
	db $3d
.frame3
	db $02 ; bitmask
	db $00, $31, $00, $32, $33, $34, $35, $3d, $36, $37, $38, $39
	db $3a, $3b, $3c, $00, $00, $00
.frame4
	db $03 ; bitmask
	db $3e, $3f, $40, $41, $42, $43
.frame5
	db $04 ; bitmask
	db $44, $45
