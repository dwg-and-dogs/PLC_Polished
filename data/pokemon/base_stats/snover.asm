	db  60,  62,  50,  40,  62,  60 ; 540 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, ICE ; type
	db 120 ; catch rate
	db 67 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 7 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/snover/front.dimensions"
	abilities_for SNOVER, SNOW_WARNING, SNOW_WARNING, SOUNDPROOF
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, CALM_MIND, ROAR, TOXIC, HAIL, BULK_UP, HIDDEN_POWER, HONE_CLAWS, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, SAFEGUARD, BULLDOZE, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST, ENERGY_BALL, DRAIN_PUNCH, WATER_PULSE, THUNDER_WAVE, BODY_SLAM, COUNTER, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, ICE_PUNCH, ICY_WIND, KNOCK_OFF, SEED_BOMB, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SWAGGER, TRICK
	; end
