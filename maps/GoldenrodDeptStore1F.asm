GoldenrodDeptStore1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7,  7, GOLDENROD_CITY, 9
	warp_event  8,  7, GOLDENROD_CITY, 9
	warp_event 15,  0, GOLDENROD_DEPT_STORE_2F, 2
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_JUMPTEXT, GoldenrodDeptStore1FDirectoryText

	def_object_events
	object_event 10,  1, SPRITE_RECEPTIONIST, 	SPRITEMOVEDATA_STANDING_DOWN, 	0, 0, -1, -1, PAL_NPC_BLUE, 	OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore1FReceptionistScript, -1
	object_event  5,  4, SPRITE_MATRON, 		SPRITEMOVEDATA_STANDING_DOWN, 	0, 0, -1, -1, PAL_NPC_BROWN, 	OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStore1FPokefanFText, -1
	object_event  5,  5, SPRITE_CHILD, 			SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, 	OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStore1FBugCatcherText, -1
	object_event 11,  5, SPRITE_GENTLEMAN, 		SPRITEMOVEDATA_WANDER, 			1, 1, -1, -1, 0, 				OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStore1FGentlemanText, -1

GoldenrodDeptStore1FReceptionistText:
	text "Welcome to Golden-"
	line "rod Dept.Store."
	done


GoldenrodDeptStore1FPokefanFText:
	text "I'm raring to shop"
	line "again today!"
	done

GoldenrodDeptStore1FBugCatcherText:
	text "My dad says that"
	line "I should try to"
	cont "fix this."
	para "But there's a"
	line "cheaper one"
	cont "here."
	done

GoldenrodDeptStore1FGentlemanText:
	text "Want to know a"
	line "secret? Some of"
	cont "the drinks"
	cont "restore more HP"
	cont "than potions,"
	para "if you do the"
	line "math. Sounds"
	cont "like some clever"
	cont "marketing by"
	cont "the potions."
	done
	
GoldenrodDeptStore1FDirectoryText:
	text "1F Service Counter"

	para "2F Trainer's"
	line "   Market"

	para "3F Battle"
	line "   Collection"

	para "4F Medicine Box"

	para "5F TM Corner"

	para "6F Tranquil Square"

	para "Rooftop Lookout"
	done



GoldenrodDeptStore1FReceptionistScript:
	faceplayer
	checkevent EVENT_WON_QUIZ
	iftrue_jumptext RadioTower1FRadioCardWomanTuneInText
	opentext
	writetext RadioTower1FRadioCardWomanOfferQuizText
	yesorno
	iffalse_jumpopenedtext RadioTower1FRadioCardWomanNotTakingQuizText
	writetext RadioTower1FRadioCardWomanQuestion1Text
	yesorno
	iffalse .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion2Text
	yesorno
	iffalse .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion3Text
	yesorno
	iftrue .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion4Text
	yesorno
	iftrue .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion5Text
	yesorno
	iftrue .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanYouWinText
	promptbutton
	verbosegiveitem UP_GRADE
	promptbutton
	getstring .RadioCardText, $1
	callstd receiveitem
	writetext RadioTower1FPokegearIsARadioText
	promptbutton
	setflag ENGINE_RADIO_CARD
	writetext RadioTower1FRadioCardWomanTuneInText
	waitbutton
	closetext
	end


.RadioCardText:
	db "Radio Card@"

.WrongAnswer:
	playsound SFX_WRONG
	jumpthisopenedtext

	text "Oh, dear."
	line "Sorry, but you"

	para "got it wrong."
	line "Please try again!"
	done

RadioTower1FRadioCardWomanOfferQuizText:
	text "We have a special"
	line "quiz campaign on"
	cont "right now."

	para "Answer five ques-"
	line "tions correctly to"
	cont "win a both an"
	
	para "Up-Grade and a"
	line "Radio Card."

	para "Would you like to"
	line "take the quiz?"
	done

RadioTower1FRadioCardWomanQuestion1Text: ;  
	text "Question 1:"

	para "Water techniques"
	line "are neutral on"
	cont "magneton?"
	done

RadioTower1FRadioCardWomanQuestion2Text:;
	text "Correct!"
	line "Question 2:"

	para "Ilex Forest is"
	line "the only forest"
	
	para "with #mon"
	line "encounters and no"
	cont "tall grass?"
	done

RadioTower1FRadioCardWomanQuestion3Text:
	text "Bull's-eye!"
	line "Question 3:"

	para "Magikarp has the"
	line "same base stat"
	cont "as Feebas?"
	done

RadioTower1FRadioCardWomanQuestion4Text: 
	text "So far so good!"
	line "Question 4:"

	para "In Kanto ca. 1999"
	line "the Ultra Ball is"
	para "always better"
	line "than Great Ball?"
	done

RadioTower1FRadioCardWomanQuestion5Text:
	text "Wow! Right again!"
	line "Here's the final"
	cont "question:"

	para "The necklace of a"
	line "Bayleef: bitter?"
	done

RadioTower1FRadioCardWomanYouWinText:
	text "Bingo! You got it!"
	line "Congratulations!"

	para "Here's your prize,"
	line "a Radio Card!"
	done

RadioTower1FPokegearIsARadioText:
	text "The #gear"
	line "can now double as"
	cont "a radio!"
	done

RadioTower1FRadioCardWomanTuneInText:
	text "Please tune in to"
	line "our radio shows."
	done

RadioTower1FRadioCardWomanNotTakingQuizText:
	text "Oh. I see. Please"
	line "see me if you"
	cont "change your mind."
	done
