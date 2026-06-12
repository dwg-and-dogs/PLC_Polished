StadiumGroundsFacility_MapScriptHeader:
	def_scene_scripts
	; todo prevent using items in battle 
		; probably in engine/item_effects 
		; maybe check the map you're on ? 
	; todo, spawn point to gauldenrod unless you have not yet beaten the game then it sends you to azalea 
	
	def_callbacks
;	callback MAPCALLBACK_NEWMAP, HiddenGrottoCallback --> StadiumGroundsFacilityCallback
;	callback MAPCALLBACK_OBJECTS, StadiumGroundsFacilityNPCs ; c.f. the hidden grotto?
	
	def_warp_events
	; you're warped in and out of these - nothing to do here 
	
	def_coord_events 
	coord_event 18, 15, 0, StadiumFacility_Pokemon1Event
;	coord_event 18, 15, 1, StadiumFacility_Trainers1Event
;	coord_event 18, 15, 2, StadiumFacility_Pokemon2Event
;	coord_event 18, 15, 3, StadiumFacility_Trainers2Event
;	coord_event 18, 15, 4, StadiumFacility_Pokemon3Event
;	coord_event 18, 15, 5, StadiumFacility_Trainers3Event
;	coord_event 18, 15, 6, StadiumFacility_Pokemon4Event
;	coord_event 18, 15, 7, StadiumFacility_Trainers4Event
;	coord_event 18, 15, 8, StadiumFacility_Pokemon5Event
;	coord_event 18, 15, 9, StadiumFacility_Trainers5Event
;	coord_event 18, 15, 10, StadiumFacility_TrainersEndlessEvent	

	def_bg_events
; 


	def_object_events
 	object_event 19, 15, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FacilityClerkScript, EVENT_FACILITY_CLERK
 	object_event 14, 15, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FacilityClerkRetireScript, EVENT_FACILITY_CLERK	
;	object_event 0, 0, SPRITE_FACILITY_MON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FacilityMonScript, EVENT_FACILITY_MON
;	object_event 0, 0, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FacilityMonBallScript, EVENT_FACILITY_MON_BALL

;	object_event 0, 0, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_BUG_MANIAC
;	object_event 0, 0, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_AROMA_LADY
;	object_event 0, 0, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_SAGE
;	object_event 0, 0, SPRITE_NOMADF, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_NOMADF
;	object_event 0, 0, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_NINJA
;	object_event 0, 0, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_BRIGADER

;	object_event 0, 0, SPRITE_HOLLIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_SILAS
;	object_event 0, 0, SPRITE_SANDRA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_SANDRA
;	object_event 0, 0, SPRITE_SAMSARA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_SYBIL
;	object_event 0, 0, SPRITE_BARBEAU, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_REMY
;	object_event 0, 0, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_AMOS
;	object_event 0, 0, SPRITE_KURT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_KURT
;	object_event 0, 0, SPRITE_MEJIMI, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_VESPER

	
	object_const_def
 	const STADIUM_FACILITY_CLERK
; 	const STADIUM_FACILITY_MON

; 	const STADIUM_FACILITY_BUG_CATCHER
; 	const STADIUM_FACILITY_AROMA_LADY
; 	const STADIUM_FACILITY_SAGE
; 	const STADIUM_FACILITY_NOMADF
; 	const STADIUM_FACILITY_NINJA
; 	const STADIUM_FACILITY_BRIGADER

; 	const STADIUM_FACILITY_HOLLIS 
; 	const STADIUM_FACILITY_SANDRA
; 	const STADIUM_FACILITY_SAMSARA
; 	const STADIUM_FACILITY_BARBEAU
; 	const STADIUM_FACILITY_AMOS
; 	const STADIUM_FACILITY_KURTF
; 	const STADIUM_FACILITY_MEJIMI

FacilityClerkRetireScript:
	faceplayer
	opentext
	writethistext
		text "Would you like"
		line "to retire?"
		
		para "Your current"
		line "streak is:"
; print battle tower number 		
		done
	waitbutton
	yesorno
	iffalse_jumptext KeepBattlingText
	writethistext
		text "Really, you're"
		line "ready to end?"
		done
	waitbutton
	yesorno
	iffalse_jumptext KeepBattlingText
	waitbutton
	closetext
	; check if you've beaten the game yet
	; if not, warp you to azalea town 
	; todo add warp sfx 
	warp STADIUM_GROUNDS_FACILITY_PREP, 13, 12
	done

KeepBattlingText:
	text "Good luck!"
	done

FacilityClerkScript:
	faceplayer
	opentext
	writethistext
		text "When you're ready"
		line "talk to me from"
		cont "the west."
		done
	waitbutton
	closetext
	end

StadiumFacility_Pokemon1Event:
	; clerk is with the player
	turnobject STADIUM_FACILITY_CLERK, LEFT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	; clear the events
	clearevent EVENT_STADIUM_HEALED
	writetext FacilityExplainBallText
	waitbutton
	; special FacilityThreeRandoms N ; here, written for three mons . This special is shared 
		; between rolling for two pokemon and three trainers later in the script, 
		; but for simplicity we will just keep it the same. 
		
		; special, in which three numbers are rolled from 0 TO N-1, 
		; and the values are stored in ram at 
		; wStadiumFacilityFirstTrainer and 
		; wStadiumFacilitySecondTrainer, and
		; wStadiumFacilityThirdTrainer, where each
		; value is different from the last. 
		; the values of each range from 0 to N-1. 

	; special ReadRandom 1
		; special, in which the first of the three random numbers is read 
	; if the value of wStadiumFacilityFirstTrainer is equal to 0, then .. 
	ifequal 0, .TellPokemon1_0	
	ifequal 1, .TellPokemon1_1
;	ifequal 2, .TellPokemon1_2
;.TellPokemon1_2:
	writethistext
		text "Ariados."
		done
	sjump .ToldPokemon 
.TellPokemon1_0:
	writethistext
		text "Ledian."
		done
	sjump .ToldPokemon 
.TellPokemon1_1:
	writethistext
		text "Ancestor Noctowl."
		done
;	sjump .ToldPokemon 
.ToldPokemon:
	waitbutton
	writethistext
		text "Would you like to"
		line "try to catch it?"
		
		para "If no, then I can"
		line "call a random other"
		cont "#mon."
		done
	waitbutton
	yesorno
	; ===== I need a bit of help here -- I don't want to have multiple copies of this running around. 
	; ===== I only want one section that is either pre-loadded with ReadRandom 1 or ReadRandom 2. 

; ============== start section I need help with 
	; special ReadRandom 1
	iftrue .DontCallSecondMon
	; special Readrandom 2 
			; this overwrites whatever the value of ReadRandom1 was 
	.DontCallSecondMon:
;	special ReadFirstRandom
	; if the value is equal to 0, then .. 
	ifequal 0, .CallPokemon1_0	
	ifequal 1, .CallPokemon1_1
;	ifequal 2, .CallPokemon1_2
;.CallPokemon1_2:
	loadwildmon ARIADOS, 100
	sjump .AfterPokemon1
.CallPokemon1_1:
	loadwildmon LEDIAN, 100
	sjump .AfterPokemon1
.CallPokemon1_0:
	loadwildmon NOCTOWL, OTHER_FORM, 100
;	sjump .AfterPokemon1
.AfterPokemon1:	
	startbattle
	reloadmapafterbattle
; ================== end section I need help with 
	opentext
	writetext FacilityCurrentStreakText
	waitbutton
	writetext FacilityHealPartyText
	waitbutton
	yesorno
	iffalse .DidntHeal
	special HealParty
	; todo add healing sfx 
	setevent EVENT_STADIUM_HEALED
.DidntHeal:
	writetext FacilityComeBackWhenYoureReadyText
	waitbutton
	closetext
	setscene $1
	applyonemovement PLAYER, step_left
	end

FacilityCurrentStreakText:
	text "Current Streak:
;	line "insert streak"
	done

FacilityHealPartyText:
	text "Heal your team?"
	line "You can do this"
	para "one time per set"
	line "of five battles."
	done

FacilityComeBackWhenYoureReadyText:
	text "You can teach"
	line "TMs, set party"
	para "order, or change"
	line "held items."
	done

FacilityAreYouReadyText:
	text "Are you ready?"
	done

FacilityGetReadyText:
	text "Take your time."
	done

FacilityExplainBallText:
	text "In my hands are 2"
	line "Apricorns, each "
	para "with unique"
	line "#mon inside."
	
	para "The left hand has"
	line "an Apricon with a"
	cont "wild"
	done

Facility1_1Text:
	text "Ariados in it."

Facility1_EndMonsText:
	text "My other hand has"
	line "something else."
	
	para "Take it?" ; todo from here 
	done
