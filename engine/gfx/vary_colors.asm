CopyDVsToColorVaryDVs: 
;Revise these to look at the  DVs of the mon, 
; check if the DVs match those of the 
; e = HPAtkDV
	ld a, [hli]
	ld e, a
; d = DefSpdDV
	ld a, [hli]
	ld d, a
; c = SatSdfDV
	ld a, [hli]
	ld c, a
; b = Shiny
	push bc
	ld a, [hl]
	ld b, a

	ldh a, [rSVBK]
	ld c, a
	ld a, $5
	ldh [rSVBK], a

	ld hl, wColorVaryDVs
; wColorVaryDVs = HPAtkDV
	ld a, e
	ld [hli], a
; wColorVaryDVs+1 = DefSpdDV
	ld a, d
	ld [hli], a
	inc hl
	inc hl
; wColorVaryShiny = Shiny
	ld a, b
	ld [hld], a
	ld a, c
	ld d, a
	pop bc
; wColorVarySpecies = Species
	ld a, b
	ld [hld], a
; wColorVaryDVs+2 = SatSdfDV
	ld a, c
	ld [hl], a

	ld a, d
	ldh [rSVBK], a
	ret

GetColorChannelVariedByDV:
; d = color, e = DV
; a <- d + (e & %11) - (e & %1100 >> 2), ±5 if not in [0, 31]
	ld a, e
	cp %0010 ; override a +2
	jr z, .plus4
	cp %1000 ; override a -2
	jr z, .minus4
	and %11
	add d
	srl e
	srl e
	sub e
.floor
	jr c, .up
.ceil
	cp 32
	ret c
	sub 5
	ret

.up
	add 5
	ret

.plus4
	ld a, d
	add 4
	jr .ceil

.minus4
	ld a, d
	sub 4
	jr .floor

VaryRedByDV:
;;; e = DV
;;; [hl+0] = gggr:rrrr
;;; [hl+1] = 0bbb:bbgg
; store red in d
	ld a, [hl]
	and %00011111
	ld d, a
; vary d according to e
	call GetColorChannelVariedByDV
; store a back in red
	ld d, a
	ld a, [hl]
	and %11100000
	or d
	ld [hl], a
	ret

VaryGreenByDV:
;;; e = DV
;;; [hl+0] = gggr:rrrr
;;; [hl+1] = 0bbb:bbgg
; store green in d
	ld a, [hli]
	and %11100000
	srl a
	swap a
	ld d, a ; d = 00000ggg
	ld a, [hld]
	and %00000011
	swap a
	srl a
	or d
	ld d, a
; vary d according to e
	call GetColorChannelVariedByDV
; store a back in green
	sla a
	swap a
	ld d, a
	and %11100000
	ld e, a
	ld a, d
	and %00000011
	ld d, a
	ld a, [hl]
	and %00011111
	or e
	ld [hli], a
	ld a, [hl]
	and %11111100
	or d
	ld [hld], a
	ret

VaryBlueByDV:
;;; e = DV
;;; [hl+0] = gggr:rrrr
;;; [hl+1] = 0bbb:bbgg
; store blue in d
	inc hl
	ld a, [hl]
	and %01111100
	srl a
	srl a
	ld d, a
; vary d according to e
	call GetColorChannelVariedByDV
; store a back in blue
	ld d, a
	sla d
	sla d
	ld a, [hl]
	and %10000011
	or d
	ld [hld], a
	ret

CheckDVsHPType:
; Check if DVs match a Hidden Power type pattern
; Input: bc = wColorVaryDVs pointer, de = pattern pointer
; Returns: carry flag set if match, clear if no match
	push hl
	push de
	push bc
	
	; Set up for block comparison
	ld h, b
	ld l, c                    ; hl = source (wColorVaryDVs)
	; de already contains pattern pointer
	ld b, 3                    ; compare 3 bytes
	
.compare_loop
	ld a, [de]
	cp [hl]
	jr nz, .no_match
	inc hl
	inc de
	dec b
	jr nz, .compare_loop
	
	; Match found
	scf  ; set carry flag
	jr .done
	
.no_match
	and a  ; clear carry flag
	
.done
	pop bc
	pop de
	pop hl
	ret

VaryColorsByDVs::
; hl = colors
; [hl+0] = gggr:rrrr
; [hl+1] = 0bbb:bbgg
; [hl+2] = GGGR:RRRR
; [hl+3] = 0BBB:BBGG

; DVs in wColorVaryDVs
; [bc+0] = hhhh:aaaa
; [bc+1] = dddd:ssss
; [bc+2] = pppp:qqqq

; [wColorVarySpecies] = species
; [wColorVaryShiny] = shiny

if DEF(MONOCHROME) || DEF(NOIR)
	ret
endc

	ld a, [wInitialOptions]
	bit COLOR_VARY_OPT, a
	ret z

	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a

	ld bc, wColorVaryDVs

	; Check each Hidden Power type in order
	ld de, .HPFightingPattern
	call CheckDVsHPType
	jp c, .HPFightingEffect
	
	ld de, .HPFlyingPattern
	call CheckDVsHPType
	jp c, .HPFlyingEffect
	
	ld de, .HPPoisonPattern
	call CheckDVsHPType
	jp c, .HPPoisonEffect
	
	ld de, .HPGroundPattern
	call CheckDVsHPType
	jp c, .HPGroundEffect
	
	ld de, .HPRockPattern
	call CheckDVsHPType
	jp c, .HPRockEffect
	
	ld de, .HPBugPattern
	call CheckDVsHPType
	jp c, .HPBugEffect
	
	ld de, .HPGhostPattern
	call CheckDVsHPType
	jp c, .HPGhostEffect
	
	ld de, .HPSteelPattern
	call CheckDVsHPType
	jp c, .HPSteelEffect
	
	ld de, .HPFirePattern
	call CheckDVsHPType
	jp c, .HPFireEffect
	
	ld de, .HPWaterPattern
	call CheckDVsHPType
	jp c, .HPWaterEffect
	
	ld de, .HPGrassPattern
	call CheckDVsHPType
	jp c, .HPGrassEffect
	
	ld de, .HPElectricPattern
	call CheckDVsHPType
	jp c, .HPElectricEffect
	
	ld de, .HPPsychicPattern
	call CheckDVsHPType
	jp c, .HPPsychicEffect
	
	ld de, .HPIcePattern
	call CheckDVsHPType
	jp c, .HPIceEffect
	
	ld de, .HPDragonPattern
	call CheckDVsHPType
	jp c, .HPDragonEffect
	
	ld de, .HPDarkPattern
	call CheckDVsHPType
	jp c, .HPDarkEffect

	; Check if POLYCHROME item is in use
	push hl
	push bc
	ld a, [wCurItem]
	cp POLYCHROME ; this item should never be held, and even if it was, it doesn't hcange th aplette 
	jp z, .PolychromeEffect
	; If not POLYCHROME, check if species is Porygon
;	ld a, [wColorVarySpecies]
;	cp PORYGON
;	jp z, .PolychromeEffect
	pop bc
	pop hl
	jp .StandardColors

.HPFightingEffect:
	push hl
	push bc
	ld hl, .HPFightingPalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPFightingPalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPFlyingEffect:
	push hl
	push bc
	ld hl, .HPFlyingPalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPFlyingPalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPPoisonEffect:
	push hl
	push bc
	ld hl, .HPPoisonPalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPPoisonPalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPGroundEffect:
	push hl
	push bc
	ld hl, .HPGroundPalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPGroundPalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPRockEffect:
	push hl
	push bc
	ld hl, .HPRockPalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPRockPalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPBugEffect:
	push hl
	push bc
	ld hl, .HPBugPalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPBugPalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPGhostEffect:
	push hl
	push bc
	ld hl, .HPGhostPalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPGhostPalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPSteelEffect:
	push hl
	push bc
	ld hl, .HPSteelPalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPSteelPalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPFireEffect:
	push hl
	push bc
	ld hl, .HPFirePalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPFirePalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPWaterEffect:
	push hl
	push bc
	ld hl, .HPWaterPalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPWaterPalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPGrassEffect:
	push hl
	push bc
	ld hl, .HPGrassPalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPGrassPalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPElectricEffect:
	push hl
	push bc
	ld hl, .HPElectricPalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPElectricPalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPPsychicEffect:
	push hl
	push bc
	ld hl, .HPPsychicPalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPPsychicPalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPIceEffect:
	push hl
	push bc
	ld hl, .HPIcePalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPIcePalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPDragonEffect:
	push hl
	push bc
	ld hl, .HPDragonPalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPDragonPalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

.HPDarkEffect:
	push hl
	push bc
	ld hl, .HPDarkPalsLite
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	push hl
	push bc
	ld hl, .HPDarkPalsDark
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	pop bc
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	pop af
	ldh [rSVBK], a
	ret

; Hidden Power DV patterns
.HPFightingPattern:
	db $ff, $ee, $ee
.HPFlyingPattern:
	db $ff, $fe, $ee
.HPPoisonPattern:
	db $ff, $ef, $ee
.HPGroundPattern:
	db $ff, $ff, $ee
.HPRockPattern:
	db $ff, $ee, $fe
.HPBugPattern:
	db $ff, $fe, $fe
.HPGhostPattern:
	db $ff, $ef, $fe
.HPSteelPattern:
	db $ff, $ff, $fe
.HPFirePattern:
	db $ff, $ee, $ef
.HPWaterPattern:
	db $ff, $fe, $ef
.HPGrassPattern:
	db $ff, $ef, $ef
.HPElectricPattern:
	db $ff, $ff, $ef
.HPPsychicPattern:
	db $ff, $ee, $ff
.HPIcePattern:
	db $ff, $fe, $ff
.HPDragonPattern:
	db $ff, $ef, $ff
.HPDarkPattern:
	db $fe, $ff, $ff

; Hidden Power palettes
.HPFightingPalsLite:
if !DEF(MONOCHROME)
	RGB 23, 24, 23
else
	RGB_MONOCHROME_DARK
endc

.HPFightingPalsDark:
if !DEF(MONOCHROME)
	RGB 31, 16, 0
else
	RGB_MONOCHROME_DARK
endc

.HPFlyingPalsLite:
if !DEF(MONOCHROME)
	RGB 27, 28, 31
else
	RGB_MONOCHROME_DARK
endc

.HPFlyingPalsDark:
if !DEF(MONOCHROME)
	RGB 0, 9, 21
else
	RGB_MONOCHROME_DARK
endc

.HPPoisonPalsLite:
if !DEF(MONOCHROME)
	RGB 17, 9, 19
else
	RGB_MONOCHROME_DARK
endc

.HPPoisonPalsDark:
if !DEF(MONOCHROME)
	RGB 24, 6, 6
else
	RGB_MONOCHROME_DARK
endc

.HPGroundPalsLite:
if !DEF(MONOCHROME)
	RGB 25, 24, 21
else
	RGB_MONOCHROME_DARK
endc

.HPGroundPalsDark:
if !DEF(MONOCHROME)
	RGB 18, 10, 4
else
	RGB_MONOCHROME_DARK
endc

.HPRockPalsLite:
if !DEF(MONOCHROME)
	RGB 17, 14, 10

else
	RGB_MONOCHROME_DARK
endc

.HPRockPalsDark:
if !DEF(MONOCHROME)
	RGB 6, 10, 10
else
	RGB_MONOCHROME_DARK
endc

.HPBugPalsLite:
if !DEF(MONOCHROME)
	RGB 27, 2, 7
else
	RGB_MONOCHROME_DARK
endc

.HPBugPalsDark:
if !DEF(MONOCHROME)
	RGB 4, 17, 4
else
	RGB_MONOCHROME_DARK
endc

.HPGhostPalsLite:
if !DEF(MONOCHROME)
	RGB 17, 9, 17
else
	RGB_MONOCHROME_DARK
endc

.HPGhostPalsDark:
if !DEF(MONOCHROME)
	RGB 6, 3, 5
else
	RGB_MONOCHROME_DARK
endc

.HPSteelPalsLite:
if !DEF(MONOCHROME)
	RGB 23, 23, 23
else
	RGB_MONOCHROME_DARK
endc

.HPSteelPalsDark:
if !DEF(MONOCHROME)
	RGB 14, 16, 18
else
	RGB_MONOCHROME_DARK
endc

.HPFirePalsLite:
if !DEF(MONOCHROME)
	RGB 28, 5, 5
else
	RGB_MONOCHROME_DARK
endc

.HPFirePalsDark:
if !DEF(MONOCHROME)
	RGB 31, 21, 11 ; todo these should be orange 
else
	RGB_MONOCHROME_DARK
endc

.HPWaterPalsLite: ; TODO ARE THESE WRONG?
if !DEF(MONOCHROME)
	RGB 21, 29, 29
else
	RGB_MONOCHROME_DARK
endc

.HPWaterPalsDark:
if !DEF(MONOCHROME)
	RGB 4, 18, 31
else
	RGB_MONOCHROME_DARK
endc

.HPGrassPalsLite:
if !DEF(MONOCHROME)
	RGB 25, 16, 8
else
	RGB_MONOCHROME_DARK
endc

.HPGrassPalsDark:
if !DEF(MONOCHROME)
	RGB 6, 25, 6
else
	RGB_MONOCHROME_DARK
endc

.HPElectricPalsLite:
if !DEF(MONOCHROME)
	RGB 31, 26, 0
else
	RGB_MONOCHROME_DARK
endc

.HPElectricPalsDark:
if !DEF(MONOCHROME)
	RGB 5, 3, 13
else
	RGB_MONOCHROME_DARK
endc

.HPPsychicPalsLite:
if !DEF(MONOCHROME)
	RGB 31, 2, 18
else
	RGB_MONOCHROME_DARK
endc

.HPPsychicPalsDark:
if !DEF(MONOCHROME)
	RGB 9, 0, 16
else
	RGB_MONOCHROME_DARK
endc

.HPIcePalsLite:
if !DEF(MONOCHROME)
	RGB 29, 31, 31
else
	RGB_MONOCHROME_DARK
endc

.HPIcePalsDark:
if !DEF(MONOCHROME)
	RGB 16, 25, 29
else
	RGB_MONOCHROME_DARK
endc

.HPDragonPalsLite:
if !DEF(MONOCHROME)
	RGB 10, 12, 27
else
	RGB_MONOCHROME_DARK
endc

.HPDragonPalsDark:
if !DEF(MONOCHROME)
	RGB 30, 23, 0
else
	RGB_MONOCHROME_DARK
endc

.HPDarkPalsLite:
if !DEF(MONOCHROME)
	RGB 16, 27, 30
else
	RGB_MONOCHROME_DARK
endc

.HPDarkPalsDark:
if !DEF(MONOCHROME)
	RGB 8, 6, 6
else
	RGB_MONOCHROME_DARK
endc

.PolychromeEffect:
	pop bc
	pop hl

;;; Use Porygon/Polychrome palette logic
; a = (AtkDV & %11) << 2 | (DefDV & %11)
	ld a, [bc]
	and %11
	add a
	add a
	ld d, a
	inc bc
	ld a, [bc]
	swap a
	and %11
	or d
; d, e = base paint color
	ld e, a
	ld d, 0
	push hl
	push bc
	; Get both light and dark colors for Porygon
	; First the light color
	ld hl, .SmearglePalsLite
	ld a, [wColorVaryShiny]
	and SHINY_MASK
	jr z, .not_shiny_lite
	ld hl, .SmeargleShinyPalsLite
.not_shiny_lite
	add hl, de
	add hl, de
	ld a, [hli]
	ld d, a
	ld a, [hl]
	ld e, a
	pop bc
	pop hl
	; Store lite RGB
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	
	; Now get the dark color
	push hl
	push bc
	ld bc, wColorVaryDVs
	ld a, [bc]
	and %11
	add a
	add a
	ld d, a
	inc bc
	ld a, [bc]
	swap a
	and %11
	or d
	ld e, a
	ld d, 0
	ld hl, .SmearglePalsDark
	ld a, [wColorVaryShiny]
	and SHINY_MASK
	jr z, .not_shiny_dark
	ld hl, .SmeargleShinyPalsDark
.not_shiny_dark
	add hl, de
	add hl, de
	ld a, [hli]
	ld d, a
	ld a, [hl]
	ld e, a
	pop bc
	pop hl
	; Store dark RGB
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	
	pop af
	ldh [rSVBK], a
	ret

.StandardColors:
;;; LiteRed ~ HPDV, aka, rrrrr ~ hhhh
; store HPDV in e
	ld a, [bc]
	swap a
	and %1111
	ld e, a
; vary LiteRed by e
	call VaryRedByDV

;;; LiteGrn ~ AtkDV, aka, ggggg ~ aaaa
; store AtkDV in e
	ld a, [bc]
	and %1111
	ld e, a
; vary LiteGrn by e
	call VaryGreenByDV

;;; advance from HP/Atk DV to Def/Spd DV
	inc bc

;;; LiteBlu ~ DefDV, aka, bbbbb ~ dddd
; store DefDV in e
	ld a, [bc]
	swap a
	and %1111
	ld e, a
; vary LiteBlu by e
	call VaryBlueByDV

;;; advance from Lite color to Dark color
	inc hl
	inc hl

;;; DarkRed ~ SpdDV, aka, RRRRR ~ ssss
; store SpdDV in e
	ld a, [bc]
	and %1111
	ld e, a
; vary DarkRed by e
	call VaryRedByDV

;;; move from Def/Spd DV to SAt/SDf DV
	inc bc

;;; DarkGrn ~ SAtDV, aka, GGGGG ~ pppp
; store SAtDV in e
	ld a, [bc]
	swap a
	and %1111
	ld e, a
; vary DarkGrn by e
	call VaryGreenByDV

;;; DarkBlu ~ SDfDV, aka, BBBBB ~ qqqq
; store SDfDV in e
	ld a, [bc]
	and %1111
	ld e, a
; vary DarkBlu by e
	call VaryBlueByDV

	pop af
	ldh [rSVBK], a
	ret

; could do: vary paint color with unused DV bits
; * DarkRed' = DarkRed + (HPDV & %0100 >> 2) - (HPDV & %1000 >> 3)
; * DarkGrn' = DarkGrn + (AtkDV & %0100 >> 2) - (AtkDV & %1000 >> 3)
; * DarkBlu' = DarkBlu + (DefDV & %0100 >> 2) - (DefDV & %1000 >> 3)

.SmearglePalsDark:
if !DEF(MONOCHROME)
	RGB 14, 05, 06 ; maroon (fighting)
	RGB 27, 09, 26 ; lavender (flying)
	RGB 29, 05, 06 ; red (poison)
	RGB 26, 26, 26 ; white (ground)
	RGB 18, 11, 05 ; brown (rock)
	RGB 16, 28, 01 ; lime (bug)
	RGB 14, 06, 27 ; purple (ghost)
	RGB 14, 14, 18 ; gray (steel)
	RGB 29, 13, 02 ; orange (fire)
	RGB 01, 09, 28 ; blue (water)
	RGB 04, 19, 01 ; green (grass)
	RGB 30, 25, 01 ; yellow (electric)
	RGB 30, 10, 13 ; pink (psychic)
	RGB 02, 22, 26 ; teal (ice)
	RGB 07, 11, 30 ; indigo (dragon)
	RGB 08, 06, 06 ; black (dark)
else
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
endc

.SmearglePalsLite:
if !DEF(MONOCHROME)
	RGB 14, 05, 06 ; maroon (fighting)
	RGB 27, 09, 26 ; lavender (flying)
	RGB 29, 05, 06 ; red (poison)
	RGB 26, 26, 26 ; white (ground)
	RGB 18, 11, 05 ; brown (rock)
	RGB 16, 28, 01 ; lime (bug)
	RGB 14, 06, 27 ; purple (ghost)
	RGB 14, 14, 18 ; gray (steel)
	RGB 29, 13, 02 ; orange (fire)
	RGB 01, 09, 28 ; blue (water)
	RGB 04, 19, 01 ; green (grass)
	RGB 30, 25, 01 ; yellow (electric)
	RGB 30, 10, 13 ; pink (psychic)
	RGB 02, 22, 26 ; teal (ice)
	RGB 07, 11, 30 ; indigo (dragon)
	RGB 08, 06, 06 ; black (dark)
else
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
endc

.SmeargleShinyPalsDark:
if !DEF(MONOCHROME)
	RGB 14, 05, 06 ; maroon (fighting)
	RGB 27, 09, 26 ; lavender (flying)
	RGB 29, 05, 06 ; red (poison)
	RGB 26, 26, 26 ; white (ground)
	RGB 18, 11, 05 ; brown (rock)
	RGB 16, 28, 01 ; lime (bug)
	RGB 14, 06, 27 ; purple (ghost)
	RGB 14, 14, 18 ; gray (steel)
	RGB 29, 13, 02 ; orange (fire)
	RGB 01, 09, 28 ; blue (water)
	RGB 04, 19, 01 ; green (grass)
	RGB 30, 25, 01 ; yellow (electric)
	RGB 30, 10, 13 ; pink (psychic)
	RGB 02, 22, 26 ; teal (ice)
	RGB 07, 11, 30 ; indigo (dragon)
	RGB 08, 06, 06 ; black (dark)
else
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
endc

.SmeargleShinyPalsLite:
if !DEF(MONOCHROME)
	RGB 14, 05, 06 ; maroon (fighting)
	RGB 27, 09, 26 ; lavender (flying)
	RGB 29, 05, 06 ; red (poison)
	RGB 26, 26, 26 ; white (ground)
	RGB 18, 11, 05 ; brown (rock)
	RGB 16, 28, 01 ; lime (bug)
	RGB 14, 06, 27 ; purple (ghost)
	RGB 14, 14, 18 ; gray (steel)
	RGB 29, 13, 02 ; orange (fire)
	RGB 01, 09, 28 ; blue (water)
	RGB 04, 19, 01 ; green (grass)
	RGB 30, 25, 01 ; yellow (electric)
	RGB 30, 10, 13 ; pink (psychic)
	RGB 02, 22, 26 ; teal (ice)
	RGB 07, 11, 30 ; indigo (dragon)
	RGB 08, 06, 06 ; black (dark)
else
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK
endc

VaryBGPal0ByTempMonDVs:
	ld hl, wBGPals1 palette 0 + 2
	jr VaryBGPalByTempMonDVs
VaryBGPal1ByTempMonDVs:
	ld hl, wBGPals1 palette 1 + 2
VaryBGPalByTempMonDVs:
	push hl
	ld hl, wTempMonDVs
	ld a, [wTempMonSpecies]
	ld b, a
	call CopyDVsToColorVaryDVs
	pop hl
	jmp VaryColorsByDVs