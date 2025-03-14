LakeOfRageHiddenPowerHouse_MapScriptHeader:
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 1
	warp_event  3,  7, LAKE_OF_RAGE, 1


	def_coord_events



	def_bg_events
	bg_event  5,  1, BGEVENT_JUMPSTD, radio2
	bg_event  6,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf


	def_object_events
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BasculegionBlessingScript, -1
	object_event  3,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptext, PryceCabinText2, -1

	object_const_def

PryceCabinText2:
	text "To Kurt"
	line "From Pryce"
	
	para "I'm sorry that so"
	line "few Azaleans came"
	cont "to the ceremony."
	
	para "And I hear you"
	line "are more agitated"
	cont "every day."
	
	para "Please, remember"
	line "that you shape"
	cont "<PLAYER>."
	
	para "You can't shape"
	line "the whole world."
	done

BasculegionBlessingScript:
	opentext
	writetext ReadBasculegionTextQuestion
	yesorno
	iffalse_jumpopenedtext NoReadBasculegionText
	writetext BasculegionBlessingText
	waitbutton
	endtext
	done

NoReadBasculegionText:
	text "Some other time."
	done
	
ReadBasculegionTextQuestion:
	text "It's a heavy tome"
	line "with a picture of"
	cont "a red fish. Read?"
	done
	
BasculegionBlessingText:
	text "To <PLAYER>."
	line "From Pryce."

	para "Winter winds"
	line "remind us to be"
	cont "like Basculin."
	
	para "In spring, they"
	line "awake tethered to"
	cont "riverbeds,"
	para "wrapped in silt"
	line "and sticks."
	
	para "They unwrap to"
	line "find mysterious"
	cont "salty scales and"
	cont "ravaged fins."

	para "Then in summer,"
	line "to the ocean with"
	cont "its dangers and"
	cont "opportunities."
	
	para "In fall, instinct"
	line "compels them to"
	para "fight the current"
	line "and climb falls"
	cont "to that familiar"
	cont "riverbed."
	
	para "In the icy river"
	line "they wrap their"
	cont "eggs like gifts,"
	
	para "and lay down for"
	line "a final rest."
	
	para "They will never"
	line "see their gifts"
	cont "received by the"
	cont "next generations."
	
	para "They must hope an"
	line "inheritance of an"
	cont "orderly nest and"
	para "proof of scaled"
	line "waterfalls will"
	cont "reassure the"
	para "young ones of"
	line "their magnificent"
	cont "capability."
	done
