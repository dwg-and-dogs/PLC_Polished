WesternGlacierB1F_MapScriptHeader:  ;hint: only the bottom and the left boulders need to be moved 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 3, 29, WESTERN_GLACIER_1F, 2
	warp_event 15, 15, WESTERN_GLACIER_B2F, 1


	def_coord_events



	def_bg_events
	bg_event  2,  2, BGEVENT_ITEM + PETAYA_BERRY, EVENT_WESTERN_GLACIER_HIDDEN_3 
	bg_event 29,  2, BGEVENT_ITEM + SALAC_BERRY, EVENT_WESTERN_GLACIER_HIDDEN_4
	bg_event 29, 29, BGEVENT_ITEM + LIECHI_BERRY, EVENT_WESTERN_GLACIER_HIDDEN_5

	def_object_events
	strengthboulder_event 15, 28 
	strengthboulder_event  3, 15 
	strengthboulder_event 15,  3 
	strengthboulder_event 28, 16 

