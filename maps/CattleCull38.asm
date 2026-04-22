CattleCull38_MapScriptHeader:

	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 35,  8, CAPITAL_CULL_GATE, 1
	warp_event 35,  9, CAPITAL_CULL_GATE, 2


	def_coord_events



	def_bg_events
	bg_event 32,  7, BGEVENT_JUMPTEXT, CattleCull38SignText
	bg_event  25, 9, BGEVENT_ITEM + ELIXIR, EVENT_CC38_HIDDEN_1
	bg_event  15, 5, BGEVENT_ITEM + LEPPA_BERRY, EVENT_CC38_HIDDEN_2


	def_object_events 
	object_event 28,  10, SPRITE_NOMAD_M, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerNomadMJoel, -1
	object_event 17,   5, SPRITE_NOMAD_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerNomadMGlenn, -1
	object_event 13,  9, SPRITE_NOMAD_F, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerNomadFReina, -1
	object_event  4,  9, SPRITE_NOMAD_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerNomadFAlina, -1


	object_const_def


CattleCull38SignText:
	text "Emperor's Road:"
	line "Follow through"
	para "Cattle Cliffs to"
	line "Trader's Landing"
	done
	
GenericTrainerNomadMJoel:
	generictrainer NOMAD_M, NOMAD_M_JOEL, EVENT_BEAT_NOMAD_M_JOEL, NomadJoelSeenText, NomadJoelBeatenText

	text "Each spring, we"
	line "guided our herds"
	para "along the cliffs"
	line "to the shores."
	done

NomadJoelSeenText:
	text "The Emperor can't"
	line "keep us fenced in"
	cont "forever!"
	done

NomadJoelBeatenText:
	text "We won't be kept"
	line "in like cattle!"
	done

GenericTrainerNomadMGlenn:
	generictrainer NOMAD_M, NOMAD_M_GLENN, EVENT_BEAT_NOMAD_M_GLENN, NomadGlennSeenText, NomadGlennBeatenText

	text "The Emperor's ships"
	line "patrol our seas!"
	done

NomadGlennSeenText:
	text "I've climbed these"
	line "cliffs hundreds"
	cont "of times!"
	done

NomadGlennBeatenText:
	text "I'm running out"
	line "of road."
	done


GenericTrainerNomadFReina:
	generictrainer NOMAD_F, NOMAD_F_REINA, EVENT_BEAT_NOMAD_F_REINA, NomadReinaSeenText, NomadReinaBeatenText

	text "Close your eyes,"
	line "let the wind"
	cont "guide you!"
	done
	
NomadReinaSeenText:
	text "Here's a dilemma:"

	para "What good is a"
	line "map to a changing"
	cont "landscape?"
	done

NomadReinaBeatenText:
	text "Ha! You've got"
	line "the wind behind"
	cont "your back!"
	done


GenericTrainerNomadFAlina:
	generictrainer NOMAD_F, NOMAD_F_ALINA, EVENT_BEAT_NOMAD_F_ALINA, NomadAlinaSeenText, NomadAlinaBeatenText

	text "Older members"
	line "stayed back when"
	para "the trips to the"
	line "islands became"
	cont "too taxing."

	para "They tended the"
	line "crops and awaited"
	para "our return with"
	line "the rewards from"
	cont "our hunt."
	done

NomadAlinaSeenText:
	text "These cliffs were"
	line "for our elders"
	para "to take shelter"
	line "at when they were"
	cont "done exploring."
	
	para "But I've still"
	line "got my spirit!"
	done

NomadAlinaBeatenText:
	text "I see the spirit"
	line "in you!"
	done
