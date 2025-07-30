Route38_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 35,  8, ROUTE_38_ECRUTEAK_GATE, 1
	warp_event 35,  9, ROUTE_38_ECRUTEAK_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 33,  7, BGEVENT_JUMPTEXT, Route38SignText


	def_object_events
	object_event  9,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerPokefanMRobert, -1
	object_event  7,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerPokefanMCarter, -1

	object_event 17, 14, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerPokefanFRuth, -1
	object_event 17,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerPokefanFJaime, -1

	tmhmball_event 21, 12, TM_TOXIC, EVENT_GOT_TM06_TOXIC
	object_event 30,  9, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerOfficerMDirk, -1

GenericTrainerPokefanMRobert:
	generictrainer POKEFANM, JOSHUA, EVENT_BEAT_POKEFANM_JOSHUA, PokefanMJoshuaSeenText, PokefanMJoshuaBeatenText

PokefanMJoshuaBeatenText:
	text "Sorry, thought"
	line "you were with the"
	cont "Moomoo Farms."
	done

PokefanMJoshuaSeenText:
	text "Hey, release your"
	line "Miltanks!"
	done



GenericTrainerPokefanMCarter:
	generictrainer POKEFANM, CARTER, EVENT_BEAT_POKEFANM_CARTER, PokefanMCarterSeenText, PokefanMCarterBeatenText

PokefanMCarterBeatenText:
	text "I heard that"
	line "Moomoo cows have"
	cont "to wear these"
	cont "big, metal hats."
	done
	
PokefanMCarterSeenText:
	text "We're on a"
	line "stakeout!"
	done


GenericTrainerPokefanFRuth:
	generictrainer POKEFANF, RUTH, EVENT_BEAT_POKEFANF_RUTH, PokefanFRuthSeenText, PokefanFRuthBeatenText

PokefanFRuthBeatenText:
	text "The farm keeps"
	line "expanding. Soon,"
	para "they'll need this"
	line "Route too."
	done

PokefanFRuthSeenText:
	text "Battle me? We've"
	line "been out here for"
	cont "ages now."
	done

GenericTrainerPokefanFJaime:
	generictrainer POKEFANF, JAIME, EVENT_BEAT_POKEFANF_JAIME, PokefanFJaimeSeenText, PokefanFJaimeBeatenText

PokefanFJaimeBeatenText:
	text "Where do you"
	line "suppose all the"
	cont "Tauros go?"
	done

PokefanFJaimeSeenText:
	text "Meat is murder!"
	done

GenericTrainerOfficerMDirk:
	generictrainer OFFICERM, DIRK, EVENT_BEAT_OFFICER_DIRK, OfficerDirkSeenText, OfficerDirkBeatenText

OfficerDirkBeatenText:
	text "Ah, just a good"
	line "kid from Azalea."	
	cont "Carry on."
	done

OfficerDirkSeenText:
	text "Halt! No"
	line "trespassing!"
	done
	

Route38SignText:
	text "No trespassing!"
	line "-MooMoo Farms"
	done

