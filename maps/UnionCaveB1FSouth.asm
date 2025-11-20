UnionCaveB1FSouth_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, UNION_CAVE_1F, 2
	warp_event 17,  3, UNION_CAVE_B2F, 1
	warp_event  7, 33, SLOWPOKE_WELL_B2F, 2

	def_coord_events

	def_bg_events
	bg_event  2, 18, BGEVENT_ITEM + X_SPCL_DEF, EVENT_UNION_CAVE_B1F_SOUTH_HIDDEN_X_SPCL_DEF
	bg_event 14, 15, BGEVENT_ITEM + NUGGET, EVENT_UNION_CAVE_B1F_SOUTH_HIDDEN_NUGGET
	bg_event  4, 30, BGEVENT_ITEM + FULL_RESTORE, EVENT_UNION_CAVE_B1F_SOUTH_HIDDEN_FULL_RESTORE

	def_object_events
	object_event 11, 27, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerHikerParry, EVENT_BEAT_FALKNER
	object_event 12, 10, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerHikerRussell, EVENT_BEAT_FALKNER
	object_event 11,  4, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerHikerPhillip, EVENT_BEAT_FALKNER
	smashrock_event 11, 14
	smashrock_event 10, 25
	itemball_event  2, 12, MAX_REPEL, 1, EVENT_UNION_CAVE_B1F_SOUTH_DUSK_STONE
	itemball_event 17, 23, SUPER_POTION, 1, EVENT_UNION_CAVE_B1F_SOUTH_SUPER_REPEL
	itemball_event  2, 28, REVIVE, 1, EVENT_UNION_CAVE_B1F_SOUTH_LIGHT_CLAY


GenericTrainerHikerParry:
	generictrainer HIKER, PARRY1, EVENT_BEAT_HIKER_PARRY, HikerParrySeenText, HikerParryBeatenText

	text "The first step"
	line "in mining is"
	para "blasting the"
	line "rocks."
	done

HikerParrySeenText:
	text "A mine is no"
	line "place for a"
	cont "child."
	done

HikerParryBeatenText:
	text "Shocking!"
	done



GenericTrainerHikerRussell:
	generictrainer HIKER, RUSSELL, EVENT_BEAT_HIKER_RUSSELL, HikerRussellSeenText, HikerRussellBeatenText

	text "I crush and"
	line "grind rocks."
	done

HikerRussellSeenText:
	text "Are you sure you"
	line "should be here?"
	done

HikerRussellBeatenText:
	text "Watch out for"
	line "falling rocks."
	done


GenericTrainerHikerPhillip:
	generictrainer HIKER, PHILLIP, EVENT_BEAT_HIKER_PHILLIP, HikerPhillipSeenText, HikerPhillipBeatenText

	text "My wooper keeps"
	line "the dust down."
	done

HikerPhillipSeenText:
	text "Whoa ho!"
	line "A new recruit?"
	done

HikerPhillipBeatenText:
	text "Hey, now we"
	line "can't crush."
	done
