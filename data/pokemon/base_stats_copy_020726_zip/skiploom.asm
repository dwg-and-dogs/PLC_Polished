	db  65,  80, 140,  70,  40,  70 ; 465 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 25 ; catch rate
	db 168 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/skiploom/front.dimensions"
	abilities_for SKIPLOOM, CHLOROPHYLL, CHLOROPHYLL, INFILTRATOR
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT  ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, SOLAR_BEAM, RETURN, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, DAZZLINGLEAM, ENERGY_BALL, U_TURN, FLASH, FLY, DOUBLE_EDGE, DREAM_EATER, EARTH_POWER, ENDURE, HEADBUTT, HYPER_VOICE, ICE_PUNCH, ICY_WIND, SEED_BOMB, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SWAGGER
	; end
