Route33_MapScriptHeader:
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event 11,  9, UNION_CAVE_1F, 3

	def_coord_events

	def_bg_events
	bg_event 11, 11, BGEVENT_JUMPTEXT, Route33SignText

	def_object_events
	object_event  6, 12, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerHikerAnthony, -1
	object_event 12, 17, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSchoolgirlImogen, -1
	object_event 13, 16, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route33PayDayScript, -1
	fruittree_event 14, 16, FRUITTREE_ROUTE_33, PECHA_BERRY, PAL_NPC_RED

GenericTrainerHikerAnthony:
	generictrainer HIKER, ANTHONY1, EVENT_BEAT_HIKER_ANTHONY, HikerAnthony1SeenText, HikerAnthony1BeatenText

	text "Do you have the"
	line "strength to work"
	cont "in the cave?"
	done


HikerAnthony1BeatenText:
	text "I sure don't."
	done

HikerAnthony1SeenText:
	text "Be careful."
	line "They're mining"
	cont "in Union Cave."
	done

GenericTrainerSchoolgirlImogen:
	generictrainer SCHOOLGIRL, IMOGEN, EVENT_BEAT_SCHOOLGIRL_IMOGEN, SchoolgirlImogenSeenText, SchoolgirlImogenBeatenText

	text "I'm trying hard so"
	line "I can be the star"
	cont "in my class."
	done

SchoolgirlImogenSeenText:
	text "I got this cute"
	line "#mon from"
	cont "my mom."
	done

SchoolgirlImogenBeatenText:
	text "I wonder where"
	line "everyone else"
	cont "got theirs?"
	done

Route33SignText:
	text "Danger: no"
	line "spelunking!"
	done

Route33PayDayScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_PAY_DAY_INTRO
	iftrue Route33TutorPayDayScript
	writetext Text_PayDayIntro
	waitbutton
	setevent EVENT_LISTENED_TO_PAY_DAY_INTRO
Route33TutorPayDayScript:
	writetext Text_Route33TutorPayDay ;;
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_Route33TutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval PAY_DAY
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_Route33TutorRefused ;; 

.NoSilverLeaf
	jumpopenedtext Text_Route33TutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_Route33TutorTaught ;;
	
Text_PayDayIntro: 
	text "I was fired from"
	line "a dishwasher job."
	
	para "It's not fair! I"
	line "was just rinsing"
	para "the dishes with"
	line "ColdWater."
	
	para "Anyway, now we're"
	line "farming Pay Day"
	cont "to make rent."
	done

Text_Route33TutorPayDay:
	text "I can teach your"
	line "#mon to use"

	para "Pay Day, for"
	line "a Silver Leaf."
	done

Text_Route33TutorNoSilverLeaf:
	text "You don't have"
	line "a Silver Leaf."
	
	para "Check Ilex For-"
	line "est, or the"
	cont "Azalea Mart."
	done

Text_Route33TutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "Pay Day?"
	done

Text_Route33TutorRefused:
	text "Alright then."
	done

Text_Route33TutorTaught:
	text "Use Pay Day to"
	line "get some coins"
	cont "in a pinch!"
	done
