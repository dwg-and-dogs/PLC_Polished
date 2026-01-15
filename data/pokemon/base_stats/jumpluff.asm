	db  75,  55,  70, 110,  55,  95 ; 400 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 45 ; catch rate
	db 230 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/jumpluff/front.dimensions"
	abilities_for JUMPLUFF, CHLOROPHYLL, CHLOROPHYLL, INFILTRATOR
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT  ; egg groups

	ev_yield   0,   0,   0,   3,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, SOLAR_BEAM, RETURN, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, DAZZLINGLEAM, ENERGY_BALL, GIGA_IMPACT, U_TURN, FLASH, FLY, DOUBLE_EDGE, DREAM_EATER, EARTH_POWER, ENDURE, HEADBUTT, HYPER_VOICE, ICE_PUNCH, ICY_WIND, SEED_BOMB, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SWAGGER
	; end
