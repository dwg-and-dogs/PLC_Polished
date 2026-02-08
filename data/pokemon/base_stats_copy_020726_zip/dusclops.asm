	db  40,  70, 130,  25,  60, 130 ; 455 BST
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 90 ; catch rate
	db 159 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 6 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/dusclops/front.dimensions"
	abilities_for DUSCLOPS, PRESSURE, PRESSURE, CURSED_BODY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   1,   0,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, LIGHT_SCREEN, PROTECT, RAIN_DANCE, RETURN, DIG, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SWIFT, SUBSTITUTE, REST, ATTRACT, THIEF, LEECH_LIFE, FOCUS_BLAST, DARK_PULSE, WILL_O_WISP, SHADOW_CLAW, FLASH, THUNDER_WAVE, DREAM_EATER, ENDURE, FIRE_PUNCH, ICE_PUNCH, KNOCK_OFF, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, THUNDERPUNCH, WHIRLPOOL 
	; end
