	db 150,  80,  44,  80,  90,  54 ; 328 BST
	;   hp  atk  def  spd  sat  sdf

	db GHOST, FLYING ; type
	db 60 ; catch rate
	db 174 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/drifblim/front.dimensions"
	abilities_for DRIFBLIM, AFTERMATH, AFTERMATH, UNBURDEN
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, THUNDERBOLT, THUNDER, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, REFLECT, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, THIEF, WILL_O_WISP, GIGA_IMPACT, FLASH, THUNDER_WAVE, FLY, DREAM_EATER, ENDURE, HEADBUTT, ICY_WIND, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK
	; end
