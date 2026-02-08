	db  95, 109, 105,  56,  75,  85 ; 314 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GROUND ; type
	db 45 ; catch rate
	db 236 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/torterra/front.dimensions"
	abilities_for TORTERRA, OVERGROW, SHELL_ARMOR, WEAK_ARMOR
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, SAFEGUARD, BULLDOZE, SOLAR_BEAM, IRON_TAIL, EARTHQUAKE, RETURN, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SUBSTITUTE, REST, ATTRACT, THIEF, ENERGY_BALL, FLASH, CUT, STRENGTH, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, ROLLOUT, SEED_BOMB, SLEEP_TALK, SWAGGER
	; end
