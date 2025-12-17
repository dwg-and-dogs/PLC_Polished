SlowpokeWellB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SlowpokeWellB2FCallBack

	def_warp_events
	warp_event  9, 11, SLOWPOKE_WELL_B1F, 2
	warp_event  5,  1, UNION_CAVE_B1F_SOUTH, 3
	warp_event  15,  5, SLOWPOKE_WELL_B3F, 1

	def_coord_events


	def_bg_events


	def_object_events
	object_event 6, 2, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, SlowpokeWellB2FHikerText, EVENT_LOGGERS_ILEX_FOREST
	pokemon_event  5, 2, GEODUDE, -1, -1, PAL_NPC_BROWN, SlowpokeWellGeodudeText, EVENT_LOGGERS_ILEX_FOREST
	pokemon_event 4, 2, GRIMER, -1, -1, PAL_NPC_BLUE, SlowpokeWellGrimerText, EVENT_LOGGERS_ILEX_FOREST
	object_event 3, 2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, SlowpokeWellB2FScientistText, EVENT_LOGGERS_ILEX_FOREST


	object_const_def
	const SLOWPOKE_WELL_B2F_SCHOOLBOY

SlowpokeWellB2FCallBack:
	checkevent EVENT_MISTY_BASIN_B1F_BLACKBELT
	iffalse .Done
	changeblock 10,  8, $02
	changeblock 12,  8, $28
.Done:
	endcallback

SlowpokeWellB2FHikerText:
	text "This battle is"
	line "taking forever!"
	
	para "I'll never get"
	line "back to work"
	cont "on time!"
	done

SlowpokeWellB2FScientistText:
	text "This battle is"
	line "taking forever!"
	
	para "I'll never get"
	line "back to work"
	cont "on time!"
	done
	

SlowpokeWellGeodudeText:
	text "Geodude used"
	line "Defense Curl!"
	done

SlowpokeWellGrimerText:
	text "Grimer used"
	line "Defense Curl!"
	done
	