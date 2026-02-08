	db  68,  90,  65,  82,  50,  55 ; 410 BST
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, GROUND ; type
	db 45 ; catch rate
	db 144 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/gabite/front.dimensions"
	abilities_for GABITE, SAND_RUSH, SAND_RUSH, DRY_SKIN
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm DRAGON_CLAW, CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, BULLDOZE, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, FLAMETHROWER, SANDSTORM, FIRE_BLAST, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, THIEF, ROCK_SLIDE, FALSE_SWIPE, DRAGON_PULSE, STONE_EDGE, CUT, STRENGTH, EARTH_POWER, ENDURE, HEADBUTT, IRON_HEAD, SLEEP_TALK, SWAGGER
	; end
