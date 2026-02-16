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
	db $31, $32, $33, $37, $35, $36
.frame3
	db $00 ; bitmask
	db $31, $32, $33, $38, $35, $36
.frame4
	db $01 ; bitmask
	db $31, $32, $33, $38, $35, $36, $39, $3a, $3b, $3c, $3d, $3e
	db $3f, $40, $41, $42, $43, $44, $00
.frame5
	db $02 ; bitmask
	db $45, $46, $47, $48, $49, $4a
.frame6
	db $02 ; bitmask
	db $45, $00, $4b, $48, $4c, $4d
