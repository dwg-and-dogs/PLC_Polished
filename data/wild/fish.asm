fishgroup: MACRO
; mon chance, mon/item chance, old rod, good rod, super rod
	db \1, \2
	dw \3, \4, \5
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 65 percent + 1, 85 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 75 percent + 1, 85 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 70 percent + 1, 85 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 55 percent + 1, 65 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 60 percent + 1, 70 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super ;'corresponds to alpine lake at KaJo
	fishgroup 60 percent + 1, 70 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super ;unused
	fishgroup 60 percent + 1, 70 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super ;olivine city 
	fishgroup 60 percent + 1, 70 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super ; LoR and TT
	fishgroup 60 percent + 1, 70 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super  ;dratini_2, polluted 
	fishgroup 60 percent + 1, 70 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 60 percent + 1, 70 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 60 percent + 1, 70 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 60 percent + 1, 70 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	db  70 percent + 1, REMORAID,   5
	db  85 percent + 1, HORSEA,   5
	db 100 percent,     HORSEA,   5
.Shore_Good:
	db  35 percent,     TENTACOOL,   20
	db  70 percent,     HORSEA,     20
	db  90 percent + 1, HORSEA,     20
	db 100 percent,     0, 0
.Shore_Super:
	db  40 percent,     TENTACRUEL,     40
	db  70 percent,     0, 1
	db  90 percent + 1, TENTACRUEL,   50
	db 100 percent,     TENTACRUEL,   50

.Ocean_Old:
	db  70 percent + 1, CHINCHOU,   5
	db  85 percent + 1, TENTACOOL,   5
	db 100 percent,     TENTACOOL,   5
.Ocean_Good:
	db  35 percent,     LANTURN,   20
	db  70 percent,     LANTURN,    20
	db  90 percent + 1, LANTURN,    20
	db 100 percent,     0, 2
.Ocean_Super:
	db  40 percent,     LANTURN,    40
	db  70 percent,     0, 3
	db  90 percent + 1, LANTURN,    40
	db 100 percent,     LANTURN,    40

.Lake_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     MAGIKARP,   5
.Lake_Good:
	db  35 percent,     SLOWPOKE,   20
	db  70 percent,     SLOWPOKE,   20
	db  90 percent + 1, SLOWPOKE,   20
	db 100 percent,     0, 4
.Lake_Super:
	db  40 percent,     CROCONAW,   40
	db  70 percent,     0, 5
	db  90 percent + 1, CROCONAW,   40
	db 100 percent,     CROCONAW,   40

.Pond_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, POLIWAG,    5
	db 100 percent,     POLIWAG,    5
.Pond_Good:
	db  35 percent,     POLIWAG,    20
	db  70 percent,     POLIWAG,    20
	db  90 percent + 1, POLIWHIRL,  20
	db 100 percent,     0, 6
.Pond_Super:
	db  40 percent,     POLIWHIRL,   40
	db  70 percent,     0, 7
	db  90 percent + 1, POLIWHIRL,   40
	db 100 percent,     POLITOED,   40

.Dratini_Old: ;alpine lake on route KaJo
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     MAGIKARP,   5
.Dratini_Good:
	db  35 percent,     TOTODILE,   20
	db  70 percent,     TOTODILE,   20
	db  90 percent + 1, TOTODILE,   20
	db 100 percent,     0, 8
.Dratini_Super:
	db  40 percent,     CROCONAW,   40
	db  70 percent,     0, 9
	db  90 percent + 1, CROCONAW,   40
	db 100 percent,     CROCONAW,   40

.Qwilfish_Swarm_Old: ;unused
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     QWILFISH,   5
.Qwilfish_Swarm_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     QWILFISH,   20
	db  90 percent + 1, QWILFISH,   20
	db 100 percent,     0, 10
.Qwilfish_Swarm_Super:
	db  40 percent,     QWILFISH,   40
	db  70 percent,     0, 11
	db  90 percent + 1, QWILFISH,   40
	db 100 percent,     QWILFISH,   40

.Remoraid_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     MAGIKARP,   5
.Remoraid_Swarm_Good:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     MAGIKARP,   5
.Remoraid_Swarm_Super:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     MAGIKARP,   5

.Gyarados_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Gyarados_Good:
	db  35 percent,     GYARADOS,   20
	db  70 percent,     GYARADOS,   20
	db  90 percent + 1, GYARADOS,   20
	db 100 percent,     0, 14
.Gyarados_Super:
	db  40 percent,     GYARADOS,   40
	db  70 percent,     0, 15
	db  90 percent + 1, GYARADOS,   40
	db 100 percent,     GYARADOS,   40

.Dratini_2_Old: ;ROUTE 38 39
	db  70 percent + 1, GRIMER,        5
	db  85 percent + 1, GRIMER,        5
	db 100 percent,     GRIMER,        5
.Dratini_2_Good:
	db  35 percent,     MUK,        5
	db  70 percent,     MUK,        5
	db  90 percent + 1, MUK,        5
	db 100 percent,     0, 16
.Dratini_2_Super:
	db  40 percent,     MUK,        5
	db  70 percent,     0, 17
	db  90 percent + 1, MUK,        5
	db 100 percent,     MUK,        50

.WhirlIslands_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     MAGIKARP,  5
.WhirlIslands_Good:
	db  35 percent,     SEADRA,     20
	db  70 percent,     OCTILLERY,  20
	db  90 percent + 1, OCTILLERY,  20
	db 100 percent,     0, 18
.WhirlIslands_Super:
	db  40 percent,     OCTILLERY,   40
	db  70 percent,     0, 19
	db  90 percent + 1, KINGDRA,  40
	db 100 percent,     KINGDRA,    40

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     SEADRA,  5
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     SEADRA,  20
	db  90 percent + 1, SEADRA,  20
	db 100 percent,     0, 20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     SEADRA,  40
	db  70 percent,     0, 21
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     QWILFISH,   40

.Remoraid_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     POLIWAG,    10
.Remoraid_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     POLIWAG,    20
	db  90 percent + 1, POLIWAG,    20
	db 100 percent,     0, 6
.Remoraid_Super:
	db  40 percent,     POLIWAG,    40
	db  70 percent,     0, 7
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     OCTILLERY,  40

TimeFishGroups:
	;  day              nite
	db CORSOLA,    20,  STARYU,     20
	db CORSOLA,    40,  STARYU,     40
	db CLOYSTER,   20,  CLOYSTER,   20
	db CLOYSTER,   40,  CLOYSTER,   40
	db WOOPER,     20,  WOOPER,     20
	db QUAGSIRE,   40,  QUAGSIRE,   40
	db POLIWAG,    20,  POLIWAG,    20
	db POLIWAG,    40,  POLIWAG,    40
	db DRATINI,    20,  DRATINI,    20
	db DRATINI,    40,  DRATINI,    40
	db QWILFISH,   20,  QWILFISH,   20
	db QWILFISH,   40,  QWILFISH,   40
	db OCTILLERY,  20,  OCTILLERY,  20
	db OCTILLERY,  40,  OCTILLERY,  40
	db GYARADOS,   20,  GYARADOS,   20
	db GYARADOS,   40,  GYARADOS,   40
	db DRATINI,    10,  DRATINI,    10
	db DRATINI,    10,  DRATINI,    10
	db SEADRA,     20,  SEADRA,     20
	db SEADRA,     40,  SEADRA,     40
	db SEADRA,  20,  SEADRA,  20
	db SEADRA,  40,  SEADRA,  40

FishItems:
	db BIG_PEARL
	db BIG_PEARL
	db BIG_PEARL
