	db  80,  80,  80,  80,  80,  80 ; 480 bst 
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 75 ; catch rate
	db 168 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/glalie/front.dimensions"
	abilities_for GLALIE, INNER_FOCUS, ICE_BODY, MOODY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_MINERAL ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, BULLDOZE, SOLAR_BEAM, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, REFLECT, FLASH_CANNON, SANDSTORM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, ROCK_SLIDE, EXPLOSION, GIGA_IMPACT, VOLT_SWITCH, GYRO_BALL, STRENGTH, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, HEADBUTT, IRON_HEAD, ROLLOUT, SLEEP_TALK, SWAGGER, ZAP_CANNON, WHIRLPOOL 
	; end
