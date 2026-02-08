	db  73,  76,  75, 100,  81, 100 ; 505 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, PSYCHIC ; type
	db 75 ; catch rate
	db 178 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db ASPEAR_BERRY ; item 2
	dn GENDER_F75, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/ninetales/front.dimensions"
	abilities_for NINETALES, DROUGHT, DROUGHT, FLASH_FIRE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   1,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, SAFEGUARD, SOLAR_BEAM, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, SWIFT, SUBSTITUTE, FACADE, FLAME_CHARGE, REST, ATTRACT, THIEF, ENERGY_BALL, DARK_PULSE, WILL_O_WISP, GIGA_IMPACT, BODY_SLAM, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, SLEEP_TALK, SWAGGER, ZEN_HEADBUTT
	; end
