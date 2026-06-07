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
	db  70 percent + 1, TENTACOOL,   15
	db  85 percent + 1, HORSEA,   15
	db 100 percent,     HORSEA,   15
.Shore_Super:
	db  70 percent + 1, TENTACRUEL,   35
	db  85 percent + 1, TENTACRUEL,   45
	db 100 percent,     TENTACRUEL,   55

.Ocean_Old:
	db  70 percent + 1, CHINCHOU,   5
	db  85 percent + 1, TENTACOOL,   5
	db 100 percent,     TENTACOOL,   5
.Ocean_Good:
	db  70 percent + 1, LANTURN,   25
	db  85 percent + 1, LANTURN,   25
	db 100 percent,     LANTURN,   25
.Ocean_Super:
	db  70 percent + 1, LANTURN,   35
	db  85 percent + 1, LANTURN,   45
	db 100 percent,     LANTURN,   55

.Lake_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     MAGIKARP,   5
.Lake_Good:
	db  70 percent + 1, SLOWPOKE,   15
	db  85 percent + 1, SLOWPOKE,   15
	db 100 percent,     SLOWPOKE,   15
.Lake_Super:
	db  70 percent + 1, CROCONAW,   25
	db  85 percent + 1, CROCONAW,   25
	db 100 percent,     CROCONAW,   25


.Pond_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, POLIWAG,    5
	db 100 percent,     POLIWAG,    5
.Pond_Good:
	db  70 percent + 1, POLIWAG,   15
	db  85 percent + 1, POLIWAG,    15
	db 100 percent,     POLIWHIRL,   25
.Pond_Super:
	db  70 percent + 1, POLIWHIRL,   25
	db  85 percent + 1, POLITOED,    35
	db 100 percent,     POLITOED,    45

.Dratini_Old: ;alpine lake on route KaJo
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     MAGIKARP,   5
.Dratini_Good:
	db  70 percent + 1, TOTODILE,   5
	db  85 percent + 1, TOTODILE,   5
	db 100 percent,     TOTODILE,   5
.Dratini_Super:
	db  70 percent + 1, CROCONAW,   15
	db  85 percent + 1, CROCONAW,   15
	db 100 percent,     CROCONAW,   15

.Qwilfish_Swarm_Old: ;unused
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     QWILFISH,   5
.Qwilfish_Swarm_Good:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, QWILFISH,   5
	db 100 percent,     QWILFISH,   5
.Qwilfish_Swarm_Super:
	db  35 percent,     QWILFISH,   30
	db  70 percent,     QWILFISH,   30
	db  90 percent + 1, QWILFISH,   30

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
	db  70 percent + 1, GYARADOS,   20
	db  85 percent + 1, GYARADOS,   20
	db 100 percent,     GYARADOS,   20
.Gyarados_Super:
	db  70 percent + 1, GYARADOS,   30
	db  85 percent + 1, GYARADOS,   40
	db 100 percent,     GYARADOS,   50

.Dratini_2_Old: ;ROUTE 38 39
	db  70 percent + 1, GRIMER,        5
	db  85 percent + 1, GRIMER,        5
	db 100 percent,     GRIMER,        5
.Dratini_2_Good:
	db  70 percent + 1, MUK,        25
	db  85 percent + 1, MUK,        25
	db 100 percent,     MUK,        25
.Dratini_2_Super:
	db  70 percent + 1, MUK,        25
	db  85 percent + 1, MUK,        35
	db 100 percent,     MUK,        45

.WhirlIslands_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     MAGIKARP,  5
.WhirlIslands_Good:
	db  70 percent + 1, SEADRA,   25
	db  85 percent + 1, OCTILLERY,   25
	db 100 percent,     OCTILLERY,  25
.WhirlIslands_Super:
	db  70 percent + 1, SEADRA,   35
	db  85 percent + 1, OCTILLERY,   35
	db 100 percent,     OCTILLERY,  35

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     SEADRA,  5
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  70 percent + 1, SEADRA,  25
	db  85 percent + 1, SEADRA,  25
	db 100 percent,     SEADRA,  25
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  70 percent + 1, SEADRA,  35
	db  85 percent + 1, QWILFISH,  35
	db 100 percent,     QWILFISH,  35

.Remoraid_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     POLIWAG,    10
.Remoraid_Good:
	db  70 percent + 1, MAGIKARP,   20
	db  85 percent + 1, MAGIKARP,   20
	db 100 percent,     POLIWAG,    20
.Remoraid_Super:
	db  70 percent + 1, POLIWAG,   20
	db  85 percent + 1, POLIWAG,   20
	db 100 percent,     OCTILLERY,    20

TimeFishGroups:
	;  day              nite
	db CORSOLA,    20,  MANTINE,     20
	db CORSOLA,    20,  MANTINE,     20
	db CORSOLA,   20,  MANTINE,   20
	db CORSOLA,   20,  MANTINE,   20
	db CORSOLA,     20,  MANTINE,     20
	db CORSOLA,   20,  MANTINE,   20
	db CORSOLA,    20,  MANTINE,    20
	db CORSOLA,    20,  MANTINE,    20
	db CORSOLA,    20,  MANTINE,    20
	db CORSOLA,    20,  MANTINE,    20
	db CORSOLA,   20,  MANTINE,   20
	db CORSOLA,   20,  MANTINE,   20
	db CORSOLA,  20,  MANTINE,  20
	db CORSOLA,  20,  MANTINE,  20
	db CORSOLA,   20,  MANTINE,   20
	db CORSOLA,   20,  MANTINE,   20
	db CORSOLA,    20,  MANTINE,    20
	db CORSOLA,    20,  MANTINE,    20
	db CORSOLA,     20,  MANTINE,     20
	db CORSOLA,     20,  MANTINE,     20
	db CORSOLA,  20,  MANTINE,  20
	db CORSOLA,  20,  MANTINE,  20

FishItems:
	db BIG_PEARL
	db BIG_PEARL
	db BIG_PEARL
