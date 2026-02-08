	db  35, 60,  40, 70, 85,  40 ; 330 BST ; hisuian 
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, GHOST ; type
	db 75 ; catch rate
	db 66 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/zorua/front.dimensions"
	abilities_for ZORUA, INSOMNIA, COMPOUND_EYES, IMPOSTER
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   0,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, ROAR, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, HONE_CLAWS, PROTECT, RAIN_DANCE, SAFEGUARD, RETURN, DIG, PSYCHIC, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, FLAMETHROWER, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, FLAME_CHARGE, REST, ATTRACT, THIEF, FOCUS_BLAST, DARK_PULSE, WILL_O_WISP, SHADOW_CLAW, STRENGTH, AGILITY, BODY_SLAM, DOUBLE_EDGE, DREAM_EATER, ENDURE, FIRE_PUNCH, HEADBUTT, ICY_WIND, HYPER_VOICE, KNOCK_OFF, SLEEP_TALK, SWAGGER, WHIRLPOOL 
	; end
