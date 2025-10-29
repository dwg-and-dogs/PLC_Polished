WhispersTapestryGate_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 2, 0, WHISPERS_WAY, 1
	warp_event 3, 0, WHISPERS_WAY, 2
	warp_event 2, 7, TIMELESS_TAPESTRY, 1
	warp_event 3, 7, TIMELESS_TAPESTRY, 1

	def_coord_events



	def_bg_events



	def_object_events
	object_event 	2, 	4, SPRITE_KIMONO_GIRL, 	SPRITEMOVEDATA_WANDER, 			1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TapestryBatonPassScript, -1 


	object_const_def


TapestryBatonPassScript:
	faceplayer
	opentext
	writetext Text_BatonPassIntro
	waitbutton
	writetext Text_TapestryTutorBatonPass ;;
	waitbutton
	writetext Text_TapestryTutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval BATON_PASS
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_TapestryTutorRefused ;; 

.TeachMove
	jumpopenedtext Text_TapestryTutorTaught ;;
	
Text_BatonPassIntro:  
	text "Ahead is the site"
	line "where we pass our"
	para "knowledge to fut-"
	line "ure generations."
	
	para "At least, we used"
	line "to, before a self"
	para "declared Emperor"
	line "closed it up."
	done

Text_TapestryTutorBatonPass:
	text "#mon can do"
	line "a similar action,"
	cont "with the Baton"
	cont "Pass technique."
	done

Text_TapestryTutorQuestion:
	text "I can teach yours"
	line "if you like."
	done

Text_TapestryTutorRefused:
	text "Alright then."
	done

Text_TapestryTutorTaught:
	text "It is our duty"
	line "to pass the baton"
	cont "to the future."
	done

