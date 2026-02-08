	db  70, 130,  95,  85,  45,  70 ; 540 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, ROCK ; type
	db 15 ; catch rate
	db 175 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/kleavor/front.dimensions"
	abilities_for KLEAVOR, SWARM, SHEER_FORCE, STEADFAST
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, STEEL_WING, ROOST, FALSE_SWIPE, X_SCISSOR, GIGA_IMPACT, U_TURN, STONE_EDGE, SWORDS_DANCE, CUT, FLY, STRENGTH, COUNTER, DOUBLE_EDGE, ENDURE, HEADBUTT, KNOCK_OFF, SLEEP_TALK, SWAGGER
	; end
