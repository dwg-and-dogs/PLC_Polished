Route39Barn_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, ROUTE_39, 1
	warp_event  4,  7, ROUTE_39, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BarnZenHeadbuttScript, -1
	object_event  6,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BarnIronHeadScript, -1

	pokemon_event 3, 3, TAUROS, -1, -1, PAL_NPC_BLUE, TaurosBarnTextZen, -1
	pokemon_event 5, 3, TAUROS, -1, -1, PAL_NPC_RED, TaurosBarnTextIron, -1


BarnZenHeadbuttScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_ZEN_HEADBUTT_INTRO
	iftrue BarnTutorZenHeadbuttScript
	writetext Text_ZenHeadbuttIntro
	waitbutton
	setevent EVENT_LISTENED_TO_ZEN_HEADBUTT_INTRO
BarnTutorZenHeadbuttScript:
	writetext Text_BarnTutorZenHeadbutt ;;
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_BarnTutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval ZEN_HEADBUTT
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_BarnTutorRefused ;; 

.NoSilverLeaf
	jumpopenedtext Text_BarnTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_BarnTutorTaught ;;
	
Text_ZenHeadbuttIntro: 
	text "This Tauros can"
	line "meditate!"
	
	para "See, he is still"
	line "for hours - ideal"
	cont "posture."

	para "Perfect Zen!"
	done

Text_BarnTutorZenHeadbutt:
	text "I can teach your"
	line "#mon to use"

	para "Zen Headbutt, for"
	line "a Silver Leaf."
	done

Text_BarnTutorNoSilverLeaf:
	text "You don't have"
	line "a Silver Leaf."
	done

Text_BarnTutorQuestion:
	text "Should I teach"
	line "your #mon?"
	done

Text_BarnTutorRefused:
	text "Alright then."
	done

Text_BarnTutorTaught:
	text "All done!"
	done

TaurosBarnTextZen:
	text "The Tauros chews"
	line "cud, staring into"
	cont "nothing."
	done


BarnIronHeadScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_IRON_HEAD_INTRO
	iftrue BarnTutorIronHeadScript
	writetext Text_IronHeadIntro
	waitbutton
	setevent EVENT_LISTENED_TO_IRON_HEAD_INTRO
BarnTutorIronHeadScript:
	writetext Text_BarnTutorIronHead ;;
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_BarnTutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval IRON_HEAD
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_BarnTutorRefused ;; 

.NoSilverLeaf
	jumpopenedtext Text_BarnTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_BarnTutorTaught ;;
	
Text_IronHeadIntro: 
	text "How do I keep my"
	line "cattle from wand-"
	cont "ering off?"
	
	para "Well, I have this"
	line "here magnet. And"
	cont "when I flip it on"
	
	para "my Tauros' Iron"
	line "Head is pulled "
	cont "back to the barn!"
	done

Text_BarnTutorIronHead:
	text "I can give your"
	line "#mon the"

	para "Iron Head, for"
	line "a Silver Leaf."
	done

TaurosBarnTextIron:
	text "The Tauros' head"
	line "is covered by"
	para "solder excess and"
	line "metal scraps."
	
	para "It has hulking"
	line "neck muscles."
	done
