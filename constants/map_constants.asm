newgroup: MACRO
const_value += 1
__map_value__ = 1
ENDM

map_const: MACRO
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
GROUP_\1 EQU const_value
MAP_\1 EQU __map_value__
__map_value__ += 1
\1_WIDTH  EQU \2
\1_HEIGHT EQU \3
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)

	const_def

	newgroup                                                     ;  1 olivine and surrounding
	map_const OLIVINE_POKECENTER_1F,                       6,  4 ;  1
	map_const OLIVINE_GYM,                                 5,  8 ;  2
	map_const OLIVINE_TIMS_HOUSE,                          4,  4 ;  3
	map_const OLIVINE_PUNISHMENT_SPEECH_HOUSE,             4,  4 ;  5
	map_const OLIVINE_GOOD_ROD_HOUSE,                      4,  4 ;  6
	map_const OLIVINE_CAFE,                                5,  4 ;  7
	map_const OLIVINE_MART,                                6,  4 ;  8
	map_const ROUTE_38_ECRUTEAK_GATE,                      5,  4 ;  9
	map_const ROUTE_39_BARN,                               4,  4 ; 10
	map_const ROUTE_39_FARMHOUSE,                          4,  4 ; 11
	map_const ROUTE_38,                                   20,  9 ; 12
	map_const ROUTE_39,                                   10, 20 ; 13
	map_const OLIVINE_CITY,                               33, 16 ; 14
	map_const OLIVINE_DESAL_1F,							   4,  4 ; 15 UNDERGROUND
	map_const OLIVINE_DESAL_INTAKE,					       6,  4 ; 16 PORT
	map_const OLIVINE_DESAL_B1F,				           4,  5 ; 17 FACILITY

	newgroup                                                     ;  2 lake of rage and surrounding
	map_const MAHOGANY_RED_GYARADOS_SPEECH_HOUSE,          4,  4 ;  1
	map_const MAHOGANY_GYM,                                5,  9 ;  2
	map_const MAHOGANY_POKECENTER_1F,                      6,  4 ;  3
	map_const ROUTE_42_ECRUTEAK_GATE,                      5,  4 ;  4
	map_const ROUTE_42,                                   30,  9 ;  5
	map_const MAHOGANY_TOWN,                              10,  9 ;  7
	map_const ENTEIS_CAVERN,                              11, 10 ;  8 CAVE

	newgroup                                                     ;  3
	map_const SPROUT_TOWER_1F,                             8,  8 ;  1
	map_const SPROUT_TOWER_2F,                             8,  8 ;  2 MAGNET TRAIN
	map_const SPROUT_TOWER_3F,                             8,  8 ;  3 GYM
	map_const TIN_TOWER_1F,                                8,  8 ;  4
	map_const TIN_TOWER_2F,                                8,  8 ;  5
	map_const TIN_TOWER_3F,                                8,  8 ;  6
	map_const TIN_TOWER_4F,                                8,  8 ;  7
	map_const TIN_TOWER_5F,                                8,  8 ;  8
	map_const TIN_TOWER_6F,                                8,  8 ;  9
	map_const TIN_TOWER_7F,                                8,  8 ; 10
	map_const TIN_TOWER_8F,                                8,  8 ; 11
	map_const TIN_TOWER_9F,                                8,  8 ; 12
	map_const TIN_TOWER_10F,                               8,  8 ; 13
	map_const BURNED_TOWER_1F,                             8,  8 ; 14
	map_const BURNED_TOWER_B1F,                           10,  9 ; 15
	map_const NATIONAL_PARK,                              21, 27 ; 16
	map_const NATIONAL_PARK_BUG_CONTEST,                  21, 27 ; 17
	map_const ROUTE_35_NATIONAL_PARK_GATE,                10,  4 ; 19
	map_const ROUTE_36_NATIONAL_PARK_GATE,                 5,  4 ; 18
	map_const RADIO_TOWER_1F,                              9,  4 ; 20
	map_const RADIO_TOWER_2F,                              9,  4 ; 21
	map_const RADIO_TOWER_3F,                              9,  4 ; 22
	map_const RADIO_TOWER_4F,                              9,  4 ; 23
	map_const RADIO_TOWER_5F,                              9,  4 ; 24
	map_const UNION_CAVE_1F,                              10, 24 ; 25
	map_const UNION_CAVE_B1F_NORTH,                       10, 13 ; 26
	map_const UNION_CAVE_B1F_SOUTH,                       10, 18 ; 27
	map_const UNION_CAVE_B2F,                             10, 18 ; 28
	map_const SLOWPOKE_WELL_ENTRANCE,                      8,  9 ; 29
	map_const SLOWPOKE_WELL_B1F,                          10,  9 ; 30
	map_const SLOWPOKE_WELL_B2F,                          10,  9 ; 31
	map_const OLIVINE_LIGHTHOUSE_1F,                      10,  9 ; 32
	map_const OLIVINE_LIGHTHOUSE_2F,                      10,  9 ; 33
	map_const OLIVINE_LIGHTHOUSE_3F,                      10,  9 ; 34
	map_const OLIVINE_LIGHTHOUSE_4F,                      10,  9 ; 35
	map_const OLIVINE_LIGHTHOUSE_5F,                      10,  9 ; 36
	map_const OLIVINE_LIGHTHOUSE_6F,                      10,  9 ; 37
	map_const OLIVINE_LIGHTHOUSE_ROOF,                    10, 10 ; 38
	map_const MAHOGANY_MART_1F,                            4,  4 ; 39
	map_const TEAM_ROCKET_BASE_B1F,                       15,  9 ; 40
	map_const TEAM_ROCKET_BASE_B2F,                       15,  9 ; 41
	map_const TEAM_ROCKET_BASE_B3F,                       15,  9 ; 42
	map_const ILEX_FOREST,                                17, 24 ; 43
	map_const WAREHOUSE_ENTRANCE,                          9, 18 ; 44
	map_const UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES,     13, 14 ; 45
	map_const GOLDENROD_DEPT_STORE_B1F,                   10,  9 ; 46
	map_const UNDERGROUND_WAREHOUSE,                      10,  9 ; 47
	map_const MOUNT_MORTAR_1F_OUTSIDE,                    20, 18 ; 48
	map_const MOUNT_MORTAR_1F_INSIDE,                     20, 25 ; 49
	map_const MOUNT_MORTAR_2F_INSIDE,                     20, 18 ; 50
	map_const MOUNT_MORTAR_B1F,                           20, 18 ; 51
	map_const WHIRL_ISLAND_NW,                            17, 18 ; 57
	map_const WHIRL_ISLAND_NE,                            10,  9 ; 58
	map_const WHIRL_ISLAND_SW,                            10,  9 ; 59
	map_const WHIRL_ISLAND_CAVE,                          20, 45 ; 60
	map_const WHIRL_ISLAND_SE,                             5,  9 ; 61
	map_const WHIRL_ISLAND_B1F,                           20, 18 ; 62
	map_const WHIRL_ISLAND_B2F,                           10, 18 ; 63
	map_const WHIRL_ISLAND_LUGIA_CHAMBER,                 10,  9 ; 64


	newgroup                                                     ;  4
	map_const ECRUTEAK_HOUSE,                             10,  9 ;  1
	map_const WISE_TRIOS_ROOM,                             4,  4 ;  2
	map_const ECRUTEAK_POKECENTER_1F,                      6,  4 ;  3
	map_const ECRUTEAK_LUGIA_SPEECH_HOUSE,                 4,  4 ;  4
	map_const DANCE_THEATRE,                               6,  7 ;  5
	map_const ECRUTEAK_MART,                               6,  4 ;  6
	map_const ECRUTEAK_GYM,                                5,  9 ;  7
	map_const ECRUTEAK_ITEMFINDER_HOUSE,                   4,  4 ;  8
	map_const ECRUTEAK_CITY,                              20, 18 ;  9
	map_const ROUTE_36,                                   32,  9 ; 10
	map_const ROUTE_36_RUINS_OF_ALPH_GATE,                 5,  4 ; 11
	map_const ROUTE_36_VIOLET_GATE,                        5,  4 ; 12
	map_const ROUTE_37,                                   10, 10 ; 13
	map_const VALERIES_HOUSE,                              4,  4 ; 14
	map_const ECRUTEAK_CHERISH_BALL_HOUSE,                 4,  4 ; 15
	map_const ECRUTEAK_DESTINY_KNOT_HOUSE,                 4,  4 ; 16
	map_const DANCE_THEATRE_2F
	map_const DANCE_THEATRE_3F

	newgroup                                                     ;  5 anarres town and surrounding
	map_const HOLLYS_HOLT, 								  17, 24 ;  1 forest
	map_const ANARRES_TOWN,                               20,  9 ;  2 johto traditional
	map_const MISTY_BASIN,                                10,  9 ;  3 cave 
	map_const ANARRES_DORMS,                               4,  3 ;  4 johto house
	map_const ANARRES_STOCKROOM,                           6,  4 ;  5 traditional hosue
	map_const ANARRES_TOWER_1F,                            6,  6 ;  6 sprout tower
	map_const ANARRES_TOWER_2F,                            6,  6 ;  7 sprout tower
	map_const ANARRES_TOWER_3F,                            6,  6 ;  8 sprout tower
	map_const ANARRES_CHARCOAL_KILN,                       5,  4 ;  9 shares map with charcoal kiln
	map_const ANARRES_HOUSE,  	                           4,  4 ;  10 traditional house


	newgroup                                                     ;  6 ;gauldenrod and surrounding
	map_const CALM_COAST,                                   10, 27 ;  1
	map_const SERENE_SPRINGS,                               12, 18 ;  3
	map_const GAULDENROD,                              		22, 18 ;  6
	map_const GAULDENROD_DORMS,                               9, 4 ;  7 johto house
	map_const GAULDENROD_STOCKROOM,                           5, 4 ;  7 traditional house
	map_const GAULDENROD_GUILD,                               5, 4 ; traditional house
	map_const GAULDENROD_HOUSE,                               4, 4 ; traditional house
	map_const GAULDENROD_UNDERGROUND_SOUTH,                   4, 4 ; POKEMON MANSION
	map_const GAULDENROD_UNDERGROUND_NORTH,                   4, 4 ; POKEMON MANSION
	map_const GAULDENROD_UNDERGROUND,                         3, 18 ; POKEMON MANSION
	map_const GAULDENROD_SERENE_SPRINGS_GATE,                 5, 4 ; 28
	map_const CALM_COAST_COTTAGE,                             4, 4 ; 29
	map_const GAULDENROD_TOWER_1F, 						      6, 6 ; sprout tower
	map_const GAULDENROD_TOWER_2F, 					 	      6, 6 ; sprout tower
	map_const GAULDENROD_TOWER_3F, 						      6, 6 ; sprout tower
	map_const GAULDENROD_TOWER_4F, 					 	      6, 6 ; sprout tower
	map_const STADIUM_GROUNDS,                               27, 21 ; JOHTO traditional
	map_const STADIUM_UNDERGROUND,                            6, 9 ; cave
	map_const STADIUM_BOX,                                    6, 6 ; traditional HOUSE


	newgroup                                                 
	map_const EMPERORS_GARDEN, 
	map_const WESTER_CAPITAL_DORMS,                      6,  4 ;  3
	map_const WESTER_CAPITAL_DANCE_THEATRE,                               6,  7 ;  5
	map_const WESTER_CAPITAL_STOCKROOM,                               6,  4 ;  6
	map_const WESTER_CAPITAL_CEMETERY,                                5,  9 ;  7
	map_const ECRUTEAK_ITEMFINDER_HOUSE,                   4,  4 ;  8
	map_const WESTERN_CAPITAL,                              20, 18 ;  9
	map_const WHISPERS_WAY,                                   10,  20 ; 10 WOULD LOVE TO PUT THIS IN SOMEHOW to the older place. 
	map_const TIMELESS_TAPESTRY, 11, 21 ; JOHTO_OVERCAST
	map_const BRASS_TOWER_1F
	map_const TIN_TOWER_OLD_1F
	map_const TIN_TOWER_OLD_2F
	map_const TIN_TOWER_OLD_3F

	newgroup                                                     ;  8
	map_const AZALEA_POKECENTER_1F,                        6,  4 ;  1
	map_const CHARCOAL_KILN,                               5,  4 ;  2
	map_const AZALEA_MART,                                 6,  4 ;  3
	map_const KURTS_HOUSE,                                 8,  4 ;  4
	map_const AZALEA_GYM,                                  5,  8 ;  5
	map_const ROUTE_33,                                   10,  9 ;  6
	map_const AZALEA_TOWN,                                20,  9 ;  7
	map_const TINDER_GARDEN,                                7,  9 ;  8 ADDED

	newgroup                                                     ;  9
	map_const LAKE_OF_RAGE_HIDDEN_POWER_HOUSE,             4,  4 ;  1
	map_const LAKE_OF_RAGE_MAGIKARP_HOUSE,                 4,  4 ;  2
	map_const ROUTE_43_MAHOGANY_GATE,                      5,  4 ;  3
	map_const ROUTE_43_GATE,                               5,  4 ;  4
	map_const ROUTE_43,                                   10, 27 ;  5
	map_const LAKE_OF_RAGE,                               20, 18 ;  6

	newgroup                                                     ; 10
	map_const ROUTE_32,                                   10, 45 ;  1
	map_const VIOLET_CITY,                                20, 20 ;  3
	map_const VIOLET_MART,                                 6,  4 ;  4
	map_const VIOLET_GYM,                                  5,  8 ;  5
	map_const EARLS_POKEMON_ACADEMY,                       4,  8 ;  6
	map_const VIOLET_NICKNAME_SPEECH_HOUSE,                4,  4 ;  7
	map_const VIOLET_POKECENTER_1F,                        6,  4 ;  8
	map_const VIOLET_ONIX_TRADE_HOUSE,                     4,  4 ;  9
	map_const ROUTE_32_RUINS_OF_ALPH_GATE,                 5,  4 ; 10
	map_const ROUTE_32_POKECENTER_1F,                      6,  4 ; 11


	newgroup                                                     ; 11
	map_const ROUTE_34,                                   10, 27 ;  1
	map_const ROUTE_35,                                   12, 18 ;  3
	map_const GOLDENROD_CITY,                             22, 18 ;  6
	map_const GOLDENROD_GYM,                              10,  9 ;  7
	map_const GOLDENROD_BIKE_SHOP,                         4,  4 ;  8
	map_const GOLDENROD_HAPPINESS_RATER,                   4,  4 ;  9
	map_const GOLDENROD_BILLS_HOUSE,                       4,  4 ; 10
	map_const GOLDENROD_MAGNET_TRAIN_STATION,             10,  9 ; 11
	map_const GOLDENROD_FLOWER_SHOP,                       4,  4 ; 12
	map_const GOLDENROD_PP_SPEECH_HOUSE,                   4,  4 ; 13
	map_const GOLDENROD_NAME_RATER,                        4,  4 ; 14
	map_const GOLDENROD_DEPT_STORE_1F,                     8,  4 ; 15
	map_const GOLDENROD_DEPT_STORE_2F,                     8,  4 ; 16
	map_const GOLDENROD_DEPT_STORE_3F,                     8,  4 ; 17
	map_const GOLDENROD_DEPT_STORE_4F,                     8,  4 ; 18
	map_const GOLDENROD_DEPT_STORE_5F,                     8,  4 ; 19
	map_const GOLDENROD_DEPT_STORE_6F,                     8,  4 ; 20
	map_const GOLDENROD_DEPT_STORE_ELEVATOR,               2,  2 ; 21
	map_const GOLDENROD_DEPT_STORE_ROOF,                   8,  6 ; 22
	map_const GOLDENROD_GAME_CORNER,                      10,  7 ; 23
	map_const GOLDENROD_POKECOM_CENTER_1F,                16,  8 ; 24
	map_const GOLDENROD_POKECOM_CENTER_OFFICE,             6,  4 ; 25
	map_const ILEX_FOREST_AZALEA_GATE,                     5,  4 ; 26
	map_const ROUTE_34_ILEX_FOREST_GATE,                   5,  4 ; 27
	map_const ROUTE_35_GOLDENROD_GATE,                     5,  4 ; 28
	map_const DAYCARE,                                     4,  4 ; 29
	map_const GOLDENROD_HP_UP_HOUSE,                       4,  4 ; 30
	map_const GOLDENROD_NET_BALL_HOUSE,                    4,  4 ; 31
	map_const GOLDENROD_BAND_HOUSE,                        4,  4 ; 32
	map_const GOLDENROD_MUSEUM_1F,                         7,  4 ; 33
	map_const GOLDENROD_MUSEUM_2F,                         7,  4 ; 34


	newgroup                                                     ; 12
	map_const GOLDENROD_UNDERGROUND_B2F
	map_const ROUTE_KAJO								  30, 20 ; JOHTO MODERN
	map_const KAJO_ACQUIFER                               12,  9 ; 2 CAVE 
	map_const MAGNET_TRAIN_TUNNEL                          8,  3 ; MAGNET TRAIN
	map_const FIRST_CLASS_CABIN							   6,  4 ; 4 HOTEL
	map_const SECOND_CLASS_CABIN						   6,  3 ; 4 GAME CORNER
	map_const KAJO_CABIN                                   4,  4 ; SHARE ONE OF THE HOUSE DATAS?


	newgroup                                                     ; 13
	map_const CATTLE_CULL
	map_const TRADERS_LANDING
	map_const LANDING_STOCKROOM
	map_const LANDING_DORMS
	map_const LANDING_HOUSE_1
	map_const LANDING_HOUSE_2
	map_const LANDING_TAVERN
	map_const LANDING_BARBEAU


	newgroup                                                     ; 14
	map_const CIANWOOD_COVE
	map_const PHANTOM_FJORD
	map_const SHELTERED_SHORES
	map_const RUSALKA_RUINS
	map_const SEAFLUX_NEXUS
	map_const LANDING_DOCKS
	map_const ARDUOUS_ANCHORAGE
	

	newgroup                                                     ; 15
	map_const TIN_TOWER_ROOF,                              7,  9 ; 11

	newgroup                                                     ; 16
	map_const BELLCHIME_TRAIL,                            12,  7 ; 10

	newgroup                                                     ; 17
	map_const TRANQUIL_TARN
	map_const SINJOH_CROSSROADS
	map_const SINJOH_DORMS
	map_const SINJOH_ELDERS_HOUSE
	map_const SINJOH_STOCKROOM
	map_const GROTTOED_GLACIER_1F
	map_const GROTTOED_GLACIER_B1F
	map_const GROTTOED_GLACIER_B2F
	map_const WESTERN_GLACIER_1F
	map_const WESTERN_GLACIER_B1F
	map_const WESTERN_GLACIER_B2F

	newgroup                                                     ; 18
	map_const EMPIRES_EXTENT
	map_const EMPIRES_EXTENT_CAVERN
	map_const DRAGONS_DEN
	map_const EERIE_HAMLET
	map_const EERIE_HAMLET_DORMS
	map_const EERIE_HAMLET_STOCKROOM
	map_const REBELS_REDOUBT_1F
	map_const REBELS_REDOUBT_B1F
	map_const REBELS_REDOUBT_B2F
	map_const REBELS_REDOUBT_B3F
	


	newgroup                                                     ; 19
	map_const SULFUR_STY
	map_const SULFUR_STY_HOUSE_1
	map_const SULFUR_STY_HOUSE_2
	map_const CLASTS_CRADLE_3F
	map_const CLASTS_CRADLE_2F
	map_const CLASTS_CRADLE_1F
	map_const CLASTS_CRADLE_B1F


	newgroup                                                     ; 20
	map_const HIDDEN_TREE_GROTTO,                          5,  9 ;  4
	map_const HIDDEN_CAVE_GROTTO,                         20, 45 ;  5
	map_const ECRUTEAK_SHRINE_OUTSIDE,                     6,  9 ;  8
	map_const ECRUTEAK_SHRINE_INSIDE,                      6,  6 ;  9

	newgroup                                                     ; 21


	newgroup                                                     ; 22
	map_const ROUTE_40,                                   10, 20 ;  1
	map_const ROUTE_41,                                   32, 27 ;  2
	map_const CIANWOOD_CITY,                              15, 27 ;  3
	map_const MANIAS_HOUSE,                                4,  4 ;  4
	map_const CIANWOOD_GYM,                                5,  9 ;  5
;	map_const CIANWOOD_POKECENTER_1F,                      6,  4 ;  6
;	map_const CIANWOOD_PHARMACY,                           4,  4 ;  7
;	map_const CIANWOOD_CITY_PHOTO_STUDIO,                  4,  4 ;  8
;	map_const CIANWOOD_LUGIA_SPEECH_HOUSE,                 4,  4 ;  9
	map_const MOVE_MANIACS_HOUSE,                          4,  4 ; 10


	newgroup                                                     ; 23


	newgroup                                                     ; 24


	newgroup                                                     ; 25


	newgroup                                                     ; 26


	newgroup                                                     ; 27


	newgroup                                                     ; 28


	newgroup                                                     ; 29


	newgroup                                                     ; 30
	map_const RUINS_OF_ALPH_OUTSIDE,                      11, 21 ;  1
	map_const RUINS_OF_ALPH_HO_OH_CHAMBER,                 4,  5 ;  2
	map_const RUINS_OF_ALPH_KABUTO_CHAMBER,                4,  5 ;  3
	map_const RUINS_OF_ALPH_OMANYTE_CHAMBER,               4,  5 ;  4
	map_const RUINS_OF_ALPH_AERODACTYL_CHAMBER,            4,  5 ;  5
	map_const RUINS_OF_ALPH_ENTRANCE_CHAMBER,              4,  4 ;  6
	map_const RUINS_OF_ALPH_INNER_CHAMBER,                10, 14 ;  7
	map_const RUINS_OF_ALPH_RESEARCH_CENTER,               4,  4 ;  8
	map_const RUINS_OF_ALPH_HO_OH_ITEM_ROOM,               4,  5 ;  9
	map_const RUINS_OF_ALPH_KABUTO_ITEM_ROOM,              4,  5 ; 10
	map_const RUINS_OF_ALPH_OMANYTE_ITEM_ROOM,             4,  5 ; 11
	map_const RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM,          4,  5 ; 12
	map_const RUINS_OF_ALPH_HO_OH_WORD_ROOM,              10, 12 ; 13
	map_const RUINS_OF_ALPH_KABUTO_WORD_ROOM,             10,  7 ; 14
	map_const RUINS_OF_ALPH_OMANYTE_WORD_ROOM,            10,  8 ; 15
	map_const RUINS_OF_ALPH_AERODACTYL_WORD_ROOM,         10,  7 ; 16


	newgroup                                                     ; 31


	newgroup                                                     ; 32


	newgroup                                                     ; 33


	newgroup                                                     ; 34


	newgroup                                                     ; 35


NUM_MAP_GROUPS EQU const_value ; 36
