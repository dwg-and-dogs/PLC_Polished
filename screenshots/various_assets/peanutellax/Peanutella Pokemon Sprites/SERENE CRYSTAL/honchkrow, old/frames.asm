	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $31, $32, $33
.frame2
	db $01 ; bitmask
	db $34, $35, $36, $37, $00, $38, $39, $3a, $3b, $00, $00, $00
	db $00
.frame3
	db $02 ; bitmask
	db $3c, $3d
