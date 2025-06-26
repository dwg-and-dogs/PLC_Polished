Route32PokeCenter1F_MapScriptHeader: ; revise dialogue
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route32FlyPoint ; ok 

	def_warp_events
	warp_event  5,  7, ROUTE_32, 1
	warp_event  6,  7, ROUTE_32, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalKurtScript 

	def_object_events
	pc_nurse_event  5, 1
	object_event  3,  4, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route32Pokecenter1FEngineerText, -1
	object_event  8,  2, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route32Pokecenter1HikerText, -1

Route32FlyPoint:
	setflag ENGINE_FLYPOINT_UNION_CAVE
	endcallback

PokemonJournalKurtScript:
	setflag ENGINE_READ_KURT_JOURNAL
	jumpthistext

	text "Johto Journal"

	para "Special Feature:"
	line "Union Cave!"
	
	para "When a Lapras"
	line "was discovered"
	cont "within the cave,"
	
	para "excavators found"
	line "it had entered"
	para "through a web"
	line "of tunnels that"
	para "led to ore-rich"
	line "seams."
	done

Route32Pokecenter1HikerText:
	text "Seems like we"
	line "take one step"
	para "forward and two"
	line "steps back."
	
	para "I don't know if"
	line "we will ever get"
	cont "the mine online."
	done
	
Route32Pokecenter1FEngineerText:
	text "What do you call"
	line "a piano falling"
	para "down a mine"
	line "shaft?"
	
	para "A-Flat Minor!"
	
	done
	