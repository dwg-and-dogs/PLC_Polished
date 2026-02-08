	db  60,  45,  50,  70,  90,  80 ; 395 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 160 ; base exp
	db SHED_SHELL ; item 1
	db SILVERPOWDER ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/butterfree/front.dimensions"
	abilities_for BUTTERFREE, COMPOUND_EYES, COMPOUND_EYES, TINTED_LENS
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   0,   0,   0,   2,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, SAFEGUARD, SOLAR_BEAM, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROOST, ENERGY_BALL, ACROBATICS, GIGA_IMPACT, U_TURN, FLASH, DOUBLE_EDGE, DREAM_EATER, ENDURE, SKILL_SWAP, SLEEP_TALK, SWAGGER
	; end
