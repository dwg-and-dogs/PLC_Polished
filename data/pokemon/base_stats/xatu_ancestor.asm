	db  65,  50,  95,  45,  120,  95 ; 470 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, ROCK ; type
	db 75 ; catch rate
	db 171 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/xatu_ancestor/front.dimensions"
	abilities_for XATU_ANCESTOR, TRACE, MAGIC_GUARD, MAGIC_BOUNCE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield   0,   0,   0,   1,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm ROCK_SLIDE, EARTHQUAKE, EARTH_POWER, ROLLOUT, GYRO_BALL, CURSE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, SOLAR_BEAM, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, DAZZLINGLEAM, ROOST, GIGA_IMPACT, U_TURN, FLASH, THUNDER_WAVE, FLY, DOUBLE_EDGE, DREAM_EATER, ENDURE, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, TRICK, ZEN_HEADBUTT, WHIRLPOOL 
	; end
