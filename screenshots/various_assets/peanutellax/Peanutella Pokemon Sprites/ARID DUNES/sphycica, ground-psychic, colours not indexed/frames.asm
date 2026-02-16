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
	db $34, $00, $35, $36, $37, $38, $39, $31, $32, $33
.frame3
	db $02 ; bitmask
	db $34, $00, $35, $36, $37, $3a, $3b, $3c, $31, $32, $3d, $3e
	db $3f, $33, $40, $41, $42, $43, $44
.frame4
	db $03 ; bitmask
	db $34, $00, $35, $36, $37, $45, $46, $47, $48, $31, $32, $49
	db $4a, $4b, $33, $4c, $4d, $4e, $4f, $50
.frame5
	db $04 ; bitmask
	db $51, $52, $53
