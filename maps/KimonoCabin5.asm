KimonoCabin5_MapScriptHeader: ; should be like  "BurnedTowerB1F_MapScriptHeader"
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES, KimonoCabin5Callback 

	def_warp_events
	warp_event  8, 17, KIMONO_CABIN, 1
	warp_event  9, 17, KIMONO_CABIN, 1


	def_coord_events




	def_bg_events
	bg_event 8,  1, BGEVENT_READ, KimonoCabin5Switch1Script
	bg_event 0,  3, BGEVENT_READ, KimonoCabin5Switch2Script
	bg_event 0,  11, BGEVENT_READ, KimonoCabin5Switch3Script
	bg_event 16,  17, BGEVENT_READ, KimonoCabin5Switch4Script

	
	def_object_events
	object_event 16,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED,  OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_KIMONO_CABIN_5_GRANNY
	object_event 17,  0, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED,  OBJECTTYPE_SCRIPT, 0, KimonoCabin5Lass, -1
	object_event  9, 16, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED,  OBJECTTYPE_SCRIPT, 0, KimonoCabin55Script, -1
	pokemon_event  16, 0, EEVEE, -1, -1, PAL_NPC_BROWN, KimonoEeveeText, -1
	tmhmball_event 24, 33, TM_SUBSTITUTE, EVENT_KIMONO_TM_SUBSTITUTE

	object_const_def
	const KIMONO_CABIN_5_GRANNY1
	const KIMONO_CABIN_5_KIMONO_GIRL

KimonoCabin5Callback:
	checkevent EVENT_KIMONO_CABIN_5_SWITCH_1
	iffalse .Check2
	changeblock 6, 0, $4D	
.Check2:
	checkevent EVENT_KIMONO_CABIN_5_SWITCH_2
	iffalse .Check3
	changeblock 6, 2, $4D	
.Check3:
	checkevent EVENT_KIMONO_CABIN_5_SWITCH_3
	iffalse .Check4
	changeblock 8, 4, $4B
.Check4:
	checkevent EVENT_KIMONO_CABIN_5_SWITCH_4
	iffalse .Done
	changeblock 8, 4, $5D	
.Done:
	endcallback	


KimonoCabin55Script:
	faceplayer
	opentext
;	checkevent EVENT_KIMONO_CABIN_EEVEE
;	iftrue KimonoCabin5ThankYou
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
	
;KimonoCabin5ThankYou:
;	text "Morphea: Thank"
;	line "you. You have"
;	cont "been so kind to"
;	cont "my family."
;	
;	para "I hope your"
;	line "family grows"
;	cont "as strong as"
;	cont "ours."
;	done

KimonoCabin5Lass:
	faceplayer
	appear KIMONO_CABIN_5_GRANNY1
	applymovement KIMONO_CABIN_5_GRANNY1, KimonoCabin5GrannyToLassMovement
	opentext
	writetext KimonoCabin5GrannyText1
	writetext KimonoCabin5LassText1
	applymovement KIMONO_CABIN_5_KIMONO_GIRL, KimonoCabin5KimonoSpins
	writetext KimonoCabin5LassText2
	givepoke EEVEE, NO_FORM, 5, LUM_BERRY, LOVE_BALL, GROWTH
	setevent EVENT_KIMONO_CABIN_EEVEE
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp KIMONO_CABIN_5,  3, 4
	end

KimonoCabin5GrannyToLassMovement:
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
	changeblock 6, 0, $4D	
	setevent EVENT_KIMONO_CABIN_5_SWITCH_1
	reloadmap
	end
	
KimonoCabin5Switch2Script:
	opentext
	writetext PressSwitchTextKimono5
	yesorno
	iffalse_jumpopenedtext DontSwitchKimono5
	writetext WhoWouldntKimono5
	changeblock 6, 2, $4D	
	setevent EVENT_KIMONO_CABIN_5_SWITCH_2
	reloadmap
	end
	
KimonoCabin5Switch3Script:
	opentext
	writetext PressSwitchTextKimono5
	yesorno
	iffalse_jumpopenedtext DontSwitchKimono5
	writetext WhoWouldntKimono5
	changeblock 8, 4, $4B
	setevent EVENT_KIMONO_CABIN_5_SWITCH_3
	reloadmap
	end
	
KimonoCabin5Switch4Script:
	opentext
	writetext PressSwitchTextKimono5
	yesorno
	iffalse_jumpopenedtext DontSwitchKimono5
	writetext WhoWouldntKimono5
	changeblock 8, 4, $5D	
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
	text "Morphea: That-"
	line "that's me, as"
	cont "a young woman!"
	
	para "That kimono, I"
	line "remember it from"
	cont "the last tryout."

	para "The mud on the"
	line "hem-I tripped"
	cont "on the way to"
	cont "the theatre."
	
	para "I trained with"
	line "my parents so"
	cont "much for it!"
	done
	
KimonoCabin5LassText1:
	text "Young Morphea:"
	line "But Morphea - "
	
	para "We succeeded."
	line "The greatest gift"
	cont "we inherited was"
	cont "perseverance and"
	cont "adaptability. "
	
	para "With a simple"
	line "modification, "
	cont "no one noticed."
	done
	
KimonoCabin5LassText2:
	text "Young Morphea:"
	line "<PLAYER> - take"
	cont "this as thanks."

	para "How will you"
	line "adapt? Who will"
	cont "you grow to be?"
	done
	
KimonoEeveeText:
	text "Squee!"
	done
