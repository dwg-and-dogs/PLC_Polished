EcruteakMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ECRUTEAK_CITY, 9
	warp_event  3,  7, ECRUTEAK_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	mart_clerk_event  1,  3, MARTTYPE_STANDARD, MART_ECRUTEAK
	object_event  5,  2, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakMartSuperNerdText, -1
	object_event  6,  6, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakMartGrannyText, -1

EcruteakMartSuperNerdText:
	text "Have you seen the"
	line "new show at the"
	cont "Dance Theatre?"
	done

EcruteakMartGrannyText:
	text "Those Silph execs"
	line "must be so wise"
	cont "to be so rich."
	done
