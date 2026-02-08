	db  78, 107,  75,  70, 100, 100; 530 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GHOST ; type
	db 255 ; catch rate
	db 209 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/decidueye/front.dimensions"
	abilities_for DECIDUEYE, OVERGROW, OVERCOAT, SNIPER
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, HONE_CLAWS, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, SAFEGUARD, SOLAR_BEAM, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, ENERGY_BALL, X_SCISSOR, ACROBATICS, SHADOW_CLAW, GIGA_IMPACT, U_TURN, CUT, FLY, AGILITY, DOUBLE_EDGE, ENDURE, HEADBUTT, PAY_DAY, SLEEP_TALK, SWAGGER, ZEN_HEADBUTT
	; end
