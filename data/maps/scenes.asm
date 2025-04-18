scene_var: MACRO
; db group, map
; dw address
	map_id \1
	dw \2
ENDM
;ram/wramx.asm uses these
MapScenes::
	scene_var AZALEA_TOWN,                            wAzaleaTownSceneID
	scene_var AZALEA_POKECENTER_1F,                   wAzaleaPokecenter1FSceneID ;starts the trade quest
	scene_var BELLCHIME_TRAIL,                        wBellchimeTrailSceneID
	scene_var CHARCOAL_KILN,                          wCharcoalKilnSceneID ; changed from brunos room
	scene_var BURNED_TOWER_1F,                        wBurnedTower1FSceneID
	scene_var BURNED_TOWER_B1F,                       wBurnedTowerB1FSceneID
	scene_var TINDER_GARDEN,                          wTinderGardenSceneID ; cerulean cape
	scene_var ANARRES_TOWER_3F,                       wAnarresTower3FSceneID ; cerulean cave 1f
	scene_var CIANWOOD_CITY,                          wCianwoodCitySceneID
	scene_var DAYCARE,                                wDayCareSceneID
	scene_var ECRUTEAK_GYM,                           wEcruteakGymSceneID
	scene_var ECRUTEAK_HOUSE,                         wEcruteakHouseSceneID
	scene_var ECRUTEAK_POKECENTER_1F,                 wEcruteakPokecenter1FSceneID
	scene_var GOLDENROD_CITY,                         wGoldenrodCitySceneID
	scene_var GOLDENROD_GYM,                          wGoldenrodGymSceneID
	scene_var ILEX_FOREST,                            wIlexForestSceneID
	scene_var KURTS_HOUSE,                            wKurtsHouseSceneID
	scene_var MAHOGANY_MART_1F,                       wMahoganyMart1FSceneID
	scene_var MAHOGANY_TOWN,                          wMahoganyTownSceneID
	scene_var OLIVINE_CITY,                           wOlivineCitySceneID
	scene_var RADIO_TOWER_5F,                         wRadioTower5FSceneID
	scene_var ROUTE_32,                               wRoute32SceneID
	scene_var ROUTE_34,                               wRoute34SceneID
	scene_var ROUTE_34_ILEX_FOREST_GATE,              wAlways0SceneID
	scene_var ROUTE_35_NATIONAL_PARK_GATE,            wRoute35NationalParkGateSceneID
	scene_var ROUTE_36,                               wRoute36SceneID
	scene_var ROUTE_36_NATIONAL_PARK_GATE,            wRoute36NationalParkGateSceneID
	scene_var ROUTE_42,                               wRoute42SceneID
	scene_var ROUTE_43_GATE,                          wRoute43GateSceneID
	scene_var RUINS_OF_ALPH_AERODACTYL_CHAMBER,       wRuinsOfAlphAerodactylChamberSceneID
	scene_var RUINS_OF_ALPH_HO_OH_CHAMBER,            wRuinsOfAlphHoOhChamberSceneID
	scene_var RUINS_OF_ALPH_INNER_CHAMBER,            wRuinsOfAlphInnerChamberSceneID
	scene_var RUINS_OF_ALPH_KABUTO_CHAMBER,           wRuinsOfAlphKabutoChamberSceneID
	scene_var RUINS_OF_ALPH_OMANYTE_CHAMBER,          wRuinsOfAlphOmanyteChamberSceneID
	scene_var RUINS_OF_ALPH_OUTSIDE,                  wRuinsOfAlphOutsideSceneID
	scene_var RUINS_OF_ALPH_RESEARCH_CENTER,          wRuinsOfAlphResearchCenterSceneID
	scene_var SPROUT_TOWER_3F,                        wSproutTower3FSceneID
	scene_var TEAM_ROCKET_BASE_B1F,                   wAlways0SceneID
	scene_var TEAM_ROCKET_BASE_B2F,                   wTeamRocketBaseB2FSceneID
	scene_var TEAM_ROCKET_BASE_B3F,                   wTeamRocketBaseB3FSceneID
	scene_var TIN_TOWER_1F,                           wTinTower1FSceneID
	scene_var UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, wUndergroundPathSwitchRoomEntrancesSceneID
	scene_var VIOLET_GYM,                             wVioletGymSceneID
	scene_var HOLLYS_HOLT,                            wHollysHoltSceneID
	scene_var MISTY_BASIN,                            wMistyBasinSceneID 
	scene_var ANARRES_HOUSE,                          wAnarresHouseSceneID 
	scene_var ANARRES_HOLT_GATE,                      wAnarresHoltGateSceneID
	scene_var STADIUM_GROUNDS,                        wStadiumGroundsSceneID
;	scene_var BATTLE_FACTORY_BATTLE_ROOM,             wAlways0SceneID
;	scene_var BATTLE_FACTORY_HALLWAY,                 wAlways0SceneID
	scene_var GAULDENROD,                             wGauldenrodSceneID
;	scene_var GOLDENROD_POKECOM_CENTER,               wGoldenrodPokecomCenterSceneID ; 
	scene_var RADIO_TOWER_1F,                         wRadioTower1FSceneID ; YellowForestSceneID
	scene_var EMPERORS_GARDEN,                        wEmperorsGardenSceneID ;wVermilionCitySceneID
	scene_var TIN_TOWER_OLD_3F,                       wTinTowerOld3FSceneID ;wVermilionPortSceneID
	scene_var WESTERN_CAPITAL,                        wWesternCapitalSceneID ;wVictoryRoad2FSceneID
;	scene_var HOLT_COAST_GATE,                        wHoltCoastGateSceneID ;   wTradeCenterSceneID
;	scene_var ROUTE_35_GOLDENROD_GATE,                wRoute35GoldenrodGateSceneID ;       wAlways0SceneID
;	scene_var SAFFRON_TRAIN_STATION,                  wAlways0SceneID
	scene_var HOLT_COAST_GATE,             			  wHoltCoastGateSceneID; wSeagallopFerryNavelGateSceneID
	scene_var ROUTE_35_GOLDENROD_GATE,          	  wRoute35GoldenrodGateSceneID ; wSeagallopFerryShamoutiGateSceneID
;	scene_var SEAGALLOP_FERRY_VERMILION_GATE,         wSeagallopFerryVermilionGateSceneID
;	scene_var SHAMOUTI_HOTEL_RESTAURANT,              wShamoutiHotelRestaurantSceneID
;	scene_var ROUTE_47,                               wRoute47SceneID
;	scene_var ROUTE_48,                               wRoute48SceneID
;	scene_var ROUTE_10_NORTH,                         wRoute10NorthSceneID
;	scene_var ROUTE_16_17_GATE,                       wAlways0SceneID
;	scene_var ROUTE_18_GATE,                          wAlways0SceneID
;	scene_var ROUTE_18_WEST,                          wAlways0SceneID
;	scene_var ROUTE_22_PAST,                          wAlways0SceneID
;	scene_var ROUTE_23,                               wRoute23SceneID
;	scene_var ROUTE_24,                               wRoute24SceneID
;	scene_var ROUTE_27,                               wRoute27SceneID
;	scene_var ROUTE_29,                               wRoute29SceneID
;	scene_var OLIVINE_PORT,                           wOlivinePortSceneID
;	scene_var POKECENTER_2F,                          wPokecenter2FSceneID
;	scene_var POKEMON_LEAGUE_GATE,                    wPokemonLeagueGateSceneID
;	scene_var POWER_PLANT,                            wPowerPlantSceneID
;	scene_var MOUNT_MOON_1F,                          wMountMoon1FSceneID
;	scene_var MOUNT_MOON_SQUARE,                      wAlways0SceneID
;	scene_var MR_POKEMONS_HOUSE,                      wMrPokemonsHouseSceneID
;	scene_var MYSTRI_STAGE,                           wMystriStageSceneID
;	scene_var NEW_BARK_TOWN,                          wNewBarkTownSceneID
;	scene_var LANCES_ROOM,                            wLancesRoomSceneID
;	scene_var LAVENDER_TOWN,                          wLavenderTownSceneID
;	scene_var INDIGO_PLATEAU_POKECENTER_1F,           wAlways0SceneID
;	scene_var KARENS_ROOM,                            wKarensRoomSceneID
;	scene_var KOGAS_ROOM,                             wKogasRoomSceneID
;	scene_var GOLDENROD_MAGNET_TRAIN_STATION,         wAlways0SceneID
;	scene_var HALL_OF_FAME,                           wHallOfFameSceneID
;	scene_var ELMS_LAB,                               wElmsLabSceneID
;	scene_var FARAWAY_ISLAND,                         wFarawayIslandSceneID
;	scene_var FAST_SHIP_1F,                           wFastShip1FSceneID
;	scene_var FAST_SHIP_B1F,                          wFastShipB1FSceneID
;	scene_var GIOVANNIS_CAVE,                         wGiovannisCaveSceneID
;	scene_var DRAGON_SHRINE,                          wDragonShrineSceneID
;	scene_var DRAGONS_DEN_B1F,                        wDragonsDenB1FSceneID
;	scene_var CINNABAR_LAB,                           wCinnabarLabSceneID
;	scene_var COLOSSEUM,                              wColosseumSceneID
;	scene_var DARK_CAVE_VIOLET_ENTRANCE,              wDarkCaveVioletEntranceSceneID
;	scene_var CERULEAN_GYM,                           wCeruleanGymSceneID
;	scene_var CHERRYGROVE_CITY,                       wCherrygroveCitySceneID
	db -1
