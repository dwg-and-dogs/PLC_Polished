	db  64,  66,  68,  50,  81,  76 ; 320 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 142 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F25, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/prinplup/front.dimensions"
	abilities_for PRINPLUP,  TORRENT, COMPETITIVE, SLUSH_RUSH
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   0,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, LIGHT_SCREEN, PROTECT, RAIN_DANCE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SANDSTORM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, SCALD, FLASH, ACROBATICS, THUNDER_WAVE, SURF, STRENGTH, WHIRLPOOL, WATERFALL, AGILITY, AQUA_TAIL, BODY_SLAM, CHARM, DOUBLE_EDGE, ENDURE, HEADBUTT, ICE_PUNCH, ICY_WIND, IRON_HEAD, KNOCK_OFF, SEISMIC_TOSS, SLEEP_TALK, SWAGGER
	; end
