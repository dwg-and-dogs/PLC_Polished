UnionCave1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  3, UNION_CAVE_B1F_NORTH, 2
	warp_event  3, 45, UNION_CAVE_B1F_SOUTH, 1
	warp_event 17, 43, ROUTE_33, 1

	def_coord_events

	def_bg_events
	bg_event 13, 21, BGEVENT_ITEM + GREAT_BALL, EVENT_UNION_CAVE_1F_HIDDEN_GREAT_BALL
	bg_event 15, 33, BGEVENT_ITEM + BIG_PEARL, EVENT_UNION_CAVE_1F_HIDDEN_BIG_PEARL
	bg_event  2, 32, BGEVENT_ITEM + PARALYZEHEAL, EVENT_UNION_CAVE_1F_HIDDEN_PARALYZEHEAL

	def_object_events
	strengthboulder_event 12, 38
	object_event  8, 31, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerScientistLowell, EVENT_BEAT_FALKNER
	object_event  8, 29, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnionHealerScript, -1
	object_event  6, 17, SPRITE_FIREBREATHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerFirebreatherRay, EVENT_BEAT_FALKNER
	object_event  6,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerScientistDennett,EVENT_BEAT_FALKNER
	
	itemball_event   3, 41, ESCAPE_ROPE, 1, EVENT_UNION_CAVE_1F_GREAT_BALL
	itemball_event   2,  8, X_ATTACK, 1, EVENT_UNION_CAVE_1F_X_ATTACK
	itemball_event   3, 28, SUPER_POTION, 1, EVENT_UNION_CAVE_1F_POTION
	itemball_event  12, 45, FULL_HEAL, 1, EVENT_UNION_CAVE_1F_AWAKENING
	fruittree_event 14, 40, FRUITTREE_UNION_CAVE, HOLLOW_ROCK, PAL_NPC_BLUE
	tmhmball_event   2, 14, TM_BULLDOZE, EVENT_ROUTE_39_TM_BULLDOZE 
	smashrock_event  3, 14 

GenericTrainerScientistLowell:
	generictrainer SCIENTIST, LOWELL, EVENT_BEAT_SCIENTIST_LOWELL, ScientistLowellSeenText, ScientistLowellBeatenText

	text "Poison type"
	line "#mon help"
	para "us leach the"
	line "precious metals."
	done

ScientistLowellSeenText:
	text "Hey, this is"
	line "dangerous!"
	done

ScientistLowellBeatenText:
	text "At least wear"
	line "goggles."
	done
	
GenericTrainerFirebreatherRay:
	generictrainer FIREBREATHER, RAY, EVENT_BEAT_FIREBREATHER_RAY, FirebreatherRaySeenText, FirebreatherRayBeatenText

	text "Fire #mon"
	line "smelt the metal."
	done

FirebreatherRaySeenText:
	text "Are you causing"
	line "trouble?"
	done

FirebreatherRayBeatenText:
	text "Hot hot!"
	done
	
GenericTrainerScientistDennett:
	generictrainer SCIENTIST, DENNETT, EVENT_BEAT_SCIENTIST_DENNETT, ScientistDennettSeenText, ScientistDennettBeatenText

	text "Electrolysis is"
	line "used to purify"
	cont "ores."
	done

ScientistDennettSeenText:
	text "A mine is no"
	line "place for a"
	cont "child."
	done

ScientistDennettBeatenText:
	text "Dynamite!"
	done

UnionHealerScript:
	faceplayer
	showtext .WantToHeal

	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic

	showtext .HealedPokemon
	end
	
.WantToHeal:
	text "It's tough work"
	line "in the mines."
	
	para "Let me get you"
	line "back in tip-top"
	cont "shape!"
	done

.HealedPokemon:
	text "Your #mon"
	line "were healed!"
	done
