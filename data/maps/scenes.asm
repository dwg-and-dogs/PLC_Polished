scene_var: MACRO
; db group, map
; dw address
	map_id \1
	dw \2
ENDM
;ram/wramx.asm uses these. 
MapScenes::
	scene_var AZALEA_TOWN,                            wAzaleaTownSceneID
	scene_var AZALEA_POKECENTER_1F,                   wAzaleaPokecenter1FSceneID
	scene_var BELLCHIME_TRAIL,                        wBellchimeTrailSceneID
	scene_var CHARCOAL_KILN,                          wCharcoalKilnSceneID
	scene_var BURNED_TOWER_1F,                        wBurnedTower1FSceneID ; NEED TO KEEP 
	scene_var BURNED_TOWER_B1F,                       wBurnedTowerB1FSceneID ; NEED TO KEEP 
	scene_var TINDER_GARDEN,                          wTinderGardenSceneID 
	scene_var ANARRES_TOWER_3F,                       wAnarresTower3FSceneID 
	scene_var CIANWOOD_CITY,                          wCianwoodCitySceneID
	scene_var DAYCARE,                                wDayCareSceneID ; NEED TO KEEP 
	scene_var ILEX_FOREST,                            wIlexForestSceneID
	scene_var KURTS_HOUSE,                            wKurtsHouseSceneID
	scene_var OLIVINE_DESAL_1F,                       wOlivineDesal1FSceneID ; OLIVINE_DESAL 
	scene_var RADIO_TOWER_5F,                         wRadioTower5FSceneID
	scene_var ROUTE_34_ILEX_FOREST_GATE,              wAlways0SceneID
	scene_var ROUTE_35_NATIONAL_PARK_GATE,            wRoute35NationalParkGateSceneID
	scene_var ROUTE_36_NATIONAL_PARK_GATE,            wRoute36NationalParkGateSceneID
	scene_var ROUTE_43_GATE,                          wRoute43GateSceneID ; not used 
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
	scene_var RADIO_TOWER_1F,                         wRadioTower1FSceneID 
	scene_var EMPERORS_GARDEN,                        wEmperorsGardenSceneID 
	scene_var GAULDENROD_HOUSE,                       wGauldenrodHouseSceneID
	scene_var WESTERN_CAPITAL,                        wWesternCapitalSceneID 
	scene_var HOLT_COAST_GATE,             			  wHoltCoastGateSceneID
	scene_var ROUTE_35_GOLDENROD_GATE,          	  wRoute35GoldenrodGateSceneID 
	scene_var WHIRL_ISLAND_LUGIA_CHAMBER,			  wWhirlIslandLugiaChamberSceneID 
	scene_var CLASTS_CRADLE_B1F, 					  wClastsCradleB1FSceneID
	scene_var GROTTOED_GLACIER_B2F, 				  wGrottoedGlacierB2FSceneID
	scene_var LANDING_DOCKS, 						  wLandingDocksSceneID
	scene_var OLIVINE_LIGHTHOUSE_1F, 				  wOlivineLighthouse1FSceneID
	scene_var OLIVINE_LIGHTHOUSE_6F, 				  wOlivineLighthouse6FSceneID
	scene_var ROUTE_40, 							  wRoute40SceneID
	scene_var ROUTE_43, 							  wRoute43SceneID	
	scene_var SHIMMER_SADDLE, 						  wShimmerSaddleSceneID
	scene_var TRANQUIL_TARN, 						  wTranquilTarnSceneID
	scene_var LAKE_OF_RAGE, 						  wLakeOfRageSceneID
	scene_var TIMELESS_TAPESTRY, 					  wTimelessTapestrySceneID
	scene_var NATIONAL_PARK, 						  wNationalParkSceneID 
	scene_var GOLDENROD_MUSEUM_2F, 					  wGoldenrodMuseum2FSceneID 
	scene_var VIOLET_NICKNAME_SPEECH_HOUSE, 		  wVioletNicknameSpeechHouseSceneID 
	scene_var ECRUTEAK_DESTINY_KNOT_HOUSE, 			  wEcruteakDestinyKnotHouseSceneID
	scene_var ECRUTEAK_CHERISH_BALL_HOUSE, 			  wEcruteakCherishBallHouseSceneID
	scene_var OLIVINE_PUNISHMENT_SPEECH_HOUSE, 		  wOlivinePunishmentSpeechHouseSceneID
	scene_var LANDING_HOUSE_2, 						  wLandingHouse2SceneID 
	scene_var OLIVINE_CAFE, 						  wOlivineCafeSceneID
	scene_var EERIE_HAMLET, 						  wEerieHamletSceneID
	scene_var MAHOGANY_TOWN,                          wMahoganyTownSceneID 
	scene_var GAULDENROD_GUILD, 					  wGauldenrodGuildSceneID 
	scene_var TIN_TOWER_OLD_3F, 					  wTinTowerOld3FSceneID 
	scene_var RUSALKA_RUINS_B1F, 					  wRusalkaRuinsB1FSceneID
	scene_var STADIUM_BOX, 							  wStadiumBoxSceneID
	scene_var STADIUM_CAPITAL_GATE, 				  wStadiumCapitalGateSceneID  
	scene_var STY_CAPITAL_GATE, 					  wStyCapitalGateSceneID
	scene_var TRADERS_LANDING, 						  wTradersLandingSceneID
	scene_var ROUTE_34,                               wRoute34SceneID ; needed for daycare man, I think 
	scene_var BRASS_TOWER_ROOF, 					  wBrassTowerRoofSceneID
	scene_var TINDER_GARDEN_2, 						  wTinderGarden2SceneID
	scene_var TINDER_GARDEN_3, 						  wTinderGarden3SceneID

	scene_var HOLLYS_HOLT_CREDIT, 						  wHollysHoltCreditSceneID
	scene_var STADIUM_GROUNDS_CREDIT, 						  wStadiumGroundsCreditSceneID
	scene_var EMPERORS_GARDEN_CREDIT, 						  wEmperorsGardenCreditSceneID
	scene_var ARDUOUS_ANCHORAGE_CREDIT, 						  wArduousAnchorageCreditSceneID
	scene_var SINJOH_CROSSROADS_CREDIT, 						  wSinjohCrossroadsCreditSceneID
	scene_var CLASTS_CRADLE_B1F_CREDIT, 						  wClastsCradleB1FCreditSceneID
	scene_var BURNED_TOWER_B1F_CREDIT, 						  wBurnedTower1FCreditSceneID
	
	db -1
