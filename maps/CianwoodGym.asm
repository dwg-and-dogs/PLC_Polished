CianwoodGym_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 17, CIANWOOD_CITY, 2
	warp_event  5, 17, CIANWOOD_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, CianwoodGymStatue
	bg_event  6, 15, BGEVENT_READ, CianwoodGymStatue


	def_object_events
	object_event  3, 10, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBlackbeltYoshi, -1
	object_event  3, 7, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBlackbeltLao, -1
	object_event  6, 3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBlackbeltNob, -1
	object_event  8, 10, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBlackbeltLung, -1
	strengthboulder_event  5, 2
	strengthboulder_event  6, 2
	strengthboulder_event  4, 2
	strengthboulder_event  7, 7
	tmhmball_event 8, 12, TM_DYNAMICPUNCH, EVENT_GOT_TM01_DYNAMICPUNCH
	object_event  5,  13, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodGymResetScript, -1

	object_const_def


CianwoodGymStatue:
	jumpthistext
	
	text "Cianwood Gym"
	line "Never stop fight-"
	cont "ing for your home"
	done


GenericTrainerBlackbeltYoshi:
	generictrainer BLACKBELT_T, YOSHI, EVENT_BEAT_BLACKBELT_YOSHI, BlackbeltYoshiSeenText, BlackbeltYoshiBeatenText

	text "We will be reme-"
	line "mbered for 100"
	cont "years!"
	done


GenericTrainerBlackbeltLao:
	generictrainer BLACKBELT_T, LAO, EVENT_BEAT_BLACKBELT_LAO, BlackbeltLaoSeenText, BlackbeltLaoBeatenText

	text "Although our city"
	line "washes into the"
	cont "sea, I'll never"
	cont "stop trying to"
	cont "save it!"
	done

GenericTrainerBlackbeltNob:
	generictrainer BLACKBELT_T, NOB, EVENT_BEAT_BLACKBELT_NOB, BlackbeltNobSeenText, BlackbeltNobBeatenText

	text "How far would you"
	line "go to save what"
	cont "you love?"
	done

GenericTrainerBlackbeltLung:
	generictrainer BLACKBELT_T, LUNG, EVENT_BEAT_BLACKBELT_LUNG, BlackbeltLungSeenText, BlackbeltLungBeatenText

	text "I was there the"
	line "day the seawall"
	cont "fell. Now, I fear"
	cont "nothing!"
	done


BlackbeltYoshiSeenText:
	text "We will be reme-"
	line "mbered for 100"
	cont "years!"
	done

BlackbeltYoshiBeatenText:
	text "They may remember"
	line "you as well."
	done

BlackbeltLaoSeenText:
	text "Although our city"
	line "washes into the"
	cont "sea, I'll never"
	cont "stop trying to"
	cont "save it!"
	done

BlackbeltLaoBeatenText:
	text "Such dedication!"
	done

BlackbeltNobSeenText:
	text "How far would you"
	line "go to save what"
	cont "you love?"
	done

BlackbeltNobBeatenText:
	text "Admirable."
	done

BlackbeltLungSeenText:
	text "I was there the"
	line "day the seawall"
	cont "fell. Now, I fear"
	cont "nothing!"
	done

BlackbeltLungBeatenText:
	text "I am at peace."
	done

CianwoodGymResetScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM01_DYNAMICPUNCH
	iftrue_jumptext CianwoodCongratulationsText
	writetext ResetCianwoodGymText
	promptbutton
	closetext
	clearevent EVENT_BEAT_BLACKBELT_LUNG
	clearevent EVENT_BEAT_BLACKBELT_NOB
	clearevent EVENT_BEAT_BLACKBELT_LAO
	clearevent EVENT_BEAT_BLACKBELT_YOSHI
	reloadmap
	end

ResetCianwoodGymText:
	text "We no longer rely"
	line "on just brute"
	cont "strength."
	
	para "If you are clever"
	line "enough, you may"
	cont "claim our TM."
	
	para "I'll instruct the"
	line "blackbelts to"
	cont "battle you."
	
	para "Each one has a 2"
	line "tile vision."
	done

CianwoodCongratulationsText:
	text "Congratulations"
	line "to have earned"
	cont "our TM."
	done
	