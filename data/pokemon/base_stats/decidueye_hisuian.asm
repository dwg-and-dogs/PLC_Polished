	db  88, 112,  80,  60,  95,  95 ; 530 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FIGHTING ; type
	db 45 ; catch rate
	db 209 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/decidueye_hisuian/front.dimensions"
	abilities_for DECIDUEYE_HISUIAN, OVERGROW, OVERCOAT, SNIPER
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, CALM_MIND, TOXIC, HAIL, BULK_UP, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, SAFEGUARD, SOLAR_BEAM, RETURN, PSYCHIC, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, FOCUS_BLAST, ENERGY_BALL, DRAIN_PUNCH, ACROBATICS, SHADOW_CLAW, U_TURN, CUT, FLY, AGILITY, DOUBLE_EDGE, DRAIN_PUNCH, ENDURE, HEADBUTT, PAY_DAY, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZEN_HEADBUTT
	; end
