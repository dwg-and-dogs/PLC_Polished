TrainerClassDVsAndPersonality: ; 100 for final. 
; entries correspond to trainer classes (see constants/trainer_constants.asm)
	table_width 6, TrainerClassDVsAndPersonality
	;  EVs  HP   Def  SAt  Ability  Gender
	;  *    Atk  Spd  SDf  Nature   Form
if DEF(NORMALMODE)
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; carrie
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; cal
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; falkner
	db  0, $BB, $BB, $BB, ABILITY_1 | QUIRKY, MALE   ; bugsy
	db  0, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; rei
else
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, FEMALE ; carrie
	db  0, $DD, $DD, $DD,  ABILITY_1 | QUIRKY, MALE   ; cal
	db 60, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; falkner
	db 30, $BB, $BB, $BB, ABILITY_1 | QUIRKY, MALE   ; bugsy
	db 50, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; rei
endc
	assert_table_length NUM_TRAINER_CLASSES
