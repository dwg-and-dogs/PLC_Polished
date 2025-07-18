MahoganyMart1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, MAHOGANY_TOWN, 1
	warp_event  4,  7, MAHOGANY_TOWN, 1


	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_MAHOGANY_2, EVENT_MAHOGANY_MART_OWNERS
	object_event  4,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyMartGrampsText, -1



MahoganyMartGrampsText:
	text "We had a few good"
	line "years while the"
	para "Silph engineers"
	line "dug the canal."

	para "Now that the lake"
	line "is empty, we get"
	para "by selling stones"
	line "from the rocks."
	done
