RebelsRedoubt1F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES, RebelRedoubt1FCallback

	def_warp_events
	warp_event 3, 7, EERIE_HAMLET, 1
	warp_event 4, 7, EERIE_HAMLET, 1
	warp_event 7, 3, REBELS_REDOUBT_B1F, 1

	def_coord_events



	def_bg_events


	def_object_events
	object_event 2, 3, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RedoubtKnockOffTutorScript, -1
	object_event  3,  3, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptext, RR_1F_BallText, EVENT_LISTENED_TO_KNOCK_OFF_INTRO
	object_event 5, 4, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Redoubt1FScript, -1 ;
	object_event 4, 7, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_REDOUBT_KURT

	object_const_def
	const REDOUBT_1B_NINJA
	const REDOUBT_1F_POKEBALL
	const REDOUBT_1F_NINJA_2
	const REDOUBT_1F_KURT
	
RebelRedoubt1FCallback:
	checkevent EVENT_RR_OPENED_HATCH
	iffalse .DoorClosed
	changeblock 6, 2, $1E
.DoorClosed:
	endcallback	
	
	
RedoubtKnockOffTutorScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_AMOS
	iffalse_jumptext SecretNinjaTechniqueText
	checkevent EVENT_LISTENED_TO_KNOCK_OFF_INTRO
	iftrue .RedoubtTutorKnockOffScript
	writetext Text_KnockOffIntro
	waitbutton
	closetext
	applymovement REDOUBT_1B_NINJA, KnockOffMovement
	applymovement REDOUBT_1F_POKEBALL, KnockOffMovement2
	playsound SFX_SHARPEN ; crash! 
	disappear REDOUBT_1F_POKEBALL
	pause 60
	faceplayer
	opentext
	writetext Text_KnockOffIntro2
	setevent EVENT_LISTENED_TO_KNOCK_OFF_INTRO
.RedoubtTutorKnockOffScript:
	writetext Text_RedoubtTutorKnockOff ;;
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_RedoubtTutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval KNOCK_OFF
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_RedoubtTutorRefused ;; 

.NoSilverLeaf
	jumpopenedtext Text_RedoubtTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_RedoubtTutorTaught ;;
	
Text_KnockOffIntro: 
	text "Oh! You are here"
	line "to witness my"
	cont "ninja technique!"
	
	para "My super accurate"
	line "technique starts"
	cont "with a spin, and"

	para "ends with a str-"
	line "ike at the ...."
	done

Text_KnockOffIntro2:
	text "Um, please don't"
	line "tell Amos that"
	cont "was me."
	done	

Text_RedoubtTutorKnockOff:
	text "But I could teach"
	line "your #mon to"
	cont "Knock Off,"
	
	para "just like me, for"
	line "a Silver Leaf."
	done

Text_RedoubtTutorNoSilverLeaf:
	text "No Silver Leaf,"
	line "no tutoring."
	done

Text_RedoubtTutorQuestion:
	text "Shall I tutor you"
	line "my elegant, mast-"
	cont "erful Knock Off?"
	done

Text_RedoubtTutorRefused:
	text "Oh, but you don't"
	line "see the value!"
	done

Text_RedoubtTutorTaught:
	text "There - now you"
	line "can Knock Off"
	cont "items from your"
	cont "enemies!"
	done


SecretNinjaTechniqueText:
	text "I've got a secret"
	line "ninja technique."
	
	para "As if I'd teach"
	line "it to you!"
	done

KnockOffMovement:
	turn_head_left
	step_end

KnockOffMovement2:
	fix_facing
	slide_step_up
	step_end

RR_1F_BallText:
	text "A captivating,"
	line "mysterious orb."
	
	para "Appears to be"
	line "hundreds of years"
	para "old, or from a"
	line "distant land."

	para "Its double-layer"
	line "glass is thinner"
	cont "than a hair."

	para "May shatter if it"
	line "is even looked at"
	cont "with disdain."

	para "Its base warns:"
	line "EXTREMELY FRAGILE"
	cont "in dark letters."
	done

Redoubt1FScript:
	faceplayer
	checkevent EVENT_BEAT_AMOS
	iftrue_jumptext RR_1F_BeatAmosText
	checkevent EVENT_RR_OPENED_HATCH
	iftrue_jumptext RR_1F_DownTheHatchText
	opentext
	writetext RR_1F_NinjaText1
	promptbutton
	closetext
	appear REDOUBT_1F_KURT
	applymovement REDOUBT_1F_KURT, RedoubtKurtWalks
	turnobject REDOUBT_1F_NINJA_2, RIGHT
	showtext RR_1F_KurtText1
	showemote EMOTE_QUESTION, REDOUBT_1F_NINJA_2, 10
	showtext RR_1F_NinjaText2
	setevent EVENT_RR_OPENED_HATCH
	changeblock 6, 2, $1E
	reloadmappart
	; sfx for changing the map part
	showtext RR_1F_KurtText2
	applyonemovement REDOUBT_1F_KURT, step_down
	disappear REDOUBT_1F_KURT
	setevent EVENT_REDOUBT_KURT
	end


RR_1F_NinjaText1:
	text "Hey, you're the"
	line "kid in green!"
	
	para "Amos warned us"
	line "you might come."
	done

RR_1F_KurtText1:
	text "Kurt: You don't"
	line "understand!"
	
	para "We're on your"
	line "side, look at all"
	cont "of these badges!"
	done

RR_1F_NinjaText2:
	text "Hmm. others will"
	line "battle you to get"
	cont "a better look."
	done


RR_1F_KurtText2:
	text "Thank you!"
	line "<PLAYER>, let's"
	cont "go down."
	done

RR_1F_DownTheHatchText:
	text "Amos is waiting."
	line "Hurry!"
	done

RedoubtKurtWalks:
	step_up
	step_right
	step_right
	step_right
	step_up
	step_up
	turn_head_left ; 7, 4 
	step_end

RR_1F_BeatAmosText:
	text "Looks like Amos"
	line "was wrong about"
	cont "you."
	done
