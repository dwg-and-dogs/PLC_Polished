BrassTower19F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  6, 15, BRASS_TOWER_12F, 2
	warp_event  7,  1, BRASS_TOWER_2F, 2

	def_coord_events



	def_bg_events
	bg_event 7, 0, BGEVENT_READ, BrassTower19FWarpMenu


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

BrassTower19FWarpMenu:
	opentext
	writetext BrassTower19FAscendText
	yesorno
	iffalse_jumpopenedtext BT19F_NoAscendText
	writetext BT19F_AscendingText
	waitbutton
	closetext
	clearevent EVENT_BEAT_BOBESH_TOWER
	clearevent EVENT_BEAT_KENSEY_TOWER
	clearevent EVENT_BEAT_ADRINNA_TOWER
	clearevent EVENT_ACCEPTED_ADRINNA
	clearevent EVENT_FIRST_LIGHTNING_ROOF
	clearevent EVENT_BEAT_MEJIMI
	clearevent EVENT_YES_ADRINNA_BATTLE_MEJIMI
	clearevent EVENT_YES_ADRINNA_BATTLE_KURT
	setevent EVENT_LIGHTNING_1
	setevent EVENT_LIGHTNING_2
	setevent EVENT_LIGHTNING_3
	clearevent EVENT_ROOF_LUGIA
	clearevent EVENT_ROOF_HOOH
	setevent EVENT_ROOF_JOLTEON
	clearevent EVENT_CRADLE_CUTSCENE
	setevent EVENT_CRADLE_CUTSCENE_KURT
	setevent EVENT_CRADLE_CUTSCENE_ADRINNA
	warp BRASS_TOWER_2F, 8, 3 
	end 

BrassTower19FAscendText:
	text "Ascend to the"
	line "top floors?"
	done

BT19F_NoAscendText:
	text "Not ascending."
	done

BT19F_AscendingText:
	text "The future is"
	line "watching..."
	done
