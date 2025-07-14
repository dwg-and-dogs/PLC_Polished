LandingBarbeau_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 3, 8, TRADERS_LANDING, 1


	def_coord_events



	def_bg_events



	def_object_events
	object_event 3, 3, SPRITE_KENSEY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, KenseyOfficeKenseyText, EVENT_BEAT_KENSEY_PORT
	object_event 2, 3, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED,OBJECTTYPE_COMMAND, jumptext, KenseyOfficeSailorText, EVENT_BEAT_KENSEY_PORT
	pokemon_event  1,  3, MACHAMP, -1, -1, PAL_NPC_RED, SailorMachampText, EVENT_BEAT_KENSEY_PORT
	pokemon_event  4,  3, VAPOREON, -1, -1, PAL_NPC_BLUE, KenseyVaporeonText, EVENT_BEAT_KENSEY_PORT

	object_const_def

KenseyOfficeKenseyText:
	text "Yes, Sir! We are"
	line "working on a raft"
	para "to guide the ship"
	line "to shore!"
	
	para "Just a bit more"
	line "time, please."
	done

KenseyOfficeSailorText:
	text "It's taking too"
	line "long! I've alrea-"
	para "dy sent mail for"
	line "another ship."
	
	para "The safety of the"
	line "port depends on"
	cont "you, Kensey."
	done

SailorMachampText:
	text "Maa..Cha!"
	done

KenseyVaporeonText:
	text "Tidechaser:"
	line "Vaaa!"
	done
