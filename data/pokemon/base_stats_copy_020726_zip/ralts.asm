	db  28,  25,  25,  40,  45,  35 ; 540 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FAIRY ; type
	db 235 ; catch rate
	db 40 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/ralts/front.dimensions"
	abilities_for RALTS, SYNCHRONIZE, TRACE, PIXILATE
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	ev_yield   0,   0,   0,   0,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDERBOLT, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SUBSTITUTE, REST, ATTRACT, THIEF, DAZZLINGLEAM, LEECH_LIFE, GIGA_IMPACT, DREAM_EATER, ENDURE, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, ZEN_HEADBUTT, WHIRLPOOL 
	; end
