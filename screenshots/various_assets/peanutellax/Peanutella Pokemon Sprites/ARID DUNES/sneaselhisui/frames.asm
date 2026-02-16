	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35
.frame2
	db $01 ; bitmask
	db $36, $37, $00, $00, $38, $39, $3a, $32, $33, $34, $35
.frame3
	db $02 ; bitmask
	db $00, $00, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $33, $34
	db $35
.frame4
	db $02 ; bitmask
	db $00, $43, $44, $3c, $3d, $3e, $3f, $45, $46, $42, $33, $34
	db $35
.frame5
	db $02 ; bitmask
	db $00, $00, $47, $48, $49, $3e, $3f, $40, $4a, $42, $33, $34
	db $35
.frame6
	db $02 ; bitmask
	db $00, $00, $4b, $4c, $4d, $3e, $3f, $40, $4e, $42, $33, $34
	db $35
.frame7
	db $03 ; bitmask
	db $4f, $50, $51, $52, $53, $54, $55, $56
