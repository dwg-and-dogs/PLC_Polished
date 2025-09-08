spawn: MACRO
; map, y, x
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants, ALSO USED IN CONSTANTS/MAP_DATA_CONSTANTS
	table_width 4, SpawnPoints

	spawn KURTS_HOUSE,                 7,  1 ;  "YOUR HOUSE"

	spawn ANARRES_TOWN,               17, 10 ; todo needs hardcode exception 
	spawn GAULDENROD,                 18, 28 ; todo needs hardcode exception
	spawn WESTERN_CAPITAL,            21, 26 ; todo needs a hardcode exception 
	spawn TRADERS_LANDING,            15, 17 ; todo needs a hardcode exception 
	spawn SHELTERED_SHORES,           34, 20 ; todo needs a hardcode exception 
	spawn CIANWOOD_COVE,              11, 14 ; todo needs a hardcode 
	spawn TRANQUIL_TARN,              13,  4 ; todo
	spawn EERIE_HAMLET,               11,  8 ; todo 
	spawn SULFUR_STY,                 34,  8 ; todo 
	spawn TIMELESS_TAPESTRY,           3,  6 ; todo 

	spawn AZALEA_TOWN,                15, 10 ; works 
	spawn GOLDENROD_CITY,             18, 28 ; works 
	spawn VIOLET_CITY,                31, 30 ; works! 
	spawn ROUTE_32,                   11, 74 ; UNION CAVE works 
	spawn ECRUTEAK_CITY,              23, 28 ; works 
	spawn CIANWOOD_CITY,              13, 44 ; this will need a hardcode exception 
	spawn OLIVINE_CITY,               13, 18 ; works 
	spawn MAHOGANY_TOWN,              15, 14 ; works
	spawn LAKE_OF_RAGE,               21, 29 ; needs a hardcode exception 

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
;	spawn FAST_SHIP_CABINS_SW_SSW_NW,  6,  2 "	blackoutmod FAST_SHIP_CABINS_SW_SSW_NW "
;
;	spawn N_A,                        -1, -1
;
;	assert_table_length NUM_SPAWNS + 1
