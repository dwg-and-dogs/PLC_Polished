	db  70,  90, 110,  95,  60,  75 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db POISON, DARK ; type
	db 45 ; catch rate
	db 175 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 7 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/drapion/front.dimensions"
	abilities_for DRAPION, BATTLE_ARMOR, BATTLE_ARMOR, SNIPER
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, HONE_CLAWS, HYPER_BEAM, PROTECT, BULLDOZE, EARTHQUAKE, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, LEECH_LIFE, X_SCISSOR, DARK_PULSE, POISON_JAB, GIGA_IMPACT, FLASH, STONE_EDGE, SWORDS_DANCE, BODY_SLAM, DOUBLE_EDGE, ENDURE, SLEEP_TALK, SUCKER_PUNCH, SWAGGER
	; end
