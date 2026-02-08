	db  91,  90, 106,  77, 130, 106 ; 405 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, STEEL ; type
	db 3 ; catch rate
	db 201 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_UNKNOWN, 15 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/heatran/front.dimensions"
	abilities_for HEATRAN, FLASH_FIRE, FLASH_FIRE, FLAME_BODY
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, BULLDOZE, SOLAR_BEAM, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, FLASH_CANNON, FLAMETHROWER, SANDSTORM, FIRE_BLAST, SUBSTITUTE, FLAME_CHARGE, REST, ATTRACT, THIEF, WILL_O_WISP, EXPLOSION, THUNDER_WAVE, GYRO_BALL, STRENGTH, DOUBLE_EDGE, EARTH_POWER, DREAM_EATER, ENDURE, ROLLOUT, SLEEP_TALK, SWAGGER
	; end
