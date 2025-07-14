KimonoCabin2_MapScriptHeader: 
	def_scene_scripts
	
	
	def_callbacks


	def_warp_events
	warp_event  8, 13, KIMONO_CABIN, 1
	warp_event  9, 13, KIMONO_CABIN, 1


	def_coord_events


	def_bg_events



	def_object_events
	object_event  9, 10, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN,  OBJECTTYPE_SCRIPT, 0, KimonoCabin2SenseScript, -1
	object_event  7,  9, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, LARVITAR, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Kimono2LarvitarScript, EVENT_KIMONO_CABIN_LARVITAR
	
	object_const_def
	const KIMONO_CABIN_2_KIMONO_GIRL
	const KIMONO_CABIN_2_LARVITAR

KimonoCabin2SenseScript:
	faceplayer
	opentext
	checkevent EVENT_SPOOKED_HEDGEHOG
	iftrue SpookedHedgeHogTryAgain
	writetext Kimono2ExplainsTheGameText
	waitbutton
	checkevent EVENT_GOT_GEODES
	iftrue .SkipGeodes
	writetext Kimono2GivesGeode
	verbosegiveitem GEODE
	setevent EVENT_GOT_GEODES
.SkipGeodes
	closetext
	end

SpookedHedgeHogTryAgain:
	writetext SpookedHedgehogText
	waitbutton
	moveobject KIMONO_CABIN_2_LARVITAR, 7, 9
	appear KIMONO_CABIN_2_LARVITAR
	clearevent EVENT_SPOOKED_HEDGEHOG
	closetext
	end	
	closetext

Kimono2ExplainsTheGameText:
	text "We have to play"
	line "Whack-A-Mole!"
	
	para "That pesky little"
	line "hedgehog will be"
	para "removed in no"
	line "time."
	
	para "Now, my grandma"
	line "said this is the"
	para "key to finding"
	line "them:"
	
	para "Use your SENSE"
	line "of direction."
	
	para "Whatever that"
	line "means!"
	done

SpookedHedgehogText:
	text "Oh, you spooked"
	line "the hedgehog."
	
	para "Did you follow"
	line "your inner SENSE?"
	
	para "Let that be your"
	line "North star."
	
	para "I bet if I wait,"
	line "it'll come back."
	done

Kimono2GivesGeode:
	text "Oh, you might"
	line "want this to help"
	cont "catch it."
	done

Kimono2LarvitarScript:
	; figure out which one
	checkevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_4
	iftrue FifthHedgeHogInteraction ; only from the E 
	checkevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_3
	iftrue HedgeHogMoves4thTime ; from 5-7 to 9-5 ; only from the S
	checkevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_2
	iftrue HedgeHogMoves3rdTime ; from 7-5 to 5-7 only from the N 
	checkevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_1
	iftrue HedgeHogMoves2ndTime ; from 3-5 to 7-5 only from the E
;HedgeHogMoves1stTime: ; from 7-9 to 3-5 only from the S
	readvar VAR_FACING ; player is facing up from the S
	ifnotequal UP, SpookedHedgehogScript
	showemote EMOTE_SHOCK, KIMONO_CABIN_2_LARVITAR, 15 
	playsound SFX_SQUEAK
	waitsfx	
	applymovement KIMONO_CABIN_2_LARVITAR, FirstLarvitarMovement
	setevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_1
	end

HedgeHogMoves2ndTime:; player is facing left freom th E
	readvar VAR_FACING
	ifnotequal LEFT, SpookedHedgehogScript
	showemote EMOTE_SHOCK, KIMONO_CABIN_2_LARVITAR, 15 
	playsound SFX_SQUEAK
	waitsfx	
	applymovement KIMONO_CABIN_2_LARVITAR, SecondLarvitarMovement
	setevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_2
	end
	
HedgeHogMoves3rdTime:; player is facing down from the N 
	readvar VAR_FACING
	ifnotequal DOWN, SpookedHedgehogScript
	showemote EMOTE_SHOCK, KIMONO_CABIN_2_LARVITAR, 15 
	playsound SFX_SQUEAK
	waitsfx	
	applymovement KIMONO_CABIN_2_LARVITAR, ThirdLarvitarMovement
	setevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_3
	end
	
HedgeHogMoves4thTime:; player is facing up from the S
	readvar VAR_FACING
	ifnotequal UP, SpookedHedgehogScript
	showemote EMOTE_SHOCK, KIMONO_CABIN_2_LARVITAR, 15 
	playsound SFX_SQUEAK
	waitsfx	
	applymovement KIMONO_CABIN_2_LARVITAR, FourthLarvitarMovement
	setevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_4
	end


FifthHedgeHogInteraction: ; right now, this does work. But for some reason the other ones don't. May need to just brute force it. 
	readvar VAR_FACING 
	ifnotequal LEFT, SpookedHedgehogScript
	showemote EMOTE_SHOCK, KIMONO_CABIN_2_LARVITAR, 15 
	earthquake 30
	loadwildmon LARVITAR, 15
	startbattle
	setevent EVENT_KIMONO_CABIN_LARVITAR
	setevent EVENT_BATTLED_CABIN_LARVITAR
	disappear KIMONO_CABIN_2_LARVITAR
	reloadmapafterbattle
	disappear KIMONO_CABIN_2_LARVITAR
	applymovement KIMONO_CABIN_2_KIMONO_GIRL, KimonoCabin2GirlMoves
	opentext
	writetext Kimono2GladThatsOverText
	waitbutton
	writetext Kimono2TakeThisAsThanks
	waitbutton
	verbosegiveitem CHOICE_SCARF
	writetext Kimono2TakeThisAsThanks2
	waitbutton
	verbosegiveitem SUN_STONE
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp KIMONO_CABIN,  3,  8
	end
	
SpookedHedgehogScript:
	showemote EMOTE_SHOCK, KIMONO_CABIN_2_LARVITAR, 15 
	earthquake 30
	playsound SFX_RUN
	waitsfx
	disappear KIMONO_CABIN_2_LARVITAR
	setevent EVENT_SPOOKED_HEDGEHOG
	clearevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_1
	clearevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_2
	clearevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_3
	clearevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_4	
	opentext
	writetext HedgehogSpookedText
	waitbutton
	closetext
	end

KimonoCabin2GirlMoves:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_right
	step_right
	turn_head_right
	step_end

Kimono2GladThatsOverText:
	text "Nice job dealing"
	line "with that ornery"
	cont "creature."
	
	para "It would have eat-"
	line "en all the dirt"
	cont "from the garden"
	cont "if we didn't deal"
	cont "with it!"
	done

Kimono2TakeThisAsThanks:
	text "Take this as"
	line "thanks."
	
	para "I knit it myself,"
	line "as I had cellar"
	cont "duty before Vera."
	done

Kimono2TakeThisAsThanks2:
	text "Oh, hey, it dug"
	line "up this weird"
	cont "stone. Want it?"
	done


HedgehogSpookedText:
	text "The hedgehog is"
	line "hiding under the"
	cont "ground."
	done

FirstLarvitarMovement: ; 7-9 to 3-5 only from the S 
	fix_facing
	fast_jump_step_up
;	fast_jump_step_up
	fast_jump_step_left
;	fast_jump_step_left
;	fast_jump_step_up
	fast_jump_step_up
	step_end

SecondLarvitarMovement: ; from 3-5 to 7-5 only from the E
	fix_facing
	fast_jump_step_up
;	fast_jump_step_up
	fast_jump_step_right
;	fast_jump_step_right
	fast_jump_step_right
;	fast_jump_step_right
	fast_jump_step_down
;	fast_jump_step_down
	step_end


ThirdLarvitarMovement:; from 7-5 to 5-7 only from the N 
	fix_facing
	fast_jump_step_down
;	fast_jump_step_down
	fast_jump_step_left
;	fast_jump_step_left
	step_end


FourthLarvitarMovement:; from 5-7 to 9-5 ; only from the S, last check is the E 
	fix_facing
	fast_jump_step_right
;	fast_jump_step_right
	fast_jump_step_right
;	fast_jump_step_right
	fast_jump_step_up
;	fast_jump_step_up
	step_end
