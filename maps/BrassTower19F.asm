BrassTower19F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  6, 15, BRASS_TOWER_12F, 2
	warp_event  7,  1, BRASS_TOWER_2F, 2

	def_coord_events



	def_bg_events
; todo add something that warps you to the next room and resets events 


	def_object_events
	pokemon_event  1, 10, 	FLAREON, 	-1, -1, PAL_NPC_SILVER, BrassTower19FFlareonText, EVENT_BRASS_TOWER_FLAREON
	pokemon_event  12,  6, 	VAPOREON, 	-1, -1, PAL_NPC_SILVER, BrassTower19FVaporeonText, EVENT_BRASS_TOWER_VAPOREON
	pokemon_event  1,  2, 	JOLTEON, 	-1, -1, PAL_NPC_SILVER, BrassTower19FJolteonText, EVENT_BRASS_TOWER_JOLTEON



BrassTower19FFlareonText:
	text "Flareon stands"
	line "guard intently."
	
	para "Or is it just an"
	line "apparition?"
	done
	
BrassTower19FVaporeonText:
	text "Vaporeon stands"
	line "guard intently."

	para "Or is it just an"
	line "apparition?"
	done
	
BrassTower19FJolteonText:
	text "Jolteon stands"
	line "guard intently."

	para "Or is it just an"
	line "apparition?"
	done
