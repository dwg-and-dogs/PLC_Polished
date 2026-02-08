	db 120, 112, 65,  78,  80,  75 ; 530 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, GHOST ; type
	db 45 ; catch rate
	db 201 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F0, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/basculegion/front.dimensions"
	abilities_for BASCULEGION, SWIFT_SWIM, SWIFT_SWIM, MOLD_BREAKER
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	ev_yield   3,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, SAFEGUARD, RETURN, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SUBSTITUTE, FACADE, REST, ATTRACT, FLASH, WATER_PULSE, SHADOW_CLAW, SURF, WHIRLPOOL, WATERFALL, AGILITY, AQUA_TAIL, DOUBLE_EDGE, ENDURE, HEADBUTT, IRON_HEAD, SLEEP_TALK, SWAGGER
	; end
