	db  75,  75,  60,  60,  83,  60 ; 413 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 145 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/dewott/front.dimensions"
	abilities_for DEWOTT, TORRENT, SHELL_ARMOR, TECHNICIAN
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, ROAR, TOXIC, HAIL, BULK_UP, HIDDEN_POWER, HONE_CLAWS, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, ROCK_SLIDE, SCALD, X_SCISSOR, DRAIN_PUNCH, WATER_PULSE, SHADOW_CLAW, CUT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, AQUA_TAIL, BODY_SLAM, COUNTER, DOUBLE_EDGE, ENDURE, HEADBUTT, ICE_PUNCH, ICY_WIND, SEISMIC_TOSS, SLEEP_TALK, SWAGGER
	; end
