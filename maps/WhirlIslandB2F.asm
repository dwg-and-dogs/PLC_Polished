WhirlIslandB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 3, 25, WHIRL_ISLAND_B1F, 7
	warp_event 18, 18, WHIRL_ISLAND_B3F, 3
	warp_event 22, 21, WHIRL_ISLAND_B2F, 1 ; HOLE 

	def_coord_events

	def_bg_events

	def_object_events
	object_event 6, 26, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, WhirlIslandSDiverText, -1


WhirlIslandSDiverText:
	text "I've been swimming"
	line "in these currents"
	cont "for hours!"
	
	para "There's gotta be a"
	line "way reach the"
	cont "cavern center!"
	done
