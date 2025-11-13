UnionCaveB1FNorth_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3, 11, RUINS_OF_ALPH_OUTSIDE, 5
	warp_event 15, 23, UNION_CAVE_1F, 1

	def_coord_events

	def_bg_events
	bg_event 14, 10, BGEVENT_ITEM + X_SPEED, EVENT_UNION_CAVE_B1F_NORTH_HIDDEN_X_SPEED
	bg_event  8, 22, BGEVENT_ITEM + REVIVE, EVENT_UNION_CAVE_B1F_NORTH_HIDDEN_REVIVE

	def_object_events
	object_event  9, 22, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerHikerLeonard, EVENT_BEAT_FALKNER
	object_event 11, 14, SPRITE_FIREBREATHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerFirebreatherOtis, EVENT_BEAT_FALKNER
	object_event  4, 10, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerRuin_maniacPetry, EVENT_BEAT_FALKNER
	tmhmball_event  5, 22, TM_SWIFT, EVENT_UNION_CAVE_B1F_NORTH_TM_SWIFT
	tmhmball_event  7, 10, TM_ROCK_SMASH, EVENT_UNION_CAVE_B1F_NORTH_X_DEFEND ;brick break
	pokemon_event  5, 10, RAMPARDOS, -1, -1, PAL_NPC_BLUE, RampardosText, EVENT_BEAT_FALKNER
	pokemon_event  6, 10, BASTIODON, -1, -1, PAL_NPC_BROWN, BastiodonText, EVENT_BEAT_FALKNER
	itemball_event  7,  7, HARD_STONE, 1, EVENT_UNION_CAVE_HARD_STONE
	fruittree_event 13, 4, FRUITTREE_UNION_CAVE_2, HOLLOW_ROCK, PAL_NPC_BLUE

GenericTrainerHikerLeonard:
	generictrainer HIKER, LEONARD, EVENT_BEAT_HIKER_LEONARD, HikerLeonardSeenText, HikerLeonardBeatenText

	text "The boss got"
	line "his start with"
	para "the Underground"
	line "in Sinnoh."
	done

HikerLeonardSeenText:
	text "A battle? I"
	line "would oblige!"
	done

HikerLeonardBeatenText:
	text "Guess I can't"
	line "work, now..."
	done

GenericTrainerFirebreatherOtis:
	generictrainer FIREBREATHER, OTIS, EVENT_BEAT_FIREBREATHER_OTIS, FireBreatherOtisSeenText, FireBreatherOtisBeatenText

	text "My greatest wish?"
	line "See the fire-"
	para "steel type #-"
	line "mon that lives"
	cont "in volcanos."
	done

FireBreatherOtisSeenText:
	text "Not one more"
	line "step!"
	done

FireBreatherOtisBeatenText:
	text "The boss is"
	line "ahead. He's not"
	para "happy that we"
	line "were battling."
	done

GenericTrainerRuin_maniacPetry:
	generictrainer RUIN_MANIAC, PETRY, EVENT_BEAT_RUIN_MANIAC_PETRY, RuinManiacPetrySeenText, RuinManiacPetryBeatenText

	text "Some group hara-"
	line "ssed us last"
	para "week. We just got"
	line "back online when"
	cont "you got here."
	done

RuinManiacPetrySeenText:
	text "A mine is no"
	line "place for a"
	cont "child."
	done

RuinManiacPetryBeatenText:
	text "Some group hara-"
	line "ssed us last"
	para "week. We just got"
	line "back online when"
	cont "you got here."
	done
	
RampardosText:
	text "Wraaar!"
	done
	
BastiodonText:
	text "Munch..."
	line "Munch..."
	
	para "It appears to"
	line "be eating rocks."
	done
	