treemon_map: MACRO
	map_id \1
	db  \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map ROUTE_32, 4
	treemon_map ROUTE_33, 2
	treemon_map ROUTE_34, 3
	treemon_map ROUTE_35, 3
	treemon_map ROUTE_36, 3
	treemon_map ROUTE_37, 3
	treemon_map ROUTE_38, 3
	treemon_map ROUTE_39, 3
	treemon_map ROUTE_40, 0
	treemon_map ROUTE_41, 0
	treemon_map ROUTE_42, 2
	treemon_map ROUTE_43, 5
	treemon_map VIOLET_CITY, 0
	treemon_map AZALEA_TOWN, 2
	treemon_map CIANWOOD_CITY, 0
	treemon_map GOLDENROD_CITY, 0
	treemon_map OLIVINE_CITY, 0
	treemon_map ECRUTEAK_CITY, 0
	treemon_map MAHOGANY_TOWN, 0
	treemon_map LAKE_OF_RAGE, 5
	treemon_map ILEX_FOREST, 6
	treemon_map HOLLYS_HOLT, 6
	treemon_map ANARRES_TOWN, 2
	db -1

RockMonMaps:
	treemon_map ROUTE_40, 7
	treemon_map OLIVINE_CITY, 7
	treemon_map CIANWOOD_CITY, 7
	treemon_map RUINS_OF_ALPH_OUTSIDE, 7
	treemon_map UNION_CAVE_B1F_SOUTH, 7
	treemon_map SLOWPOKE_WELL_B1F, 7
	treemon_map BURNED_TOWER_B1F, 7
	db -1
