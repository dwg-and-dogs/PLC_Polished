UnionCaveB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event  5,  3, UNION_CAVE_B1F_SOUTH, 2

	def_coord_events

	def_bg_events
	bg_event  12, 16, BGEVENT_ITEM + CALCIUM, EVENT_UNION_CAVE_B2F_HIDDEN_CALCIUM
	bg_event  10, 29, BGEVENT_ITEM + ELIXIR, EVENT_UNION_CAVE_B2F_HIDDEN_ULTRA_BALL

	def_object_events
	object_event  16, 29, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, BASTIODON, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnionCaveBastiodon, EVENT_UNION_CAVE_B2F_FOSSIL
	object_event  17, 29, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, RAMPARDOS, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnionCaveRampardos, EVENT_UNION_CAVE_B2F_FOSSIL	
	object_event  7,  6, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerFirebreatherJay, EVENT_UNION_CAVE_B2F_FOSSIL ; 'ray rematch
	object_event  6,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerScientistLinden, EVENT_UNION_CAVE_B2F_FOSSIL ; 'LOWELL ' REMATCH 
	object_event 12, 12, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerScientistOskar,EVENT_UNION_CAVE_B2F_FOSSIL	; PL
	object_event  6, 24, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerHikerTimothy, EVENT_UNION_CAVE_B2F_FOSSIL ; PLACE 
	object_event 6, 30, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerFirebreatherOleg, EVENT_UNION_CAVE_B2F_FOSSIL ; PLACE 
	object_event 15, 29, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerRuin_maniacGlynn, EVENT_UNION_CAVE_B2F_FOSSIL; 'PETRY'

	itemball_event 14, 19, GEODE, 5, EVENT_UNION_CAVE_B2F_ELIXIR ; 
	itemball_event 15, 25, HYPER_POTION, 1, EVENT_UNION_CAVE_B2F_HYPER_POTION ; OK 
	itemball_event 16, 31, ABILITYPATCH, 5, EVENT_UNION_CAVE_B2F_ABILITY; 


	object_const_def
	const UNIONCAVEB2F_BASTIODON
	const UNIONCAVEB2F_RAMPARDOS

UnionCaveBastiodon:
	cry BASTIODON
	setevent EVENT_UNION_CAVE_B2F_FOSSIL
	loadwildmon BASTIODON, 25
	startbattle
	disappear UNIONCAVEB2F_BASTIODON
	disappear UNIONCAVEB2F_RAMPARDOS
	reloadmapafterbattle
	end
	
UnionCaveRampardos:
	cry RAMPARDOS
	setevent EVENT_UNION_CAVE_B2F_FOSSIL
	loadwildmon RAMPARDOS, 25
	startbattle
	disappear UNIONCAVEB2F_BASTIODON
	disappear UNIONCAVEB2F_RAMPARDOS
	reloadmapafterbattle
	end

GenericTrainerFirebreatherJay:
	generictrainer FIREBREATHER, JAY, EVENT_BEAT_FIREBREATHER_JAY, FirebreatherJaySeenText, FirebreatherJayBeatenText

	text "Boss Petry wants"
	line "to reach the end"
	cont "of this seam."
	done

FirebreatherJaySeenText:
	text "You again?"
	line "We won't be"
	para "stopped so easy"
	line "this time!"
	done

FirebreatherJayBeatenText:
	text "Boss Petry wants"
	line "to reach the end"
	cont "of this seam."
	done

GenericTrainerFirebreatherOleg:
	generictrainer FIREBREATHER, OLEG, EVENT_BEAT_FIREBREATHER_OLEG, FirebreatherOlegSeenText, FirebreatherOlegBeatenText

	text "Lost my cool."
	line "Petry is up"
	para "ahead, he will"
	line "not be happy"
	para "that we were"
	line "battling."
	done

FirebreatherOlegSeenText:
	text "I'm focused now,"
	line "you won't beat"
	cont "me!"
	done

FirebreatherOlegBeatenText:
	text "Lost my cool."
	line "Petry is up"
	para "ahead, he will"
	line "not be happy"
	para "that we were"
	line "battling."
	done

GenericTrainerScientistLinden:
	generictrainer SCIENTIST, LINDEN, EVENT_BEAT_SCIENTIST_LINDEN, ScientistLindenSeenText, ScientistLindenBeatenText

	text "Failed to control"
	line "for my own"
	cont "incompetence."
	done

ScientistLindenSeenText:
	text "Calculations say"
	line "I have time for"
	cont "a battle!"
	
	para "I'll leech your"
	line "#mon HP like"
	cont "I leech metals!"
	done

ScientistLindenBeatenText:
	text "Failed to control"
	line "for my own"
	cont "incompetence."
	done

GenericTrainerScientistOskar:
	generictrainer SCIENTIST, OSKAR, EVENT_BEAT_SCIENTIST_OSKAR, ScientistOskarSeenText, ScientistOskarBeatenText

	text "I need to turn"
	line "down my voltage."
	done

ScientistOskarSeenText:
	text "Can you handle"
	line "your potential?"
	done
	
ScientistOskarBeatenText:
	text "I need to turn"
	line "down my voltage."
	done

GenericTrainerHikerTimothy:
	generictrainer HIKER, TIMOTHY, EVENT_BEAT_HIKER_TIMOTHY, HikerTimothySeenText, HikerTimothyBeatenText

	text "Ha, you were an"
	line "immovable object!"
	done

HikerTimothySeenText:
	text "I've dug this"
	line "tunnel, you'd"
	para "barely be a"
	line "bump to me!"
	
	para "I'm an unstop-"
	line "able force!"
	done

HikerTimothyBeatenText:
	text "Ha, you were an"
	line "immovable object!"
	done


GenericTrainerRuin_maniacGlynn:
	generictrainer RUIN_MANIAC, GLYN, EVENT_BEAT_RUIN_MANIAC_GLYN, RuinManiacGlynnSeenText, RuinManiacGlynnBeatenText

	text "Uff. Maybe I'm"
	line "too old for this"
	cont "stuff."
	
	para "What am I fight-"
	line "ing for, anyway?"
	
	para "To make a few "
	line "scars in the gro-"
	cont "und? My poor"
	cont "#mon. I will"
	
	para "release them. You"
	line "can battle one,"
	
	para "but the other will"
	line "probably run away."
	
	para "It's clear you"
	line "would be a better"
	cont "trainer than me."
	done

RuinManiacGlynnSeenText:
	text "You! You're the"
	line "one that threw"
	para "off our opera-"
	line "tion last time!"
	
	para "I'm not taking"
	line "it easy on you"
	cont "now. If I can't"
	
	para "deal with tres-"
	line "passers, I should"
	cont "just give it up."
	
	para "So! Battle me!"
	done

RuinManiacGlynnBeatenText:
	text "Uff. Maybe I'm"
	line "too old for this"
	cont "stuff."
	
	para "What am I fight-"
	line "ing for, anyway?"
	
	para "To make a few "
	line "scars in the gro-"
	cont "und? My poor"
	cont "#mon. I will"
	
	para "release the"
	line "youngest two."
	
	para "They deserve a "
	line "chance."
	
	para "If you battle"
	line "one, the other"
	para "will probably be"
	line "scared and flee."
	
	para "It's clear you"
	line "would be a better"
	cont "trainer than me."
	done
