AnarresTower2F_MapScriptHeader: ; should be like  "BurnedTowerB1F_MapScriptHeader"
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event   1,  1, ANARRES_TOWER_1F, 3
	warp_event  11,  1, ANARRES_TOWER_1F, 4
	warp_event   9,  9, ANARRES_TOWER_3F, 1

	def_coord_events


	def_bg_events

	def_object_events
	object_event  9,  0, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBugCatcherAl, -1
	object_event  0,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBugCatcherJosh, -1
	object_event  3,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBugCatcherKen, -1
	object_event  7,  7, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBugCatcherWayne, -1

	object_const_def


GenericTrainerBugCatcherAl: ; Scott 
	generictrainer BUG_CATCHER, AL, EVENT_BEAT_BUG_CATCHER_AL, BugCatcherAlSeenText, BugCatcherAlBeatenText

	text "I need to put"
	line "a few more"
	para "thoughts into"
	line "my battles."
	done

BugCatcherAlSeenText:
	text "Behold, my"
	line "psychic-flying"
	cont "#mon!"
	done

BugCatcherAlBeatenText:
	text "What do you"
	line "mean, that's"
	cont "not its type?"
	done

GenericTrainerBugCatcherJosh:
	generictrainer BUG_CATCHER, JOSH, EVENT_BEAT_BUG_CATCHER_JOSH, BugCatcherJoshSeenText, BugCatcherJoshBeatenText

	text "I'm working dawn"
	line "to DUSK to evolve"
	cont "my Pinsir!"
	done

BugCatcherJoshSeenText:
	text "Some Bug-type"
	line "#mon are"
	cont "really strong."
	done

BugCatcherJoshBeatenText:
	text "I'm working dawn"
	line "to Dusk to evolve"
	cont "my Pinsir!"
	done


GenericTrainerBugCatcherKen:
	generictrainer BUG_CATCHER, KEN, EVENT_BEAT_BUG_CATCHER_KEN, BugCatcherKenSeenText, BugCatcherKenBeatenText

	text "You're a master"
	line "of both!"
	done

BugCatcherKenSeenText:
	text "Are you someone"
	line "who fights on"
	cont "offense?"
	
	para "or defense?"
	done

BugCatcherKenBeatenText:
	text "You're a master"
	line "of both!"
	done


GenericTrainerBugCatcherWayne:
	generictrainer BUG_CATCHER, WAYNE, EVENT_BEAT_BUG_CATCHER_WAYNE, BugCatcherWayneSeenText, BugCatcherWayneBeatenText

	text "I wonder if any"
	line "#mon are"
	cont "related across"
	cont "regions."
	done

BugCatcherWayneSeenText:
	text "I traded my"
	line "#mon with"
	cont "a Hisuian!"
	done

BugCatcherWayneBeatenText:
	text "Maybe I should"
	line "do a tradeback."
	done
