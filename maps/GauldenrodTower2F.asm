GauldenrodTower2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 11,  1, GAULDENROD_TOWER_1F, 3
	warp_event  1, 11, GAULDENROD_TOWER_3F, 1



	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  0, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerAromaLadyBryony, EVENT_BEAT_SANDRA
	object_event  6,  7, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerAromaLadyRosa, EVENT_BEAT_SANDRA
	object_event  5,  7, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerAromaLadyPeony, EVENT_BEAT_SANDRA

	object_event  8,  1, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBirdKeeperVance, EVENT_BEAT_SANDRA
	object_event  2,  2, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerFirebreatherNed, EVENT_BEAT_SANDRA
	object_event 11, 11, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerVeteranFJoanne, EVENT_BEAT_SANDRA


GenericTrainerAromaLadyBryony:
	generictrainer PKMN_TRAINER_HF, BRYONY, EVENT_BEAT_AROMA_LADY_BRYONY, AromaLadyBryonySeenText, AromaLadyBryonyBeatenText

	text "I don't see how"
	line "this tower could"
	cont "be demolished."
	done

AromaLadyBryonySeenText:
	text "Welcome to our"
	line "tower. We honor"
	cont "the hearts of"
	cont "#mon here."
	done

AromaLadyBryonyBeatenText:
	text "Respectable."
	done

GenericTrainerAromaLadyRosa:
	generictrainer PKMN_TRAINER_HF, ROSA, EVENT_BEAT_AROMA_LADY_ROSA, AromaLadyRosaSeenText, AromaLadyRosaBeatenText

	text "This tower is how"
	line "people connect"
	cont "with #mon."
	done

AromaLadyRosaSeenText:
	text "Have you come to"
	line "see the Rainbow"
	cont "bird #mon?"
	done

AromaLadyRosaBeatenText:
	text "I see something"
	line "in you!"
	done

GenericTrainerAromaLadyPeony:
	generictrainer PKMN_TRAINER_HF, PEONY, EVENT_BEAT_AROMA_LADY_PEONY, AromaLadyPeonySeenText, AromaLadyPeonyBeatenText

	text "A contribution can"
	line "be made by even"
	para "the smallest"
	line "Clefairy."
	done

AromaLadyPeonySeenText:
	text "We find dignity in"
	line "all #mon."
	done

AromaLadyPeonyBeatenText:
	text "You have great"
	line "trust in your"
	cont "#mon."
	done

GenericTrainerBirdKeeperVance:
	generictrainer PKMN_TRAINER_HM, VANCE, EVENT_BEAT_BIRD_KEEPER_VANCE, BirdKeeperVanceSeenText, BirdKeeperVanceBeatenText

	text "I heard someone"
	line "organized against"
	cont "the Anarres elder."
	done

BirdKeeperVanceSeenText:
	text "Have you come to"
	line "stand in awe of"
	cont "Ho-Oh?"
	done

BirdKeeperVanceBeatenText:
	text "Your flow is"
	line "astounding."
	done

GenericTrainerFirebreatherNed:
	generictrainer FIREBREATHER, NED, EVENT_BEAT_FIREBREATHER_NED, FirebreatherNedSeenText, FirebreatherNedBeatenText

	text "We must turn away"
	line "from the Stadium!"
	done

FirebreatherNedSeenText:
	text "The bell at the"
	line "top of this tower"
	para "was forged from"
	line "intense heat. Can"
	cont "you handle it?"
	done

FirebreatherNedBeatenText:
	text "You are tempered."
	done

GenericTrainerVeteranFJoanne:
	generictrainer PKMN_TRAINER_HF, JOANNE, EVENT_BEAT_VETERANF_JOANNE, VeteranFJoanneSeenText, VeteranFJoanneBeatenText

	text "Sandra has been"
	line "trying to coax"
	para "the rainbow bird"
	line "#mon back to"
	cont "our roof."
	done

VeteranFJoanneSeenText:
	text "How deep is your"
	line "connection with"
	cont "your #mon?"
	done

VeteranFJoanneBeatenText:
	text "Indeed, you are"
	line "pure of heart."
	para "You should see"
	line "the Elder Sandra."
	done
