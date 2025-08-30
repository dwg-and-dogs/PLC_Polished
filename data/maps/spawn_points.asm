spawn: MACRO
; map, y, x
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants, ALSO USED IN CONSTANTS/MAP_DATA_CONSTANTS
	table_width 4, SpawnPoints

	spawn KURTS_HOUSE,                 7,  1 ;  "YOUR HOUSE"

	spawn ANARRES_TOWN,               17, 10 ; ok 
	spawn GAULDENROD,                 18, 28 ; ok 
	spawn WESTERN_CAPITAL,            21, 26 ; ok 
	spawn TRADERS_LANDING,            15, 17 ; ok 
	spawn SHELTERED_SHORES,           34, 20 ; ok 
	spawn CIANWOOD_COVE,              11, 14 ; ok 
	spawn TRANQUIL_TARN,              13,  4 ; ok 
	spawn EERIE_HAMLET,               11,  8 ; ok 
	spawn SULFUR_STY,                 34,  8 ; ok 
	spawn TIMELESS_TAPESTRY,           3,  6 ; ok 

	spawn AZALEA_TOWN,                15, 10
	spawn GOLDENROD_CITY,             18, 28
	spawn VIOLET_CITY,                31, 30
	spawn ROUTE_32,                   11, 74 ; UNION CAVE 
	spawn ECRUTEAK_CITY,              23, 28
	spawn CIANWOOD_CITY,              13, 44
	spawn OLIVINE_CITY,               13, 18
	spawn MAHOGANY_TOWN,              15, 14
	spawn LAKE_OF_RAGE,               21, 29

	spawn N_A,                        -1, -1

	assert_table_length NUM_SPAWNS + 1
