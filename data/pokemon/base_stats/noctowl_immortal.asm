	db 100,  86,  60,  80,  50,  96 ; 405 BST
	;   hp  atk  def  spd  sat  sdf

	db FLYING, GHOST ; type
	db 90 ; catch rate
	db 162 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db AMULET_COIN ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/noctowl/front.dimensions"
	abilities_for NOCTOWL, TECHNICIAN, TINTED_LENS, COMPOUND_EYES 
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield   1,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CALM_MIND, TRICK, KNOCK_OFF, DREAM_EATER, WHIRLPOOL, SHADOW_CLAW, DARK_PULSE, WILL_O_WISP, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, FOCUS_BLAST, GIGA_IMPACT, U_TURN, FLY, DOUBLE_EDGE, ENDURE, SLEEP_TALK, SWAGGER
	; end
