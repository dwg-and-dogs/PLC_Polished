ShimmerSaddle_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, ShimmerSaddleBoulders

	def_warp_events ; should be ok 
	warp_event  6, 32, GAULDENROD, 10 ; 1
	warp_event  6, 33, GAULDENROD, 10 ; 2 
; first cave
	warp_event 40, 5, SHIMMER_SADDLE, 4 ; 3 
; second cave set
	warp_event 46, 15, SHIMMER_SADDLE, 3 ; backwards 4
	warp_event 44, 15, SHIMMER_SADDLE, 7 ; PROGRESS 5 
	warp_event 48, 15, SHIMMER_SADDLE, 13 ; bottom right one ; 6
; third cave set
	warp_event 48, 3, SHIMMER_SADDLE, 5 ; BACKWARDS ; 7 
	warp_event 52, 3, SHIMMER_SADDLE, 10 ; 8 
	warp_event 44, 3, SHIMMER_SADDLE, 16 ; top left  ; 9 
; fourth cave set
	warp_event 22, 13, SHIMMER_SADDLE, 8 ; 10 ; progress 
	warp_event 24, 13, SHIMMER_SADDLE, 14 ; 11 
	warp_event 20, 13, SHIMMER_SADDLE, 15 ; PROGRESS	12
; outputs
	warp_event 50, 31, SHIMMER_SADDLE, 6 ; 13
	warp_event 26, 19, SHIMMER_SADDLE, 11  ; 14
	warp_event 22, 19, SHIMMER_SADDLE, 12 ; 15
	warp_event 22, 7, SHIMMER_SADDLE, 9  ; 16 
; hole
	warp_event 40, 1, SHIMMER_SADDLE, 18 ; 17 
	warp_event 44, 9, SHIMMER_SADDLE, 18 ; 18 

	def_coord_events
	coord_event 	 9,	33, 0, ShimmerSaddle_Scene1_ManHZ
	coord_event 	45, 26, 1, ShimmerSaddle_Scene2_HZOnly
	coord_event 	13, 20, 2, ShimmerSaddle_Scene3_ManHZ
		

	def_bg_events ; 3 hidden items and four imprints and one sign 
	bg_event 28,  9, BGEVENT_ITEM + GEODE, EVENT_SHIMMER_HIDDEN_1
	bg_event 48, 32, BGEVENT_ITEM + BUB_BALL, EVENT_SHIMMER_HIDDEN_2
	bg_event 29, 22, BGEVENT_ITEM + JEZE_BALL, EVENT_SHIMMER_HIDDEN_3
;SIGN
	bg_event  9, 30, BGEVENT_JUMPTEXT, ShimmerSaddleSignText
;IMPRINTS
	bg_event 10, 21, BGEVENT_JUMPTEXT, ShimmerText1
	bg_event 30, 25, BGEVENT_JUMPTEXT, ShimmerText2
	bg_event 52, 31, BGEVENT_JUMPTEXT, ShimmerText3
	bg_event 44, 11, BGEVENT_JUMPTEXT, ShimmerText4


	def_object_events ; 5 items, the Hzoroark, and Mankey, and three instances of the old man 
; FIRST SET 
	object_event  10, 33, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT,0, ObjectEvent, EVENT_SHIMMER_GRAMPS_1 ;
	object_event  15, 32, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, H__ZOROARK, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SHIMMER_HZ_1 
	object_event  15, 32, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SHIMMER_MATRON_1 ; initialize 
; SECOND SET 
	object_event  44, 21, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, H__ZOROARK, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SHIMMER_HZ_2 
	object_event  45, 24, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, MANKEY, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SHIMMER_MANKEY_2
; THIRD SET 
	object_event  13, 21, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ShimmerSaddleGramps2Script, EVENT_SHIMMER_GRAMPS_2 ;
	object_event  12, 5, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, H__ZOROARK, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SHIMMER_HZ_3 ; initialize
	object_event  12, 3, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SHIMMER_MATRON_2 ;	
; boulder 
	strengthboulder_event 42, 1, EVENT_SHIMMER_SADDLE_BOULDER
; items, etc
	itemball_event   2, 20, ELIXIR, 1, EVENT_SHIMMER_ITEM_1
	itemball_event  31, 27, SITRUS_BERRY, 1, EVENT_SHIMMER_ITEM_2
	itemball_event  20, 23, REVIVAL_HERB, 1, EVENT_SHIMMER_ITEM_3
	itemball_event  55, 6, 	REVIVAL_HERB, 1, EVENT_SHIMMER_ITEM_4
;strengthboulders
	strengthboulder_event 13, 20 
	strengthboulder_event 18, 8 

;fruittrees
	fruittree_event 24, 30, FRUITTREE_SADDLE_1, LIECHI_BERRY, PAL_NPC_RED
	fruittree_event 49, 34, FRUITTREE_SADDLE_2, SALAC_BERRY, PAL_NPC_RED

	object_const_def
	const SHIMMER_GRAMPS_1
	const SHIMMER_HZ_1
	const SHIMMER_MATRON_1
	const SHIMMER_HZ_2
	const SHIMMER_MON_2
	const SHIMMER_GRAMPS_2
	const SHIMMER_HZ_3
	const SHIMER_MATRON_2
	const SHIMMER_BOULDER_1


ShimmerSaddleBoulders:
	usestonetable .BoulderTable
	endcallback

.BoulderTable:
	stonetable 17, SHIMMER_BOULDER_1, .Disappear
	db -1 ; end

.Disappear:
	disappear SHIMMER_BOULDER_1
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	jumpthistext

	text "The boulder fell"
	line "through!"
	
	para "There's a sound"
	line "of water filling"
	cont "up a basin..."
	done

ShimmerSaddleSignText:
	text "Shimmer Saddle:"
	line "Honor your elders"
	done

ShimmerSaddle_Scene1_ManHZ:
	follow SHIMMER_GRAMPS_1, PLAYER
	applymovement SHIMMER_GRAMPS_1, ShimmerGramps1Move
	stopfollow
	turnobject SHIMMER_GRAMPS_1, LEFT
	showtext ShimmerGramps1Text
	pause 10
	playsound SFX_DITTO_TRANSFORM 
	waitsfx
	disappear SHIMMER_HZ_1
	appear SHIMMER_MATRON_1
	applyonemovement SHIMMER_MATRON_1, step_down
	turnobject SHIMMER_MATRON_1, LEFT
	showtext ShimmerBeckon
	applyonemovement SHIMMER_MATRON_1, step_up
	turnobject SHIMMER_GRAMPS_1, RIGHT 
	showemote EMOTE_SHOCK, SHIMMER_GRAMPS_1, 10
	applyonemovement SHIMMER_MATRON_1, step_up
	applyonemovement SHIMMER_MATRON_1, step_up
	applyonemovement SHIMMER_MATRON_1, step_up
	applyonemovement SHIMMER_MATRON_1, step_up
	disappear SHIMMER_MATRON_1
	setevent EVENT_SHIMMER_HZ_1
	setevent EVENT_SHIMMER_MATRON_1
	showtext ShimmerGramps1Text2
	applymovement SHIMMER_GRAMPS_1, ShimmerGramps1Move2
	setscene $1
	disappear SHIMMER_GRAMPS_1
	setevent EVENT_SHIMMER_GRAMPS_1
	end
	
ShimmerGramps1Text:
	text "The ridge is as"
	line "it was, 40 years"
	cont "ago! My wife must"
	cont "be up ahead."
	done
	
ShimmerBeckon:
	text "I'm here! Higher"
	line "up the mountain!"
	done
	
ShimmerGramps1Text2:
	text "I heard her!"
	line "We have to go!"
	done
	
ShimmerGramps1Move:
	step_right
	step_right
	step_end
	
ShimmerGramps1Move2:
	step_right
	step_right
	step_right
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

ShimmerSaddle_Scene2_HZOnly:
	pause 30
	applymovement SHIMMER_HZ_2, ShimmerHZ2_Stalks
	showemote EMOTE_SHOCK, SHIMMER_MON_2, 30 ; RIP 
	playsound SFX_CUT
	waitsfx
	pause 30
	cry MANKEY
	disappear SHIMMER_MON_2
	setevent EVENT_SHIMMER_MANKEY_2
	pause 30
	refreshscreen
	pokepic H__ZOROARK
	waitbutton
	closepokepic
	applymovement SHIMMER_HZ_2, ShimmerHZ2_Stalks2
	disappear SHIMMER_HZ_2
	setevent EVENT_SHIMMER_HZ_2
	setscene $2
	end

ShimmerHZ2_Stalks:
	fix_facing 
	slide_step_down
	fast_jump_step_down
	step_end

ShimmerHZ2_Stalks2:
	fix_facing 
	fast_jump_step_up
	slide_step_up
	step_end
	
ShimmerSaddle_Scene3_ManHZ:
	showemote EMOTE_HAPPY, SHIMMER_GRAMPS_2, 30
	applyonemovement PLAYER, step_right
	turnobject PLAYER, LEFT
	showtext ShimmerGramps2Text1
	applyonemovement SHIMMER_GRAMPS_2, step_up
	follow SHIMMER_GRAMPS_2, PLAYER
	applymovement SHIMMER_GRAMPS_2, ShimmerGramps2Move1
	showtext ShimmerGramps2Text2
	applymovement SHIMMER_GRAMPS_2, ShimmerGramps2Move2
	stopfollow
	pause 30
	showemote EMOTE_HEART, SHIMMER_GRAMPS_2, 30
	showtext ShimmerGramps2Text3
	pause 20
	applyonemovement SHIMER_MATRON_2, step_down
	pause 20
	applyonemovement SHIMER_MATRON_2, step_down
	pause 20
	playsound SFX_DITTO_TRANSFORM 
	waitsfx
	disappear SHIMER_MATRON_2
	setevent EVENT_SHIMMER_MATRON_2
	appear SHIMMER_HZ_3
	showtext ShimmerHZText2
	showemote EMOTE_SHOCK, SHIMMER_GRAMPS_2, 30
	showtext ShimmerGramps2Text4
	applyonemovement SHIMMER_GRAMPS_2, step_right
	turnobject SHIMMER_GRAMPS_2, LEFT
	applyonemovement PLAYER, step_up
;	setlasttalked SHIMMER_HZ_3
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon H__ZOROARK, 20
	startbattle
	disappear SHIMMER_HZ_3
	setevent EVENT_SHIMMER_HZ_3
	reloadmapafterbattle
	setscene $3
	turnobject PLAYER, RIGHT
	opentext
	writetext ShimmerGramps2Text5
	waitbutton
	verbosegiveitem SHINY_STONE
	closetext
	warp GAULDENROD, 15, 17 
	end
	

ShimmerGramps2Text1:
	text "You moved it!"
	line "Let's get to the"
	cont "top!"
	done

ShimmerGramps2Text2:
	text "This tree is for"
	line "Lum Berries! They"
	cont "cure any ailment."
	done
	
ShimmerGramps2Text3:
	text "Cindy? I knew it"
	line "wasn't too late!"
	done

ShimmerHZText2:
	text "Hiss!"
	done

ShimmerGramps2Text4:
	text "Ah! What are you?"
	line "<PLAYER>, help!"
	done

ShimmerGramps2Text5:
	text "Thank you for"
	line "indulging my"
	cont "request..."
	
	para "Without you, I'd"
	line "have followed an"
	para "illusion until I"
	line "joined her."
	
	para "Let's go home."
	line "There's work to"
	cont "be done."
	
	para "Oh, I found this"
	line "stone while I was"
	cont "waiting for you."
	done

ShimmerGramps2Move1:
	step_up
	step_up
	step_left
	step_left
	step_left
	step_up
	step_up
	turn_head_down
	step_end

ShimmerGramps2Move2:
	step_left
	step_left
	step_left
	step_up
	step_up
	step_up
	step_up
	step_right
	step_right
	step_up
	step_up
	step_right
	step_right
	step_right
	step_up
	step_up
	step_up
	step_up
	step_end


ShimmerText1:
	text "The text is carv-"
	line "ed into the wall:"
	
	para "This quest is so"
	line "boring! The old"
	cont "man won't stop"
	cont "about herbs!"
	done
	
ShimmerText2:
	text "The text is carv-"
	line "ed into the wall:"
	
	para "The old lady has"
	line "no idea where she"
	para "is going! She just"
	line "goes on and on, "
	para "saying the path"
	line "is unknown."
	done
	
ShimmerText3:
	text "The text is carv-"
	line "ed into the wall:"
	
	para "To my family: It"
	line "wasn't my fault."
	para "The mudslide came"
	line "out of nowhere."
	para "Now, I can't find"
	line "her... I had to"
	cont "run. Forgive me."
	done
	
ShimmerText4:
	text "The text is carv-"
	line "ed into the wall:"
	
	para "It came so fast,"
	line "we had no time to"
	para "prepare... All"
	line "our supplies,"
	para "stolen in an"
	line "instant, by a"
	para "flash of light?"
	line "My elder hasn't"
	para "seen any #mon"
	line "like it..."
	done

ShimmerSaddleGramps2Script:
	; debug tech remove
	setscene $2
	; debug tech todo 
	jumptextfaceplayer SaddleGramps2Text
	
SaddleGramps2Text:
	text "Drat! The boulder"
	line "blocks the path."
	
	para "You'll have to go"
	line "around."
	done
