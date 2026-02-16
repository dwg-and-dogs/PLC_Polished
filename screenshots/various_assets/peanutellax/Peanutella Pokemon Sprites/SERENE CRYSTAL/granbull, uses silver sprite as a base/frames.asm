	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d, $3e
.frame2
	db $01 ; bitmask
	db $3f, $40, $41, $42, $43, $44, $45, $00
.frame3
	db $02 ; bitmask
	db $46, $47, $48, $49, $4a, $4b, $4c, $00, $00
.frame4
	db $03 ; bitmask
	db $46, $47, $4d, $4e, $4f, $4a, $50, $51, $4c, $00, $00
.frame5
	db $04 ; bitmask
	db $52, $53, $47, $54, $55, $4a, $56, $4c, $00, $00
.frame6
	db $02 ; bitmask
	db $57, $58, $59, $5a, $4a, $56, $4c, $00, $00
.frame7
	db $05 ; bitmask
	db $5b, $5c, $5d, $5e, $5f
