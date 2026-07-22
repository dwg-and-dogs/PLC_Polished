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
	object_event 	3, 	6, SPRITE_KIMONO_GIRL, 	SPRITEMOVEDATA_WANDER, 			1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TapestryWarperScript, EVENT_CAPITAL_SKIRMISHER 


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
	para "knowledge to the"
	line "next generation."
	
	para "At least, we used"
	line "to, before a self"
	para "declared Emperor"
	line "of Johto closed"
	cont "them off."
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


TapestryWarperScript:
	faceplayer
	opentext
;	checkmove SURF
;	iffalse_jumptext TapestryHaveSurfText
	writethistext 
		text "The Western"
		line "Capital has a deep"
		cont "protective moat."
		
		para "Do you need help"
		line "crossing?"
		done
	yesorno
	iffalse_jumptext TapestryHaveSurfText
	writethistext
		text "Close your eyes,"
		line "and focus on the"
		cont "Western Capital."
		done
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	special HealParty
	waitsfx
	warp WESTERN_CAPITAL, 7, 15
	end

TapestryHaveSurfText:
	text "I hope your plans"
	line "go swimmingly."
	done
