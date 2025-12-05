HiddenGrottoPokemonIndexes:
	db  40 ; total probability
	db  15, $0
	db  15, $1
	db   8, $2
	db   2, $3
	db -1 ; end

HiddenGrottoItems:
	db 160 ; total probability
	db  50, POKE_BALL
	db  20, HERB_BALL
	db   8, HERB_BALL
	db  25, ENERGYPOWDER
	db  10, HEAL_POWDER
	db   4, ENERGY_ROOT
	db  25, REVIVAL_HERB
	db  10, REVIVAL_HERB
	db   4, ENERGY_ROOT
	db   4, ITEM_FROM_MEM
	db -1 ; end

HiddenGrottoHiddenItems:
	db 160 ; total probability
	db  99, PP_UP
	db  30, PP_UP
	db  10, PP_UP
	db   1, BALMMUSHROOM
	db   8, SILVER_LEAF
	db   8, PP_UP
	db   1, ELIXIR
	db   2, PP_UP
	db   1, PP_MAX
	db -1 ; end
