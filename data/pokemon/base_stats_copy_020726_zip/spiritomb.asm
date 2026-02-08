	db  50,  92, 108,  35,  92, 108 ; 485 BST
	;   hp  atk  def  spd  sat  sdf

	db GHOST, DARK ; type
	db 45 ; catch rate
	db 170 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/spiritomb/front.dimensions"
	abilities_for SPIRITOMB, PRESSURE, PRESSURE, INFILTRATOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   0,   1,   0,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, SUBSTITUTE, REST, ATTRACT, THIEF, DARK_PULSE, WILL_O_WISP, GIGA_IMPACT, FLASH, THUNDER_WAVE, ENDURE, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, WHIRLPOOL 
	; end
