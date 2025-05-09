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
	scene_var ROUTE_34_ILEX_FOREST_GATE,              wAlways0SceneID
	scene_var ROUTE_35_NATIONAL_PARK_GATE,            wRoute35NationalParkGateSceneID
	scene_var ROUTE_36_NATIONAL_PARK_GATE,            wRoute36NationalParkGateSceneID
	scene_var ROUTE_43_GATE,                          wRoute43GateSceneID
	scene_var RUINS_OF_ALPH_AERODACTYL_CHAMBER,       wRuinsOfAlphAerodactylChamberSceneID
	scene_var RUINS_OF_ALPH_HO_OH_CHAMBER,            wRuinsOfAlphHoOhChamberSceneID
	scene_var RUINS_OF_ALPH_INNER_CHAMBER,            wRuinsOfAlphInnerChamberSceneID
	scene_var RUINS_OF_ALPH_KABUTO_CHAMBER,           wRuinsOfAlphKabutoChamberSceneID
	scene_var RUINS_OF_ALPH_OMANYTE_CHAMBER,          wRuinsOfAlphOmanyteChamberSceneID
	scene_var RUINS_OF_ALPH_OUTSIDE,                  wRuinsOfAlphOutsideSceneID
	scene_var RUINS_OF_ALPH_RESEARCH_CENTER,          wRuinsOfAlphResearchCenterSceneID
	scene_var SPROUT_TOWER_3F,                        wSproutTower3FSceneID
	scene_var TIN_TOWER_1F,                           wTinTower1FSceneID
	scene_var UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, wUndergroundPathSwitchRoomEntrancesSceneID
	scene_var HOLLYS_HOLT,                            wHollysHoltSceneID
	scene_var MISTY_BASIN,                            wMistyBasinSceneID 
	scene_var ANARRES_HOUSE,                          wAnarresHouseSceneID 
	scene_var ANARRES_HOLT_GATE,                      wAnarresHoltGateSceneID
	scene_var STADIUM_GROUNDS,                        wStadiumGroundsSceneID
	scene_var GAULDENROD,                             wGauldenrodSceneID
	scene_var RADIO_TOWER_1F,                         wRadioTower1FSceneID ; YellowForestSceneID
	scene_var EMPERORS_GARDEN,                        wEmperorsGardenSceneID ;wVermilionCitySceneID
	scene_var TIN_TOWER_OLD_3F,                       wTinTowerOld3FSceneID ;wVermilionPortSceneID
	scene_var WESTERN_CAPITAL,                        wWesternCapitalSceneID ;wVictoryRoad2FSceneID
	scene_var HOLT_COAST_GATE,             			  wHoltCoastGateSceneID; wSeagallopFerryNavelGateSceneID
	scene_var ROUTE_35_GOLDENROD_GATE,          	  wRoute35GoldenrodGateSceneID ; wSeagallopFerryShamoutiGateSceneID
	scene_var WHIRL_ISLAND_LUGIA_CHAMBER,			  wWhirlIslandLugiaChamberSceneID
	scene_var CLASTS_CRADLE_B1F, 					  wClastsCradleB1FSceneID
	scene_var GROTTOED_GLACIER_B2F, 				  wGrottoedGlacierB2FSceneID4
	scene_var LANDING_DOCKS, 						  wLandingDocksSceneID
	scene_var OLIVINE_LIGHTHOUSE_1F, 				  wOlivineLighthouse1F
	scene_var OLIVINE_LIGHTHOUSE_6F, 				  wOlivineLighthouse6F
	scene_var ROUTE_40, 							  wRoute40SceneID
	scene_var ROUTE_43, 							  wRoute43SceneID	
	scene_var SHIMMER_SADDLE, 						  wShimmerSaddleSceneID
	scene_var TRANQUIL_TARN, 						  wTranquilTarnSceneID
	scene_var LAKE_OF_RAGE, 						  wLakeOfRageSceneID
	scene_var TIMELESS_TAPESTRY, 					  wTimelessTapestrySceneID
	db -1
