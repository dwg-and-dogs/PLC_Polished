Special::
; Run script special de.
	ld hl, SpecialsPointers
	add hl, de
	add hl, de
	add hl, de
	ld b, [hl]
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, b
	jmp FarCall_hl

INCLUDE "data/events/special_pointers.asm"

Special_SetPlayerPalette:
	ldh a, [hScriptVar]
	ld d, a
	farjp SetPlayerPalette

Special_SetCopycatPalette:
	ldh a, [hScriptVar]
	ld d, a
	farjp SetCopycatPalette

Special_GameCornerPrizeMonCheckDex:
	ldh a, [hScriptVar]
	dec a
	call CheckCaughtMon
	ret nz
	ldh a, [hScriptVar]
	dec a
	call SetSeenAndCaughtMon
	call FadeToMenu
	ldh a, [hScriptVar]
	ld [wNamedObjectIndex], a
	farcall NewPokedexEntry
	jmp ExitAllMenus

SpecialSeenMon:
	ldh a, [hScriptVar]
	dec a
	jmp SetSeenMon

Special_FindThatSpecies:
	ldh a, [hScriptVar]
	ld b, a
	farcall _FindThatSpecies
	jr z, FoundNone
	jr FoundOne

Special_FindThatSpeciesYourTrainerID:
	ldh a, [hScriptVar]
	ld b, a
	farcall _FindThatSpeciesYourTrainerID
	jr z, FoundNone
	; fallthrough

FoundOne:
	ld a, TRUE
	ldh [hScriptVar], a
	ret

FoundNone:
	xor a
	ldh [hScriptVar], a
	ret

SpecialNameRival:
	ld b, $2 ; rival
	ld de, wRivalName
	farcall _NamingScreen
	; default to "Rosin"
	ld hl, wRivalName
	ld de, .DefaultRivalName
	jmp InitName

.DefaultRivalName:
	db "Rosin@@" ; changed

SpecialTrendyPhrase:
	ld b, $3 ; trendy phrase
	ld de, wTrendyPhrase
	farcall _NamingScreen
	; default to "Nothing"
	ld hl, wTrendyPhrase
	ld de, .DefaultTrendyPhrase
	jmp InitName

.DefaultTrendyPhrase:
	db "Nothing@"

SpecialNameRater:
	farjp NameRater

Special_TownMap:
	call FadeToMenu
	farcall _TownMap
	jmp ExitAllMenus

Special_DisplayLinkRecord:
	call FadeToMenu
	farcall DisplayLinkRecord
	jmp ExitAllMenus

Special_PlayersHousePC:
	xor a
	ldh [hScriptVar], a
	farcall _PlayersHousePC
	ld a, c
	ldh [hScriptVar], a
	ret

BugContestJudging:
	farcall _BugContestJudging
	ld a, b
	ldh [hScriptVar], a
	dec a
	jr z, .firstplace
	dec a
	jr z, .secondplace
	dec a
	jr z, .thirdplace
	ld a, SHED_SHELL
	jr .finish
.firstplace
	ld hl, .FirstPlacePrizes
	call GetHourIntervalValue
	jr .finish
.secondplace
	ld a, EVERSTONE
	jr .finish
.thirdplace
	ld a, SITRUS_BERRY
.finish
	ld [wBugContestOfficerPrize], a
	ret

.FirstPlacePrizes:
	db MORN_HOUR, MOON_STONE
	db DAY_HOUR,  DAWN_STONE
	db EVE_HOUR,  SUN_STONE
	db NITE_HOUR, DUSK_STONE
	db -1,        MOON_STONE

MapRadio:
	ldh a, [hScriptVar]
	ld e, a
	farjp PlayRadio

Special_UnownPuzzle:
	call FadeToMenu
	farcall UnownPuzzle
	ld a, [wSolvedUnownPuzzle]
	ldh [hScriptVar], a
	jmp ExitAllMenus

Special_SlotMachine:
	call Special_CheckCoins
	ret c
	ld a, BANK(_SlotMachine)
	ld hl, _SlotMachine
	jr Special_StartGameCornerGame

Special_CardFlip:
	call Special_CheckCoins
	ret c
	ld a, BANK(_CardFlip)
	ld hl, _CardFlip

Special_SlidingPuzzle:  ; c.f. special_unown above 
	call FadeToMenu
	farcall SlidingPuzzle
	ld a, [wSolvedUnownPuzzle]
	ldh [hScriptVar], a
	jmp ExitAllMenus

Special_StartGameCornerGame:
	call FarQueueScript
	call FadeToMenu
	ld hl, wQueuedScriptBank
	ld a, [hli]
	push af
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af
	call FarCall_hl
	jmp ExitAllMenus

Special_CheckCoins:
	ld hl, wCoins
	ld a, [hli]
	or [hl]
	jr z, .no_coins
	ld a, COIN_CASE
	ld [wCurKeyItem], a
	call CheckKeyItem
	jr nc, .no_coin_case
	and a
	ret

.no_coins
	ld hl, .NoCoinsText
	jr .print

.no_coin_case
	ld hl, .NoCoinCaseText

.print
	call PrintText
	scf
	ret

.NoCoinsText:
	; You have no coins.
	text_far _NoCoinsText
	text_end

.NoCoinCaseText:
	; You don't have a COIN CASE.
	text_far _NoCoinCaseText
	text_end

SpecialCheckPokerus:
; Check if a monster in your party has Pokerus
	farcall CheckPokerus
	jr ScriptReturnCarry

Special_CheckLuckyNumberShowFlag:
	farcall CheckLuckyNumberShowFlag
	; fallthrough

ScriptReturnCarry:
	jr c, .carry
	xor a
	ldh [hScriptVar], a
	ret
.carry
	ld a, 1
	ldh [hScriptVar], a
	ret

Special_ActivateFishingSwarm:
	ldh a, [hScriptVar]
	ld [wFishingSwarmFlag], a
	ret

StoreSwarmMapIndices::
	ld a, c
	and a
	jr nz, .yanma
; swarm dark cave violet entrance
	ld a, d
	ld [wDunsparceMapGroup], a
	ld a, e
	ld [wDunsparceMapNumber], a
	ret

.yanma
	ld a, d
	ld [wYanmaMapGroup], a
	ld a, e
	ld [wYanmaMapNumber], a
	ret

Special_ResetLuckyNumberShowFlag:
	farcall RestartLuckyNumberCountdown
	ld hl, wLuckyNumberShowFlag
	res 0, [hl]
	farjp LoadOrRegenerateLuckyIDNumber

SpecialSnorlaxAwake:
; Check if the Poké Flute channel is playing.

; outputs:
; hScriptVar is 1 if the conditions are met, otherwise 0.

; check background music
	ld a, [wMapMusic]
	cp MUSIC_POKE_FLUTE_CHANNEL
	ld a, TRUE
	jr z, .done
	xor a ; ld a, FALSE
.done
	ldh [hScriptVar], a
	ret

PlayCurMonCry:
	ld a, [wCurPartySpecies]
	jmp PlayCry

Special_FadeOutMusic:
	xor a ; MUSIC_NONE
	ld [wMusicFadeIDLo], a
	ld [wMusicFadeIDHi], a
	ld a, $2
	ld [wMusicFade], a
	ret

Diploma:
	call FadeToMenu
	farcall _Diploma
	jmp ExitAllMenus

Special_GetOvercastIndex::
	call GetOvercastIndex
	ldh [hScriptVar], a
	ret

CheckIfTrendyPhraseIsLucky:
	xor a
	ldh [hScriptVar], a
	ld hl, wTrendyPhrase
	ld bc, .KeyPhrase
	ld d, 6
.loop
	ld a, [bc]
	ld e, a
	ld a, [hli]
	cp e
	ret nz
	inc bc
	dec d
	jr nz, .loop
	ld a, 1
	ldh [hScriptVar], a
	ret

.KeyPhrase:
	db "Lucky@"

RespawnOneOffs:
;	eventflagreset EVENT_BEAT_LAWRENCE
;	eventflagreset EVENT_BEAT_FLANNERY
;	eventflagreset EVENT_BEAT_MAYLENE
;	eventflagreset EVENT_BEAT_SKYLA_AGAIN
;	eventflagreset EVENT_BEAT_KUKUI

;	eventflagcheck EVENT_GOT_MUSCLE_BAND_FROM_STEVEN
	jr z, .SkipSteven
;	eventflagset EVENT_EMBEDDED_TOWER_STEVEN_1
;	eventflagreset EVENT_EMBEDDED_TOWER_STEVEN_2
;	eventflagreset EVENT_BEAT_STEVEN
.SkipSteven

	eventflagcheck EVENT_GOT_WISE_GLASSES_FROM_CYNTHIA
	jr z, .SkipCynthia
;	eventflagset EVENT_MYSTRI_STAGE_CYNTHIA
;	eventflagreset EVENT_SINJOH_RUINS_HOUSE_CYNTHIA
;	eventflagreset EVENT_BEAT_CYNTHIA
.SkipCynthia

	ld a, SUDOWOODO - 1
	call CheckCaughtMon
	jr nz, .CaughtSudowoodo
;	eventflagreset EVENT_ROUTE_36_SUDOWOODO
.CaughtSudowoodo

	ld a, SUICUNE - 1 ; CHANGED
	call CheckCaughtMon
	jr nz, .CaughtArticuno
;	eventflagreset EVENT_SEAFOAM_ISLANDS_ARTICUNO
.CaughtArticuno

	ld a, RAIKOU - 1; CHANGED
	call CheckCaughtMon
	jr nz, .CaughtZapdos
;	eventflagreset EVENT_ROUTE_10_ZAPDOS
;	eventflagreset EVENT_ZAPDOS_GONE
.CaughtZapdos

	ld a, ENTEI - 1; CHANGED
	call CheckCaughtMon
	jr nz, .CaughtMoltres
;	eventflagreset EVENT_CINNABAR_VOLCANO_MOLTRES
.CaughtMoltres

	ld a, CELEBI - 1; CHANGED
	call CheckCaughtMon
	jr nz, .CaughtMewtwo
;	eventflagreset EVENT_CERULEAN_CAVE_MEWTWO
.CaughtMewtwo

	ld a, CELEBI - 1; CHANGED
	call CheckCaughtMon
	jr nz, .CaughtMew
;	eventflagreset EVENT_FARAWAY_JUNGLE_MEW
.CaughtMew

	ld a, RAIKOU - 1
	call CheckCaughtMon
	jr nz, .CaughtRaikou
	ld hl, wRoamMon1Species
	ld a, [hl]
	and a
	call z, RespawnRoamingRaikou
.CaughtRaikou

	ld a, ENTEI - 1
	call CheckCaughtMon
	jr nz, .CaughtEntei
	ld hl, wRoamMon2Species
	ld a, [hl]
	and a
	call z, RespawnRoamingEntei
.CaughtEntei

	eventflagcheck EVENT_FOUGHT_SUICUNE
	jr z, .CaughtSuicune
	ld a, SUICUNE - 1
	call CheckCaughtMon
	jr nz, .CaughtSuicune
	ld hl, wRoamMon3Species
	ld a, [hl]
	and a
	call z, RespawnRoamingSuicune
.CaughtSuicune

	ld a, LUGIA - 1
	call CheckCaughtMon
	jr nz, .CaughtLugia
;	eventflagreset EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_LUGIA
;	eventflagreset EVENT_FOUGHT_LUGIA
.CaughtLugia

	ld a, HO_OH - 1
	call CheckCaughtMon
	ret nz
;	eventflagreset EVENT_TIN_TOWER_ROOF_HO_OH
;	eventflagreset EVENT_FOUGHT_HO_OH
	ret

RespawnRoamingRaikou:
	ld a, RAIKOU
	ld [wRoamMon1Species], a
	ld a, 50
	ld [wRoamMon1Level], a
	ld a, GROUP_ROUTE_42
	ld [wRoamMon1MapGroup], a
	ld a, MAP_ROUTE_42
	ld [wRoamMon1MapNumber], a
	xor a ; generate new stats
	ld [wRoamMon1HP], a
	ret

RespawnRoamingEntei:
	ld a, ENTEI
	ld [wRoamMon2Species], a
	ld a, 50
	ld [wRoamMon2Level], a
	ld a, GROUP_ROUTE_37
	ld [wRoamMon2MapGroup], a
	ld a, MAP_ROUTE_37
	ld [wRoamMon2MapNumber], a
	xor a ; generate new stats
	ld [wRoamMon2HP], a
	ret

RespawnRoamingSuicune:
	ld a, SUICUNE
	ld [wRoamMon3Species], a
	ld a, 50
	ld [wRoamMon3Level], a
	ld a, GROUP_ROUTE_38
	ld [wRoamMon3MapGroup], a
	ld a, MAP_ROUTE_38
	ld [wRoamMon3MapNumber], a
	xor a ; generate new stats
	ld [wRoamMon3HP], a
	ret

BillBoxSwitchCheck:
; Returns 0 if our storage system box-wise is completely full, 1 otherwise.
	farcall NewStorageBoxPointer
	ld b, 1
	jr nc, .ok
	jr nz, .ok
	dec b
.ok
	ld a, b
	ldh [hScriptVar], a
	ret

; ============================================================================
; Facility random-number specials
; ----------------------------------------------------------------------------
; FacilityThreeRandoms
;   Rolls THREE distinct random numbers, each in the range 0 .. N-1, and
;   stores them at wStadiumFacilityFirstTrainer / ...Second... / ...Third...
;
;   N (the "argument") is read from the script variable, so set it first:
;
;       setval N                     ; N = size of the pool to choose from
;       special FacilityThreeRandoms
;
;   The three values are guaranteed to differ from one another. N must be at
;   least 3 (you can't draw three different numbers from a smaller pool); if a
;   smaller N is passed it is clamped to 3 so the game can never hang.
;
; ReadRandom (optional convenience - `readmem` does the same job, see below)
;   Loads one of the three stored rolls back into the script variable so the
;   `ifequal` / `ifless` chain can branch on it:
;
;       setval 1                     ; 1, 2, or 3 -> which roll to read
;       special ReadRandom
;       ifequal 0, .Foo
;       ...
;
; Registration: add both routines to the SpecialsPointers table exactly the
; way HealParty is registered, and make sure this file is INCLUDEd from a bank
; that the table reaches. The `special` macro references the label
; "<Name>Special", so the table entry is what creates that symbol.
;
; WRAM: declare the three bytes (any location, they don't need to be adjacent):
;       wStadiumFacilityFirstTrainer::  db
;       wStadiumFacilitySecondTrainer:: db
;       wStadiumFacilityThirdTrainer::  db
; ============================================================================

FacilityThreeRandoms:
	ldh a, [hScriptVar]   ; a = N (the pool size passed via `setval`)
	cp 3
	jr nc, .got_n
	ld a, 3               ; clamp: never allow N < 3 (would be unsatisfiable)
.got_n
	ld d, a               ; d = N  (preserved across .RandUnder)

	; --- 1st value: any number in [0, N-1] ---
	ld a, d
	call .RandUnder
	ld [wStadiumFacilityFirstTrainer], a

	; --- 2nd value: pick in [0, N-2], then shift up past the 1st so it can't
	;     collide.  This maps the smaller range onto "everything except 1st". ---
	ld a, d
	dec a                 ; N-1
	call .RandUnder
	ld hl, wStadiumFacilityFirstTrainer
	cp [hl]
	jr c, .second_ok      ; below the 1st value -> leave it
	inc a                 ; otherwise step over the 1st value
.second_ok
	ld [wStadiumFacilitySecondTrainer], a

	; --- 3rd value: pick in [0, N-3], then shift up past BOTH used values.
	;     We sort the two used values (b = lo, c = hi) first so the two
	;     "+1" bumps are applied in the right order. ---
	ld a, d
	sub 2                 ; N-2
	call .RandUnder
	ld e, a               ; e = raw 3rd pick (no more RNG calls after this)

	ld a, [wStadiumFacilityFirstTrainer]
	ld b, a
	ld a, [wStadiumFacilitySecondTrainer]
	ld c, a
	; order them: want b = smaller, c = larger
	ld a, b
	cp c
	jr c, .ordered        ; b < c already
	ld a, b               ; swap b <-> c
	ld b, c
	ld c, a
.ordered
	ld a, e               ; raw 3rd pick
	cp b
	jr c, .third_ok       ; below the smaller used value
	inc a                 ; step over the smaller
	cp c
	jr c, .third_ok       ; now below the larger used value
	inc a                 ; step over the larger too
.third_ok
	ld [wStadiumFacilityThirdTrainer], a
	ret

; Return a uniform random value in [0, a-1] in a.  Mirrors the engine's
; `random` script command (rejection-sample away the modulo bias, then reduce
; with SimpleDivide).  Preserves DE so the caller can keep N in D.
.RandUnder
	push de
	and a
	jr z, .ru_zero        ; rand(0) -> 0
	ld c, a               ; c = bound (kept across the Random calls below)
	push bc
	call .Mod256          ; a = 256 mod c
	pop bc
	and a
	jr z, .ru_norestrict  ; bound divides 256 evenly -> no bias to correct
	ld b, a
	xor a
	sub b
	ld b, a               ; b = 256 - (256 mod c) = first value we must reject
.ru_reroll
	push bc
	call Random
	pop bc
	ldh a, [hRandomAdd]
	cp b
	jr nc, .ru_reroll     ; reject the top, biased slice
	jr .ru_reduce
.ru_norestrict
	push bc
	call Random
	pop bc
	ldh a, [hRandomAdd]
.ru_reduce
	call SimpleDivide     ; a = a mod c
	pop de
	ret
.ru_zero
	xor a
	pop de
	ret

; a = 256 mod c  (c unchanged).  Same routine as Script_random's .Divide256byC.
.Mod256
	xor a
	ld b, a
	sub c
.mod_loop
	inc b
	sub c
	jr nc, .mod_loop
	dec b
	add c
	ret

UpdateStadiumStreak:
	; wBattleTowerCurStreak += 1
	ld hl, wBattleTowerCurStreak + 1
	inc [hl]
	jr nz, .no_carry
	dec hl
	inc [hl]
.no_carry
	; Cur -> bc, Top -> de
	ld hl, wBattleTowerCurStreak
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wBattleTowerTopStreak
	ld a, [hli]
	ld d, a
	ld e, [hl]
	; new record?
	ld a, b
	cp d
	jr c, .done
	jr nz, .update
	ld a, c
	cp e
	jr c, .done
	jr z, .done
.update
	ld a, b
	ld [wBattleTowerTopStreak], a
	ld a, c
	ld [wBattleTowerTopStreak + 1], a
	ld a, [wStadiumFacilityFirstMon]   ; record beaten -> save starter as best
	ld [wStadiumFacilityBestMon], a
.done
	ret
