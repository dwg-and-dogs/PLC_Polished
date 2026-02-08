	db  75, 145, 110,  45,  55,  70 ; 500 BST
	;   hp  atk  def  spd  sat  sdf ; plus 20 to atk plus 10 to hp and def minus 40 from speed 

	db BUG, DARK ; type
	db 45 ; catch rate
	db 200 ; base exp
	db BLACKGLASSES ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/minsir/front.dimensions"
	abilities_for MINSIR, HUSTLE, HUSTLE, MOXIE
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, BULLDOZE, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, LEECH_LIFE, FOCUS_BLAST, FALSE_SWIPE, X_SCISSOR, GIGA_IMPACT, STONE_EDGE, SWORDS_DANCE, CUT, STRENGTH, BODY_SLAM, DOUBLE_EDGE, ENDURE, HEADBUTT, KNOCK_OFF, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, SUCKER_PUNCH
	; end
