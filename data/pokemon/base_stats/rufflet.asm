	db 70,  83,  50,  60, 37,  50 ; 510 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 190 ; catch rate
	db 70 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F0, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/rufflet/front.dimensions"
	abilities_for RUFFLET, KEEN_EYE, SHEER_FORCE, HUSTLE
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, ROAR, TOXIC, HAIL, BULK_UP, HIDDEN_POWER, SUNNY_DAY, HONE_CLAWS, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, RETURN, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, ACROBATICS, U_TURN, FLASH, THUNDER_WAVE, FLY, AGILITY, BODY_SLAM, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, HYPER_VOICE, SLEEP_TALK, SWAGGER, ZEN_HEADBUTT
	; end
