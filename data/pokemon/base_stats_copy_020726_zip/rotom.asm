	db  50,  50,  77,  91,  95,  77 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db GHOST, ELECTRIC ; type
	db 45 ; catch rate
	db 154 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_UNKNOWN, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/rotom/front.dimensions"
	abilities_for ROTOM, LEVITATE, LEVITATE, PRANKSTER
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   0,   0,   1,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, THUNDERBOLT, THUNDER, RETURN, SHADOW_BALL, DOUBLE_TEAM, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, DAZZLINGLEAM, LEECH_LIFE, ENERGY_BALL, DARK_PULSE, DRAIN_PUNCH, WILL_O_WISP, GIGA_IMPACT, DREAM_EATER, ENDURE, HEADBUTT, ICY_WIND, KNOCK_OFF, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, THUNDERPUNCH, TRICK, ZAP_CANNON
	; end
