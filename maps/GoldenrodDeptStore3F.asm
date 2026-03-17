GoldenrodDeptStore3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 12,  0, GOLDENROD_DEPT_STORE_2F, 1
	warp_event 15,  0, GOLDENROD_DEPT_STORE_4F, 2
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_JUMPTEXT, GoldenrodDeptStore3FDirectoryText

	def_object_events
	object_event  6,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_GOLDENROD_3F, -1
	object_event 12,  5, SPRITE_POKEMANIAC, SPRITEMOVEDATA_SPINRANDOM_FAST, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStore3FSuperNerdText, -1
	object_event  2,  5, SPRITE_ROCKER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStore3FRockerText, -1


GoldenrodDeptStore3FSuperNerdText:
	text "The attendants"
	line "here rent their"
	para "space. Isn't it"
	line "great?"
	para "The best vendors"
	line "get to stay!"
	done

GoldenrodDeptStore3FRockerText:
	text "My mom sold"
	line "part time here,"
	para "but she quit when"
	line "Silph made"
	para "everyone go"
	line "full time."
	done

GoldenrodDeptStore3FDirectoryText:
	text "Growing"
	line "Stronger!"

	para "3F Evolution"
	line "Stones"
	done
