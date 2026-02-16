	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $00, $00, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a
	db $00, $00
.frame2
	db $01 ; bitmask
	db $00, $00, $31, $32, $33, $3b, $3c, $34, $3d, $3e, $35, $3f
	db $36, $37, $38, $39, $3a, $00, $00
.frame3
	db $02 ; bitmask
	db $00, $00, $31, $40, $33, $41, $42, $43, $44, $45, $46, $47
	db $38, $39, $3a, $00, $00
.frame4
	db $02 ; bitmask
	db $48, $49, $4a, $4b, $33, $41, $4c, $43, $4d, $45, $46, $47
	db $38, $39, $3a, $00, $00
.frame5
	db $02 ; bitmask
	db $4e, $4f, $4a, $4b, $33, $41, $4c, $43, $4d, $45, $46, $47
	db $38, $39, $3a, $00, $00
.frame6
	db $03 ; bitmask
	db $50, $51, $52, $53, $54, $55, $56
