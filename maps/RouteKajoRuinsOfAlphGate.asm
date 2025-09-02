RouteKajoRuinsOfAlphGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, ROUTE_KAJO, 8  
	warp_event  0,  5, ROUTE_KAJO, 9  
	warp_event  9,  4, RUINS_OF_ALPH_OUTSIDE, 11  
	warp_event  9,  5, RUINS_OF_ALPH_OUTSIDE, 12  


	def_coord_events


	def_bg_events


	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, RouteKajoRuinsOfAlphGateOfficerText, -1



RouteKajoRuinsOfAlphGateOfficerText:
	text "Did you have a"
	line "good hike?"
	
	para "The terrain is so"
	line "rough, the acqui-"
	cont "fer is basically"
	para "unobtainable for"
	line "tapping into."
	done
	