	db 90,  50,  34,  70,  60,  44 ; 348 BST
	;   hp  atk  def  spd  sat  sdf

	db GHOST, FLYING ; type
	db 60 ; catch rate
	db 174 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/drifloon/front.dimensions"
	abilities_for DRIFLOON, AFTERMATH, AFTERMATH, UNBURDEN
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   1,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, THUNDERBOLT, THUNDER, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, REFLECT, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, THIEF, WILL_O_WISP, FLASH, THUNDER_WAVE, FLY, DREAM_EATER, ENDURE, HEADBUTT, ICY_WIND, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK
	; end
