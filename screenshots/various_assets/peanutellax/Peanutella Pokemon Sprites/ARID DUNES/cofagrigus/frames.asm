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
	db $31, $32, $33, $34, $35, $36, $37
.frame3
	db $02 ; bitmask
	db $31, $32, $33, $34, $38, $35, $39, $36, $37
.frame4
	db $03 ; bitmask
	db $3a, $3b, $31, $32, $3c, $3d, $33, $34, $38, $35, $39, $36
	db $37
.frame5
	db $04 ; bitmask
	db $30, $30, $3e, $3f, $30, $30, $30, $40, $41, $30, $30, $42
	db $43, $44, $45, $30, $30, $30, $30, $46, $47
.frame6
	db $05 ; bitmask
	db $30, $30, $3e, $3f, $30, $30, $30, $40, $48, $49, $41, $30
	db $30, $4a, $4b, $4c, $42, $4d, $4e, $4f, $50, $51, $52, $53
	db $43, $44, $45, $30, $30, $30, $30, $46, $47
