	db  70,  80, 102,  40,  80, 102 ; 474 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 166 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F100, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/vespiquen/front.dimensions"
	abilities_for VESPIQUEN, PRESSURE, UNNERVE, PARENTAL_BOND
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	ev_yield   0,   0,   1,   0,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLAR_BEAM, RETURN, ROCK_SMASH, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, LEECH_LIFE, ROOST, FALSE_SWIPE, X_SCISSOR, ACROBATICS, GIGA_IMPACT, U_TURN, FLASH, SWORDS_DANCE, CUT, DOUBLE_EDGE, ENDURE, KNOCK_OFF, SLEEP_TALK, SWAGGER
	; end
