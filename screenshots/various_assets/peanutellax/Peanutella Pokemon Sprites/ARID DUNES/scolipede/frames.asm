	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $31, $32, $33
.frame2
	db $01 ; bitmask
	db $34, $35, $36
.frame3
	db $02 ; bitmask
	db $37, $38, $35, $39, $36
.frame4
	db $03 ; bitmask
	db $37, $38, $35, $3a, $39, $36
.frame5
	db $04 ; bitmask
	db $3b, $3c, $3d
