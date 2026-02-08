	db  68,  55,  55,  42,  50,  50 ; 320 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 45 ; catch rate
	db 64 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/rowlet/front.dimensions"
	abilities_for ROWLET, OVERGROW, OVERCOAT, SNIPER
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   1,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, SAFEGUARD, SOLAR_BEAM, RETURN, PSYCHIC, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, ENERGY_BALL, ACROBATICS, SHADOW_CLAW, U_TURN, CUT, FLY, AGILITY, DOUBLE_EDGE, ENDURE, HEADBUTT, PAY_DAY, SLEEP_TALK, SWAGGER, ZEN_HEADBUTT
	; end
