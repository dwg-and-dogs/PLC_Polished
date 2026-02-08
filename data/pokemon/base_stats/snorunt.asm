	db  50,  50,  50,  50,  50,  50 ; 300 BST 
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 190 ; catch rate
	db 60 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/snorunt/front.dimensions"
	abilities_for SNORUNT, INNER_FOCUS, ICE_BODY, MOODY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_MINERAL ; egg groups

	ev_yield   1,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, BULLDOZE, SOLAR_BEAM, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, REFLECT, FLASH_CANNON, SANDSTORM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, GYRO_BALL, STRENGTH, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, HEADBUTT, IRON_HEAD, ROLLOUT, SLEEP_TALK, SWAGGER 
	; end
