Pokepic2::
	ld hl, PokepicMenuDataHeader2
	call CopyMenuHeader
	call MenuBox
	call UpdateSprites
	ld a, [wCurForm]
	cp -1
	jr z, .partymon
	farcall LoadPokemonPalette
	jr .got_palette
.partymon
	farcall LoadPartyMonPalette
	ld hl, wPartyMon1Form
	ld a, [wCurPartyMon]
	call GetPartyLocation
	farcall GetVariant
.got_palette
	call UpdateTimePals
	xor a
	ldh [hBGMapMode], a
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call GetBaseData
	ld de, vTiles0
	predef GetFrontpic
_Displaypic2:
	ld a, [wMenuBorderTopCoord]
	inc a
	ld b, a
	ld a, [wMenuBorderLeftCoord]
	inc a
	ld c, a
	call Coord2Tile
	ld a, $80
	ldh [hGraphicStartTile], a
	lb bc, 7, 7
	predef PlaceGraphic
	ld b, 1
	jmp SafeCopyTilemapAtOnce

ClosePokepic2::
	ld hl, PokepicMenuDataHeader2
	call CopyMenuHeader
	call ClearMenuBoxInterior
	call GetMemCGBLayout
	xor a
	ldh [hBGMapMode], a
	call LoadMapPart
	call UpdateSprites
	ld b, 1
	call SafeCopyTilemapAtOnce
	farjp RefreshSprites

PokepicMenuDataHeader2:
	db $40 ; flags
	db 04, 06 ; start coords
	db 12, 14 ; end coords
	dw NULL
	db 1 ; default option
