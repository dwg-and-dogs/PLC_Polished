LoadCGBLayout::
	and a ; CGB_RAM?
	jr nz, .not_ram
	ld a, [wMemCGBLayout]
.not_ram
	cp CGB_PARTY_MENU_HP_PALS
	jmp z, ApplyPartyMenuHPPals
	call ResetBGPals
	dec a
	call StackJumpTable

.Jumptable:
	table_width 2, LoadCGBLayout.Jumptable
	dw _CGB_BattleGrayscale
	dw _CGB_BattleColors
	dw _CGB_PokegearPals
	dw _CGB_PokedexAreaPals
	dw _CGB_StatsScreenHPPals
	dw _CGB_Pokedex
	dw _CGB_SlotMachine
	dw _CGB_Diploma
	dw _CGB_MapPals
	dw _CGB_PartyMenu
	dw _CGB_Evolution
	dw _CGB_MoveList
	dw _CGB_PokedexSearchOption
	dw _CGB_BuyMenu
	dw _CGB_PackPals
	dw _CGB_TrainerCard
	dw _CGB_TrainerCard2
	dw _CGB_TrainerCard3
	dw _CGB_PokedexUnownMode
	dw _CGB_BillsPC
	dw _CGB_UnownPuzzle ; todo: special colors for celebi, bronzong, lugia, heatran, sliding puzzle 
;	dw _CGB_SlidingPuzzle
	dw _CGB_GameFreakLogo
	dw _CGB_TradeTube
	dw _CGB_IntroPals
	dw _CGB_PlayerOrMonFrontpicPals
	dw _CGB_TrainerOrMonFrontpicPals
	dw _CGB_JudgeSystem
	assert_table_length NUM_CGB_LAYOUTS - 2 ; discount CGB_RAM and CGB_PARTY_MENU_HP_PALS

_CGB_BattleGrayscale:
	push bc
	ld de, wBGPals1
rept 8
	ld hl, DarkGrayPalette
	call LoadHLPaletteIntoDE
endr
	ld de, wOBPals1
rept 2
	ld hl, DarkGrayPalette
	call LoadHLPaletteIntoDE
endr
	jmp _CGB_FinishBattleScreenLayout

_CGB_BattleColors:
	push bc
	ld de, wBGPals1
	call GetBattlemonBackpicPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	ld a, [wTempBattleMonSpecies]
	and a
	jr z, .player_backsprite
	push de
	; hl = DVs
	farcall GetPartyMonDVs
	; b = species
	ld a, [wTempBattleMonSpecies]
	ld b, a
	; vary colors by DVs
	call CopyDVsToColorVaryDVs
	ld hl, wBGPals1 palette PAL_BATTLE_BG_PLAYER + 2
	call VaryColorsByDVs
	pop de
.player_backsprite

	call GetEnemyFrontpicPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	ld a, [wTempEnemyMonSpecies]
	and a
	jr z, .trainer_sprite
	push de
	; hl = DVs
	farcall GetEnemyMonDVs
	; b = species
	ld a, [wTempEnemyMonSpecies]
	ld b, a
	; vary colors by DVs
	call CopyDVsToColorVaryDVs
	ld hl, wBGPals1 palette PAL_BATTLE_BG_ENEMY + 2
	call VaryColorsByDVs
	pop de
.trainer_sprite

	ld a, [wEnemyHPPal]
	add a
	add a
	add LOW(HPBarInteriorPals)
	ld l, a
	adc HIGH(HPBarInteriorPals)
	sub l
	ld h, a
	call LoadPalette_White_Col1_Col2_Black

	ld a, [wPlayerHPPal]
	add a
	add a
	add LOW(HPBarInteriorPals)
	ld l, a
	adc HIGH(HPBarInteriorPals)
	sub l
	ld h, a
	call LoadPalette_White_Col1_Col2_Black

	ld hl, GenderAndExpBarPals
	call LoadPalette_White_Col1_Col2_Black

	call LoadPlayerStatusIconPalette
	call LoadEnemyStatusIconPalette

	ld hl, wBGPals1 palette PAL_BATTLE_BG_PLAYER
	ld de, wBGPals1 palette PAL_BATTLE_BG_TYPE_CAT
	call LoadHLPaletteIntoDE

	ld hl, wBGPals1 palette PAL_BATTLE_BG_ENEMY
	ld de, wOBPals1 palette PAL_BATTLE_OB_ENEMY
	call LoadHLPaletteIntoDE

	ld hl, wBGPals1 palette PAL_BATTLE_BG_PLAYER
	ld de, wOBPals1 palette PAL_BATTLE_OB_PLAYER
	call LoadHLPaletteIntoDE

	ld a, CGB_BATTLE_COLORS
	ld [wMemCGBLayout], a
	call ApplyPals

_CGB_FinishBattleScreenLayout:
	; don't screw with ability overlay areas
	pop bc
	ld b, 0
	ld a, [wAnimationsDisabled]
	and a
	jr z, .overlay_done

	hlcoord 0, 8, wAttrMap
	bit 3, [hl]
	jr z, .no_player_overlay
	set 0, b
.no_player_overlay
	hlcoord 9, 3, wAttrMap
	bit 3, [hl]
	jr z, .overlay_done
	set 1, b

.overlay_done
	push bc
	hlcoord 0, 0, wAttrMap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, PAL_BATTLE_BG_ENEMY_HP
	rst ByteFill

	hlcoord 0, 4, wAttrMap
	lb bc, 8, 10
	xor a ; PAL_BATTLE_BG_PLAYER
	call FillBoxWithByte

	hlcoord 10, 0, wAttrMap
	lb bc, 7, 10
	ld a, PAL_BATTLE_BG_ENEMY
	call FillBoxWithByte

	hlcoord 0, 0, wAttrMap
	lb bc, 4, 10
	ld a, PAL_BATTLE_BG_ENEMY_HP
	call FillBoxWithByte

	hlcoord 10, 7, wAttrMap
	lb bc, 5, 10
	ld a, PAL_BATTLE_BG_PLAYER_HP
	call FillBoxWithByte

	hlcoord 12, 11, wAttrMap
	lb bc, 1, 7
	ld a, PAL_BATTLE_BG_EXP_GENDER
	call FillBoxWithByte

	ld a, PAL_BATTLE_BG_EXP_GENDER
	hlcoord 1, 1, wAttrMap
	ld [hl], a
	hlcoord 8, 1, wAttrMap
	ld [hl], a
	hlcoord 18, 8, wAttrMap
	ld [hl], a

	hlcoord 12, 8, wAttrMap
	lb bc, 1, 2
	ld a, PAL_BATTLE_BG_STATUS
	call FillBoxWithByte

	hlcoord 2, 1, wAttrMap
	lb bc, 1, 2
	ld a, PAL_BATTLE_BG_STATUS
	call FillBoxWithByte

	hlcoord 1, 9, wAttrMap
	lb bc, 1, 6
	ld a, PAL_BATTLE_BG_TYPE_CAT
	call FillBoxWithByte

	hlcoord 0, 12, wAttrMap
	ld bc, 6 * SCREEN_WIDTH
	ld a, PAL_BATTLE_BG_TEXT
	rst ByteFill

	ld hl, BattleObjectPals
	ld de, wOBPals1 palette PAL_BATTLE_OB_GRAY
	ld c, 6 palettes
	call LoadCPaletteBytesFromHLIntoDE
	pop bc

	ld a, b
	and a
	jr z, .apply_attr_map
	bit 0, b
	jr z, .no_player_overlay2
	hlcoord 0, 8, wAttrMap
	push bc
	ld b, PAL_BATTLE_BG_TEXT
	farcall SetAbilityOverlayAttributes
	pop bc
.no_player_overlay2
	bit 1, b
	jr z, .apply_attr_map
	hlcoord 9, 3, wAttrMap
	ld b, PAL_BATTLE_BG_TEXT
	farcall SetAbilityOverlayAttributes

.apply_attr_map
	jmp ApplyAttrMap

_CGB_PokegearPals:
	ld hl, PokegearPals
	ld de, wBGPals1
	ld c, 8 palettes
	call LoadCPaletteBytesFromHLIntoDE

	ld a, [wPlayerGender]
	bit 0, a
	jr z, .male
	ld hl, FemalePokegearInterfacePalette
	ld de, wBGPals1 palette 0
	call LoadHLPaletteIntoDE
.male

	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

_CGB_PokedexAreaPals:
	ld hl, PokegearPals
	ld de, wBGPals1
	ld c, 8 palettes
	call LoadCPaletteBytesFromHLIntoDE

	ld hl, .InvertedGrayPalette
	ld de, wBGPals1 palette 0
	call LoadHLPaletteIntoDE

	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

.InvertedGrayPalette:
if !DEF(MONOCHROME)
	RGB 00, 00, 00
	RGB 21, 00, 21
	RGB 13, 00, 13
	RGB 31, 31, 31
else
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_WHITE
endc

_CGB_StatsScreenHPPals:
	ld de, wBGPals1
	ld hl, HPBarInteriorPals
	call LoadPalette_White_Col1_Col2_Black

	ld a, [wCurPartySpecies]
	ld bc, wTempMonPersonality
	call GetPlayerOrMonPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	push de
	call VaryBGPal1ByTempMonDVs
	pop de

	ld hl, GenderAndExpBarPals
	call LoadPalette_White_Col1_Col2_Black

	ld hl, StatsScreenPals
	ld c, 4 palettes
	call LoadCPaletteBytesFromHLIntoDE

	ld hl, CaughtBallPals
	ld bc, $4
	ld a, [wTempMonCaughtBall]
	and CAUGHT_BALL_MASK
	rst AddNTimes
	ld de, wBGPals1 palette 7
	call LoadPalette_White_Col1_Col2_Black

	call WipeAttrMap

	hlcoord 0, 0, wAttrMap
	lb bc, 8, SCREEN_WIDTH
	ld a, $1
	call FillBoxWithByte

	hlcoord 18, 0, wAttrMap
	ld [hl], $2

	hlcoord 11, 5, wAttrMap
	lb bc, 2, 2
	ld a, $3
	call FillBoxWithByte

	hlcoord 13, 5, wAttrMap
	lb bc, 2, 2
	ld a, $4
	call FillBoxWithByte

	hlcoord 15, 5, wAttrMap
	lb bc, 2, 2
	ld a, $5
	call FillBoxWithByte

	hlcoord 17, 5, wAttrMap
	lb bc, 2, 2
	ld a, $6
	call FillBoxWithByte

	hlcoord 8, 6, wAttrMap
	lb bc, 1, 1
	ld a, $7
	call FillBoxWithByte

	jmp _CGB_FinishLayout

_CGB_Pokedex:
	ld de, wBGPals1
	ld hl, PokedexRedPalette
	call LoadHLPaletteIntoDE

	ld a, [wCurPartySpecies]
	cp $ff
	jr nz, .is_pokemon
	ld hl, .GreenPicPalette
	call LoadHLPaletteIntoDE
	jr .got_palette
.is_pokemon
	ld bc, wDexMonShiny
	call GetMonNormalOrShinyPalettePointer
	call LoadPalette_White_Col1_Col2_Black
.got_palette

	call WipeAttrMap

	hlcoord 1, 1, wAttrMap
	lb bc, 7, 7
	ld a, $1
	call FillBoxWithByte

	ld hl, PokegearOBPals
	ld de, wOBPals1
	ld c, 2 palettes
	call LoadCPaletteBytesFromHLIntoDE

	ld hl, .CursorPalette
	ld de, wOBPals1 palette 7
	call LoadHLPaletteIntoDE

	jmp _CGB_FinishLayout

.GreenPicPalette:
if !DEF(MONOCHROME)
	RGB 11, 23, 00
	RGB 07, 17, 00
	RGB 06, 16, 03
	RGB 05, 12, 01
else
	MONOCHROME_RGB_FOUR
endc

.CursorPalette:
if !DEF(MONOCHROME)
	RGB 00, 00, 00
	RGB 11, 23, 00
	RGB 07, 17, 00
	RGB 00, 00, 00
else
	MONOCHROME_RGB_FOUR
endc

_CGB_SlotMachine:
	ld hl, SlotMachinePals
	ld de, wBGPals1
	ld c, 16 palettes
	call LoadCPaletteBytesFromHLIntoDE

	call WipeAttrMap

	hlcoord 0, 2, wAttrMap
	lb bc, 10, 3
	ld a, $2
	call FillBoxWithByte

	hlcoord 17, 2, wAttrMap
	lb bc, 10, 3
	ld a, $2
	call FillBoxWithByte

	hlcoord 0, 4, wAttrMap
	lb bc, 6, 3
	ld a, $3
	call FillBoxWithByte

	hlcoord 17, 4, wAttrMap
	lb bc, 6, 3
	ld a, $3
	call FillBoxWithByte

	hlcoord 0, 6, wAttrMap
	lb bc, 2, 3
	ld a, $4
	call FillBoxWithByte

	hlcoord 17, 6, wAttrMap
	lb bc, 2, 3
	ld a, $4
	call FillBoxWithByte

	hlcoord 4, 2, wAttrMap
	lb bc, 2, 12
	ld a, $1
	call FillBoxWithByte

	hlcoord 3, 2, wAttrMap
	lb bc, 10, 1
	ld a, $1
	call FillBoxWithByte

	hlcoord 16, 2, wAttrMap
	lb bc, 10, 1
	ld a, $1
	call FillBoxWithByte

	hlcoord 0, 12, wAttrMap
	ld bc, $78
	ld a, $7
	rst ByteFill

	jmp _CGB_FinishLayout

_CGB_Diploma:
	ld hl, DiplomaPals
	ld de, wBGPals1
	ld c, 16 palettes
	call LoadCPaletteBytesFromHLIntoDE

	ld de, wBGPals1
	ld hl, .DiplomaPalette
	call LoadHLPaletteIntoDE

	call WipeAttrMap
	jmp ApplyAttrMap

.DiplomaPalette
if !DEF(MONOCHROME)
	RGB 31, 31, 31
	RGB 30, 22, 17
	RGB 16, 14, 19
	RGB 00, 00, 00
else
	MONOCHROME_RGB_FOUR
endc

_CGB_MapPals:
	call LoadMapPals
	ld a, CGB_MAPPALS
	ld [wMemCGBLayout], a
	ret

_CGB_PartyMenu:
	ld de, wBGPals1
	ld hl, .PartyMenuBGPalette
	call LoadHLPaletteIntoDE

	ld hl, HPBarPals
	call LoadHLPaletteIntoDE
	call LoadHLPaletteIntoDE
	call LoadHLPaletteIntoDE

	ld hl, GenderAndExpBarPals
	call LoadPalette_White_Col1_Col2_Black

	ld de, wBGPals1 palette 7
	ld hl, .PartyMenuBGPalette
	call LoadHLPaletteIntoDE

	call InitPartyMenuOBPals

	hlcoord 10, 2, wAttrMap
	lb bc, 11, 1
	ld a, $4
	call FillBoxWithByte
	jmp ApplyAttrMap

.PartyMenuBGPalette:
if !DEF(MONOCHROME)
	RGB 31, 31, 31
	RGB 17, 19, 31
	RGB 14, 16, 31
	RGB 00, 00, 00
else
	MONOCHROME_RGB_FOUR
endc

_CGB_Evolution:
	ld de, wBGPals1
	ld a, c
	and a
	jr z, .pokemon
	ld hl, DarkGrayPalette
	call LoadHLPaletteIntoDE
	jr .got_palette

.pokemon
	ld hl, wPartyMon1Personality
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	rst AddNTimes
	ld c, l
	ld b, h
	ld a, [wPlayerHPPal]
	call GetPlayerOrMonPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	; hl = DVs
	ld hl, wPartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	rst AddNTimes
	; b = species
	ld a, [wCurPartySpecies]
	ld b, a
	; vary colors by DVs
	call CopyDVsToColorVaryDVs
	ld hl, wBGPals1 palette 0 + 2
	call VaryColorsByDVs

	ld hl, BattleObjectPals
	ld de, wOBPals1 palette 2
	ld c, 6 palettes
	call LoadCPaletteBytesFromHLIntoDE

.got_palette
	call WipeAttrMap
	jmp _CGB_FinishLayout

_CGB_MoveList:
	hlcoord 0, 0, wAttrMap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, $7
	rst ByteFill

	hlcoord 1, 12, wAttrMap
	ld bc, 6
	xor a
	rst ByteFill

	call GetCurMoveFixedCategory
	add a
	add a
	ld hl, CategoryIconPals
	ld c, a
	ld b, 0
	add hl, bc
	ld de, wBGPals1 palette 0 + 2
	ld c, 4
	call LoadCPaletteBytesFromHLIntoDE

	ld hl, Moves + MOVE_TYPE
	call GetCurMoveProperty
	ld hl, TypeIconPals
	add a
	ld c, a
	ld b, 0
	add hl, bc
	ld de, wBGPals1 palette 0 + 6
	ld c, 2
	call LoadCPaletteBytesFromHLIntoDE

	jmp _CGB_FinishLayout

_CGB_PokedexSearchOption:
	ld de, wBGPals1
	ld hl, PokedexRedPalette
	call LoadHLPaletteIntoDE

	call WipeAttrMap
	jmp _CGB_FinishLayout

_CGB_BuyMenu:
	ld a, [wMartType]
	cp MARTTYPE_BLUECARD
	ld hl, BlueCardMartMenuPals
	jr z, .ok
	cp MARTTYPE_BP
	ld hl, BTMartMenuPals
	jr z, .ok
	ld hl, MartMenuPals
.ok
	ld de, wBGPals1
	ld c, 3 palettes
	call LoadCPaletteBytesFromHLIntoDE

rept 2
	ld hl, CancelPalette
	call LoadPalette_White_Col1_Col2_Black
endr

	call WipeAttrMap

	hlcoord 6, 4, wAttrMap
	lb bc, 7, 1
	ld a, $2
	call FillBoxWithByte

	hlcoord 1, 8, wAttrMap
	lb bc, 3, 3
	ld a, $7
	call FillBoxWithByte

	jmp _CGB_FinishLayout

_CGB_PackPals:
; pack pals
	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL
	jr z, .tutorial_female
	ld a, [wPlayerGender]
	bit 0, a
	jr z, .male
.tutorial_female
	ld hl, FemalePackPals
	jr .got_gender
.male
	ld hl, MalePackPals
.got_gender
	ld de, wBGPals1
	ld c, 8 palettes
	call LoadCPaletteBytesFromHLIntoDE

	call WipeAttrMap

	hlcoord 0, 0, wAttrMap
	ld a, $2
rept 6
	ld [hli], a
endr
	inc a
rept 3
	ld [hli], a
endr
	inc a
rept 4
	ld [hli], a
endr
	inc a
rept 5
	ld [hli], a
endr
	inc a
	ld [hli], a
	ld [hl], a

	ld a, $1
	hlcoord 7, 2, wAttrMap
	ld [hl], a
	hlcoord 7, 4, wAttrMap
	ld [hl], a
	hlcoord 7, 6, wAttrMap
	ld [hl], a
	hlcoord 7, 8, wAttrMap
	ld [hl], a
	hlcoord 7, 10, wAttrMap
	ld [hl], a
	hlcoord 0, 2, wAttrMap
	lb bc, 5, 5
	call FillBoxWithByte

	hlcoord 1, 8, wAttrMap
	lb bc, 3, 3
	ld a, $7
	call FillBoxWithByte

	jmp _CGB_FinishLayout

_CGB_TrainerCard:
	call LoadFirstTwoTrainerCardPals

	ld hl, BronzeTrainerCardPals
	call LoadPalette_White_Col1_Col2_Black

	ld hl, SilverTrainerCardPals
	call LoadPalette_White_Col1_Col2_Black

	ld hl, GoldTrainerCardPals
	call LoadPalette_White_Col1_Col2_Black

	ld hl, CrystalTrainerCardPals
	call LoadPalette_White_Col1_Col2_Black

	; Trainer stars
	hlcoord 2, 16, wAttrMap
	ld a, $2 ; bronze
	ld [hli], a
	inc a ; silver
	ld [hli], a
	inc a ; gold
	ld [hli], a
	inc a ; crystal
	ld [hl], a

	jmp _CGB_FinishLayout

_CGB_TrainerCard2:
	call LoadFirstTwoTrainerCardPals

	ld a, FALKNER
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black

	ld a, BUGSY
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black

	ld a, WHITNEY
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black

	ld a, MORTY
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black

	ld a, JASMINE ; CHUCK
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black

	ld a, CLAIR ; PRYCE
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black

	; Badges
	ld hl, JohtoBadgePalettes
	ld de, wOBPals1
	ld c, 8 palettes
	call LoadCPaletteBytesFromHLIntoDE

	; Falkner
	hlcoord 3, 10, wAttrMap
	lb bc, 3, 3
	ld a, $2
	call FillBoxWithByte

	; Bugsy
	hlcoord 7, 10, wAttrMap
	lb bc, 3, 3
	ld a, $3
	call FillBoxWithByte

	; Whitney
	hlcoord 11, 10, wAttrMap
	lb bc, 3, 3
	ld a, $4
	call FillBoxWithByte

	; Morty
	hlcoord 15, 10, wAttrMap
	lb bc, 3, 3
	ld a, $5
	call FillBoxWithByte

	; Chuck
	hlcoord 3, 13, wAttrMap
	lb bc, 3, 3
	ld a, $6
	call FillBoxWithByte

	; Jasmine
	hlcoord 7, 13, wAttrMap
	lb bc, 3, 3
	ld a, $6
	call FillBoxWithByte

	; Pryce
	hlcoord 11, 13, wAttrMap
	lb bc, 3, 3
	ld a, $7
	call FillBoxWithByte

	; Clair
	hlcoord 15, 13, wAttrMap
	lb bc, 3, 3
	ld a, $7
	call FillBoxWithByte

	jmp _CGB_FinishLayout

_CGB_TrainerCard3: 
	call LoadFirstTwoTrainerCardPals

	ld a, HOLLIS
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black

	ld a, SANDRA ; BLAINE
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black

	ld a, SAMSARA ; LT_SURGE
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black

	ld a, BARBEAU
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black

	ld a, KANNA
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black

	ld a, AMOS
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black

	; Badges
	ld hl, KantoBadgePalettes
	ld de, wOBPals1
	ld c, 8 palettes
	call LoadCPaletteBytesFromHLIntoDE

	; HOLLIS -- GOOD 
	hlcoord 3, 10, wAttrMap
	lb bc, 3, 3
	ld a, $2 ; 
	call FillBoxWithByte

	; SANDRA --- GOOD 
	hlcoord 7, 10, wAttrMap
	lb bc, 3, 3
	ld a, $3
	call FillBoxWithByte

	; Misty / vespera
	hlcoord 11, 10, wAttrMap
	lb bc, 3, 3
	ld a, $4
	call FillBoxWithByte

	; Erika / this one is empty 
	hlcoord 15, 10, wAttrMap
	lb bc, 3, 3
	ld a, $5
	call FillBoxWithByte

	; Janine / barbeau 
	hlcoord 3, 13, wAttrMap
	lb bc, 3, 3
	ld a, $5
	call FillBoxWithByte

	; Brock / kanna 
	hlcoord 7, 13, wAttrMap
	lb bc, 3, 3
	ld a, $6
	call FillBoxWithByte

	; Blaine / amos 
	hlcoord 11, 13, wAttrMap
	lb bc, 3, 3
	ld a, $7
	call FillBoxWithByte

	; Blue / NA
	hlcoord 15, 13, wAttrMap
	lb bc, 3, 3
	ld a, $7
	call FillBoxWithByte

	jmp _CGB_FinishLayout

LoadFirstTwoTrainerCardPals:
	; trainer card
	ld c, VAR_TRAINER_STARS
	farcall _GetVarAction
	ld a, [wStringBuffer2]
	ld bc, TrainerCardPals
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, bc
	ld de, wBGPals1
	call LoadPalette_White_Col1_Col2_Black

	; player sprite
	ld a, [wPlayerGender]
	and a
	ld a, CHRIS
	jr z, .got_gender
	ld a, KRIS
.got_gender
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black

	push de
	; border
	hlcoord 0, 0, wAttrMap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	xor a
	rst ByteFill

	; player
	hlcoord 14, 1, wAttrMap
	lb bc, 7, 5
	ld a, $1
	call FillBoxWithByte

	pop de
	ret

_CGB_PokedexUnownMode:
	ld de, wBGPals1
	ld hl, PokedexRedPalette
	call LoadHLPaletteIntoDE

	ld a, [wCurPartySpecies]
	call GetMonPalettePointer
	call LoadPalette_White_Col1_Col2_Black

	call WipeAttrMap

	hlcoord 6, 5, wAttrMap
	lb bc, 7, 7
	ld a, $1
	call FillBoxWithByte

	call InitPartyMenuOBPals

	jmp _CGB_FinishLayout

_CGB_BillsPC:
	; Get box theme
	ld a, [wCurBox]
	ld b, a
	inc b
	farcall GetBoxTheme
BillsPC_PreviewTheme:
	; hl = BillsPC_ThemePals + a * 6 * 2
	add a
	add a
	ld e, a
	ld d, 0
	ld hl, BillsPC_ThemePals
	add hl, de
	add hl, de
	add hl, de
	ld de, wBGPals1
	ld c, 1 * 2
	call LoadCPaletteBytesFromHLIntoDE
	push hl
	ld hl, GenderAndExpBarPals
	ld c, 2 * 2
	call LoadCPaletteBytesFromHLIntoDE
	push de
	ld hl, PokerusAndShinyPals
	ld de, wBillsPC_PokerusShinyPal
	ld c, 2 * 2
	call LoadCPaletteBytesFromHLIntoDE

	; Prevents flickering shiny+pokerus background
	ld hl, wBGPals1 palette 0
	ld de, wBGPals1 palette 3
	ld c, 1 * 2
	call LoadCPaletteBytesFromHLIntoDE
	pop de
	pop hl
	ld c, 5 * 2
	call LoadCPaletteBytesFromHLIntoDE
	ld a, [wBillsPC_ApplyThemePals]
	and a
	jr nz, .apply_pals
	ld de, wOBPals1 palette 1
	ld hl, .CursorPal
	push hl
	call LoadHLPaletteIntoDE
	pop hl
	call LoadHLPaletteIntoDE
	ld hl, .PackPal
	ld de, wOBPals1 palette 4
	jmp LoadHLPaletteIntoDE

.apply_pals
	farjp BillsPC_SetPals

.CursorPal:
; Coloring is fixed up later.
if !DEF(MONOCHROME)
	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
else
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
endc

.PackPal:
if !DEF(MONOCHROME)
	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 07, 19, 07
	RGB 00, 00, 00
else
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endc

_CGB_UnownPuzzle:
	ld de, wBGPals1
	ld hl, .UnownPuzzlePalette
	call LoadHLPaletteIntoDE

	ld de, wOBPals1
	ld hl, .UnownPuzzlePalette
	call LoadHLPaletteIntoDE

	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld hl, wOBPals1
if DEF(NOIR)
	ld a, LOW(palred 9 + palgreen 9 + palblue 9)
	ld [hli], a
	ld [hl], HIGH(palred 9 + palgreen 9 + palblue 9)
elif !DEF(MONOCHROME)
; RGB 31, 00, 00
	ld a, LOW(palred 31 + palgreen 0 + palblue 0)
	ld [hli], a
	ld [hl], HIGH(palred 31 + palgreen 0 + palblue 0)
else
	ld a, LOW(PAL_MONOCHROME_WHITE)
	ld [hli], a
	ld [hl], HIGH(PAL_MONOCHROME_WHITE)
endc
	pop af
	ldh [rSVBK], a

	call WipeAttrMap
	jmp ApplyAttrMap

.UnownPuzzlePalette:
if !DEF(MONOCHROME)
	RGB 31, 31, 31
	RGB 24, 20, 11
	RGB 18, 13, 11
	RGB 00, 00, 00
else
	MONOCHROME_RGB_FOUR
endc

_CGB_GameFreakLogo:
	ld de, wBGPals1
	ld hl, .GameFreakLogoPalette
	call LoadHLPaletteIntoDE

	ld de, wOBPals1
rept 2
	ld hl, .GameFreakDittoPalette
	call LoadHLPaletteIntoDE
endr
	ret

.GameFreakLogoPalette:
if !DEF(MONOCHROME)
	RGB 00, 00, 00
	RGB 08, 11, 11
	RGB 21, 21, 21
	RGB 31, 31, 31
else
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
endc

.GameFreakDittoPalette:
if !DEF(MONOCHROME)
	RGB 31, 31, 31
	RGB 13, 11, 00
	RGB 23, 12, 28
	RGB 00, 00, 00
else
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_BLACK
endc

_CGB_TradeTube:
	ld de, wBGPals1
	ld hl, .TradeTubeBluePalette
	call LoadHLPaletteIntoDE

	ld hl, .TradeTubeRedPalette
	ld de, wOBPals1
	call LoadHLPaletteIntoDE

	ld de, wOBPals1 palette 7
	ld hl, .TradeTubeBluePalette
	call LoadHLPaletteIntoDE

	jmp WipeAttrMap

.TradeTubeBluePalette:
if !DEF(MONOCHROME)
	RGB 31, 31, 31
	RGB 18, 20, 27
	RGB 11, 15, 23
	RGB 00, 00, 00
else
	MONOCHROME_RGB_FOUR
endc

.TradeTubeRedPalette:
if !DEF(MONOCHROME)
	RGB 27, 31, 27
	RGB 31, 19, 10
	RGB 31, 07, 04
	RGB 00, 00, 00
else
	MONOCHROME_RGB_FOUR
endc

_CGB_IntroPals:
	ld de, wBGPals1
	ld a, [wCurPartySpecies]
	ld bc, wTempMonPersonality
	call GetFrontpicPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	push de
	call VaryBGPal0ByTempMonDVs
	pop de

	ld hl, .IntroGradientPalette
	call LoadHLPaletteIntoDE

	call WipeAttrMap

	hlcoord 0, 0, wAttrMap
	lb bc, 3, 20
	ld a, $1
	call FillBoxWithByte

	call ApplyAttrMap
	jmp ApplyPals

.IntroGradientPalette:
if !DEF(MONOCHROME)
	RGB 31, 31, 31
	RGB 27, 31, 31
	RGB 19, 31, 31
	RGB 09, 30, 31
else
	MONOCHROME_RGB_FOUR
endc

_CGB_PlayerOrMonFrontpicPals:
	ld de, wBGPals1
	ld a, [wCurPartySpecies]
	ld bc, wTempMonPersonality
	call GetPlayerOrMonPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	call VaryBGPal0ByTempMonDVs
	call WipeAttrMap
	call ApplyAttrMap
	jmp ApplyPals

_CGB_TrainerOrMonFrontpicPals:
	ld de, wBGPals1
	ld a, [wCurPartySpecies]
	ld bc, wTempMonPersonality
	call GetFrontpicPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	call VaryBGPal0ByTempMonDVs
	call WipeAttrMap
	call ApplyAttrMap
	jmp ApplyPals

_CGB_JudgeSystem:
	; gender icon
	ld de, wBGPals1 palette 6
	ld hl, GenderAndExpBarPals
	call LoadPalette_White_Col1_Col2_Black
	; frontpic
	ld a, [wCurPartySpecies]
	ld bc, wTempMonPersonality
	call GetFrontpicPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	ld hl, wBGPals1 palette 7 + 2
	call VaryBGPalByTempMonDVs
	; max stat sparkle and bottle cap
	ld de, wOBPals1 palette 0
	ld hl, .SparkleAndBottleCapPalette
	ld c, 2 palettes
	call LoadCPaletteBytesFromHLIntoDE

	call WipeAttrMap

	; up/down arrows
	hlcoord 0, 0, wAttrMap
	ld a, 1 | VRAM_BANK_1
	ld [hli], a
	; top row
	ld bc, 17
	ld a, 1
	rst ByteFill
	; gender icon
	ld a, 6 | VRAM_BANK_1
	ld [hli], a
	; shiny icon and second row
	ld a, 1 | VRAM_BANK_1
	ld bc, 21
	rst ByteFill
	; left/right arrows
	hlcoord 0, 2, wAttrMap
	ld [hl], 0 | VRAM_BANK_1
	; frontpic
	hlcoord 0, 6, wAttrMap
	lb bc, 7, 7
	ld a, 7
	call FillBoxWithByte
	; chart
	hlcoord 9, 4, wAttrMap
	lb bc, 12, 8
	ld a, 5 | VRAM_BANK_1
	call FillBoxWithByte
	hlcoord 8, 6, wAttrMap
	lb bc, 8, 1
	ld a, 5 | VRAM_BANK_1
	call FillBoxWithByte
	hlcoord 17, 6, wAttrMap
	lb bc, 8, 1
	ld a, 5 | VRAM_BANK_1
	call FillBoxWithByte
	; stat values
	ld c, STAT_HP
	hlcoord 12, 3, wAttrMap
	call .FillStat
	ld c, STAT_ATK
	hlcoord 17, 5, wAttrMap
	call .FillStat
	ld c, STAT_DEF
	hlcoord 17, 14, wAttrMap
	call .FillStat
	ld c, STAT_SPD
	hlcoord 12, 16, wAttrMap
	call .FillStat
	ld c, STAT_SDEF
	hlcoord 6, 14, wAttrMap
	call .FillStat
	ld c, STAT_SATK
	hlcoord 6, 5, wAttrMap
	call .FillStat
	; heading
	hlcoord 0, 3, wAttrMap
	ld a, 0 | VRAM_BANK_1
	ld bc, 11
	rst ByteFill

	jr _CGB_FinishLayout

.FillStat:
; Use palette 2 for normal, 3 for lowered, 4 for raised
	ld a, [wTempMonNature]
	push hl
	farcall GetNatureStatMultiplier
	pop hl
	cp 10 ; 10 is normal
	ld a, 4
	jr c, .lowered_stat ; 9 is lowered
	jr nz, .raised_stat ; 11 is raised
	dec a ; 2
.lowered_stat
	dec a ; 3
.raised_stat
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

.SparkleAndBottleCapPalette:
if !DEF(MONOCHROME)
; max stat sparkle
	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 31, 29, 00
	RGB 00, 00, 00
; hyper trained bottle cap
	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 22, 23, 24
	RGB 13, 15, 18
else
; max stat sparkle
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
; hyper trained bottle cap
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
endc


_CGB_FinishLayout:
	call ApplyAttrMap
	call ApplyPals
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

