HallOfFame:: ;this stubs out all of the pokemon and just goes to the player. todo: set up a halloffame script in the overworld. 
	call HallOfFame_FadeOutMusic
	farcall InitDisplayForHallOfFame
	ld a, [wStatusFlags]
	push af
	ld a, 1
	ld [wGameLogicPaused], a
	call DisableSpriteUpdates
	ld a, SPAWN_LANCE
	ld [wSpawnAfterChampion], a
	ld b, a
	farcall SetCreditsSpawn

	; Enable the PokÃ©gear map to cycle through all of Kanto
	ld hl, wStatusFlags
	set 6, [hl] ; hall of fame

	farcall HallOfFame_InitSaveIfNeeded

	ld hl, wHallOfFameCount
	ld a, [hl]
	cp HOF_MASTER_COUNT
	jr nc, .ok
	inc [hl]
.ok
	farcall SaveGameData
	farcall SaveCurrentVersion
	call GetHallOfFameParty
	farcall AddHallOfFameEntry

	xor a
	ld [wGameLogicPaused], a
	call AnimateHallOfFame
	pop af
	ld b, a
	farjp Credits

LeafCredits::
	call HallOfFame_FadeOutMusic
	farcall InitDisplayForLeafCredits
	ld c, 8
	call DelayFrames
	call DisableSpriteUpdates
	ld a, SPAWN_LEAF
	ld [wSpawnAfterChampion], a
	ld b, a
	farcall SetCreditsSpawn
	ld a, [wStatusFlags]
	ld b, a
	farjp Credits

HallOfFame_FadeOutMusic:
	xor a ; MUSIC_NONE
	ld [wMusicFadeIDLo], a
	ld [wMusicFadeIDHi], a
	ld a, 10
	ld [wMusicFade], a
	farcall FadeOutPalettes
	xor a
	ld [wVramState], a
	ldh [hMapAnims], a
	ret

HallOfFame_PlayMusicDE:
	push de
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	pop de
	jmp PlayMusic
	
AnimateHallOfFame:
	; Play the Hall of Fame music
	ld de, MUSIC_HALL_OF_FAME
	call HallOfFame_PlayMusicDE

	; Initialize the party counter
	xor a
	ld [wCurPartyMon], a

.loop
	; Check if we have displayed all Pokémon in the party
	ld a, [wCurPartyMon]
	cp PARTY_LENGTH
	jp nc, .done

	; Check if the current party slot is valid and not an Egg
	ld a, [wCurPartyMon]
	ld hl, wPartySpecies
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]
	cp -1 ; empty slot
	jr z, .done
	cp EGG
	jr z, .next_mon ; Skip eggs

	; TODO: Display Pokémon here
	; For now, just skip with a short delay
	ld c, 30
	call DelayFrames

.next_mon
	; Move to the next Pokémon in the party
	ld hl, wCurPartyMon
	inc [hl]
	jp .loop

.done
	; After displaying all party members, continue to the player picture animation
	call HOF_AnimatePlayerPic
	; new stuff
;	opentext
;	writetext halloffametext_1
;	waitbutton
;	closetext
	ld a, $4
	ld [wMusicFade], a
	farcall FadeOutPalettes
	ld c, 8
	jmp DelayFrames

.String_NewHallOfFamer:
	db "New Hall of Famer!@"

GetHallOfFameParty:
	ld hl, wOverworldMapBlocks
	ld bc, HOF_LENGTH
	xor a
	rst ByteFill
	ld a, [wHallOfFameCount]
	ld de, wOverworldMapBlocks
	ld [de], a
	inc de
	ld hl, wPartySpecies
	ld c, 0
.next
	ld a, [hli]
	inc a
	jr z, .done
	ld a, c
	push hl
	ld hl, wPartyMon1IsEgg
	call GetPartyLocation
	bit MON_IS_EGG_F, [hl]
	pop hl
	jr z, .mon
	inc c
	jr .next

.mon
	push hl
	push de
	push bc

	ld a, c
	ld hl, wPartyMons
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld c, l
	ld b, h

	ld hl, MON_SPECIES
	add hl, bc
	ld a, [hl]
	ld [de], a
	inc de

	ld hl, MON_ID
	add hl, bc
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de

	ld hl, MON_PERSONALITY
	add hl, bc
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de

	ld hl, MON_LEVEL
	add hl, bc
	ld a, [hl]
	ld [de], a
	inc de

	pop bc
	push bc
	ld a, c
	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	rst AddNTimes
	ld bc, MON_NAME_LENGTH - 1
	rst CopyBytes

	pop bc
	inc c
	pop de
	ld hl, HOF_MON_LENGTH
	add hl, de
	ld e, l
	ld d, h
	pop hl
	jr .next

.done
	ld a, $ff
	ld [de], a
	ret

AnimateHOFMonEntrance:
	push hl
	call ClearBGPalettes
	farcall ResetDisplayBetweenHallOfFameMons
	pop hl
	ld a, [hli]
	ld [wTempMonSpecies], a
	ld [wCurPartySpecies], a
	inc hl
	inc hl
	ld a, [hli]
	ld [wTempMonPersonality], a
	ld a, [hli]
	ld [wTempMonPersonality + 1], a
	ld hl, wTempMonForm
	predef GetVariant
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, " "
	rst ByteFill
	ld de, vTiles2 tile $31
	predef GetBackpic
	ld a, $31
	ldh [hGraphicStartTile], a
	hlcoord 6, 6
	lb bc, 6, 6
	predef PlaceGraphic
	ld a, $d0
	ldh [hSCY], a
	ld a, $90
	ldh [hSCX], a
	call ApplyTilemapInVBlank
	xor a
	ldh [hBGMapMode], a
	ld a, CGB_PLAYER_OR_MON_FRONTPIC_PALS
	call GetCGBLayout
	call SetPalettes
	call HOF_SlideBackpic
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, " "
	rst ByteFill
	hlcoord 6, 5
	call PrepMonFrontpicFlipped
	call ApplyTilemapInVBlank
	xor a
	ldh [hBGMapMode], a
	ldh [hSCY], a
	; fallthrough

HOF_SlideFrontpic:
.frontpicloop
	ldh a, [hSCX]
	and a
	ret z
	dec a
	dec a
	ldh [hSCX], a
	call DelayFrame
	jr .frontpicloop

HOF_SlideBackpic:
.backpicloop
	ldh a, [hSCX]
	cp $70
	ret z
	add $4
	ldh [hSCX], a
	call DelayFrame
	jr .backpicloop

_HallOfFamePC:
	call LoadFontsBattleExtra
	xor a
	ld [wJumptableIndex], a
.MasterLoop:
	call LoadHOFTeam
	ret c
	call .DisplayTeam
	ret c
	ld hl, wJumptableIndex
	inc [hl]
	jr .MasterLoop

.DisplayTeam:
	xor a
	ld [wHallOfFameMonCounter], a
.next
	call .DisplayMonAndStrings
	jr c, .start_button
.loop
	call JoyTextDelay
	ld hl, hJoyLast
	ld a, [hl]
	and B_BUTTON
	jr nz, .b_button
	ld a, [hl]
	and A_BUTTON
	jr nz, .a_button
	ld a, [hl]
	and START
	jr nz, .start_button
	call DelayFrame
	jr .loop

.a_button
	ld hl, wHallOfFameMonCounter
	inc [hl]
	jr .next

.b_button
	scf
	ret

.start_button
	and a
	ret

.DisplayMonAndStrings:
; Print the number of times the player has entered the Hall of Fame.
; If that number is at least HOF_MASTER_COUNT, print "HOF Master!" instead.
	ld a, [wHallOfFameMonCounter]
	cp PARTY_LENGTH
	jr nc, .fail
	ld hl, wHallOfFameTempMon1
	ld bc, wHallOfFameTempMon1End - wHallOfFameTempMon1
	rst AddNTimes
	ld a, [hl]
	cp -1
	jr nz, .okay

.fail
	scf
	ret

.okay
	push hl
	call ClearBGPalettes
	pop hl
	call DisplayHOFMon
	ld a, [wHallOfFameTempWinCount]
	cp HOF_MASTER_COUNT
	jr c, .print_num_hof
	ld de, .HOFMaster
	hlcoord 1, 2
	rst PlaceString
	hlcoord 13, 2
	jr .finish

.print_num_hof
	ld de, .TimeFamer
	hlcoord 1, 2
	rst PlaceString
	hlcoord 2, 2
	ld de, wHallOfFameTempWinCount
	lb bc, 1, 3
	call PrintNum
	hlcoord 11, 2

.finish
	ld de, EmptyString
	rst PlaceString
	call ApplyTilemapInVBlank
	ld a, CGB_PLAYER_OR_MON_FRONTPIC_PALS
	call GetCGBLayout
	call SetPalettes
	decoord 6, 5
	ld c, $6
	predef HOF_AnimateFrontpic
	and a
	ret

.HOFMaster:
	db "    HOF Master!@"

.TimeFamer:
	db "    -Time Famer@"

LoadHOFTeam:
	ld a, [wJumptableIndex]
	cp NUM_HOF_TEAMS
	jr nc, .invalid
	ld hl, sHallOfFame
	ld bc, HOF_LENGTH
	rst AddNTimes
	ld a, BANK(sHallOfFame)
	call GetSRAMBank
	ld a, [hl]
	and a
	jr z, .absent
	ld de, wHallOfFameTemp
	ld bc, HOF_LENGTH
	rst CopyBytes
	call CloseSRAM
	and a
	ret

.absent
	call CloseSRAM

.invalid
	scf
	ret

DisplayHOFMon:
	xor a
	ldh [hBGMapMode], a
	ld a, [hli]
	ld [wTempMonSpecies], a
	ld a, [hli]
	ld [wTempMonID], a
	ld a, [hli]
	ld [wTempMonID + 1], a
	ld a, [hli]
	ld [wTempMonPersonality], a
	ld a, [hli]
	ld [wTempMonPersonality + 1], a
	ld a, [hli]
	ld [wTempMonLevel], a
	ld de, wStringBuffer2
	ld bc, MON_NAME_LENGTH - 1
	rst CopyBytes
	ld a, "@"
	ld [wStringBuffer2 + 10], a
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, " "
	rst ByteFill
	hlcoord 0, 0
	lb bc, 3, SCREEN_WIDTH - 2
	call Textbox
	hlcoord 0, 12
	lb bc, 4, SCREEN_WIDTH - 2
	call Textbox
	ld a, [wTempMonSpecies]
	ld [wCurPartySpecies], a
	ld [wTextDecimalByte], a
	ld hl, wTempMonForm
	predef GetVariant
	hlcoord 6, 5
	call PrepMonFrontpicFlipped
	ld a, [wTempMonIsEgg]
	bit MON_IS_EGG_F, a
	jr nz, .print_id_no
	hlcoord 1, 13
	ld a, "â„–"
	ld [hli], a
	ld [hl], "."
	hlcoord 3, 13
	ld de, wTextDecimalByte
	lb bc, PRINTNUM_LEADINGZEROS | 1, 3
	call PrintNum
	call GetBasePokemonName
	hlcoord 7, 13
	rst PlaceString
	ld a, TEMPMON
	ld [wMonType], a
	farcall GetGender
	ld a, " "
	jr c, .got_gender
	ld a, "â™‚"
	jr nz, .got_gender
	ld a, "â™€"

.got_gender
	hlcoord 18, 13
	ld [hli], a
	hlcoord 8, 14
	ld a, "/"
	ld [hli], a
	ld de, wStringBuffer2
	rst PlaceString
	hlcoord 1, 16
	call PrintLevel

.print_id_no
	hlcoord 7, 16
	ld a, "<ID>"
	ld [hli], a
	ld a, "â„–"
	ld [hli], a
	ld [hl], "."
	hlcoord 10, 16
	ld de, wTempMonID
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	jmp PrintNum

HOF_AnimatePlayerPic:
	; Reload the font, which was overwritten by the PokÃ©mon's picture data.
	call LoadStandardFont
	; --- FIX ENDS HERE ---
	call ClearBGPalettes
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, " "
	rst ByteFill
	farcall GetPlayerBackpic
	ld a, $31
	ldh [hGraphicStartTile], a
	hlcoord 6, 6
	lb bc, 6, 6
	predef PlaceGraphic
	ld a, $d0
	ldh [hSCY], a
	ld a, $90
	ldh [hSCX], a
	call ApplyTilemapInVBlank
	xor a
	ldh [hBGMapMode], a
	ld [wCurPartySpecies], a
	ld a, CGB_PLAYER_OR_MON_FRONTPIC_PALS
	call GetCGBLayout
	call SetPalettes
	call HOF_SlideBackpic
	xor a
	ld [wBoxAlignment], a
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, " "
	rst ByteFill
	farcall HOF_LoadTrainerFrontpic
	xor a
	ldh [hGraphicStartTile], a
	hlcoord 13, 5
	lb bc, 5, 7
	predef PlaceGraphic
	ld a, $c0
	ldh [hSCX], a
	call ApplyTilemapInVBlank
	xor a
	ldh [hBGMapMode], a
	ldh [hSCY], a
	call HOF_SlideFrontpic
	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 2
	lb bc, 8, 9
	call Textbox
	hlcoord 0, 12
	lb bc, 4, 18
	call Textbox
	hlcoord 2, 4
	ld de, wPlayerName
	rst PlaceString
	hlcoord 1, 6
	ld a, "<ID>"
	ld [hli], a
	ld a, "â„–"
	ld [hli], a
	ld [hl], "."
	hlcoord 4, 6
	ld de, wPlayerID
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum
	hlcoord 1, 8
	ld de, .PlayTime
	rst PlaceString
	hlcoord 3, 9
	ld de, wGameTimeHours
	lb bc, 2, 3
	call PrintNum
	ld a, ":"
	ld [hli], a
	ld de, wGameTimeMinutes
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	call ApplyTilemapInVBlank
	farjp ProfOaksPCRating

.PlayTime:
	db "Play Time@"


;DisplayHOFMon:
;    xor a                           ; Clear the Accumulator (A = 0)
;    ldh [hBGMapMode], a             ; [cite_start]Disable auto-transfer of the BG Map to VRAM (safe for drawing) [cite: 3]
;    ld a, [hli]                     ; Load the Species byte from [hl] into A, then increment hl
;    ld [wTempMonSpecies], a         ; Store the species in wTempMonSpecies variable
;    ld a, [hli]                     ; Load the first byte of ID (Low) from [hl], increment hl
;    ld [wTempMonID], a              ; Store it in wTempMonID
;    ld a, [hli]                     ; Load the second byte of ID (High) from [hl], increment hl
;    ld [wTempMonID + 1], a          ; Store it in wTempMonID + 1
;    ld a, [hli]                     ; Load the first byte of Personality (Low), increment hl
;    ld [wTempMonPersonality], a     ; Store it in wTempMonPersonality
;    ld a, [hli]                     ; Load the second byte of Personality (High), increment hl
;    ld [wTempMonPersonality + 1], a ; Store it in wTempMonPersonality + 1
;    ld a, [hli]                     ; Load the Level byte, increment hl
;    ld [wTempMonLevel], a           ; Store it in wTempMonLevel
;    ld de, wStringBuffer2           ; Set destination pointer (de) to the string buffer
;    ld bc, MON_NAME_LENGTH - 1      ; Set byte count (bc) to name length (usually 10)
;    rst CopyBytes                   ; Copy the Nickname from [hl] to [de] (StringBuffer2)
;    ld a, "@"                       ; Load the string terminator character into A
;    ld [wStringBuffer2 + 10], a     ; Ensure the string in the buffer is terminated correctly
;    hlcoord 0, 0                    ; Point hl to the top-left tile of the screen buffer
;    ld bc, SCREEN_WIDTH * SCREEN_HEIGHT ; Load total screen size into bc
;    ld a, " "                       ; Load a "Space" tile character into A
;    rst ByteFill                    ; Fill the entire screen buffer with spaces (clear screen)
;    hlcoord 0, 0                    ; Point hl to top-left again
;    lb bc, 3, SCREEN_WIDTH - 2      ; Load height (3) and width (Screen Width - 2) for box
;    call Textbox                    ; Draw the top textbox border
;    hlcoord 0, 12                   ; Point hl to the bottom area (row 12)
;    lb bc, 4, SCREEN_WIDTH - 2      ; Load height (4) and width for bottom box
;    call Textbox                    ; Draw the bottom textbox border
;    ld a, [wTempMonSpecies]         ; Reload the species from variable to A
;    ld [wCurPartySpecies], a        ; Store species in wCurPartySpecies (needed for sprite loading)
;    ld [wTextDecimalByte], a        ; Store species in wTextDecimalByte (for printing the Dex number later)
;    ld hl, wTempMonForm             ; Point hl to wTempMonForm
;    predef GetVariant               ; Call function to determine form (e.g., Unown letter)
;    hlcoord 6, 5                    ; Point hl to screen coordinates (6,5)
;    call PrepMonFrontpicFlipped     ; Load and draw the Pokemon's front sprite (flipped for HOF style)
;    ld a, [wTempMonIsEgg]           ; Check the "Is Egg" flag
;    bit MON_IS_EGG_F, a             ; Test the specific bit for Egg
;    jr nz, .print_id_no             ; If it is an Egg (Non-Zero), jump to .print_id_no (skip name/gender)
;    hlcoord 1, 13                   ; Point hl to row 13, column 1
;    ld a, "№"                       ; Load the "No." symbol
;    ld [hli], a                     ; Place symbol, increment hl
;    ld [hl], "."                    ; Place period
;    hlcoord 3, 13                   ; Point hl to row 13, column 3
;    ld de, wTextDecimalByte         ; Point de to the Species number stored earlier
;    lb bc, PRINTNUM_LEADINGZEROS | 1, 3 ; Set formatting (Leading Zeros, 1 byte, 3 digits)
;    call PrintNum                   ; Print the Dex Number
;    call GetBasePokemonName         ; Look up the species name (e.g., "PIKACHU")
;    hlcoord 7, 13                   ; Point hl to row 13, column 7
;    rst PlaceString                 ; Print the Species Name string
;    ld a, TEMPMON                   ; Load constant TEMPMON (tells GetGender to look at wTempMon struct)
;    ld [wMonType], a                ; Store in wMonType
;    farcall GetGender               ; Calculate gender based on DVs/Personality
;    ld a, " "                       ; Default to Space (Genderless)
;    jr c, .got_gender               ; If Carry flag set (Genderless), jump to print
;    ld a, "♂"                       ; Load Male symbol
;    jr nz, .got_gender              ; If Not Zero (Male), jump to print
;    ld a, "♀"                       ; Load Female symbol (Fallthrough if Zero)
;
;.got_gender
;    hlcoord 18, 13                  ; Point hl to row 13, column 18
;    ld [hli], a                     ; Print the gender symbol
;    hlcoord 8, 14                   ; Point hl to row 14, column 8
;    ld a, "/"                       ; Load slash character
;    ld [hli], a                     ; Print slash
;    ld de, wStringBuffer2           ; Point de to the Nickname buffer
;    rst PlaceString                 ; Print the Nickname
;    hlcoord 1, 16                   ; Point hl to row 16, column 1
;    call PrintLevel                 ; Print the "Lv." string and the level number
;
;.print_id_no
;    hlcoord 7, 16                   ; Point hl to row 16, column 7
;    ld a, "<ID>"                    ; Load ID symbol
;    ld [hli], a                     ; Print ID symbol
;    ld a, "№"                       ; Load "No." symbol
;    ld [hli], a                     ; Print "No."
;    ld [hl], "."                    ; Print period
;    hlcoord 10, 16                  ; Point hl to row 16, column 10
;    ld de, wTempMonID               ; Point de to the ID variable
;    lb bc, PRINTNUM_LEADINGZEROS | 2, 5 ; Set formatting (Leading zeros, 2 bytes, 5 digits)
;    jmp PrintNum                    ; Print the ID Number and return (jmp is like call+ret)
	