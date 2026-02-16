	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35
.frame2
	db $01 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d, $3e, $3f, $40, $41, $42
.frame3
	db $02 ; bitmask
	db $31, $32, $33, $43, $44, $45, $46, $47, $48, $49, $4a, $4b
	db $02, $4c, $4d, $4e, $4f, $50, $02, $02, $51, $52, $02, $02
	db $02
.frame4
	db $02 ; bitmask
	db $31, $32, $33, $43, $44, $45, $46, $47, $53, $54, $4a, $4b
	db $02, $4c, $55, $56, $4f, $50, $02, $02, $57, $52, $02, $02
	db $02
.frame5
	db $03 ; bitmask
	db $58, $59, $5a, $5b, $5c, $5d, $5e
