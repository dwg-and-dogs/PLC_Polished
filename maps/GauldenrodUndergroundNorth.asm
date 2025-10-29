GauldenrodUndergroundNorth_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GAULDENROD, 6
	warp_event  3,  7, GAULDENROD, 6
	warp_event  3,  3, GAULDENROD_UNDERGROUND, 1


	def_coord_events

	def_bg_events

	def_object_events
;	strengthboulder_event 6, 4
	object_event  5,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GauldenrodUndergroundNorthGateScript, EVENT_GAULDENROD_TUNNELERS

	object_const_def


GauldenrodUndergroundNorthGateScript:
	faceplayer
	opentext
	writetext GauldenrodUndergroundNorthGateText1
	waitbutton
	closetext
	end

GauldenrodUndergroundNorthGateText1:
	text "Nothing to see"
	line "here..."

	para "Unless you have"
	line "a blessing from"
	cont "Sandra."
	done
