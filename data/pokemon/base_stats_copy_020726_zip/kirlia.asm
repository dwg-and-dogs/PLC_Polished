	db  38,  35,  35,  50,  65,  55 ; 540 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FAIRY ; type
	db 120 ; catch rate
	db 97 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/kirlia/front.dimensions"
	abilities_for KIRLIA, SYNCHRONIZE, TRACE, PIXILATE
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	ev_yield   0,   0,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDERBOLT, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SUBSTITUTE, REST, ATTRACT, THIEF, DAZZLINGLEAM, LEECH_LIFE, GIGA_IMPACT, DREAM_EATER, ENDURE, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, ZEN_HEADBUTT, WHIRLPOOL 
	; end
