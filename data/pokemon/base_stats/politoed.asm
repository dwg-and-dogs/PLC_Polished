	db  90,  75,  75,  70,  90, 100 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 185 ; base exp
	db NO_ITEM ; item 1
	db KINGS_ROCK ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/politoed/front.dimensions"
	abilities_for POLITOED, DRIZZLE, DRIZZLE, WATER_ABSORB
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	ev_yield   0,   0,   0,   0,   0,   3
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, BULLDOZE, EARTHQUAKE, RETURN, DIG, PSYCHIC, ROCK_SMASH, DOUBLE_TEAM, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, ENERGY_BALL, SCALD, WATER_PULSE, GIGA_IMPACT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, HYPER_VOICE, ICE_PUNCH, ICY_WIND, SEISMIC_TOSS, SLEEP_TALK, SWAGGER
	; end
