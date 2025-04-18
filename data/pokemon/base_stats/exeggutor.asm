	db  95,  95,  85,  55, 125,  75 ; 530 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, PSYCHIC ; type
	db 45 ; catch rate
	db 212 ; base exp
	db NO_ITEM ; item 1
	db MARANGABERRY ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/exeggutor/front.dimensions"
	abilities_for EXEGGUTOR, CHLOROPHYLL, CHLOROPHYLL, HARVEST
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield   0,   0,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SOLAR_BEAM, RETURN, PSYCHIC, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ENERGY_BALL, EXPLOSION, GIGA_IMPACT, FLASH, SWORDS_DANCE, STRENGTH, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, ROLLOUT, SEED_BOMB, SKILL_SWAP, SLEEP_TALK, SWAGGER, TRICK_ROOM, ZEN_HEADBUTT, WHIRLPOOL 
	; end
