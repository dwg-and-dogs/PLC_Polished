INCLUDE "constants.asm" ; no change 


SECTION "Egg Moves", ROMX

INCLUDE "data/pokemon/egg_move_pointers.asm"

EggMoves::

NoEggMoves:
	db $ff
