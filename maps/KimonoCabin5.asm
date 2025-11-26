KimonoCabin5_MapScriptHeader: ; should be like  "BurnedTowerB1F_MapScriptHeader"
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES, KimonoCabin5Callback 

	def_warp_events
	warp_event  8, 17, KIMONO_CABIN, 1
	warp_event  9, 17, KIMONO_CABIN, 1


	def_coord_events




	def_bg_events
	bg_event 8,  1, BGEVENT_READ, KimonoCabin5Switch3Script
	bg_event 0,  3, BGEVENT_READ, KimonoCabin5Switch2Script
	bg_event 0,  11, BGEVENT_READ, KimonoCabin5Switch1Script
	bg_event 16,  17, BGEVENT_READ, KimonoCabin5Switch4Script

	
	def_object_events
	object_event 16,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED,  OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_KIMONO_CABIN_5_GRANNY
	object_event 17,  0, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED,  OBJECTTYPE_SCRIPT, 0, KimonoCabin5Lass, -1
	object_event  9, 16, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED,  OBJECTTYPE_SCRIPT, 0, KimonoCabin55Script, -1
	pokemon_event  16, 0, EEVEE, -1, -1, PAL_NPC_BROWN, KimonoEeveeText, -1
	tmhmball_event 6, 8, TM_SUBSTITUTE, EVENT_KIMONO_TM_SUBSTITUTE

	object_const_def
	const KIMONO_CABIN_5_GRANNY1
	const KIMONO_CABIN_5_KIMONO_GIRL

KimonoCabin5Callback:
	checkevent EVENT_KIMONO_CABIN_5_SWITCH_1
	iffalse .Check2
	changeblock 4, 0, $30	
.Check2:
	checkevent EVENT_KIMONO_CABIN_5_SWITCH_2
	iffalse .Check3
	changeblock 6, 0, $30	
.Check3:
	checkevent EVENT_KIMONO_CABIN_5_SWITCH_3
	iffalse .Check4
	changeblock 8, 4, $60
.Check4:
	checkevent EVENT_KIMONO_CABIN_5_SWITCH_4
	iffalse .Done
	changeblock 16, 8, $5D	
.Done:
	endcallback	


KimonoCabin55Script:
	faceplayer
	opentext
	writetext KimonoCabin5ExplainText
	waitbutton
	closetext
	end
	
	
KimonoCabin5ExplainText:
	text "Morphea: I am"
	line "haunted by this"
	cont "dream all night."
	
	para "I'm adrift, out"
	line "of control."
	
	para "I think I hear"
	line "someone crying,"
	cont "but from where?"
	
	para "What does it"
	line "mean?"
	done
	
KimonoCabin5Lass:
	faceplayer
	appear KIMONO_CABIN_5_GRANNY1
	applymovement KIMONO_CABIN_5_GRANNY1, KimonoCabin5GrannyToLassMovement
	showemote EMOTE_SHOCK, KIMONO_CABIN_5_GRANNY1, 30
	opentext
	writetext KimonoCabin5GrannyText1
	waitbutton
	showemote EMOTE_HAPPY, KIMONO_CABIN_5_KIMONO_GIRL, 20
	writetext KimonoCabin5LassText1
	waitbutton
	turnobject KIMONO_CABIN_5_KIMONO_GIRL, LEFT
	pause 10
	turnobject KIMONO_CABIN_5_KIMONO_GIRL, UP
	pause 10
	turnobject KIMONO_CABIN_5_KIMONO_GIRL, RIGHT
	pause 10
	turnobject KIMONO_CABIN_5_KIMONO_GIRL, DOWN
	pause 10	
	writetext KimonoCabin5LassText2
	waitbutton
	writetext KimonoCabin5GrannyText2
	waitbutton
	givepoke EEVEE, NO_FORM, 5, LUM_BERRY, LOVE_BALL, GROWTH
	closetext
	setevent EVENT_KIMONO_CABIN_EEVEE
	clearevent EVENT_KIMONOS_AT_TAPESTRY
	
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp KIMONO_CABIN,  4, 3
	end

KimonoCabin5GrannyToLassMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

KimonoCabin5KimonoSpins:
	turn_head_down
	turn_head_right
	turn_head_up
	turn_head_left
	turn_head_down

KimonoCabin5Switch1Script:
	opentext
	writetext PressSwitchTextKimono5
	yesorno
	iffalse_jumpopenedtext DontSwitchKimono5
	writetext WhoWouldntKimono5
	changeblock 4, 0, $30	
	setevent EVENT_KIMONO_CABIN_5_SWITCH_1
	reloadmap
	end
	
KimonoCabin5Switch2Script:
	opentext
	writetext PressSwitchTextKimono5
	yesorno
	iffalse_jumpopenedtext DontSwitchKimono5
	writetext WhoWouldntKimono5
	changeblock 6, 0, $30	
	setevent EVENT_KIMONO_CABIN_5_SWITCH_2
	reloadmap
	end
	
KimonoCabin5Switch3Script:
	opentext
	writetext PressSwitchTextKimono5
	yesorno
	iffalse_jumpopenedtext DontSwitchKimono5
	writetext WhoWouldntKimono5
	changeblock 8, 4, $60
	setevent EVENT_KIMONO_CABIN_5_SWITCH_3
	reloadmap
	end
	
KimonoCabin5Switch4Script:
	opentext
	writetext PressSwitchTextKimono5
	yesorno
	iffalse_jumpopenedtext DontSwitchKimono5
	writetext WhoWouldntKimono5
	changeblock 16, 8, $5D	
	setevent EVENT_KIMONO_CABIN_5_SWITCH_4
	reloadmap
	end
	

PressSwitchTextKimono5:
	text "A switch!"
	line "Press it?"
	done

DontSwitchKimono5:
	text "Left it alone."
	done
	
WhoWouldntKimono5:
	text "Who wouldn't?"
	done

KimonoCabin5GrannyText1:
	text_high
    text " Old Morphea: "
	next
	text_start 

	text "That's me, as a"
	line "young person!"
	
	para "That kimono, I"
	line "remember it from"
	cont "the last tryout."

	para "The mud on the"
	line "hem-I tripped"
	cont "on the way to"
	cont "the theatre."
	
	para "I wanted to run"
	line "home and cry!"
	
	para "I trained with"
	line "my parents so"
	cont "much for it!"
	done
	
KimonoCabin5LassText1:
	text_high
    text " Young Morphea: "
	next
	text_start 

	text "And we succeeded!"
	line "The greatest gift"
	para "we inherited was"
	line "adaptability. "
	done
	
KimonoCabin5LassText2:
	text_high
    text " Young Morphea: "
	next
	text_start 

	text "<PLAYER> - take"
	line "this Eevee."
	
	para "It represents the"
	line "Growth we earn"
	para "from others who"
	line "help us to be"
	cont "our best."

	para "How will you"
	line "adapt? Who will"
	cont "you grow to be?"
	done

KimonoCabin5GrannyText2:
	text_high
    text " Old Morphea: "
	next
	text_start 
	
	text "I've led my girls"
	line "astray, hiding in"
	para "the woods like we"
	line "don't belong."
	
	para "It's time that we"
	line "stood up against"
	cont "Urgaust."
	
	para "We are strong. We"
	line "can adapt to the"
	para "challenges ahead"
	line "of us!"
	
	para "What would my"
	line "parents say if"
	para "they saw me give"
	line "up so easy?"
	done
	
KimonoEeveeText:
	text "Squee!"
	done
