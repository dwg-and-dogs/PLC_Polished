	db  55,  35,  50, 110,  95,  85 ; 430 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, WATER ; type
	db 90 ; catch rate
	db 134 ; base exp
	db MYSTIC_WATER ; item 1
	db SILVERPOWDER ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/ledian_ancestor/front.dimensions"
	abilities_for LEDIAN_ANCESTOR, RAIN_DISH, WATER_ABSORB, TINTED_LENS 
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   0,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset 
	tmhm SCALD, ICY_WIND, SURF, WATERFALL, WATER_PULSE, DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, SOLAR_BEAM, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROOST, FOCUS_BLAST, DRAIN_PUNCH, ACROBATICS, GIGA_IMPACT, U_TURN, FLASH, SWORDS_DANCE, STRENGTH, DOUBLE_EDGE, ENDURE, HEADBUTT, ICE_PUNCH, KNOCK_OFF, ROLLOUT, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end
