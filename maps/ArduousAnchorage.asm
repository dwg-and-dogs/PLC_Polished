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
	object_event 26, 25, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, OVERQWIL, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, Overqwil1, EVENT_ANCHORAGE_OVERQWIL_1
	object_event 30, 32, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, OVERQWIL, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, Overqwil2, EVENT_ANCHORAGE_OVERQWIL_2
	object_event 11, 12, SPRITE_NOMAD_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, AnchorageNomadMText, -1
	object_event  8,  7, SPRITE_NOMAD_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, AnchorageNomadFText, -1
	object_event 30, 20, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSailorEugene, EVENT_BEAT_KENSEY_PORT
	object_event 31, 18, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSailorTerrell, EVENT_BEAT_KENSEY_PORT
	object_event 30, 16, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSailorKent, EVENT_BEAT_KENSEY_PORT
	object_event 31, 14, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSailorErnest, EVENT_BEAT_KENSEY_PORT
	
	object_const_def
	const ANCHORAGE_OVERQWIL_1
	const ANCHORAGE_OVERQWIL_2
	
	
AnchorageNomadMText:
	text "Oh, you're not a"
	line "brigader or an"
	cont "outsider."
	
	para "Watch out, there"
	line "are a few traps"
	para "in front of the"
	line "port..."
	done
	
AnchorageNomadFText:
	text "Where'd the storm"
	line "come from?" 
	para "The skies were"
	line "just clear."
	done

Overqwil1:
	opentext
	writetext OverqwilText
	waitbutton
	closetext

	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon OVERQWIL, 30
	startbattle
	ifequal $1, .Continue
	disappear ANCHORAGE_OVERQWIL_1
.Continue:
	reloadmapafterbattle
	end

Overqwil2:
	opentext
	writetext OverqwilText
	waitbutton
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon OVERQWIL, 30
	startbattle
	ifequal $1, .Continue
	disappear ANCHORAGE_OVERQWIL_2
.Continue:
	reloadmapafterbattle
	end


OverqwilText:
	text "Baruu!"
	done

GenericTrainerSailorEugene:
	generictrainer SAILOR, EUGENE, EVENT_BEAT_SAILOR_EUGENE, SailorEugeneSeenText, SailorEugeneBeatenText

	text "I should've"
	line "mutinied a long"
	cont "time ago!"
	done

SailorEugeneBeatenText:
	text "Too clever."
	done
	
SailorEugeneSeenText:
	text "Those traps are"
	line "something else!"
	done

GenericTrainerSailorTerrell:
	generictrainer SAILOR, TERRELL, EVENT_BEAT_SAILOR_TERRELL, SailorTerrellSeenText, SailorTerrellBeatenText

	text "I should've never"
	line "left home."
	done

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

	text "Do first mates"
	line "have to go down"
	cont "with the ship?"
	done

SailorKentBeatenText:
	text "I'll never make"
	line "admiral!"
	done
	
SailorKentSeenText:
	text "Time to prove"
	line "my worth!"
	done
	
GenericTrainerSailorErnest:
	generictrainer SAILOR, ERNEST, EVENT_BEAT_SAILOR_ERNEST, SailorErnestSeenText, SailorErnestBeatenText

	text "The colonel has a"
	line "sparky persona."
	
	para "He gives us a"
	line "Surge of energy"
	cont "if morale is low."
	done

SailorErnestBeatenText:
	text "Tch. The colonel"
	line "will wreck you."
	done
	
SailorErnestSeenText:
	text "I'm the last one,"
	line "you're through!"
	done
