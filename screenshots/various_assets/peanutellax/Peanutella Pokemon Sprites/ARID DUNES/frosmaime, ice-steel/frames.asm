	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38
.frame2
	db $01 ; bitmask
	db $02, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41
.frame3
	db $02 ; bitmask
	db $42, $02, $43, $44, $45, $46, $02, $47, $48, $49, $4a, $02
	db $4b, $4c
.frame4
	db $03 ; bitmask
	db $4d, $4e, $4f, $50, $51, $52
.frame5
	db $04 ; bitmask
	db $53, $54, $55, $56, $57
