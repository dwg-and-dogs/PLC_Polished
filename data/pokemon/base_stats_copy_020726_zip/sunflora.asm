	db  75,  55,  75,  85, 105,  85 ; 480 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FIRE ; type
	db 110 ; catch rate
	db 146 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/sunflora/front.dimensions"
	abilities_for SUNFLORA, CHLOROPHYLL, CHLOROPHYLL, EARLY_BIRD
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield   0,   0,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, SOLAR_BEAM, RETURN, DOUBLE_TEAM, FLAMETHROWER, SLUDGE_BOMB, FIRE_BLAST, SUBSTITUTE, FACADE, REST, ATTRACT, ENERGY_BALL, GIGA_IMPACT, FLASH, SWORDS_DANCE, CUT, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ENDURE, ROLLOUT, SEED_BOMB, SLEEP_TALK, SWAGGER
	; end
