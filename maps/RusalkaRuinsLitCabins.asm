RusalkaRuinsLitCabins_MapScriptHeader:
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 3,  1, RUSALKA_RUINS_1F, 4
	warp_event 19,  1, RUSALKA_RUINS_1F, 5
	warp_event 27,  1, RUSALKA_RUINS_1F, 6
	warp_event 3, 14, RUSALKA_RUINS_1F, 7
	warp_event 19, 14, RUSALKA_RUINS_1F, 8
	warp_event 27, 14, RUSALKA_RUINS_1F, 9
	warp_event 6, 11, RUSALKA_RUINS_B1F, 4 ; HOLE 
	warp_event 6, 5, RUSALKA_RUINS_B1F, 4 ; HOLE 


	def_coord_events



	def_bg_events



	def_object_events
	itemball_event 16, 10, RAZOR_FANG, 1, EVENT_RUSALKA_RAZOR_FANG
	pokemon_event  8,  2, FROSLASS, -1, -1, PAL_NPC_BLUE, FroslassText, -1
	pokemon_event  9,  8, FROSLASS, -1, -1, PAL_NPC_BLUE, FroslassText, -1

FroslassText:
	text "Froslass beckons"
	line "you to venture"
	cont "further."
	
	para "You'll get used"
	line "to the cold."
	done
