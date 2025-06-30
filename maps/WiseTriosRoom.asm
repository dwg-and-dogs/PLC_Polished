WiseTriosRoom_MapScriptHeader:
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event  7,  4, BELLCHIME_TRAIL, 1
	warp_event  7,  5, BELLCHIME_TRAIL, 2
	warp_event  1,  4, ECRUTEAK_HOUSE, 5

	def_coord_events


	def_bg_events


	def_object_events
	object_event  5,  2, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, WiseTriosRoomText1, -1
	object_event  4,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, WiseTriosRoomText3, -1

	object_const_def


WiseTriosRoomText1:
	text "Very few have"
	line "come this far"
	cont "to learn our"
	cont "history."
	done

WiseTriosRoomText3:
	text "You look very"
	line "familiar... Like"
	cont "I have seen your"
	cont "face in a mural?"
	done
