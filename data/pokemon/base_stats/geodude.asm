	db  40,  80, 100,  20,  30,  30 ; 300 BST
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 255 ; catch rate
	db 86 ; base exp
	db NO_ITEM ; item 1
	db EVERSTONE ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/geodude/front.dimensions"
	abilities_for GEODUDE, ROCK_HEAD, STURDY, GALVANIZE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield   0,   0,   1,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, BULLDOZE, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, SUBSTITUTE, FACADE, REST, ATTRACT, ROCK_SLIDE, EXPLOSION, STONE_EDGE, GYRO_BALL, STRENGTH, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ENDURE, FIRE_PUNCH, HEADBUTT, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, THUNDERPUNCH
	; end
