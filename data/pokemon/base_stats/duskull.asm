	db  20, 40, 90,  25,  30,  90 ; 295 BST
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 190 ; catch rate
	db 59 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 6 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/duskull/front.dimensions"
	abilities_for DUSKULL, LEVITATE, LEVITATE, CURSED_BODY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   0,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, LIGHT_SCREEN, PROTECT, RAIN_DANCE, RETURN, DIG, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SWIFT, SUBSTITUTE, REST, ATTRACT, THIEF, LEECH_LIFE, FOCUS_BLAST, DARK_PULSE, WILL_O_WISP, SHADOW_CLAW, FLASH, THUNDER_WAVE, DREAM_EATER, ENDURE, FIRE_PUNCH, ICE_PUNCH, KNOCK_OFF, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, THUNDERPUNCH, WHIRLPOOL 
	; end
