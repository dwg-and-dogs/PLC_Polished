GauldenrodTower2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 11,  1, GAULDENROD_TOWER_1F, 3
	warp_event  1, 11, GAULDENROD_TOWER_3F, 1



	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  0, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerAromaLadyBryony, EVENT_BEAT_SANDRA
	object_event  6,  7, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerAromaLadyRosa, EVENT_BEAT_SANDRA
	object_event  5,  7, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerAromaLadyPeony, EVENT_BEAT_SANDRA

	object_event  8,  1, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBirdKeeperVance, EVENT_BEAT_SANDRA
	object_event  2,  2, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerFirebreatherNed, EVENT_BEAT_SANDRA
	object_event 11, 11, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerVeteranFJoanne, EVENT_BEAT_SANDRA


GenericTrainerAromaLadyBryony:
	generictrainer AROMA_LADY, BRYONY, EVENT_BEAT_AROMA_LADY_BRYONY, AromaLadyBryonySeenText, AromaLadyBryonyBeatenText

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
	text "Respectable…"
	done

GenericTrainerAromaLadyRosa:
	generictrainer AROMA_LADY, ROSA, EVENT_BEAT_AROMA_LADY_ROSA, AromaLadyRosaSeenText, AromaLadyRosaBeatenText

	text "This tower is how"
	line "people learn to"
	cont "connect with"
	cont "#mon. How will"
	cont "they connect if"
	cont "it is gone?"
	done

AromaLadyRosaSeenText:
	text "Have you come to"
	line "see the Rainbow"
	cont "bird #mon?"
	done

AromaLadyRosaBeatenText:
	text "I see something"
	line "in you…"
	done

GenericTrainerAromaLadyPeony:
	generictrainer AROMA_LADY, PEONY, EVENT_BEAT_AROMA_LADY_PEONY, AromaLadyPeonySeenText, AromaLadyPeonyBeatenText

	text "A contribution can"
	line "be made by even"
	cont "the smallest"
	cont "Jigglypuff."
	done

AromaLadyPeonySeenText:
	text "We find dignity in"
	line "all #mon."
	cont "Do you?"
	done

AromaLadyPeonyBeatenText:
	text "You have great"
	line "trust in your"
	cont "#mon."
	done




GenericTrainerBirdKeeperVance:
	generictrainer BIRD_KEEPER, VANCE1, EVENT_BEAT_BIRD_KEEPER_VANCE, BirdKeeperVanceSeenText, BirdKeeperVanceBeatenText

	text "I heard that you"
	line "organized against"
	cont "the Anarres elder."
	cont "He was getting too"
	cont "power-hungry. I"
	cont "hope you will join"
	cont "our movement."
	done

BirdKeeperVanceSeenText:
	text "When you let your"
	line "feelings flow"
	cont "through you, you"
	cont "can get through"
	cont "anything."
	done

BirdKeeperVanceBeatenText:
	text "Your flow is"
	line "astounding."
	done

GenericTrainerFirebreatherNed:
	generictrainer FIREBREATHER, NED, EVENT_BEAT_FIREBREATHER_NED, FirebreatherNedSeenText, FirebreatherNedBeatenText

	text "If people learn to"
	line "reject the stadium"
	cont "as a distraction"
	cont "then they will see"
	cont "how their attent-"
	cont "ions have been put"
	cont "to awful things."
	done

FirebreatherNedSeenText:
	text "The bell at the"
	line "top of this tower"
	cont "was forged from"
	cont "intense heat. Can"
	cont "you handle it?"
	done

FirebreatherNedBeatenText:
	text "You are tempered."
	done

GenericTrainerVeteranFJoanne:
	generictrainer VETERANF, JOANNE, EVENT_BEAT_VETERANF_JOANNE, VeteranFJoanneSeenText, VeteranFJoanneBeatenText

	text "Sandra has been"
	line "trying to coax the"
	cont "rainbow bird"
	cont "#mon back to"
	cont "our roof for some"
	cont "time."
	done

VeteranFJoanneSeenText:
	text "My colleagues say"
	line "that you have a"
	cont "strong connection"
	cont "to your #MON."
	done

VeteranFJoanneBeatenText:
	text "Indeed, you are"
	line "pure of heart…"
	cont "you should see"
	cont "the Elder Sandra."
	done