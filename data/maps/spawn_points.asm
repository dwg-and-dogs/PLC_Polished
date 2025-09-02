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


; clean version of this is below. 
;spawn: MACRO
; map, y, x
;	map_id \1
;	db \2, \3
;ENDM

; from the original: 
;SpawnPoints:
;entries correspond to SPAWN_* constants
;	table_width 4, SpawnPoints
;
;	spawn PLAYERS_HOUSE_2F,            3,  3
;
;	spawn PALLET_TOWN,                 5,  6
;	spawn VIRIDIAN_CITY,              23, 26
;	spawn PEWTER_CITY,                13, 26
;	spawn ROUTE_3,                    61,  4
;	spawn CERULEAN_CITY,              19, 18
;	spawn CERULEAN_CAPE,               9,  6
;	spawn ROUTE_10_NORTH,             11, 36
;	spawn VERMILION_CITY,              9,  6
;	spawn LAVENDER_TOWN,               5,  8
;	spawn SAFFRON_CITY,                9, 30
;	spawn CELADON_CITY,               33, 10
;	spawn FUCHSIA_CITY,               19, 28
;	spawn CINNABAR_ISLAND,            11, 16
;	spawn INDIGO_PLATEAU,             11,  6
;
;	spawn NEW_BARK_TOWN,              15,  6
;	spawn CHERRYGROVE_CITY,           29,  4
;	spawn VIOLET_CITY,                31, 30
;	spawn ROUTE_32,                   11, 74
;	spawn AZALEA_TOWN,                15, 10
;	spawn CIANWOOD_CITY,              23, 44
;	spawn GOLDENROD_CITY,             18, 28
;	spawn OLIVINE_CITY,               13, 18
;	spawn ECRUTEAK_CITY,              23, 28
;	spawn MAHOGANY_TOWN,              15, 14
;	spawn ROUTE_48,                   11,  6
;	spawn LAKE_OF_RAGE,               21, 29
;	spawn BLACKTHORN_CITY,            21, 30
;	spawn SILVER_CAVE_OUTSIDE,        23, 14
;	spawn FAST_SHIP_CABINS_SW_SSW_NW,  6,  2
;
;	spawn N_A,                        -1, -1
;
;	assert_table_length NUM_SPAWNS + 1
