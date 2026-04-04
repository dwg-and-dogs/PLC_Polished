	db  80, 120,  79,  70,  95,  79 ; 523 BST
	;   hp  atk  def  spd  sat  sdf

if DEF(FAITHFUL)
	db ELECTRIC, ELECTRIC
else
	db ELECTRIC, DRAGON ; type
endc
	db 45 ; catch rate
	db 201 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/luxray/front.dimensions"
	abilities_for LUXRAY, RIVALRY, INTIMIDATE, GUTS
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, DRAGON_CLAW, TOXIC, HIDDEN_POWER, HONE_CLAWS, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, DAZZLINGLEAM, DARK_PULSE, WILD_CHARGE, DRAGON_PULSE, GIGA_IMPACT, FLASH, VOLT_SWITCH, THUNDER_WAVE, STRENGTH, AGILITY, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, HEADBUTT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
