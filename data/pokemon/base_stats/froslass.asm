	db  70,  80,  70,  110,  80,  70
	;   hp  atk  def  spd  sat  sdf

	db GHOST, ICE ; type
	db 75 ; catch rate
	db 118 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/froslass/front.dimensions"
	abilities_for FROSLASS, SNOW_CLOAK, SNOW_CLOAK, CURSED_BODY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, BULLDOZE, SOLAR_BEAM, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, REFLECT, FLASH_CANNON, SANDSTORM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, ROCK_SLIDE, EXPLOSION, GIGA_IMPACT, VOLT_SWITCH, GYRO_BALL, STRENGTH, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, HEADBUTT, IRON_HEAD, ROLLOUT, SLEEP_TALK, SWAGGER, ZAP_CANNON, WHIRLPOOL 
	; end
