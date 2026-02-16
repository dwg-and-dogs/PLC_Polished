	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32
.frame2
	db $01 ; bitmask
	db $33, $31, $32, $34, $35, $36, $37, $38, $00, $39
.frame3
	db $02 ; bitmask
	db $00, $3a, $3b, $3c, $3d, $31, $32
.frame4
	db $03 ; bitmask
	db $00, $3a, $3b, $3c, $3e, $31, $32, $34, $35, $36, $37, $38
	db $00, $39
