ArduousAnchorage_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 6, 25, PHANTOM_FJORD, 1
	warp_event 31, 11, LANDING_DOCKS, 1


	def_coord_events



	def_bg_events
	bg_event  4,  5, BGEVENT_ITEM + ENERGY_ROOT, EVENT_ANCHORAGE_HIDDEN_1
	bg_event 13, 13, BGEVENT_ITEM + REVIVAL_HERB, EVENT_ANCHORAGE_HIDDEN_2


	def_object_events
	object_event 26, 25, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, OVERQWIL, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Overqwil1, EVENT_ANCHORAGE_OVERQWIL_1
	object_event 30, 32, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, OVERQWIL, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Overqwil2, EVENT_ANCHORAGE_OVERQWIL_2
	object_event 11, 12, SPRITE_NOMAD_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, AnchorageNomadMText, EVENT_BEAT_KENSEY_PORT
	object_event  8,  7, SPRITE_NOMAD_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, AnchorageNomadFText, EVENT_BEAT_KENSEY_PORT
	object_event 30, 20, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSailorEugene, -1
	object_event 31, 18, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSailorTerrell, -1
	object_event 30, 16, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSailorKent, -1	
	object_event 31, 14, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSailorErnest, -1	
	
	object_const_def
	const ANCHORAGE_OVERQWIL_1
	const ANCHORAGE_OVERQWIL_2
	
	
AnchorageNomadMText:
	text "Oh, you're not a"
	line "brigader or an"
	cont "outsider."
	
	para "Watch out, there"
	line "are a few traps"
	cont "in front of the"
	cont "port..."
	done
	
AnchorageNomadFText:
	text "Where did this"
	line "rainstorm come"
	para "from? Skies were"
	line "clear just an"
	cont "hour ago."
	done

Overqwil1:
	opentext
	writetext OverqwilText
	closetext
	setevent EVENT_ANCHORAGE_OVERQWIL_1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon OVERQWIL, 30
	startbattle
	disappear ANCHORAGE_OVERQWIL_1
	reloadmapafterbattle
	end
	
Overqwil2:
	opentext
	writetext OverqwilText
	closetext
	setevent EVENT_ANCHORAGE_OVERQWIL_2
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon OVERQWIL, 30
	startbattle
	disappear ANCHORAGE_OVERQWIL_2
	reloadmapafterbattle
	end

OverqwilText:
	text "Baruu!"
	done

GenericTrainerSailorEugene:
	generictrainer SAILOR, EUGENE, EVENT_BEAT_SAILOR_EUGENE, SailorEugeneSeenText, SailorEugeneBeatenText

SailorEugeneBeatenText:
	text "Too clever."
	done
	
SailorEugeneSeenText:
	text "Hey, how did you"
	line "get past the"
	cont "traps?"
	done

GenericTrainerSailorTerrell:
	generictrainer SAILOR, TERRELL, EVENT_BEAT_SAILOR_TERRELL, SailorTerrellSeenText, SailorTerrellBeatenText

SailorTerrellBeatenText:
	text "Sailing days are"
	line "long and boring."
	done
	
SailorTerrellSeenText:
	text "Finally, some"
	line "excitement!"
	done

GenericTrainerSailorKent:
	generictrainer SAILOR, KENT, EVENT_BEAT_SAILOR_KENT, SailorKentSeenText, SailorKentBeatenText

SailorKentBeatenText:
	text "I'll never make"
	line "admiral at this"
	cont "rate."
	done
	
SailorKentSeenText:
	text "Time to prove"
	line "my mettle!"
	done
	
GenericTrainerSailorErnest:
	generictrainer SAILOR, ERNEST, EVENT_BEAT_SAILOR_ERNEST, SailorErnestSeenText, SailorErnestBeatenText

SailorErnestBeatenText:
	text "Tch. The colonel"
	line "will wreck you."
	done
	
SailorErnestSeenText:
	text "I'm the last one,"
	line "you're through!"
	done
