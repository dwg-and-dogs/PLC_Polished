Route32RuinsOfAlphGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, RUINS_OF_ALPH_OUTSIDE, 7 ; ok 
	warp_event  0,  5, RUINS_OF_ALPH_OUTSIDE, 8 ; ok 
	warp_event  9,  4, ROUTE_32, 2 ; ok 
	warp_event  9,  5, ROUTE_32, 3 ; ok

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route32RuinsOfAlphGateOfficerText, -1
	object_event  5,  4, SPRITE_HIKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route32RuinsOfAlphGatePokefanMText, -1


Route32RuinsOfAlphGateOfficerText:
	text "The Ruins are in"
	line "a delicate state."
	
	para "The excavation"
	line "collapsed the"
	cont "inner chamber."
	
	para "But you can still"
	line "see the mosaics!"
	done

Route32RuinsOfAlphGatePokefanMText:
	text "If I had one wish"
	line "it'd be for rain."
	
	para "Violet City's"
	line "ponds are nearly"
	cont "dried up!"
	done

Route32RuinsOfAlphGateKurtText:
	text "Well, our plan to"
	line "go around is at a"
	cont "screeching halt"
	
	para "due to Falkner's"
	line "excavation of the"
	cont "#mon north of"
	cont "the Ruins."
	
	para "We have to tell"
	line "him to let us by."
	done
