Route36RuinsOfAlphGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  0, ROUTE_36, 3
	warp_event  5,  0, ROUTE_36, 4
	warp_event  4,  7, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  5,  7, RUINS_OF_ALPH_OUTSIDE, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route36RuinsOfAlphGateOfficerText, -1
	object_event  7,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36RuinsOfAlphGateGramps, -1

Route36RuinsOfAlphGateOfficerText:
	text "Don't you wonder"
	line "who'd make some-"
	cont "thing like this?"
	cont "And why?"
	done

Route36RuinsOfAlphGateGramps:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FALKNER
	iftrue_jumptext Route36RuinsOfAlphGateGrampsText
	jumpthistext
	
	text "I've been trying"
	line "to go to Ecruteak"
	para "but Falkner has"
	line "the path blocked!"
	
	para "So much for his"
	line "'progress'!"
	done

Route36RuinsOfAlphGateGrampsText:
	text "I heard that"
	line "Falkner had a"
	cont "change of heart."
	
	para "Still, they could"
	line "have at least"
	cont "restored the path"
	cont "to Ecruteak."
	done
