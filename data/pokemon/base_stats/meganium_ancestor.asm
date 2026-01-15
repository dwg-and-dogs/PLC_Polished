	db  80,  100, 82,  80,  100, 83 ; 525 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, FAIRY ; type
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/meganium_ancestor/front.dimensions"
	abilities_for MEGANIUM_ANCESTOR, COMPOUND_EYES, SHED_SKIN, TINTED_LENS
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	ev_yield   0,   1,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm LEECH_LIFE, CURSE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, BULLDOZE, SOLAR_BEAM, IRON_TAIL, EARTHQUAKE, RETURN, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SUBSTITUTE, FACADE, REST, ATTRACT, DAZZLINGLEAM, ENERGY_BALL, GIGA_IMPACT, FLASH, SWORDS_DANCE, CUT, STRENGTH, BODY_SLAM, COUNTER, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, SEED_BOMB, SLEEP_TALK, SWAGGER
	; end
