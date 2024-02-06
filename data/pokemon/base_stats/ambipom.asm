	db  75, 100,  66, 115,  60,  66 ; 510 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 169 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/ambipom/front.dimensions"
	abilities_for AMBIPOM, TECHNICIAN, TECHNICIAN, TECHNICIAN
	db GROWTH_FAST ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   0,   0,   2
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, BULLDOZE, THUNDERBOLT, THUNDER, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, DRAIN_PUNCH, ACROBATICS, WATER_PULSE, SHADOW_CLAW, POISON_JAB, GIGA_IMPACT, U_TURN, THUNDER_WAVE, CUT, STRENGTH, BATON_PASS, BODY_SLAM, CHARM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, FIRE_PUNCH, HEADBUTT, KNOCK_OFF, SEISMIC_TOSS, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, THUNDERPUNCH, ZEN_HEADBUTT
	; end
