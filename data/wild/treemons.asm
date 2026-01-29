TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City ; 0 
	dw TreeMonSet_Canyon ; 1
	dw TreeMonSet_Town ; 2 
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	dw TreeMonSet_Ice
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City 

; Two tables each (normal, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
	db 50, HOOTHOOT,     10
	db 15, AIPOM,     10
	db 15, AIPOM,     10
	db 10, AIPOM,     10
	db  5, HERACROSS,     10
	db  5, HERACROSS,     10
	db -1
	; rare
	db 50, HOOTHOOT,     10
	db 15, HERACROSS,  10
	db 15, HERACROSS,  10
	db 10, AIPOM,     10
	db  5, AIPOM,     10
	db  5, AIPOM,     10
	db -1

TreeMonSet_Canyon:
	db 30, MANKEY,     20
	db 30, GLIGAR,     20
	db 10, NATU,     20
	db 20, MANKEY,       20
	db  5, SKARMORY,   20
	db  5, SKARMORY,   20
	db -1
	; rare
	db 30, MANKEY,     20
	db 30, GLIGAR,     20
	db 10, SKARMORY,     20
	db 20, SKARMORY,       20
	db  5, SKARMORY,   20
	db  5, SKARMORY,   20
	db -1


TreeMonSet_Town:
	db 50, EXEGGCUTE,     10
	db 15, AIPOM,      10
	db 15, AIPOM,      10
	db 10, AIPOM,     10
	db  5, HERACROSS,     10
	db  5, HERACROSS,     10
	db -1
	; rare
	db 50, AIPOM,     10
	db 15, AIPOM,      10
	db 15, HERACROSS,      10
	db 10, HERACROSS,     10
	db  5, HERACROSS,     10
	db  5, HERACROSS,     10
	db -1

TreeMonSet_Route:
	db 50, ARIADOS,   10
	db 15, LEDIAN,   10
	db 15, EXEGGCUTE,     10
	db 10, MURKROW,  10
	db  5, MURKROW,  10
	db  5, PINECO,  10
	db -1
	; rare
	db 50, MURKROW,   10
	db 15, LEDIAN,   10
	db 15, EXEGGCUTE,     10
	db 10, MURKROW,  10
	db  5, ARIADOS,  10
	db  5, PINECO,  10
	db -1

TreeMonSet_Kanto:
	db 50, ARIADOS,   10
	db 15, AIPOM,   10
	db 15, EXEGGCUTE,     10
	db 10, MURKROW,  10
	db  5, MURKROW,  10
	db  5, PINECO,  10
	db -1
	; rare
	db 50, MURKROW,   10
	db 15, AIPOM,   10
	db 15, EXEGGCUTE,     10
	db 10, MURKROW,  10
	db  5, ARIADOS,  10
	db  5, PINECO,  10
	db -1

TreeMonSet_Lake:
	db 50, ARIADOS,   10
	db 15, AIPOM,    10
	db 15, EXEGGCUTE,   10
	db 10, EXEGGCUTE,  10
	db  5, PINECO,  10
	db  5, PINECO,  10
	db -1
	; rare
	db 50, ARIADOS,   10
	db 15, AIPOM,    10
	db 15, EXEGGCUTE,   10
	db 10, EXEGGCUTE,  10
	db  5, PINECO,  10
	db  5, PINECO,  10
	db -1

TreeMonSet_Forest:;only for ilex forest and hollys holt
	db 50, PINECO,     10
	db 15, PINECO,     10
	db 15, PINECO,     10
	db 10, PINECO,     10
	db  5, PINECO,     10
	db  5, PINECO,     10
	db -1
	; rare
	db 50, PINECO,     10
	db 15, PINECO,     10
	db 15, PINECO,     10
	db 10, PINECO,     10
	db  5, PINECO,     10
	db  5, PINECO,     10
	db -1

TreeMonSet_Rock:
	db 70, GEODUDE,    15
	db 25, SHUCKLE,    15
	db  5, SHUCKLE,    15
	db -1
	
TreeMonSet_Ice: ;used for boulders near the glaciers
	db 50, BERGMITE, 20
	db 50, AVALUGG, 40
	db -1
