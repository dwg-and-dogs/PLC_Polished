slidepuzcoord EQUS "* 6 +"
SLIDING_PUZZLE_BORDER EQU $ee
SLIDING_PUZZLE_VOID   EQU $ef

SlidingPuzzle:
	ldh a, [hInMenu]
	push af
	ld a, $1
	ldh [hInMenu], a
	call ClearBGPalettes
	call ClearTileMap
	call ClearSprites
	xor a
	ldh [hBGMapMode], a
	call DisableLCD
	ld hl, wMisc
	ld bc, wMiscEnd - wMisc
	xor a
	rst ByteFill
	ld hl, UnownPuzzleCursorGFX
	ld de, vTiles1 tile $60
	ld bc, 4 tiles
	rst CopyBytes
	ld hl, SlidingPuzzleStartCancelLZ
	ld de, vTiles1 tile $6d
	call Decompress
	call LoadSlidingPuzzlePiecesGFX
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, SLIDING_PUZZLE_BORDER
	rst ByteFill
	hlcoord 4, 3
	lb bc, 12, 12
	ld a, SLIDING_PUZZLE_VOID
	call FillBoxWithByte
	call InitSlidingPuzzlePiecePositions
	call SlidingPuzzle_UpdateTilemap
	call PlaceStartCancelBox
	xor a
	ldh [hSCY], a
	ldh [hSCX], a
	ldh [rWY], a
	ld [wJumptableIndex], a
	ld [wHoldingUnownPuzzlePiece], a
	ld [wUnownPuzzleCursorPosition], a
	ld [wUnownPuzzleHeldPiece], a
	ld a, %10010011
	ldh [rLCDC], a
	call ApplyTilemapInVBlank
	ld a, CGB_UNOWN_PUZZLE
	call GetCGBLayout
	ld a, $e4
	call DmgToCgbBGPals
	ld a, $24
	call DmgToCgbObjPal0
	xor a
	ld [wSolvedUnownPuzzle], a
	call DelayFrame
.loop
	call JoyTextDelay
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .quit
	call _SlidingPuzzle
	ld a, [wHoldingUnownPuzzlePiece]
	and a
	jr nz, .holding_piece
	ldh a, [hVBlankCounter]
	and $10
	jr z, .clear
.holding_piece
	call RedrawSlidingPuzzlePieces
	jr .next

.clear
	call ClearSprites
.next
	call DelayFrame
	jr .loop

.quit
	pop af
	ldh [hInMenu], a
	call ClearBGPalettes
	call ClearTileMap
	call ClearSprites
	ld a, %11100011
	ldh [rLCDC], a
	ret

InitSlidingPuzzlePiecePositions:
	; Initialize placement counter
	ld hl, wPuzzlePieces
	ld bc, 6 * 6
	xor a
	rst ByteFill  ; Clear the puzzle grid first
	
	; We'll place pieces according to the specified quantities
	; Total pieces needed: 1+1+2+1+4+2+1+1+1+1+1 = 16 pieces
	
	; Place piece 1 (c) - 1x
	ld c, $01
	call .PlaceSinglePiece
	
	; Place piece 2 (f) - 1x
	ld c, $02
	call .PlaceSinglePiece
	
	; Place piece 3 (l) - 2x
	ld c, $03
	call .PlaceSinglePiece
	call .PlaceSinglePiece
	
	; Place piece 4 (n) - 1x
	ld c, $04
	call .PlaceSinglePiece
	
	; Place piece 5 (o) - 4x
	ld c, $05
	call .PlaceSinglePiece
	call .PlaceSinglePiece
	call .PlaceSinglePiece
	call .PlaceSinglePiece
	
	; Place piece 6 (r) - 2x
	ld c, $06
	call .PlaceSinglePiece
	call .PlaceSinglePiece
	
	; Place piece 7 (s) - 1x
	ld c, $07
	call .PlaceSinglePiece
	
	; Place piece 8 (t) - 1x
	ld c, $08
	call .PlaceSinglePiece
	
	; Place piece 9 (u) - 1x
	ld c, $09
	call .PlaceSinglePiece
	
	; Place piece 10 (y) - 1x
	ld c, $0a
	call .PlaceSinglePiece
	
	; Place piece 11 (blank) - 1x
;	ld c, $0b
;	call .PlaceSinglePiece
	
	ret

.PlaceSinglePiece:
	push bc
.retry_placement
	call Random
	and $f
	ld hl, .SlidingPuzzlePieceInitialPositions
	ld e, a
	ld d, $0
	add hl, de
	ld e, [hl]
	ld hl, wPuzzlePieces
	add hl, de
	ld a, [hl]
	and a
	jr nz, .retry_placement
	pop bc
	ld [hl], c
	ret

.SlidingPuzzlePieceInitialPositions:
slideinitpuzcoord: MACRO
rept _NARG / 2
	db \1 slidepuzcoord \2
	shift 2
endr
ENDM
; Center 4x4 positions (rows 1-4, cols 1-4 of the 6x6 grid)
	slideinitpuzcoord 1,1, 1,2, 1,3, 1,4
	slideinitpuzcoord 2,1, 2,2, 2,3, 2,4
	slideinitpuzcoord 3,1, 3,2, 3,3, 3,4
	slideinitpuzcoord 4,1, 4,2, 4,3, 4,4

_SlidingPuzzle:
	ldh a, [hJoyPressed]
	and START
	jmp nz, SlidingPuzzle_Quit
	ldh a, [hJoyPressed]
	and A_BUTTON
	jmp nz, SlidingPuzzle_A
	ld hl, hJoyLast
	ld a, [hl]
	and D_UP
	jr nz, .d_up
	ld a, [hl]
	and D_DOWN
	jr nz, .d_down
	ld a, [hl]
	and D_LEFT
	jr nz, .d_left
	ld a, [hl]
	and D_RIGHT
	jr nz, .d_right
	ret

.d_up
	ld hl, wUnownPuzzleCursorPosition
	ld a, [hl]
	; Prevent moving up into row 0
	cp 1 slidepuzcoord 0
	ret c
	; Prevent moving up from row 1 into row 0
	cp 1 slidepuzcoord 1
	ret z
	cp 1 slidepuzcoord 2
	ret z
	cp 1 slidepuzcoord 3
	ret z
	cp 1 slidepuzcoord 4
	ret z
	sub $6
	ld [hl], a
	jr .done_joypad

.d_down
	ld hl, wUnownPuzzleCursorPosition
	ld a, [hl]
	; Prevent moving down from row 4 into row 5
	cp 4 slidepuzcoord 1
	ret z
	cp 4 slidepuzcoord 2
	ret z
	cp 4 slidepuzcoord 3
	ret z
	cp 4 slidepuzcoord 4
	ret z
	; Prevent moving down past row 4
	cp 4 slidepuzcoord 0
	ret nc
	add $6
	ld [hl], a
	jr .done_joypad

.d_left
	ld hl, wUnownPuzzleCursorPosition
	ld a, [hl]
	; Get current position modulo 6 to find column
	ld b, a
	and $f8  ; Clear lower 3 bits
	jr nz, .not_leftmost_col
	; We're in column 0, check if we can move left
	ld a, b
	cp 1 slidepuzcoord 0
	ret z
	cp 2 slidepuzcoord 0
	ret z
	cp 3 slidepuzcoord 0
	ret z
	cp 4 slidepuzcoord 0
	ret z
	ret  ; Can't move left from column 0
.not_leftmost_col
	ld a, b
	; Prevent moving from column 1 to column 0 (except in valid rows)
	cp 1 slidepuzcoord 1
	ret z
	cp 2 slidepuzcoord 1
	ret z
	cp 3 slidepuzcoord 1
	ret z
	cp 4 slidepuzcoord 1
	ret z
	dec [hl]
	jr .done_joypad

.d_right
	ld hl, wUnownPuzzleCursorPosition
	ld a, [hl]
	; Prevent moving from column 4 to column 5
	cp 1 slidepuzcoord 4
	ret z
	cp 2 slidepuzcoord 4
	ret z
	cp 3 slidepuzcoord 4
	ret z
	cp 4 slidepuzcoord 4
	ret z
	; Prevent moving right in column 5
	cp 0 slidepuzcoord 5
	ret z
	cp 1 slidepuzcoord 5
	ret z
	cp 2 slidepuzcoord 5
	ret z
	cp 3 slidepuzcoord 5
	ret z
	cp 4 slidepuzcoord 5
	ret z
	cp 5 slidepuzcoord 5
	ret z
	inc [hl]
	jr .done_joypad

.done_joypad
	ld a, [wHoldingUnownPuzzlePiece]
	and a
	jr nz, .holding_piece
	ld de, SFX_POUND
	jr .play_sfx

.holding_piece
	ld de, SFX_MOVE_PUZZLE_PIECE

.play_sfx
	jmp PlaySFX

SlidingPuzzle_A:
	ld a, [wHoldingUnownPuzzlePiece]
	and a
	jr nz, .TryPlacePiece
	call SlidingPuzzle_CheckCurrentTileOccupancy
	and a
	jr z, SlidingPuzzle_InvalidAction
	ld de, SFX_MEGA_KICK
	call PlaySFX
	ld [hl], 0
	ld [wUnownPuzzleHeldPiece], a
	call RedrawSlidingPuzzlePieces
	call FillUnoccupiedSlidingPuzzleSpace
	call ApplyTilemapInVBlank
	call WaitSFX
	ld a, TRUE
	ld [wHoldingUnownPuzzlePiece], a
	ret

.TryPlacePiece:
	call SlidingPuzzle_CheckCurrentTileOccupancy
	and a
	jr nz, SlidingPuzzle_InvalidAction
	ld de, SFX_PLACE_PUZZLE_PIECE_DOWN
	call PlaySFX
	ld a, [wUnownPuzzleHeldPiece]
	ld [hl], a
	call PlaceSlidingPuzzlePieceGFX
	call ApplyTilemapInVBlank
	xor a
	ld [wUnownPuzzleHeldPiece], a
	call RedrawSlidingPuzzlePieces
	xor a
	ld [wHoldingUnownPuzzlePiece], a
	call WaitSFX
	call CheckSolvedSlidingPuzzle
	ret nc

; You solved the puzzle!
	call PlaceStartCancelBoxBorder
	call ClearSprites
	ld de, SFX_1ST_PLACE
	call PlaySFX
	call WaitSFX
	call SimpleWaitPressAorB
	ld a, TRUE
	ld [wSolvedUnownPuzzle], a
SlidingPuzzle_Quit:
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

SlidingPuzzle_InvalidAction:
	ld de, SFX_WRONG
	call PlaySFX
	jmp WaitSFX

SlidingPuzzle_UpdateTilemap:
	xor a
	ld [wUnownPuzzleCursorPosition], a
	ld c, 6 * 6
.loop
	push bc
	call SlidingPuzzle_CheckCurrentTileOccupancy
	ld [wUnownPuzzleHeldPiece], a
	and a
	jr z, .not_holding_piece
	call PlaceSlidingPuzzlePieceGFX
	jr .next

.not_holding_piece
	call FillUnoccupiedSlidingPuzzleSpace

.next
	ld hl, wUnownPuzzleCursorPosition
	inc [hl]
	pop bc
	dec c
	jr nz, .loop
	ret

PlaceSlidingPuzzlePieceGFX:
	ld a, $2 ; tilemap coords
	call GetSlidingPuzzleCoordData
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl
	call GetCurrentSlidingPuzzlePieceVTileCorner
	pop hl
	ld de, SCREEN_WIDTH
	ld b, 3
.row
	ld c, 3
	push hl
.col
	ld [hli], a
	inc a
	dec c
	jr nz, .col
	add 9
	pop hl
	add hl, de
	dec b
	jr nz, .row
	ret

FillUnoccupiedSlidingPuzzleSpace:
	ld a, 2 ; tilemap coords
	call GetSlidingPuzzleCoordData
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl
	ld a, 4 ; tile
	call GetSlidingPuzzleCoordData
	ld a, [hl]
	pop hl
	ld de, SCREEN_WIDTH
	ld b, 3
.row
	ld c, 3
	push hl
.col
	ld [hli], a
	dec c
	jr nz, .col
	pop hl
	add hl, de
	dec b
	jr nz, .row
	ret

GetSlidingPuzzleCoordData:
	ld e, a
	ld d, 0
	ld hl, SlidingPuzzleCoordData
	add hl, de
	ld a, [wUnownPuzzleCursorPosition]
	ld e, a
rept 5
	add hl, de
endr
	ret

SlidingPuzzle_CheckCurrentTileOccupancy:
	ld hl, wPuzzlePieces
	ld a, [wUnownPuzzleCursorPosition]
	ld e, a
	ld d, $0
	add hl, de
	ld a, [hl]
	ret

GetCurrentSlidingPuzzlePieceVTileCorner:
	ld a, [wUnownPuzzleHeldPiece]
	ld hl, .Corners
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl]
	ret

.Corners:
; 00, 01, 02
; 0c, 0d, 0e
; 18, 19, 1a
	db $e0 ; no piece selected
	db $00, $03, $06, $09
	db $24, $27, $2a, $2d
	db $48, $4b, $4e, $51
	; Only need 11 pieces now

CheckSolvedSlidingPuzzle:
	ld hl, .SolvedSlidingPuzzleConfiguration
	ld de, wPuzzlePieces
	ld c, 6 * 6
.loop
	ld a, [de]
	cp [hl]
	jr nz, .not_solved
	inc de
	inc hl
	dec c
	jr nz, .loop
	scf
	ret

.not_solved
	and a
	ret

.SolvedSlidingPuzzleConfiguration:
	db $00, $00, $00, $00, $00, $00
	db $00, $04, $05, $01, $07, $00
	db $00, $02, $05, $06, $00, $00
	db $00, $0a, $05, $09, $06, $00
	db $00, $08, $05, $03, $03, $00
	db $00, $00, $00, $00, $00, $00

RedrawSlidingPuzzlePieces:
	call GetCurrentSlidingPuzzlePieceVTileCorner
	ld [wUnownPuzzleCornerTile], a
	xor a
	call GetSlidingPuzzleCoordData ; get pixel positions
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld a, [wUnownPuzzleCornerTile]
	cp $e0
	jr z, .NoPiece
	ld hl, .OAM_HoldingPiece
	jr .load

.NoPiece:
	ld hl, .OAM_NotHoldingPiece

.load
	ld de, wVirtualOAM
.loop
	ld a, [hli]
	cp -1
	ret z
	add b
	ld [de], a
	inc de
	ld a, [hli]
	add c
	ld [de], a
	inc de
	ld a, [wUnownPuzzleCornerTile]
	add [hl]
	ld [de], a
	inc hl
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	jr .loop

.OAM_HoldingPiece:
	dsprite -1, -4, -1, -4, $00, $0
	dsprite -1, -4,  0, -4, $01, $0
	dsprite -1, -4,  0,  4, $02, $0
	dsprite  0, -4, -1, -4, $0c, $0
	dsprite  0, -4,  0, -4, $0d, $0
	dsprite  0, -4,  0,  4, $0e, $0
	dsprite  0,  4, -1, -4, $18, $0
	dsprite  0,  4,  0, -4, $19, $0
	dsprite  0,  4,  0,  4, $1a, $0
	db -1

.OAM_NotHoldingPiece:
	dsprite -1, -4, -1, -4, $00, $0
	dsprite -1, -4,  0, -4, $01, $0
	dsprite -1, -4,  0,  4, $00, $0 | X_FLIP
	dsprite  0, -4, -1, -4, $02, $0
	dsprite  0, -4,  0, -4, $03, $0
	dsprite  0, -4,  0,  4, $02, $0 | X_FLIP
	dsprite  0,  4, -1, -4, $00, $0 | Y_FLIP
	dsprite  0,  4,  0, -4, $01, $0 | Y_FLIP
	dsprite  0,  4,  0,  4, $00, $0 | X_FLIP | Y_FLIP
	db -1

SlidingPuzzleCoordData:

sliding_puzzle_coords: MACRO
	dbpixel \1, \2, \3, \4
	dwcoord \5, \6
	db \7
ENDM
; OAM coords, tilemap coords, vacant tile
	sliding_puzzle_coords  3,  3, 4, 4,  1,  0, SLIDING_PUZZLE_BORDER
	sliding_puzzle_coords  6,  3, 4, 4,  4,  0, SLIDING_PUZZLE_BORDER
	sliding_puzzle_coords  9,  3, 4, 4,  7,  0, SLIDING_PUZZLE_BORDER
	sliding_puzzle_coords 12,  3, 4, 4, 10,  0, SLIDING_PUZZLE_BORDER
	sliding_puzzle_coords 15,  3, 4, 4, 13,  0, SLIDING_PUZZLE_BORDER
	sliding_puzzle_coords 18,  3, 4, 4, 16,  0, SLIDING_PUZZLE_BORDER

	sliding_puzzle_coords  3,  6, 4, 4,  1,  3, SLIDING_PUZZLE_BORDER
	sliding_puzzle_coords  6,  6, 4, 4,  4,  3, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords  9,  6, 4, 4,  7,  3, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords 12,  6, 4, 4, 10,  3, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords 15,  6, 4, 4, 13,  3, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords 18,  6, 4, 4, 16,  3, SLIDING_PUZZLE_BORDER

	sliding_puzzle_coords  3,  9, 4, 4,  1,  6, SLIDING_PUZZLE_BORDER
	sliding_puzzle_coords  6,  9, 4, 4,  4,  6, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords  9,  9, 4, 4,  7,  6, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords 12,  9, 4, 4, 10,  6, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords 15,  9, 4, 4, 13,  6, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords 18,  9, 4, 4, 16,  6, SLIDING_PUZZLE_BORDER

	sliding_puzzle_coords  3, 12, 4, 4,  1,  9, SLIDING_PUZZLE_BORDER
	sliding_puzzle_coords  6, 12, 4, 4,  4,  9, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords  9, 12, 4, 4,  7,  9, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords 12, 12, 4, 4, 10,  9, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords 15, 12, 4, 4, 13,  9, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords 18, 12, 4, 4, 16,  9, SLIDING_PUZZLE_BORDER

	sliding_puzzle_coords  3, 15, 4, 4,  1, 12, SLIDING_PUZZLE_BORDER
	sliding_puzzle_coords  6, 15, 4, 4,  4, 12, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords  9, 15, 4, 4,  7, 12, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords 12, 15, 4, 4, 10, 12, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords 15, 15, 4, 4, 13, 12, SLIDING_PUZZLE_VOID
	sliding_puzzle_coords 18, 15, 4, 4, 16, 12, SLIDING_PUZZLE_BORDER

	sliding_puzzle_coords  3, 18, 4, 4,  1, 15, SLIDING_PUZZLE_BORDER
	sliding_puzzle_coords  6, 18, 4, 4,  4, 15, SLIDING_PUZZLE_BORDER
	sliding_puzzle_coords  9, 18, 4, 4,  7, 15, SLIDING_PUZZLE_BORDER
	sliding_puzzle_coords 12, 18, 4, 4, 10, 15, SLIDING_PUZZLE_BORDER
	sliding_puzzle_coords 15, 18, 4, 4, 13, 15, SLIDING_PUZZLE_BORDER
	sliding_puzzle_coords 18, 18, 4, 4, 16, 15, SLIDING_PUZZLE_BORDER

LoadSlidingPuzzlePiecesGFX:
	ldh a, [hScriptVar]
	and 3
	ld e, a
	ld d, 0
	ld hl, .LZPointers
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, vTiles2
	call Decompress
	jmp ConvertLoadedSlidingPuzzlePieces

.LZPointers:
	dw SlidingPuzzleLZ

SlidingPuzzleLZ:
INCBIN "gfx/unown_puzzle/alphabet.2bpp.lz"	

ConvertLoadedSlidingPuzzlePieces:
	ld hl, vTiles2
	ld de, vTiles0
	ld b, 6
.loop
	push bc
	push hl
	push hl
	call .EnlargePuzzlePieceTiles
	pop hl
	ld bc, 1 tiles / 2
	add hl, bc
	call .EnlargePuzzlePieceTiles
	pop hl
	ld bc, 6 tiles
	add hl, bc
	pop bc
	dec b
	jr nz, .loop
	jr SlidingPuzzle_AddPuzzlePieceBorders

.EnlargePuzzlePieceTiles:
; double size
	ld c, 6
.loop1
	push bc
	push hl
	push hl
	ld c, 4
.loop2
	push bc
	ld a, [hli]
	and $f0
	swap a
	call .GetEnlargedTile
	ld c, a
	ld a, [hli]
	and $f0
	swap a
	call .GetEnlargedTile
	ld b, a
	ld a, c
	ld [de], a
	inc de
	ld a, b
	ld [de], a
	inc de
	ld a, c
	ld [de], a
	inc de
	ld a, b
	ld [de], a
	inc de
	pop bc
	dec c
	jr nz, .loop2
	pop hl
	ld c, 4
.loop3
	push bc
	ld a, [hli]
	and $f
	call .GetEnlargedTile
	ld c, a
	ld a, [hli]
	and $f
	call .GetEnlargedTile
	ld b, a
	ld a, c
	ld [de], a
	inc de
	ld a, b
	ld [de], a
	inc de
	ld a, c
	ld [de], a
	inc de
	ld a, b
	ld [de], a
	inc de
	pop bc
	dec c
	jr nz, .loop3
	pop hl
	ld bc, 1 tiles
	add hl, bc
	pop bc
	dec c
	jr nz, .loop1
	ret

.GetEnlargedTile:
	; a = [.EnlargedTiles + a]
	push hl
	add LOW(.EnlargedTiles)
	ld l, a
	adc HIGH(.EnlargedTiles)
	sub l
	ld h, a
	ld a, [hl]
	pop hl
	ret

.EnlargedTiles:
for x, 16
	db ((x & %1000) * %11000) + ((x & %0100) * %1100) + ((x & %0010) * %110) + ((x & %0001) * %11)
endr

SlidingPuzzle_AddPuzzlePieceBorders:
	ld hl, SlidingGFXHeaders
	ld a, 8
.loop
	push af
	push hl
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call .LoadGFX
	pop hl
rept 4
	inc hl
endr
	pop af
	dec a
	jr nz, .loop
	ret

.LoadGFX:
	lb bc, 4, 4
.loop1
	push bc

.loop2
	push de
	push hl

	ld b, 1 tiles
.loop3
	ld a, [de]
	or [hl]
	ld [hli], a
	inc de
	dec b
	jr nz, .loop3

	pop hl
	ld de, 3 tiles
	add hl, de
	pop de
	dec c
	jr nz, .loop2

	ld bc, 24 tiles
	add hl, bc
	pop bc
	dec b
	jr nz, .loop1
	ret

SlidingGFXHeaders:
	dw .TileBordersGFX + 0 tiles, vTiles0 tile $00
	dw .TileBordersGFX + 1 tiles, vTiles0 tile $01
	dw .TileBordersGFX + 2 tiles, vTiles0 tile $02
	dw .TileBordersGFX + 3 tiles, vTiles0 tile $0c
	dw .TileBordersGFX + 4 tiles, vTiles0 tile $0e
	dw .TileBordersGFX + 5 tiles, vTiles0 tile $18
	dw .TileBordersGFX + 6 tiles, vTiles0 tile $19
	dw .TileBordersGFX + 7 tiles, vTiles0 tile $1a

.TileBordersGFX:
INCBIN "gfx/unown_puzzle/tile_borders_2.2bpp"

SlidingPuzzleStartCancelLZ:
INCBIN "gfx/unown_puzzle/start_cancel.2bpp.lz"