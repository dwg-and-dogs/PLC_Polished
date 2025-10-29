SlowpokeWellB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 17, 15, SLOWPOKE_WELL_ENTRANCE, 2
	warp_event  7, 11, SLOWPOKE_WELL_B2F, 1


	def_coord_events

	def_bg_events

	def_object_events
	itemball_event 10,  3, SUPER_POTION, 1, EVENT_SLOWPOKE_WELL_B1F_SUPER_POTION
	object_event  5,  4, SPRITE_BAKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SlowpokeWellB1FRolloutScript, -1
	object_event  13, 3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, SlowpokeWellB1FText, -1  

	object_const_def


SlowpokeWellB1FRolloutScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_ROLLOUT_INTRO
	iftrue SlowpokeWellTutorRolloutScript
	writetext Text_RolloutIntro
	waitbutton
	setevent EVENT_LISTENED_TO_PAY_DAY_INTRO
SlowpokeWellTutorRolloutScript:
	writetext Text_RolloutTutor ;;
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_RolloutTutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval ROLLOUT
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_RolloutTutorRefused ;; 

.NoSilverLeaf
	jumpopenedtext Text_RolloutTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_RolloutTutorTaught ;;
	
Text_RolloutIntro: 
	text "Some say that"
	line "Unova-style pizza"
	para "is best. But I"
	line "prefer Azalea"
	cont "style! Why?"
	
	para "Because the dough"
	line "is rolled out"
	cont "in Slowpoke Well!"

	para "...?"
	
	para "What's that? You"
	line "don't like Azalea"
	cont "style pizza?"
	
	para "Well make your"
	line "own pizza then!"
	done

Text_RolloutTutor:
	text "I can teach your"
	line "#mon to use"

	para "Rollout, for"
	line "a Silver Leaf."
	done

Text_RolloutTutorNoSilverLeaf:
	text "My lessons aren't"
	line "free! Come back"
	para "with a Silver"
	line "Leaf."
	
	para "Check Ilex For-"
	line "est, or the"
	cont "Azalea Mart."
	done

Text_RolloutTutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "Rollout?"
	done

Text_RolloutTutorRefused:
	text "Alright then."
	done

Text_RolloutTutorTaught:
	text "Rolling out"
	line "your own dough"
	para "is great. Once"
	line "you start, it's"
	cont "hard to stop!"
	done


SlowpokeWellB1FText:
	text "This whole cave"
	line "was etched from"
	para "running water,"
	line "deep underground."
	
	para "The shape of it"
	line "could've been so"
	para "different if one"
	line "rock was in one"
	para "place instead of"
	line "another!"
	done
