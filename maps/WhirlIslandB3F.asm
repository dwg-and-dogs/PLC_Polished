WhirlIslandB3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 7, 11, WHIRL_ISLAND_B1F, 5 ; SINGLE ITEM 
	warp_event 13, 31, WHIRL_ISLAND_B1F, 6 ; EASY EXIT TO B1F 
	warp_event 11, 5, WHIRL_ISLAND_B2F, 2
	warp_event  7, 25, WHIRL_ISLAND_LUGIA_CHAMBER, 1
	

	def_coord_events

	def_bg_events
	; debug tech
	bg_event 8, 25, BGEVENT_READ, WhirlIslandB3f_Debug

	def_object_events



	
WhirlIslandB3f_Debug:
	setevent EVENT_LUGIA_POKEBALL
	jumpthistext 
	
	text "Cleared Lugia"
	line "#ball event"
	done