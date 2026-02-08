	db  68,  65,  65,  80, 125, 115 ; 518 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FAIRY ; type
	db 45 ; catch rate
	db 201 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F100, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/gardevoir/front.dimensions"
	abilities_for GARDEVOIR, SYNCHRONIZE, TRACE, PIXILATE
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDERBOLT, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SUBSTITUTE, REST, ATTRACT, THIEF, DAZZLINGLEAM, LEECH_LIFE, GIGA_IMPACT, DREAM_EATER, ENDURE, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, ZEN_HEADBUTT, WHIRLPOOL 
	; end
