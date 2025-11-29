spawn: MACRO
; map, y, x
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants, ALSO USED IN CONSTANTS/MAP_DATA_CONSTANTS
	table_width 4, SpawnPoints

	spawn KURTS_HOUSE,                 7,  1 ;  "YOUR HOUSE"
; old johto ones work
	spawn ANARRES_TOWN,               17, 10 ;
	spawn GAULDENROD,                 19, 28 ; 
	spawn WESTERN_CAPITAL,            21, 26 ; 
	spawn TRADERS_LANDING,            15, 17 ; 
	spawn SHELTERED_SHORES,           34, 20 ;
	spawn CIANWOOD_COVE,              11, 14 ;  
	spawn TRANQUIL_TARN,              13,  4 ; 
	spawn EERIE_HAMLET,               11,  8 ;  
	spawn SULFUR_STY,                 34,  8 ;  
	spawn TIMELESS_TAPESTRY,          10, 34 ;  

	spawn AZALEA_TOWN,                15, 10 ; works 
	spawn GOLDENROD_CITY,             18, 28 ; works 
	spawn VIOLET_CITY,                31, 30 ; works! 
	spawn ROUTE_32,                   11, 74 ; UNION CAVE works 
	spawn ECRUTEAK_CITY,              23, 28 ; works 
	spawn CIANWOOD_CITY,              13, 44 ;  
	spawn OLIVINE_CITY,		    	  13, 18 ;  
	spawn MAHOGANY_TOWN,              15, 14 ; works
	spawn LAKE_OF_RAGE,               21, 31 ; needs a hardcode exception 

	spawn N_A,                        -1, -1

	assert_table_length NUM_SPAWNS + 1
