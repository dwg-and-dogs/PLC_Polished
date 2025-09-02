KimonoCabin3_MapScriptHeader: ; fix the warps, then reduce the boulders, then write the stonetable, then ready to play it 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_STONETABLE, KimonoCabin3Boulders
	

	def_warp_events
	warp_event  5, 29, 	KIMONO_CABIN, 1
	warp_event 10, 7, 	KIMONO_CABIN, 1 ; finish
	warp_event  4, 17, 	KIMONO_CABIN_3, 5 ; halfway point
	; holes  part 1
	warp_event  1, 24, KIMONO_CABIN_3, 1 ; 4
	warp_event  1, 25, KIMONO_CABIN_3, 1 ; 5
	warp_event  4, 24, KIMONO_CABIN_3, 1 ; 6
	warp_event  5, 24, KIMONO_CABIN_3, 1 ; 7
	warp_event  4, 22, KIMONO_CABIN_3, 1 ; 8
	warp_event  5, 22, KIMONO_CABIN_3, 1 ; 9
	warp_event 10, 26, KIMONO_CABIN_3, 1 ; 10
	warp_event 11, 26, KIMONO_CABIN_3, 1 ; 11
	warp_event 13, 22, KIMONO_CABIN_3, 1 ; 12
	warp_event 13, 23, KIMONO_CABIN_3, 1 ; 13
	; holes part 2
	warp_event  5, 15, KIMONO_CABIN_3, 3 ; 14
	warp_event  5, 14, KIMONO_CABIN_3, 3 ; 15
	warp_event  3, 12, KIMONO_CABIN_3, 3 ; 16
	warp_event  3, 13, KIMONO_CABIN_3, 3 ; 17
	warp_event  0, 4, KIMONO_CABIN_3, 3 ; 18
	warp_event  0, 5, KIMONO_CABIN_3, 3 ; 19
	warp_event  0, 8, KIMONO_CABIN_3, 3 ; 20
	warp_event  0, 9, KIMONO_CABIN_3, 3	; 21
	warp_event  4, 9, KIMONO_CABIN_3, 3 ; 22
	warp_event  5, 9, KIMONO_CABIN_3, 3 ; 23
	warp_event  4,  3, KIMONO_CABIN_3, 3 ; 24
	warp_event  5, 3, KIMONO_CABIN_3, 3 ; 25
	warp_event  8,  2, KIMONO_CABIN_3, 3 ; 26
	warp_event  9,  2, KIMONO_CABIN_3, 3 ; 27
	warp_event  16, 4, KIMONO_CABIN_3, 3 ; 28
	warp_event  17, 4, KIMONO_CABIN_3, 3 ; 29
	warp_event  17, 6, KIMONO_CABIN_3, 3 ; 30
	warp_event  17, 7, KIMONO_CABIN_3, 3 ; 31

	
	def_coord_events



	def_bg_events



	def_object_events

	object_event  9,  5, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, SNEASEL, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, KimonoCabin3Sneasel, EVENT_KIMONO_CABIN_SNEASEL
	; part 1
	strengthboulder_event 4, 25, EVENT_KIMONO_CABIN_3_BOULDER_1 ; keep
	strengthboulder_event 2, 24, EVENT_KIMONO_CABIN_3_BOULDER_2; keep
	; part 2
	strengthboulder_event  4, 15, EVENT_KIMONO_CABIN_3_BOULDER_3 ; keep
	strengthboulder_event  1,  9, EVENT_KIMONO_CABIN_3_BOULDER_4 ; keep
	strengthboulder_event  8,  1, EVENT_KIMONO_CABIN_3_BOULDER_5 ; keep
	; others 
	object_event  5, 26, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN,  OBJECTTYPE_SCRIPT, 0, KimonoCabin33Script, -1
	object_event  0, 22, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, UMBREON, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, KimonoCabin3BoulderResetScript, -1 
	object_event  6, 17, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, UMBREON, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KimonoCabin3BoulderResetScript, -1 
	tmhmball_event 9, 10, TM_DARK_PULSE, EVENT_KIMONO_CABIN_TM_DARK_PULSE
	itemball_event 16, 0, DUSK_STONE, 1, EVENT_KIMONO_CABIN_DUSK_STONE


	object_const_def
	const KIMONO_CABIN_3_SNEASEL
	; PART 1
	const KIMONO_CABIN_3_BOULDER_1
	const KIMONO_CABIN_3_BOULDER_2
	; PART 2
	const KIMONO_CABIN_3_BOULDER_3
	const KIMONO_CABIN_3_BOULDER_4
	const KIMONO_CABIN_3_BOULDER_5
	

KimonoCabin3Boulders:
	usestonetable .BoulderTable
	endcallback

.BoulderTable:
	; x = warpable hole 
	stonetable 6, KIMONO_CABIN_3_BOULDER_1, .Disappear1
	;
	stonetable 4, KIMONO_CABIN_3_BOULDER_2, .Disappear2
	stonetable 5, KIMONO_CABIN_3_BOULDER_2, .Disappear2
	stonetable 6, KIMONO_CABIN_3_BOULDER_2, .Disappear2
	stonetable 7, KIMONO_CABIN_3_BOULDER_2, .Disappear2	
	stonetable 8, KIMONO_CABIN_3_BOULDER_2, .Disappear2
	stonetable 9, KIMONO_CABIN_3_BOULDER_2, .Disappear2
	stonetable 10, KIMONO_CABIN_3_BOULDER_2, .Disappear2
	stonetable 11, KIMONO_CABIN_3_BOULDER_2, .Disappear2	
	stonetable 12, KIMONO_CABIN_3_BOULDER_2, .Disappear2
	stonetable 13, KIMONO_CABIN_3_BOULDER_2, .Disappear2
	; 
	stonetable 14, KIMONO_CABIN_3_BOULDER_3, .Disappear3
	stonetable 15, KIMONO_CABIN_3_BOULDER_3, .Disappear3
	stonetable 16, KIMONO_CABIN_3_BOULDER_3, .Disappear3
	stonetable 17, KIMONO_CABIN_3_BOULDER_3, .Disappear3
	stonetable 21, KIMONO_CABIN_3_BOULDER_3, .Disappear3
	stonetable 22, KIMONO_CABIN_3_BOULDER_3, .Disappear3
	stonetable 23, KIMONO_CABIN_3_BOULDER_3, .Disappear3
	; 
	stonetable 18, KIMONO_CABIN_3_BOULDER_4, .Disappear4
	stonetable 19, KIMONO_CABIN_3_BOULDER_4, .Disappear4
	stonetable 20, KIMONO_CABIN_3_BOULDER_4, .Disappear4
	stonetable 21, KIMONO_CABIN_3_BOULDER_4, .Disappear4
	stonetable 22, KIMONO_CABIN_3_BOULDER_4, .Disappear4
	stonetable 23, KIMONO_CABIN_3_BOULDER_4, .Disappear4
	stonetable 24, KIMONO_CABIN_3_BOULDER_4, .Disappear4
	stonetable 25, KIMONO_CABIN_3_BOULDER_4, .Disappear4
	stonetable 26, KIMONO_CABIN_3_BOULDER_4, .Disappear4
	stonetable 27, KIMONO_CABIN_3_BOULDER_4, .Disappear4
	; 
	stonetable 26, KIMONO_CABIN_3_BOULDER_5, .Disappear5
	stonetable 27, KIMONO_CABIN_3_BOULDER_5, .Disappear5
	stonetable 28, KIMONO_CABIN_3_BOULDER_5, .Disappear5
	stonetable 29, KIMONO_CABIN_3_BOULDER_5, .Disappear5
	stonetable 30, KIMONO_CABIN_3_BOULDER_5, .Disappear5
	stonetable 31, KIMONO_CABIN_3_BOULDER_5, .Disappear5
	; 
	db -1 ; end

.Disappear1:
	disappear KIMONO_CABIN_3_BOULDER_1
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	reloadmappart
	jumpthistext

	text "The boulder fell"
	line "down!"
	done	

	
.Disappear2:
	disappear KIMONO_CABIN_3_BOULDER_2
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	reloadmappart
	jumpthistext

	text "The boulder fell"
	line "down!"
	done
	
.Disappear3:
	disappear KIMONO_CABIN_3_BOULDER_3
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	reloadmappart
	jumpthistext

	text "The boulder fell"
	line "down!"
	done

.Disappear4:
	disappear KIMONO_CABIN_3_BOULDER_4
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	reloadmappart
	jumpthistext

	text "The boulder fell"
	line "down!"
	done


.Disappear5:
	disappear KIMONO_CABIN_3_BOULDER_5
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	reloadmappart
	jumpthistext

	text "The boulder fell"
	line "down!"
	done

KimonoCabin3BoulderResetScript:
	opentext
	writetext CallBackBoulderText
	waitbutton
	yesorno
	iffalse .Done
	closetext
.CheckBoulder1:
	checkevent EVENT_KIMONO_CABIN_3_BOULDER_1
	iffalse .CheckBoulder2
	earthquake 80
	clearevent EVENT_KIMONO_CABIN_3_BOULDER_1	
	moveobject KIMONO_CABIN_3_BOULDER_1, 4, 25	
	appear KIMONO_CABIN_3_BOULDER_1	
.CheckBoulder2:
	checkevent EVENT_KIMONO_CABIN_3_BOULDER_2
	iffalse .CheckBoulder3
	earthquake 80
	clearevent EVENT_KIMONO_CABIN_3_BOULDER_2	
	moveobject KIMONO_CABIN_3_BOULDER_2, 2, 24
	appear KIMONO_CABIN_3_BOULDER_2
.CheckBoulder3:
	checkevent EVENT_KIMONO_CABIN_3_BOULDER_3
	iffalse .CheckBoulder4
	earthquake 80
	clearevent EVENT_KIMONO_CABIN_3_BOULDER_3	
	moveobject KIMONO_CABIN_3_BOULDER_3, 4, 15
	appear KIMONO_CABIN_3_BOULDER_3
.CheckBoulder4:
	checkevent EVENT_KIMONO_CABIN_3_BOULDER_4
	iffalse .CheckBoulder5
	earthquake 80
	clearevent EVENT_KIMONO_CABIN_3_BOULDER_4	
	moveobject KIMONO_CABIN_3_BOULDER_4, 1, 9
	appear KIMONO_CABIN_3_BOULDER_4
.CheckBoulder5:
	checkevent EVENT_KIMONO_CABIN_3_BOULDER_5
	iffalse_jumptext BouldersAreAllBack
	earthquake 80
	clearevent EVENT_KIMONO_CABIN_3_BOULDER_5	
	moveobject KIMONO_CABIN_3_BOULDER_5, 8, 1
	appear KIMONO_CABIN_3_BOULDER_5
; finish 
	opentext
	writetext BouldersAreBackText
	waitbutton
.Done:
	closetext
	end
	
CallBackBoulderText:
	text "Call back the"
	line "boulders?"
	done

BouldersAreBackText:
	text "Boulders are"
	line "levitated back!"
	done
	
BouldersAreAllBack:
	text "The boulders are"
	line "all up here!"
	done
	
KimonoCabin33Script:
	faceplayer
	opentext
	checkevent EVENT_KIMONO_CABIN_SNEASEL
	iftrue_jumptext KimonoCabin33_BeatSneaselText
	checkevent EVENT_KIMONO_CABIN_3_JEZEBALLS
	iftrue .GaveBalls
	writetext KimonoCabin3GivesJezeballs
	verbosegiveitem JEZE_BALL, 5
	setevent EVENT_KIMONO_CABIN_3_JEZEBALLS
	waitbutton
.GaveBalls:
	writetext KimonoCabin3Explains1Text
	waitbutton
	closetext
	end

KimonoCabin3GivesJezeballs:
	text "Samaria: Whatever"
	line "is up here must"
	cont "love the dark."
	
	para "Take these."
	done
	
KimonoCabin3Explains1Text:
	text "There's so many"
	line "holes in the"
	cont "attic rafters - "
	
	para "Try not to fall"
	line "thru, and don't"
	cont "mind the clutter."
	
	para "If you need help,"
	line "my Umbreons will"
	cont "rearrange things"
	cont "for you."
	done

KimonoCabin33_BeatSneaselText:
	text "It was a feisty"
	line "Sneasel making"
	cont "that racket!"
	
	para "Thanks for your"
	line "help. It's scary,"
	para "being in the dark"
	line "unsure of your"
	cont "next steps."
	line 

KimonoCabin3Sneasel:
	cry SNEASEL
	pause 15
	loadwildmon SNEASEL, 19
	startbattle
	disappear KIMONO_CABIN_3_SNEASEL
	setevent EVENT_KIMONO_CABIN_SNEASEL
	reloadmapafterbattle
	end
