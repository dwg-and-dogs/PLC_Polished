EcruteakLugiaSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 7
	warp_event  4,  7, ECRUTEAK_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_JUMPSTD, radio2

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakLugiaSpeechHouseGrampsText, -1
	object_event  2,  4, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakLugiaSpeechHouseYoungsterText, -1
	object_event  5,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakDreamEaterScript, -1

EcruteakLugiaSpeechHouseGrampsText:
	text "Back in my day,"
	line "this town was a"
	cont "haven of remem-"
	cont "berance."
	
	para "We gathered to"
	line "honor our ance-"
	cont "stors!"
	done

EcruteakLugiaSpeechHouseYoungsterText:
	text "We can't live"
	line "in the past for-"
	para "ever! We're shap-"
	line "ing our future"
	para "while honoring"
	line "the past!"	
	done


EcruteakDreamEaterScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_DREAM_EATER_INTRO
	iftrue EcruteakTutorDreamEaterScript
	writetext Text_DreamEaterIntro
	waitbutton
	setevent EVENT_LISTENED_TO_DREAM_EATER_INTRO
EcruteakTutorDreamEaterScript:
	writetext Text_EcruteakTutorDreamEater ;;
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_EcruteakTutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval DREAM_EATER
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_EcruteakTutorRefused ;; 

.NoSilverLeaf
	jumpopenedtext Text_EcruteakTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_EcruteakTutorTaught ;;
	
Text_DreamEaterIntro: 
	text "I had a dream that"
	line "I could be a"
	cont "Kimono Girl."

	para "But I slept my"
	line "youth away."
	
	para "Now, my dreams"
	line "are eaten each"
	cont "time I walk by"
	cont "the theatre,"
	
	para "when I see my"
	line "peers dancing."

	para "You have one too,"
	line "don't you?"
	done

Text_EcruteakTutorDreamEater:
	text "Dreams have"
	line "flavors, you know."

	para "Even bitter dreams"
	line "can restore what"
	cont "time has taken."

	para "Shall I show you"
	line "how to eat yours?"
	
	para "All it takes is"
	line "one Silver Leaf."
	done

Text_EcruteakTutorNoSilverLeaf:
	text "You don't have"
	line "a Silver Leaf."
	done

Text_EcruteakTutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "Dream Eater?"
	done

Text_EcruteakTutorRefused:
	text "Alright then."
	done

Text_EcruteakTutorTaught:
	text "There you go!"
	
	para "May your dream"
	line "be your rivals'"
	cont "nightmare."
	done
