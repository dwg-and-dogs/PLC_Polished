	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
	dw .frame8
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34
.frame2
	db $01 ; bitmask
	db $35, $36, $37, $38, $39, $3a
.frame3
	db $01 ; bitmask
	db $3b, $3c, $3d, $3e, $39, $3a
.frame4
	db $01 ; bitmask
	db $35, $36, $3f, $40, $39, $41
.frame5
	db $02 ; bitmask
	db $42, $43, $44
.frame6
	db $03 ; bitmask
	db $45, $46, $47, $48
.frame7
	db $04 ; bitmask
	db $49, $4a, $4b, $4c, $4d
.frame8
	db $05 ; bitmask
	db $49, $4a, $4b, $4e, $4f, $47, $48
