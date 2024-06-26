map_attributes: MACRO
; label, map, border block, connections
CURRENT_MAP_WIDTH = \2_WIDTH
CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db \2_HEIGHT, \2_WIDTH
	db BANK(\1_BlockData)
	dw \1_BlockData
	db BANK(\1_MapScriptHeader)
	dw \1_MapScriptHeader
	db \4
ENDM

; Connections go in order: north, south, west, east
connection: MACRO
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

; Calculate tile offsets for source (current) and target maps
_src = 0
_tgt = (\4) + 3
if _tgt < 0
_src = -_tgt
_tgt = 0
endc

if !STRCMP("\1", "north")
_blk = \3_WIDTH * (\3_HEIGHT - 3) + _src
_map = _tgt
_win = (\3_WIDTH + 6) * \3_HEIGHT + 1
_y = \3_HEIGHT * 2 - 1
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif !STRCMP("\1", "south")
_blk = _src
_map = (CURRENT_MAP_WIDTH + 6) * (CURRENT_MAP_HEIGHT + 3) + _tgt
_win = \3_WIDTH + 7
_y = 0
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif !STRCMP("\1", "west")
_blk = (\3_WIDTH * _src) + \3_WIDTH - 3
_map = (CURRENT_MAP_WIDTH + 6) * _tgt
_win = (\3_WIDTH + 6) * 2 - 6
_y = (\4) * -2
_x = \3_WIDTH * 2 - 1
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

elif !STRCMP("\1", "east")
_blk = (\3_WIDTH * _src)
_map = (CURRENT_MAP_WIDTH + 6) * _tgt + CURRENT_MAP_WIDTH + 3
_win = \3_WIDTH + 7
_y = (\4) * -2
_x = 0
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

else
fail "Invalid direction for 'connection'."
endc

	map_id \3
	dw wDecompressScratch + _blk
	dw wOverworldMapBlocks + _map
	db _len - _src
	db \3_WIDTH
	db _y, _x
	dw wOverworldMapBlocks + _win
ENDM


	map_attributes VioletCity, VIOLET_CITY, $5,  SOUTH | WEST
	connection south, Route32, ROUTE_32, 0
	connection west, Route36, ROUTE_36, 2

	map_attributes AzaleaTown, AZALEA_TOWN, $5, WEST | EAST
	connection west, Route34, ROUTE_34, -18
	connection east, Route33, ROUTE_33, 0

	map_attributes CianwoodCity, CIANWOOD_CITY, $35, EAST
	connection east, Route41, ROUTE_41, 0

	map_attributes GoldenrodCity, GOLDENROD_CITY, $35, NORTH | SOUTH
	connection north, Route35, ROUTE_35, 5
	connection south, Route34, ROUTE_34, 7

	map_attributes OlivineCity, OLIVINE_CITY, $35, NORTH | WEST
	connection north, Route39, ROUTE_39, 5
	connection west, Route40, ROUTE_40, 7

	map_attributes EcruteakCity, ECRUTEAK_CITY, $5, SOUTH | WEST | EAST
	connection south, Route37, ROUTE_37, 5
	connection west, Route38, ROUTE_38, 5
	connection east, Route42, ROUTE_42, 9

	map_attributes MahoganyTown, MAHOGANY_TOWN, $71, NORTH | WEST
	connection north, Route43, ROUTE_43, 0
	connection west, Route42, ROUTE_42, 0

	map_attributes LakeOfRage, LAKE_OF_RAGE, $5, SOUTH
	connection south, Route43, ROUTE_43, 5

	map_attributes Route32, ROUTE_32, $5, NORTH | SOUTH 
	connection north, VioletCity, VIOLET_CITY, 0
	connection south, Route33, ROUTE_33, 0

	map_attributes Route33, ROUTE_33, $5, NORTH | WEST
	connection north, Route32, ROUTE_32, 0
	connection west, AzaleaTown, AZALEA_TOWN, 0

	map_attributes Route34, ROUTE_34, $5, NORTH | EAST
	connection north, GoldenrodCity, GOLDENROD_CITY, -7
	connection east, AzaleaTown, AZALEA_TOWN, 18

	map_attributes Route35, ROUTE_35, $5, NORTH | SOUTH
	connection north, Route36, ROUTE_36, 0
	connection south, GoldenrodCity, GOLDENROD_CITY, -5

	map_attributes Route36, ROUTE_36, $5, NORTH | SOUTH | EAST
	connection north, Route37, ROUTE_37, 12
	connection south, Route35, ROUTE_35, 0
	connection east, VioletCity, VIOLET_CITY, -2

	map_attributes Route37, ROUTE_37, $5, NORTH | SOUTH
	connection north, EcruteakCity, ECRUTEAK_CITY, -5
	connection south, Route36, ROUTE_36, -12

	map_attributes Route38, ROUTE_38, $5, WEST | EAST
	connection west, Route39, ROUTE_39, 0
	connection east, EcruteakCity, ECRUTEAK_CITY, -5

	map_attributes Route39, ROUTE_39, $5, SOUTH | EAST
	connection south, OlivineCity, OLIVINE_CITY, -5
	connection east, Route38, ROUTE_38, 0

	map_attributes Route40, ROUTE_40, $35, SOUTH | EAST
	connection south, Route41, ROUTE_41, -15
	connection east, OlivineCity, OLIVINE_CITY, -7

	map_attributes Route41, ROUTE_41, $35, NORTH | WEST 
	connection north, Route40, ROUTE_40, 15
	connection west, CianwoodCity, CIANWOOD_CITY, 0

	map_attributes Route42, ROUTE_42, $5, WEST | EAST
	connection west, EcruteakCity, ECRUTEAK_CITY, -9
	connection east, MahoganyTown, MAHOGANY_TOWN, 0

	map_attributes Route43, ROUTE_43, $5, NORTH | SOUTH
	connection north, LakeOfRage, LAKE_OF_RAGE, -5
	connection south, MahoganyTown, MAHOGANY_TOWN, 0

	map_attributes SproutTower1F, SPROUT_TOWER_1F, $0, 0
	map_attributes SproutTower2F, SPROUT_TOWER_2F, $0, 0
	map_attributes SproutTower3F, SPROUT_TOWER_3F, $0, 0
	map_attributes TinTower1F, TIN_TOWER_1F, $0, 0
	map_attributes TinTower2F, TIN_TOWER_2F, $0, 0
	map_attributes TinTower3F, TIN_TOWER_3F, $0, 0
	map_attributes TinTower4F, TIN_TOWER_4F, $0, 0
	map_attributes TinTower5F, TIN_TOWER_5F, $0, 0
	map_attributes TinTower6F, TIN_TOWER_6F, $0, 0
	map_attributes TinTower7F, TIN_TOWER_7F, $0, 0
	map_attributes TinTower8F, TIN_TOWER_8F, $0, 0
	map_attributes TinTower9F, TIN_TOWER_9F, $0, 0
	map_attributes TinTower10F, TIN_TOWER_10F, $0, 0
	map_attributes BurnedTower1F, BURNED_TOWER_1F, $0, 0
	map_attributes BurnedTowerB1F, BURNED_TOWER_B1F, $9, 0
	map_attributes NationalPark, NATIONAL_PARK, $0, 0
	map_attributes NationalParkBugContest, NATIONAL_PARK_BUG_CONTEST, $0, 0
	map_attributes RadioTower1F, RADIO_TOWER_1F, $0, 0
	map_attributes RadioTower2F, RADIO_TOWER_2F, $0, 0
	map_attributes RadioTower3F, RADIO_TOWER_3F, $0, 0
	map_attributes RadioTower4F, RADIO_TOWER_4F, $0, 0
	map_attributes RadioTower5F, RADIO_TOWER_5F, $0, 0
	map_attributes RuinsOfAlphOutside, RUINS_OF_ALPH_OUTSIDE, $5, 0
	map_attributes RuinsOfAlphHoOhChamber, RUINS_OF_ALPH_HO_OH_CHAMBER, $0, 0
	map_attributes RuinsOfAlphKabutoChamber, RUINS_OF_ALPH_KABUTO_CHAMBER, $0, 0
	map_attributes RuinsOfAlphOmanyteChamber, RUINS_OF_ALPH_OMANYTE_CHAMBER, $0, 0
	map_attributes RuinsOfAlphAerodactylChamber, RUINS_OF_ALPH_AERODACTYL_CHAMBER, $0, 0
	map_attributes RuinsOfAlphEntranceChamber, RUINS_OF_ALPH_ENTRANCE_CHAMBER, $0, 0
	map_attributes RuinsOfAlphInnerChamber, RUINS_OF_ALPH_INNER_CHAMBER, $0, 0
	map_attributes RuinsOfAlphResearchCenter, RUINS_OF_ALPH_RESEARCH_CENTER, $0, 0
	map_attributes RuinsOfAlphHoOhItemRoom, RUINS_OF_ALPH_HO_OH_ITEM_ROOM, $0, 0
	map_attributes RuinsOfAlphKabutoItemRoom, RUINS_OF_ALPH_KABUTO_ITEM_ROOM, $0, 0
	map_attributes RuinsOfAlphOmanyteItemRoom, RUINS_OF_ALPH_OMANYTE_ITEM_ROOM, $0, 0
	map_attributes RuinsOfAlphAerodactylItemRoom, RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM, $0, 0
	map_attributes RuinsOfAlphHoOhWordRoom, RUINS_OF_ALPH_HO_OH_WORD_ROOM, $0, 0
	map_attributes RuinsOfAlphKabutoWordRoom, RUINS_OF_ALPH_KABUTO_WORD_ROOM, $0, 0
	map_attributes RuinsOfAlphOmanyteWordRoom, RUINS_OF_ALPH_OMANYTE_WORD_ROOM, $0, 0
	map_attributes RuinsOfAlphAerodactylWordRoom, RUINS_OF_ALPH_AERODACTYL_WORD_ROOM, $0, 0
	map_attributes UnionCave1F, UNION_CAVE_1F, $9, 0
	map_attributes UnionCaveB1FNorth, UNION_CAVE_B1F_NORTH, $9, 0
	map_attributes UnionCaveB1FSouth, UNION_CAVE_B1F_SOUTH, $9, 0
	map_attributes UnionCaveB2F, UNION_CAVE_B2F, $9, 0
	map_attributes SlowpokeWellEntrance, SLOWPOKE_WELL_ENTRANCE, $9, 0
	map_attributes SlowpokeWellB1F, SLOWPOKE_WELL_B1F, $9, 0
	map_attributes SlowpokeWellB2F, SLOWPOKE_WELL_B2F, $9, 0
	map_attributes OlivineLighthouse1F, OLIVINE_LIGHTHOUSE_1F, $0, 0
	map_attributes OlivineLighthouse2F, OLIVINE_LIGHTHOUSE_2F, $0, 0
	map_attributes OlivineLighthouse3F, OLIVINE_LIGHTHOUSE_3F, $0, 0
	map_attributes OlivineLighthouse4F, OLIVINE_LIGHTHOUSE_4F, $0, 0
	map_attributes OlivineLighthouse5F, OLIVINE_LIGHTHOUSE_5F, $0, 0
	map_attributes OlivineLighthouse6F, OLIVINE_LIGHTHOUSE_6F, $0, 0
	map_attributes OlivineLighthouseRoof, OLIVINE_LIGHTHOUSE_ROOF, $c, 0
	map_attributes MahoganyMart1F, MAHOGANY_MART_1F, $0, 0
	map_attributes TeamRocketBaseB1F, TEAM_ROCKET_BASE_B1F, $0, 0
	map_attributes TeamRocketBaseB2F, TEAM_ROCKET_BASE_B2F, $0, 0
	map_attributes TeamRocketBaseB3F, TEAM_ROCKET_BASE_B3F, $0, 0
	map_attributes WarehouseEntrance, WAREHOUSE_ENTRANCE, $0, 0
	map_attributes IlexForest, ILEX_FOREST, $35, 0
	map_attributes UndergroundPathSwitchRoomEntrances, UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, $0, 0
	map_attributes GoldenrodDeptStoreB1F, GOLDENROD_DEPT_STORE_B1F, $0, 0
	map_attributes UndergroundWarehouse, UNDERGROUND_WAREHOUSE, $0, 0
	map_attributes MountMortar1FOutside, MOUNT_MORTAR_1F_OUTSIDE, $9, 0
	map_attributes MountMortar1FInside, MOUNT_MORTAR_1F_INSIDE, $9, 0
	map_attributes MountMortar2FInside, MOUNT_MORTAR_2F_INSIDE, $9, 0
	map_attributes MountMortarB1F, MOUNT_MORTAR_B1F, $9, 0
	map_attributes WhirlIslandNW, WHIRL_ISLAND_NW, $9, 0
	map_attributes WhirlIslandNE, WHIRL_ISLAND_NE, $9, 0
	map_attributes WhirlIslandSW, WHIRL_ISLAND_SW, $9, 0
	map_attributes WhirlIslandCave, WHIRL_ISLAND_CAVE, $9, 0
	map_attributes WhirlIslandSE, WHIRL_ISLAND_SE, $f, 0
	map_attributes WhirlIslandB1F, WHIRL_ISLAND_B1F, $9, 0
	map_attributes WhirlIslandB2F, WHIRL_ISLAND_B2F, $2e, 0
	map_attributes WhirlIslandLugiaChamber, WHIRL_ISLAND_LUGIA_CHAMBER, $f, 0
	map_attributes OlivinePokeCenter1F, OLIVINE_POKECENTER_1F, $0, 0
	map_attributes OlivineGym, OLIVINE_GYM, $0, 0
	map_attributes OlivineTimsHouse, OLIVINE_TIMS_HOUSE, $0, 0
	map_attributes OlivinePunishmentSpeechHouse, OLIVINE_PUNISHMENT_SPEECH_HOUSE, $0, 0
	map_attributes OlivineGoodRodHouse, OLIVINE_GOOD_ROD_HOUSE, $0, 0
	map_attributes OlivineCafe, OLIVINE_CAFE, $0, 0
	map_attributes OlivineMart, OLIVINE_MART, $0, 0
	map_attributes Route38EcruteakGate, ROUTE_38_ECRUTEAK_GATE, $0, 0
	map_attributes Route39Barn, ROUTE_39_BARN, $0, 0
	map_attributes Route39Farmhouse, ROUTE_39_FARMHOUSE, $0, 0
	map_attributes MahoganyRedGyaradosSpeechHouse, MAHOGANY_RED_GYARADOS_SPEECH_HOUSE, $0, 0
	map_attributes MahoganyGym, MAHOGANY_GYM, $0, 0
	map_attributes MahoganyPokeCenter1F, MAHOGANY_POKECENTER_1F, $0, 0
	map_attributes Route42EcruteakGate, ROUTE_42_ECRUTEAK_GATE, $0, 0
	map_attributes EcruteakHouse, ECRUTEAK_HOUSE, $0, 0
	map_attributes WiseTriosRoom, WISE_TRIOS_ROOM, $0, 0
	map_attributes EcruteakPokeCenter1F, ECRUTEAK_POKECENTER_1F, $0, 0
	map_attributes EcruteakLugiaSpeechHouse, ECRUTEAK_LUGIA_SPEECH_HOUSE, $0, 0
	map_attributes DanceTheatre, DANCE_THEATRE, $0, 0
	map_attributes EcruteakMart, ECRUTEAK_MART, $0, 0
	map_attributes EcruteakGym, ECRUTEAK_GYM, $0, 0
	map_attributes EcruteakItemfinderHouse, ECRUTEAK_ITEMFINDER_HOUSE, $0, 0
	map_attributes ValeriesHouse, VALERIES_HOUSE, $0, 0
	map_attributes EcruteakCherishBallHouse, ECRUTEAK_CHERISH_BALL_HOUSE, $0, 0
	map_attributes EcruteakDestinyKnotHouse, ECRUTEAK_DESTINY_KNOT_HOUSE, $0, 0
	map_attributes EcruteakShrineOutside, ECRUTEAK_SHRINE_OUTSIDE, $5, 0
	map_attributes EcruteakShrineInside, ECRUTEAK_SHRINE_INSIDE, $0, 0
	map_attributes AzaleaPokeCenter1F, AZALEA_POKECENTER_1F, $0, 0
	map_attributes CharcoalKiln, CHARCOAL_KILN, $0, 0
	map_attributes AzaleaMart, AZALEA_MART, $0, 0
	map_attributes KurtsHouse, KURTS_HOUSE, $0, 0
	map_attributes AzaleaGym, AZALEA_GYM, $0, 0
	map_attributes TinderGarden, TINDER_GARDEN, $33, 0
	map_attributes LakeOfRageHiddenPowerHouse, LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, $0, 0
	map_attributes LakeOfRageMagikarpHouse, LAKE_OF_RAGE_MAGIKARP_HOUSE, $0, 0
	map_attributes Route43MahoganyGate, ROUTE_43_MAHOGANY_GATE, $0, 0
	map_attributes Route43Gate, ROUTE_43_GATE, $0, 0
	map_attributes VioletMart, VIOLET_MART, $0, 0
	map_attributes VioletGym, VIOLET_GYM, $0, 0
	map_attributes EarlsPokemonAcademy, EARLS_POKEMON_ACADEMY, $0, 0
	map_attributes VioletNicknameSpeechHouse, VIOLET_NICKNAME_SPEECH_HOUSE, $0, 0
	map_attributes VioletPokeCenter1F, VIOLET_POKECENTER_1F, $0, 0
	map_attributes VioletOnixTradeHouse, VIOLET_ONIX_TRADE_HOUSE, $0, 0
	map_attributes Route32RuinsOfAlphGate, ROUTE_32_RUINS_OF_ALPH_GATE, $0, 0
	map_attributes Route32PokeCenter1F, ROUTE_32_POKECENTER_1F, $0, 0
	map_attributes Route35GoldenrodGate, ROUTE_35_GOLDENROD_GATE, $0, 0
	map_attributes Route35NationalParkGate, ROUTE_35_NATIONAL_PARK_GATE, $0, 0
	map_attributes Route36RuinsOfAlphGate, ROUTE_36_RUINS_OF_ALPH_GATE, $0, 0
	map_attributes Route36NationalParkGate, ROUTE_36_NATIONAL_PARK_GATE, $0, 0
	map_attributes Route36VioletGate, ROUTE_36_VIOLET_GATE, $0, 0
	map_attributes GoldenrodGym, GOLDENROD_GYM, $0, 0
	map_attributes GoldenrodBikeShop, GOLDENROD_BIKE_SHOP, $0, 0
	map_attributes GoldenrodHappinessRater, GOLDENROD_HAPPINESS_RATER, $0, 0
	map_attributes GoldenrodBillsHouse, GOLDENROD_BILLS_HOUSE, $0, 0
	map_attributes GoldenrodMagnetTrainStation, GOLDENROD_MAGNET_TRAIN_STATION, $0, 0
	map_attributes GoldenrodFlowerShop, GOLDENROD_FLOWER_SHOP, $0, 0
	map_attributes GoldenrodPPSpeechHouse, GOLDENROD_PP_SPEECH_HOUSE, $0, 0
	map_attributes GoldenrodNameRater, GOLDENROD_NAME_RATER, $0, 0
	map_attributes GoldenrodDeptStore1F, GOLDENROD_DEPT_STORE_1F, $0, 0
	map_attributes GoldenrodDeptStore2F, GOLDENROD_DEPT_STORE_2F, $0, 0
	map_attributes GoldenrodDeptStore3F, GOLDENROD_DEPT_STORE_3F, $0, 0
	map_attributes GoldenrodDeptStore4F, GOLDENROD_DEPT_STORE_4F, $0, 0
	map_attributes GoldenrodDeptStore5F, GOLDENROD_DEPT_STORE_5F, $0, 0
	map_attributes GoldenrodDeptStore6F, GOLDENROD_DEPT_STORE_6F, $0, 0
	map_attributes GoldenrodDeptStoreElevator, GOLDENROD_DEPT_STORE_ELEVATOR, $0, 0
	map_attributes GoldenrodDeptStoreRoof, GOLDENROD_DEPT_STORE_ROOF, $24, 0
	map_attributes GoldenrodGameCorner, GOLDENROD_GAME_CORNER, $0, 0
	map_attributes GoldenrodPokecomCenter1F, GOLDENROD_POKECOM_CENTER_1F, $0, 0
	map_attributes GoldenrodPokecomCenterOffice, GOLDENROD_POKECOM_CENTER_OFFICE, $0, 0
	map_attributes IlexForestAzaleaGate, ILEX_FOREST_AZALEA_GATE, $0, 0
	map_attributes Route34IlexForestGate, ROUTE_34_ILEX_FOREST_GATE, $0, 0
	map_attributes DayCare, DAYCARE, $0, 0
	map_attributes GoldenrodHPUpHouse, GOLDENROD_HP_UP_HOUSE, $0, 0
	map_attributes GoldenrodNetBallHouse, GOLDENROD_NET_BALL_HOUSE, $0, 0
	map_attributes GoldenrodBandHouse, GOLDENROD_BAND_HOUSE, $0, 0
	map_attributes GoldenrodMuseum1F, GOLDENROD_MUSEUM_1F, $0, 0
	map_attributes GoldenrodMuseum2F, GOLDENROD_MUSEUM_2F, $0, 0
	map_attributes TinTowerRoof, TIN_TOWER_ROOF, $1, 0
	map_attributes BellchimeTrail, BELLCHIME_TRAIL, $5, 0
	map_attributes HiddenTreeGrotto, HIDDEN_TREE_GROTTO, $35, 0
	map_attributes HiddenCaveGrotto, HIDDEN_CAVE_GROTTO, $9, 0
	map_attributes ManiasHouse, MANIAS_HOUSE, $0, 0
	map_attributes CianwoodGym, CIANWOOD_GYM, $0, 0
	map_attributes CianwoodPokeCenter1F, CIANWOOD_POKECENTER_1F, $0, 0
	map_attributes CianwoodPharmacy, CIANWOOD_PHARMACY, $0, 0
	map_attributes CianwoodCityPhotoStudio, CIANWOOD_CITY_PHOTO_STUDIO, $0, 0
	map_attributes CianwoodLugiaSpeechHouse, CIANWOOD_LUGIA_SPEECH_HOUSE, $0, 0
	map_attributes MoveManiacsHouse, MOVE_MANIACS_HOUSE, $0, 0
	map_attributes HollysHolt, HOLLYS_HOLT, $35, 0 ; start of anarres group
	map_attributes AnarresTown, ANARRES_TOWN, $5, 0 
	map_attributes MistyBasin, MISTY_BASIN, $9, 0
	map_attributes AnarresDorms, ANARRES_DORMS, $0, 0
	map_attributes AnarresStockroom, ANARRES_STOCKROOM, $0, 0
	map_attributes AnarresTower1F, ANARRES_TOWER_1F, $0, 0
	map_attributes AnarresTower2F, ANARRES_TOWER_2F, $0, 0	
	map_attributes AnarresTower3F, ANARRES_TOWER_3F, $0, 0
	map_attributes AnarresCharcoalKiln, ANARRES_CHARCOAL_KILN, $0, 0
	map_attributes AnarresHouse, ANARRES_HOUSE, $0, 0
	