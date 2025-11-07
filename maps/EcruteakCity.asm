EcruteakCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, EcruteakCityFlyPoint

	def_warp_events ; need to block from each side 
	warp_event 35, 26, ROUTE_42_ECRUTEAK_GATE, 1
	warp_event 35, 27, ROUTE_42_ECRUTEAK_GATE, 2
	warp_event 23, 11, ECRUTEAK_HOUSE, 1
	warp_event 17, 11, ECRUTEAK_SHRINE_OUTSIDE, 3 
	warp_event 18, 11, ECRUTEAK_SHRINE_OUTSIDE, 4
	warp_event 23, 27, ECRUTEAK_POKECENTER_1F, 1
	warp_event  5, 21, ECRUTEAK_LUGIA_SPEECH_HOUSE, 1
	warp_event 23, 21, DANCE_THEATRE, 1
	warp_event 29, 21, ECRUTEAK_MART, 2
	warp_event  6, 27, ECRUTEAK_GYM, 1
	warp_event 13, 27, ECRUTEAK_ITEMFINDER_HOUSE, 1
	warp_event  5, 17, VALERIES_HOUSE, 1
	warp_event  5,  5, BURNED_TOWER_1F, 1
	warp_event  0, 18, ROUTE_38_ECRUTEAK_GATE, 3
	warp_event  0, 19, ROUTE_38_ECRUTEAK_GATE, 4
	warp_event 29, 27, ECRUTEAK_CHERISH_BALL_HOUSE, 1
	warp_event 13, 17, ECRUTEAK_DESTINY_KNOT_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 15, 21, BGEVENT_JUMPTEXT, EcruteakCitySignText
	bg_event  8, 28, BGEVENT_JUMPTEXT, EcruteakGymSignText
	bg_event 21, 21, BGEVENT_JUMPTEXT, EcruteakDanceTheaterSignText
	bg_event  2, 10, BGEVENT_JUMPTEXT, BurnedTowerSignText
	bg_event 25, 14, BGEVENT_ITEM + HYPER_POTION, EVENT_ECRUTEAK_CITY_HIDDEN_HYPER_POTION
	bg_event 21, 11, BGEVENT_JUMPTEXT, EcruteakBarrierStationSignText
	bg_event 33, 16, BGEVENT_ITEM + RARE_CANDY, EVENT_ECRUTEAK_CITY_HIDDEN_RARE_CANDY
	bg_event  1, 17, BGEVENT_ITEM + ULTRA_BALL, EVENT_ECRUTEAK_CITY_HIDDEN_ULTRA_BALL
	bg_event  6,  6, BGEVENT_ITEM + ETHER, EVENT_ECRUTEAK_CITY_HIDDEN_ETHER

	def_object_events
	object_event 34, 26, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakCityHikersText, EVENT_BEAT_CHUCK ; done
	object_event 34, 27, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakCityHikersText, EVENT_BEAT_CHUCK ; done
	
;	object_event 1, 18, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakCityFarmersText, EVENT_BEAT_KENSEY_PORT ; done
;	object_event 1, 19, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakCityFarmersText, EVENT_BEAT_KENSEY_PORT ; done
	
	object_event 26, 23, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakCityGramps1Text, -1 ; done
	object_event 20, 21, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakCityGramps2Text, -1 ; ok e
	object_event  3,  9, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakCityLass2Script, -1 ; don e
	object_event  9, 22, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakCityFisherScript, -1
	object_event 11, 16, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakCityYoungsterText, -1
	object_event  3,  7, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakCityGramps3Text, EVENT_ECRUTEAK_CITY_GRAMPS ; keep
	object_event 11, 11, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakCityCuteGirlText, -1
	; what is this? 
	object_event 15,  9, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_ARCH_TREE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_COMMAND, end, NULL, -1
	object_event 16,  9, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_ARCH_TREE_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_COMMAND, end, NULL, -1
	object_event 19,  9, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_ARCH_TREE_UP, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_COMMAND, end, NULL, -1
	object_event 20,  9, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_ARCH_TREE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_COMMAND, end, NULL, -1

EcruteakCityFlyPoint:
	setflag ENGINE_FLYPOINT_ECRUTEAK
	endcallback

EcruteakCityLass2Script:
	jumptextfaceplayer EcruteakCityLass2Text

EcruteakCityFisherScript:
	jumptextfaceplayer EcruteakCityFisherText

EcruteakCityGramps1Text:
	text "Ecruteak used to"
	line "have two towers:"

	para "one each in the"
	line "east and west."
	done

EcruteakCityGramps2Text:
	text "This city used to"
	line "breathe tradition."
	
	para "Even Morty acts"
	line "insecure about"
	cont "the history."	
	done

EcruteakCityHexManiacText:
	text "#mon spirits"
	line "haunt this place…"
	done


EcruteakCityLass2Text:
	text "Tin Tower is so"
	line "majestic!"
	
	para "Imagine building"
	line "it, so long ago."
	done


EcruteakCityFisherText:
	text "I heard Silph is"
	line "interested in ac-"
	cont "quiring the Dance"
	cont "Theatre."
	done


EcruteakCityYoungsterText:
	text "We used to get"
	line "our water from"
	cont "the Lake of Rage."
	
	para "But now, we get"
	line "it from Olivine."	
	done

EcruteakCityGramps3Text:
	text "The burned tower"
	line "is falling beyond"
	cont "disrepair."
	done

EcruteakCitySignText:
	text "Ecruteak City"
	line "A Historical City"

	para "Where the Past"
	line "Meets the Present"
	done

EcruteakGymSignText:
	text "Ecruteak City"
	line "#mon Gym"
	done

EcruteakDanceTheaterSignText:
	text "Ecruteak Dance"
	line "Theater"
	done

BurnedTowerSignText:
	text "Burned Tower"

	para "It was destroyed"
	line "by a mysterious"
	cont "fire."
	done

EcruteakCityCuteGirlText:
	text "Oh, I just love"
	line "how retro this"
	cont "place is!"
	
	para "It's great how"
	line "the shrine is so"
	cont "tourist-friendly."

	para "The sages even do"
	line "photo ops."
	done

EcruteakBarrierStationSignText:
	text "Barrier Station"
	line "to Bell Tower"

	para "No Trespassing by"
	line "the Unworthy"
	done

EcruteakCityFarmersText:
	text "Sorry, MooMoo"
	line "Farms is dealing"
	cont "with a lost cow."
	
	para "They don't want"
	line "anyone to inter-"
	cont "fere with the"
	cont "rescue."
	done
	
EcruteakCityHikersText:
	text "Mount Mortar is"
	line "showing signs of"
	cont "seismic activity."
	
	para "We recommend that"
	line "all unnecessary"
	cont "travel is post-"
	cont "poned."
	done
