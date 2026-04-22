EcruteakHouse_MapScriptHeader: ; use moving of sages to solve the passage problem 
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, EcruteakHouseInitializeSages

	def_warp_events
	warp_event  4, 17, ECRUTEAK_CITY, 3
	warp_event  5, 17, ECRUTEAK_CITY, 3
	warp_event  5,  3, ECRUTEAK_HOUSE, 4
	warp_event 17, 15, ECRUTEAK_HOUSE, 3
	warp_event 17,  3, WISE_TRIOS_ROOM, 3

	def_coord_events


	def_bg_events

	def_object_events
	object_event  4,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceSageScript, -1
	object_event  5,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceSageScript, -1
	object_event  6,  9, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceWanderingSageScript, -1
	object_event  3, 11, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakTinTowerEntranceGrampsText, -1 ; ok 

	object_const_def
	const ECRUTEAKHOUSE_SAGE1
	const ECRUTEAKHOUSE_SAGE2

EcruteakHouseInitializeSages:
	checkevent EVENT_BEAT_KIMONO_GIRL_AKARI
	iffalse .Skip
	moveobject ECRUTEAKHOUSE_SAGE1, 3, 7
	moveobject ECRUTEAKHOUSE_SAGE2, 6, 7
.Skip:
	endcallback


EcruteakTinTowerEntranceSageScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_KIMONO_GIRL_AKARI
	iftrue_jumpopenedtext EcruteakTinTowerEntranceSageText_BeatKimonoGirls
	jumpopenedtext EcruteakTinTowerEntranceSageText


EcruteakTinTowerEntranceWanderingSageScript:
	jumptextfaceplayer EcruteakTinTowerEntranceWanderingSageText

EcruteakTinTowerEntranceSageText:
	text "Bell Tower is off"
	line "limits to anyone"

	para "without a bless-"
	line "ing from the"
	cont "Kimono Girls."
	done

EcruteakTinTowerEntranceSageText_BeatKimonoGirls:
	text "The Chronicler"
	line "said you would"
	cont "come. Please, "
	cont "pass through."
	done


EcruteakTinTowerEntranceWanderingSageText:
	text "The Bell Tower"
	line "ahead is a nine-"

	para "tier tower of"
	line "divine beauty."

	para "It soothes the"
	line "soul of all who"
	cont "see it."
	done

EcruteakTinTowerEntranceGrampsText:
	text "To reach the top"
	line "of the tower, you"
	cont "will need a heart"
	cont "that sees clearly."
	
	para "Ho-Oh only recogn-"
	line "izes those whose"
	cont "heart aspires to"
	cont "love."
	done
