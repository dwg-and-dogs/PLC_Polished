	db  80,  85,  95,  25,  30,  30 ; 345 BST
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 120 ; catch rate
	db 135 ; base exp
	db NO_ITEM ; item 1
	db PROTECTOR ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/rhyhorn/front.dimensions"
	abilities_for RHYHORN, ROCK_HEAD, ROCK_HEAD, RECKLESS
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	ev_yield   0,   0,   1,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, BULLDOZE, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, DRAGON_PULSE, POISON_JAB, STONE_EDGE, SWORDS_DANCE, STRENGTH, AQUA_TAIL, BODY_SLAM, COUNTER, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, ICY_WIND, ROLLOUT, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
