GetTrainerEVsDVsAndPersonality:
; Return the EVs, DVs and personality of wOtherTrainerClass in bc
	ld a, [wOtherTrainerClass]
	dec a
	ld c, a
	ld b, 0

	ld a, [wInitialOptions2]
	and DIFFICULTY_MASK
	ld hl, TrainerClassDVsAndPersonality_Normal
	and a ; cp DIFFICULTY_NORMAL (0)
	jr z, .got_table
	ld hl, TrainerClassDVsAndPersonality_Easy
	cp DIFFICULTY_EASY
	jr z, .got_table
	ld hl, TrainerClassDVsAndPersonality_Hard
.got_table:
rept 6
	add hl, bc
endr

	ld a, [hli]
rept 6
	ld [de], a
	inc de
endr
	ld a, [hli]
	ld [wDVAndPersonalityBuffer], a
	ld a, [hli]
	ld [wDVAndPersonalityBuffer + 1], a
	ld a, [hli]
	ld [wDVAndPersonalityBuffer + 2], a
	ld a, [hli]
	ld [wDVAndPersonalityBuffer + 3], a
	ld a, [hli]
	ld [wDVAndPersonalityBuffer + 4], a
	ret

INCLUDE "data/trainers/dvs.asm"