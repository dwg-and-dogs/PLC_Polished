	db  60,  85,  49,  60,  60,  49 ; 680 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 120 ; catch rate
	db 127 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 15 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/luxio/front.dimensions"
	abilities_for LUXIO, INTIMIDATE, RIVALRY, RIVALRY
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, DAZZLINGLEAM, WILD_CHARGE, FLASH, VOLT_SWITCH, THUNDER_WAVE, STRENGTH, AGILITY, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, HEADBUTT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
