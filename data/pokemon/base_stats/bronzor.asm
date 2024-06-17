	db  57,  24,  86,  23,  24,  86 ; 300 BST
	;   hp  atk  def  spd  sat  sdf

	db STEEL, PSYCHIC ; type
	db 255 ; catch rate
	db 60 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_UNKNOWN, 7 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/bronzor/front.dimensions"
	abilities_for BRONZOR, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	ev_yield   0,   0,   1,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, BULLDOZE, SOLAR_BEAM, IRON_TAIL, EARTHQUAKE, RETURN, DIG, PSYCHIC, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, FLASH_CANNON, SANDSTORM, SUBSTITUTE, REST, ROCK_SLIDE, DAZZLINGLEAM, WATER_PULSE, FLASH, THUNDER_WAVE, GYRO_BALL, STRENGTH, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, EARTH_POWER, ENDURE, HYPER_VOICE, ROLLOUT, SKILL_SWAP, SLEEP_TALK, SWAGGER, ZAP_CANNON, ZEN_HEADBUTT
	; end