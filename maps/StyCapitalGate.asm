StyCapitalGate_MapScriptHeader: 

	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 0,  2, SULFUR_STY, 4 
	warp_event 0,  3, SULFUR_STY, 5 
	warp_event 7,  2, WESTERN_CAPITAL, 12 
	warp_event 7,  3, WESTERN_CAPITAL, 13


	def_coord_events



	def_bg_events



	def_object_events
	object_event  3,  3, SPRITE_HIKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, StyCapitalGateText, EVENT_BEAT_ADRINNA_MINE
	
StyCapitalGateText:
	text "Mount Mortar has"
	line "loomed over the"
	cont "Capital for ages."
	
	para "Who knew that we"
	line "were so close to"
	cont "rich ore seams!"
	
	para "Adrinna's digging"
	line "at a staggering"
	cont "pace."
	done
