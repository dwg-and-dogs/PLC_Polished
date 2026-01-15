	db 70, 92, 65,  98,  80,  55 ; 405 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 25 ; catch rate
	db 161 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F0, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/basculin/front.dimensions"
	abilities_for BASCULIN, RECKLESS, ADAPTABILITY, MOLD_BREAKER
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, SAFEGUARD, RETURN, DOUBLE_TEAM, REFLECT, SUBSTITUTE, FACADE, REST, ATTRACT, FLASH, WATER_PULSE, SURF, WHIRLPOOL, WATERFALL, AGILITY, AQUA_TAIL, DOUBLE_EDGE, ENDURE, HEADBUTT, IRON_HEAD, SLEEP_TALK, SWAGGER
	; end
