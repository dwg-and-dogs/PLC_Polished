	db  60,  70,  65,  90, 125, 105 ; 515 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 75 ; catch rate
	db 232 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/roserade/front.dimensions"
	abilities_for ROSERADE, POISON_POINT, POISON_POINT, TECHNICIAN
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SAFEGUARD, SOLAR_BEAM, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, SUBSTITUTE, FACADE, REST, ATTRACT, DAZZLINGLEAM, ENERGY_BALL, GIGA_IMPACT, FLASH, SWORDS_DANCE, CUT, DOUBLE_EDGE, EARTH_POWER, ENDURE, SEED_BOMB, SLEEP_TALK, SWAGGER
	; end
