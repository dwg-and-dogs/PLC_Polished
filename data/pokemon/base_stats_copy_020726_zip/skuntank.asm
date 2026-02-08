	db 103,  93,  67,  84,  71,  61 ; 465 BST
	;   hp  atk  def  spd  sat  sdf

	db POISON, DARK ; type
	db 60 ; catch rate
	db 168 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/skuntank/front.dimensions"
	abilities_for SKUNTANK, AFTERMATH, KEEN_EYE, STENCH
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, PROTECT, BULLDOZE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, FLAMETHROWER, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, DARK_PULSE, FLASH, CUT, FLY, COUNTER, DOUBLE_EDGE, ENDURE, ICY_WIND, IRON_HEAD, SLEEP_TALK, SUCKER_PUNCH, SWAGGER
	; end
