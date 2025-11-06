RuinsOfAlphHoOhItemRoom_MapScriptHeader: ; HEATRAN 
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_HO_OH_CHAMBER, 3
	warp_event  4,  9, RUINS_OF_ALPH_HO_OH_CHAMBER, 3


	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  5,  1, BGEVENT_JUMPTEXT, RuinsofAlphStatueText

	def_object_events
	object_event  3,  3, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, PumiceHarpScript, EVENT_GOT_PUMICE_HARP

	itemball_event  2,  6, ODD_SOUVENIR, 1, EVENT_PICKED_UP_SUN_STONE_FROM_HO_OH_ITEM_ROOM
	tmhmball_event  5,  6, TM_EARTHQUAKE, EVENT_PICKED_UP_MOON_STONE_FROM_HO_OH_ITEM_ROOM
	itemball_event  2,  4, MAGMARIZER, 1, EVENT_PICKED_UP_LIFE_ORB_FROM_HO_OH_ITEM_ROOM
	itemball_event  5,  4, SACRED_ASH, 1, EVENT_PICKED_UP_CHARCOAL_FROM_HO_OH_ITEM_ROOM


	object_const_def
	const HOOH_ITEM_ROOM_STATUE


PumiceHarpScript:
	opentext
	writetext HoldingAHarpText
	yesorno
	iffalse_jumpopenedtext LeaveItAloneText
	waitbutton
	closetext
	pause 10
	showemote EMOTE_SHOCK, PLAYER, 10
	disappear HOOH_ITEM_ROOM_STATUE
	setevent EVENT_GOT_PUMICE_HARP
	opentext
	writetext StatueDissolvesText
	waitbutton
	verbosegivekeyitem PUMICE_HARP
	closetext
	end
	
LeaveItAloneText:
	text "Better leave it"
	line "alone."
	done
	
	
HoldingAHarpText:
	text "An eerie statue"
	line "of a Kimono girl"
	cont "carved from"
	cont "porous pumice."
		
	para "She has a shining"
	line "metal harp."
		
	para "Pluck the"
	line "strings?"
	done

StatueDissolvesText:
	text "The harp's music"
	line "resonates with"
	cont "the pumice."
	
	para "She's crumbled"
	line "to fine ash,"
	para "and only the harp"
	line "remains."
	done
