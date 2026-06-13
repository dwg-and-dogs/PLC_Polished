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
	coord_event 18, 15, 1, StadiumFacility_Trainers1Event
	coord_event 18, 15, 2, StadiumFacility_Pokemon2Event
	coord_event 18, 15, 3, StadiumFacility_Trainers2Event
	coord_event 18, 15, 4, StadiumFacility_Pokemon3Event
	coord_event 18, 15, 5, StadiumFacility_Trainers3Event
	coord_event 18, 15, 6, StadiumFacility_Pokemon4Event
	coord_event 18, 15, 7, StadiumFacility_Trainers4Event
	coord_event 18, 15, 8, StadiumFacility_Pokemon5Event
	coord_event 18, 15, 9, StadiumFacility_Trainers5Event
;	coord_event 18, 15, 10, StadiumFacility_TrainersEndlessEvent	

	def_bg_events
; 


	def_object_events
 	object_event 19, 15, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FacilityClerkScript, EVENT_FACILITY_CLERK
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

; always present
 	object_event 14, 15, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FacilityClerkRetireScript, EVENT_FACILITY_CLERK	
	
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
	; todo warp check 
	; check if you've beaten the game yet
	; if not, warp you to azalea town 
	; todo add warp sfx 
	warp STADIUM_GROUNDS_FACILITY_PREP, 13, 12
	end


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
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	writetext FacilityExplainBallText
	waitbutton
	setval 27                      ; N = 27 mons to choose among
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
	; tell the player which mon (the FIRST roll)
	readmem wStadiumFacilityFirstTrainer
	ifequal 0,  .TellPokemon1_0
	ifequal 1,  .TellPokemon1_1
	ifequal 2,  .TellPokemon1_2
	ifequal 3,  .TellPokemon1_3
	ifequal 4,  .TellPokemon1_4
	ifequal 5,  .TellPokemon1_5
	ifequal 6,  .TellPokemon1_6
	ifequal 7,  .TellPokemon1_7
	ifequal 8,  .TellPokemon1_8
	ifequal 9,  .TellPokemon1_9
	ifequal 10, .TellPokemon1_10
	ifequal 11, .TellPokemon1_11
	ifequal 12, .TellPokemon1_12
	ifequal 13, .TellPokemon1_13
	ifequal 14, .TellPokemon1_14
	ifequal 15, .TellPokemon1_15
	ifequal 16, .TellPokemon1_16
	ifequal 17, .TellPokemon1_17
	ifequal 18, .TellPokemon1_18
	ifequal 19, .TellPokemon1_19
	ifequal 20, .TellPokemon1_20
	ifequal 21, .TellPokemon1_21
	ifequal 22, .TellPokemon1_22
	ifequal 23, .TellPokemon1_23
	ifequal 24, .TellPokemon1_24
	ifequal 25, .TellPokemon1_25
;	ifequal 26, .TellPokemon1_26 ; fallthru
;.TellPokemon1_26:
	writethistext
		text "Victreebel."
		done
	sjump .ToldPokemon
.TellPokemon1_0:
	writethistext
		text "Ancestor Magcargo."
		done
	sjump .ToldPokemon
.TellPokemon1_1:
	writethistext
		text "Hisuian Electrode."
		done
	sjump .ToldPokemon
.TellPokemon1_2:
	writethistext
		text "Galarian Slowbro."
		done
	sjump .ToldPokemon
.TellPokemon1_3:
	writethistext
		text "Galarian Slowking."
		done
	sjump .ToldPokemon
.TellPokemon1_4:
	writethistext
		text "Scizor."
		done
	sjump .ToldPokemon
.TellPokemon1_5:
	writethistext
		text "Kleavor."
		done
	sjump .ToldPokemon
.TellPokemon1_6:
	writethistext
		text "Minsir."
		done
	sjump .ToldPokemon
.TellPokemon1_7:
	writethistext
		text "Yanmega."
		done
	sjump .ToldPokemon
.TellPokemon1_8:
	writethistext
		text "Furret."
		done
	sjump .ToldPokemon
.TellPokemon1_9:
	writethistext
		text "Pinsir."
		done
	sjump .ToldPokemon
.TellPokemon1_10:
	writethistext
		text "Scyther."
		done
	sjump .ToldPokemon
.TellPokemon1_11:
	writethistext
		text "Hippowdon."
		done
	sjump .ToldPokemon
.TellPokemon1_12:
	writethistext
		text "Abomasnow."
		done
	sjump .ToldPokemon
.TellPokemon1_13:
	writethistext
		text "Avalugg."
		done
	sjump .ToldPokemon
.TellPokemon1_14:
	writethistext
		text "Heracross."
		done
	sjump .ToldPokemon
.TellPokemon1_15:
	writethistext
		text "Forretress."
		done
	sjump .ToldPokemon
.TellPokemon1_16:
	writethistext
		text "Magcargo."
		done
	sjump .ToldPokemon
.TellPokemon1_17:
	writethistext
		text "Ariados."
		done
	sjump .ToldPokemon
.TellPokemon1_18:
	writethistext
		text "Ledian."
		done
	sjump .ToldPokemon
.TellPokemon1_19:
	writethistext
		text "Ancestor Noctowl."
		done
	sjump .ToldPokemon
.TellPokemon1_20:
	writethistext
		text "Parasect."
		done
	sjump .ToldPokemon
.TellPokemon1_21:
	writethistext
		text "Slowbro."
		done
	sjump .ToldPokemon
.TellPokemon1_22:
	writethistext
		text "Slowking."
		done
	sjump .ToldPokemon
.TellPokemon1_23:
	writethistext
		text "Quagsire."
		done
	sjump .ToldPokemon
.TellPokemon1_24:
	writethistext
		text "Staraptor."
		done
	sjump .ToldPokemon
.TellPokemon1_25:
	writethistext
		text "Jumpluff."
		done
;	sjump .ToldPokemon ; fallthru
.ToldPokemon:
	waitbutton
	writethistext
		text "Would you like to"
		line "try to catch it?"
		
		para "If no, then I can"
		line "call a random"
		cont "other #mon."
		done
	waitbutton
	yesorno
	iffalse .CallSecondMon
	readmem wStadiumFacilityFirstTrainer   ; YES -> keep the named mon told to the player
	sjump .HaveChoice
.CallSecondMon:
	readmem wStadiumFacilitySecondTrainer  ; NO  -> the next, guaranteed-different mon
.HaveChoice:
	ifequal 0,  .CallPokemon1_0
	ifequal 1,  .CallPokemon1_1
	ifequal 2,  .CallPokemon1_2
	ifequal 3,  .CallPokemon1_3
	ifequal 4,  .CallPokemon1_4
	ifequal 5,  .CallPokemon1_5
	ifequal 6,  .CallPokemon1_6
	ifequal 7,  .CallPokemon1_7
	ifequal 8,  .CallPokemon1_8
	ifequal 9,  .CallPokemon1_9
	ifequal 10, .CallPokemon1_10
	ifequal 11, .CallPokemon1_11
	ifequal 12, .CallPokemon1_12
	ifequal 13, .CallPokemon1_13
	ifequal 14, .CallPokemon1_14
	ifequal 15, .CallPokemon1_15
	ifequal 16, .CallPokemon1_16
	ifequal 17, .CallPokemon1_17
	ifequal 18, .CallPokemon1_18
	ifequal 19, .CallPokemon1_19
	ifequal 20, .CallPokemon1_20
	ifequal 21, .CallPokemon1_21
	ifequal 22, .CallPokemon1_22
	ifequal 23, .CallPokemon1_23
	ifequal 24, .CallPokemon1_24
	ifequal 25, .CallPokemon1_25
	loadwildmon VICTREEBEL, 100            ; Pokemon1_26
	sjump .AfterPokemon1
.CallPokemon1_0:
	loadwildmon MAGCARGO, OTHER_FORM, 100  ; Ancestor form
	sjump .AfterPokemon1
.CallPokemon1_1:
	loadwildmon ELECTRODE, HISUIAN_FORM, 100 ; Hisuian form
	sjump .AfterPokemon1
.CallPokemon1_2:
	loadwildmon SLOWBRO, GALARIAN_FORM, 100   ; Galarian form
	sjump .AfterPokemon1
.CallPokemon1_3:
	loadwildmon SLOWKING, GALARIAN_FORM, 100  ; Galarian form
	sjump .AfterPokemon1
.CallPokemon1_4:
	loadwildmon SCIZOR, 100
	sjump .AfterPokemon1
.CallPokemon1_5:
	loadwildmon KLEAVOR, 100
	sjump .AfterPokemon1
.CallPokemon1_6:
	loadwildmon MINSIR, 100
	sjump .AfterPokemon1
.CallPokemon1_7:
	loadwildmon YANMEGA, 100
	sjump .AfterPokemon1
.CallPokemon1_8:
	loadwildmon FURRET, 100
	sjump .AfterPokemon1
.CallPokemon1_9:
	loadwildmon PINSIR, 100
	sjump .AfterPokemon1
.CallPokemon1_10:
	loadwildmon SCYTHER, 100
	sjump .AfterPokemon1
.CallPokemon1_11:
	loadwildmon HIPPOWDON, 100
	sjump .AfterPokemon1
.CallPokemon1_12:
	loadwildmon ABOMASNOW, 100
	sjump .AfterPokemon1
.CallPokemon1_13:
	loadwildmon AVALUGG, 100
	sjump .AfterPokemon1
.CallPokemon1_14:
	loadwildmon HERACROSS, 100
	sjump .AfterPokemon1
.CallPokemon1_15:
	loadwildmon FORRETRESS, 100
	sjump .AfterPokemon1
.CallPokemon1_16:
	loadwildmon MAGCARGO, 100
	sjump .AfterPokemon1
.CallPokemon1_17:
	loadwildmon ARIADOS, 100
	sjump .AfterPokemon1
.CallPokemon1_18:
	loadwildmon LEDIAN, 100
	sjump .AfterPokemon1
.CallPokemon1_19:
	loadwildmon NOCTOWL, OTHER_FORM, 100   ; Ancestor form
	sjump .AfterPokemon1
.CallPokemon1_20:
	loadwildmon PARASECT, 100
	sjump .AfterPokemon1
.CallPokemon1_21:
	loadwildmon SLOWBRO, 100
	sjump .AfterPokemon1
.CallPokemon1_22:
	loadwildmon SLOWKING, 100
	sjump .AfterPokemon1
.CallPokemon1_23:
	loadwildmon QUAGSIRE, 100
	sjump .AfterPokemon1
.CallPokemon1_24:
	loadwildmon STARAPTOR, 100
	sjump .AfterPokemon1
.CallPokemon1_25:
	loadwildmon JUMPLUFF, 100
;	sjump .AfterPokemon1 ; fallthru
.AfterPokemon1:
	startbattle
	reloadmapafterbattle
	opentext
	writetext FacilityCurrentStreakText
	waitbutton
	special HealParty
	writetext FacilityComeBackWhenYoureReadyText
	waitbutton
	closetext
	setscene $1
	applyonemovement PLAYER, step_left
	end

StadiumFacility_Trainers1Event: ; todo need to figure out adding in the optional healing 
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	; clear the events
	clearevent EVENT_STADIUM_HEALED
	clearevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	clearevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	clearevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	writetext FacilityExplainTrainersText
	waitbutton
	setval 20                       ; N = how many mons to choose among. setval passes the number to the next ... 
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
.FacilityTrainerBattles:
	checkevent EVENT_STADIUM_HEALED
	iftrue .AlreadyHealed
	opentext
	writetext FacilityHealPartyText
	yesorno
	iffalse .AlreadyHealed
	special HealParty
	setevent EVENT_STADIUM_HEALED
	; todo add heal sfx 
.AlreadyHealed:
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .SecondFacilityTrainer
	readmem wStadiumFacilityFirstTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.SecondFacilityTrainer:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .ThirdFacilityTrainer
	readmem wStadiumFacilitySecondTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.ThirdFacilityTrainer:
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	readmem wStadiumFacilityThirdTrainer ; reads the first value that's written
.LoadedFacilityTrainerIndex:
	ifequal 0,  .CallTrainer1_0
	ifequal 1,  .CallTrainer1_1
	ifequal 2,  .CallTrainer1_2
	ifequal 3,  .CallTrainer1_3
	ifequal 4,  .CallTrainer1_4
	ifequal 5,  .CallTrainer1_5
	ifequal 6,  .CallTrainer1_6
	ifequal 7,  .CallTrainer1_7
	ifequal 8,  .CallTrainer1_8
	ifequal 9,  .CallTrainer1_9
	ifequal 10, .CallTrainer1_10
	ifequal 11, .CallTrainer1_11
	ifequal 12, .CallTrainer1_12
	ifequal 13, .CallTrainer1_13
	ifequal 14, .CallTrainer1_14
	ifequal 15, .CallTrainer1_15
	ifequal 16, .CallTrainer1_16
	ifequal 17, .CallTrainer1_17
	ifequal 18, .CallTrainer1_18
;	ifequal 19, .CallTrainer1_19 ; fallthru
;.CallTrainer1_19:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 20
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 1
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 2
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 3
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 4
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 5
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 6
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 7
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 8
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 9
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 10
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 11
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 12
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 13
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 14
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 15
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 16
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 17
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 18
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 19
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .CheckSecond
	setevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.CheckSecond:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .CheckThird
	setevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.CheckThird:
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	setevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.FinalFacilityElder: 
	; SILAS WALKS IN 
	winlosstext FacilityWinTextSilas, FacilityLossTextSilas 
	loadtrainer HOLLIS, HOLLIS_FACILITY 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
; HOLLIS WALKS AWAY
	special HealParty
	waitbutton
;	closetext
	applyonemovement PLAYER, step_left
	setscene $2 
	end


; =========
; dummy text here just to see how big it gets / if it fits 
; =========

StadiumFacility_Pokemon2Event:
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	writetext FacilityExplainBallText
	waitbutton
	setval 27                      ; N = 27 mons to choose among
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
	; tell the player which mon (the FIRST roll)
	readmem wStadiumFacilityFirstTrainer
	ifequal 0,  .TellPokemon1_0
	ifequal 1,  .TellPokemon1_1
	ifequal 2,  .TellPokemon1_2
	ifequal 3,  .TellPokemon1_3
	ifequal 4,  .TellPokemon1_4
	ifequal 5,  .TellPokemon1_5
	ifequal 6,  .TellPokemon1_6
	ifequal 7,  .TellPokemon1_7
	ifequal 8,  .TellPokemon1_8
	ifequal 9,  .TellPokemon1_9
	ifequal 10, .TellPokemon1_10
	ifequal 11, .TellPokemon1_11
	ifequal 12, .TellPokemon1_12
	ifequal 13, .TellPokemon1_13
	ifequal 14, .TellPokemon1_14
	ifequal 15, .TellPokemon1_15
	ifequal 16, .TellPokemon1_16
	ifequal 17, .TellPokemon1_17
	ifequal 18, .TellPokemon1_18
	ifequal 19, .TellPokemon1_19
	ifequal 20, .TellPokemon1_20
	ifequal 21, .TellPokemon1_21
	ifequal 22, .TellPokemon1_22
	ifequal 23, .TellPokemon1_23
	ifequal 24, .TellPokemon1_24
	ifequal 25, .TellPokemon1_25
;	ifequal 26, .TellPokemon1_26 ; fallthru
;.TellPokemon1_26:
	writethistext
		text "Victreebel."
		done
	sjump .ToldPokemon
.TellPokemon1_0:
	writethistext
		text "Ancestor Magcargo."
		done
	sjump .ToldPokemon
.TellPokemon1_1:
	writethistext
		text "Hisuian Electrode."
		done
	sjump .ToldPokemon
.TellPokemon1_2:
	writethistext
		text "Galarian Slowbro."
		done
	sjump .ToldPokemon
.TellPokemon1_3:
	writethistext
		text "Galarian Slowking."
		done
	sjump .ToldPokemon
.TellPokemon1_4:
	writethistext
		text "Scizor."
		done
	sjump .ToldPokemon
.TellPokemon1_5:
	writethistext
		text "Kleavor."
		done
	sjump .ToldPokemon
.TellPokemon1_6:
	writethistext
		text "Minsir."
		done
	sjump .ToldPokemon
.TellPokemon1_7:
	writethistext
		text "Yanmega."
		done
	sjump .ToldPokemon
.TellPokemon1_8:
	writethistext
		text "Furret."
		done
	sjump .ToldPokemon
.TellPokemon1_9:
	writethistext
		text "Pinsir."
		done
	sjump .ToldPokemon
.TellPokemon1_10:
	writethistext
		text "Scyther."
		done
	sjump .ToldPokemon
.TellPokemon1_11:
	writethistext
		text "Hippowdon."
		done
	sjump .ToldPokemon
.TellPokemon1_12:
	writethistext
		text "Abomasnow."
		done
	sjump .ToldPokemon
.TellPokemon1_13:
	writethistext
		text "Avalugg."
		done
	sjump .ToldPokemon
.TellPokemon1_14:
	writethistext
		text "Heracross."
		done
	sjump .ToldPokemon
.TellPokemon1_15:
	writethistext
		text "Forretress."
		done
	sjump .ToldPokemon
.TellPokemon1_16:
	writethistext
		text "Magcargo."
		done
	sjump .ToldPokemon
.TellPokemon1_17:
	writethistext
		text "Ariados."
		done
	sjump .ToldPokemon
.TellPokemon1_18:
	writethistext
		text "Ledian."
		done
	sjump .ToldPokemon
.TellPokemon1_19:
	writethistext
		text "Ancestor Noctowl."
		done
	sjump .ToldPokemon
.TellPokemon1_20:
	writethistext
		text "Parasect."
		done
	sjump .ToldPokemon
.TellPokemon1_21:
	writethistext
		text "Slowbro."
		done
	sjump .ToldPokemon
.TellPokemon1_22:
	writethistext
		text "Slowking."
		done
	sjump .ToldPokemon
.TellPokemon1_23:
	writethistext
		text "Quagsire."
		done
	sjump .ToldPokemon
.TellPokemon1_24:
	writethistext
		text "Staraptor."
		done
	sjump .ToldPokemon
.TellPokemon1_25:
	writethistext
		text "Jumpluff."
		done
;	sjump .ToldPokemon ; fallthru
.ToldPokemon:
	waitbutton
	writethistext
		text "Would you like to"
		line "try to catch it?"
		
		para "If no, then I can"
		line "call a random"
		cont "other #mon."
		done
	waitbutton
	yesorno
	iffalse .CallSecondMon
	readmem wStadiumFacilityFirstTrainer   ; YES -> keep the named mon told to the player
	sjump .HaveChoice
.CallSecondMon:
	readmem wStadiumFacilitySecondTrainer  ; NO  -> the next, guaranteed-different mon
.HaveChoice:
	ifequal 0,  .CallPokemon1_0
	ifequal 1,  .CallPokemon1_1
	ifequal 2,  .CallPokemon1_2
	ifequal 3,  .CallPokemon1_3
	ifequal 4,  .CallPokemon1_4
	ifequal 5,  .CallPokemon1_5
	ifequal 6,  .CallPokemon1_6
	ifequal 7,  .CallPokemon1_7
	ifequal 8,  .CallPokemon1_8
	ifequal 9,  .CallPokemon1_9
	ifequal 10, .CallPokemon1_10
	ifequal 11, .CallPokemon1_11
	ifequal 12, .CallPokemon1_12
	ifequal 13, .CallPokemon1_13
	ifequal 14, .CallPokemon1_14
	ifequal 15, .CallPokemon1_15
	ifequal 16, .CallPokemon1_16
	ifequal 17, .CallPokemon1_17
	ifequal 18, .CallPokemon1_18
	ifequal 19, .CallPokemon1_19
	ifequal 20, .CallPokemon1_20
	ifequal 21, .CallPokemon1_21
	ifequal 22, .CallPokemon1_22
	ifequal 23, .CallPokemon1_23
	ifequal 24, .CallPokemon1_24
	ifequal 25, .CallPokemon1_25
	loadwildmon VICTREEBEL, 100            ; Pokemon1_26
	sjump .AfterPokemon1
.CallPokemon1_0:
	loadwildmon MAGCARGO, OTHER_FORM, 100  ; Ancestor form
	sjump .AfterPokemon1
.CallPokemon1_1:
	loadwildmon ELECTRODE, HISUIAN_FORM, 100 ; Hisuian form
	sjump .AfterPokemon1
.CallPokemon1_2:
	loadwildmon SLOWBRO, GALARIAN_FORM, 100   ; Galarian form
	sjump .AfterPokemon1
.CallPokemon1_3:
	loadwildmon SLOWKING, GALARIAN_FORM, 100  ; Galarian form
	sjump .AfterPokemon1
.CallPokemon1_4:
	loadwildmon SCIZOR, 100
	sjump .AfterPokemon1
.CallPokemon1_5:
	loadwildmon KLEAVOR, 100
	sjump .AfterPokemon1
.CallPokemon1_6:
	loadwildmon MINSIR, 100
	sjump .AfterPokemon1
.CallPokemon1_7:
	loadwildmon YANMEGA, 100
	sjump .AfterPokemon1
.CallPokemon1_8:
	loadwildmon FURRET, 100
	sjump .AfterPokemon1
.CallPokemon1_9:
	loadwildmon PINSIR, 100
	sjump .AfterPokemon1
.CallPokemon1_10:
	loadwildmon SCYTHER, 100
	sjump .AfterPokemon1
.CallPokemon1_11:
	loadwildmon HIPPOWDON, 100
	sjump .AfterPokemon1
.CallPokemon1_12:
	loadwildmon ABOMASNOW, 100
	sjump .AfterPokemon1
.CallPokemon1_13:
	loadwildmon AVALUGG, 100
	sjump .AfterPokemon1
.CallPokemon1_14:
	loadwildmon HERACROSS, 100
	sjump .AfterPokemon1
.CallPokemon1_15:
	loadwildmon FORRETRESS, 100
	sjump .AfterPokemon1
.CallPokemon1_16:
	loadwildmon MAGCARGO, 100
	sjump .AfterPokemon1
.CallPokemon1_17:
	loadwildmon ARIADOS, 100
	sjump .AfterPokemon1
.CallPokemon1_18:
	loadwildmon LEDIAN, 100
	sjump .AfterPokemon1
.CallPokemon1_19:
	loadwildmon NOCTOWL, OTHER_FORM, 100   ; Ancestor form
	sjump .AfterPokemon1
.CallPokemon1_20:
	loadwildmon PARASECT, 100
	sjump .AfterPokemon1
.CallPokemon1_21:
	loadwildmon SLOWBRO, 100
	sjump .AfterPokemon1
.CallPokemon1_22:
	loadwildmon SLOWKING, 100
	sjump .AfterPokemon1
.CallPokemon1_23:
	loadwildmon QUAGSIRE, 100
	sjump .AfterPokemon1
.CallPokemon1_24:
	loadwildmon STARAPTOR, 100
	sjump .AfterPokemon1
.CallPokemon1_25:
	loadwildmon JUMPLUFF, 100
;	sjump .AfterPokemon1 ; fallthru
.AfterPokemon1:
	startbattle
	reloadmapafterbattle
	opentext
	writetext FacilityCurrentStreakText
	waitbutton
	special HealParty
	writetext FacilityComeBackWhenYoureReadyText
	waitbutton
	closetext
	setscene $1
	applyonemovement PLAYER, step_left
	end


StadiumFacility_Pokemon3Event:
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	writetext FacilityExplainBallText
	waitbutton
	setval 27                      ; N = 27 mons to choose among
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
	; tell the player which mon (the FIRST roll)
	readmem wStadiumFacilityFirstTrainer
	ifequal 0,  .TellPokemon1_0
	ifequal 1,  .TellPokemon1_1
	ifequal 2,  .TellPokemon1_2
	ifequal 3,  .TellPokemon1_3
	ifequal 4,  .TellPokemon1_4
	ifequal 5,  .TellPokemon1_5
	ifequal 6,  .TellPokemon1_6
	ifequal 7,  .TellPokemon1_7
	ifequal 8,  .TellPokemon1_8
	ifequal 9,  .TellPokemon1_9
	ifequal 10, .TellPokemon1_10
	ifequal 11, .TellPokemon1_11
	ifequal 12, .TellPokemon1_12
	ifequal 13, .TellPokemon1_13
	ifequal 14, .TellPokemon1_14
	ifequal 15, .TellPokemon1_15
	ifequal 16, .TellPokemon1_16
	ifequal 17, .TellPokemon1_17
	ifequal 18, .TellPokemon1_18
	ifequal 19, .TellPokemon1_19
	ifequal 20, .TellPokemon1_20
	ifequal 21, .TellPokemon1_21
	ifequal 22, .TellPokemon1_22
	ifequal 23, .TellPokemon1_23
	ifequal 24, .TellPokemon1_24
	ifequal 25, .TellPokemon1_25
;	ifequal 26, .TellPokemon1_26 ; fallthru
;.TellPokemon1_26:
	writethistext
		text "Victreebel."
		done
	sjump .ToldPokemon
.TellPokemon1_0:
	writethistext
		text "Ancestor Magcargo."
		done
	sjump .ToldPokemon
.TellPokemon1_1:
	writethistext
		text "Hisuian Electrode."
		done
	sjump .ToldPokemon
.TellPokemon1_2:
	writethistext
		text "Galarian Slowbro."
		done
	sjump .ToldPokemon
.TellPokemon1_3:
	writethistext
		text "Galarian Slowking."
		done
	sjump .ToldPokemon
.TellPokemon1_4:
	writethistext
		text "Scizor."
		done
	sjump .ToldPokemon
.TellPokemon1_5:
	writethistext
		text "Kleavor."
		done
	sjump .ToldPokemon
.TellPokemon1_6:
	writethistext
		text "Minsir."
		done
	sjump .ToldPokemon
.TellPokemon1_7:
	writethistext
		text "Yanmega."
		done
	sjump .ToldPokemon
.TellPokemon1_8:
	writethistext
		text "Furret."
		done
	sjump .ToldPokemon
.TellPokemon1_9:
	writethistext
		text "Pinsir."
		done
	sjump .ToldPokemon
.TellPokemon1_10:
	writethistext
		text "Scyther."
		done
	sjump .ToldPokemon
.TellPokemon1_11:
	writethistext
		text "Hippowdon."
		done
	sjump .ToldPokemon
.TellPokemon1_12:
	writethistext
		text "Abomasnow."
		done
	sjump .ToldPokemon
.TellPokemon1_13:
	writethistext
		text "Avalugg."
		done
	sjump .ToldPokemon
.TellPokemon1_14:
	writethistext
		text "Heracross."
		done
	sjump .ToldPokemon
.TellPokemon1_15:
	writethistext
		text "Forretress."
		done
	sjump .ToldPokemon
.TellPokemon1_16:
	writethistext
		text "Magcargo."
		done
	sjump .ToldPokemon
.TellPokemon1_17:
	writethistext
		text "Ariados."
		done
	sjump .ToldPokemon
.TellPokemon1_18:
	writethistext
		text "Ledian."
		done
	sjump .ToldPokemon
.TellPokemon1_19:
	writethistext
		text "Ancestor Noctowl."
		done
	sjump .ToldPokemon
.TellPokemon1_20:
	writethistext
		text "Parasect."
		done
	sjump .ToldPokemon
.TellPokemon1_21:
	writethistext
		text "Slowbro."
		done
	sjump .ToldPokemon
.TellPokemon1_22:
	writethistext
		text "Slowking."
		done
	sjump .ToldPokemon
.TellPokemon1_23:
	writethistext
		text "Quagsire."
		done
	sjump .ToldPokemon
.TellPokemon1_24:
	writethistext
		text "Staraptor."
		done
	sjump .ToldPokemon
.TellPokemon1_25:
	writethistext
		text "Jumpluff."
		done
;	sjump .ToldPokemon ; fallthru
.ToldPokemon:
	waitbutton
	writethistext
		text "Would you like to"
		line "try to catch it?"
		
		para "If no, then I can"
		line "call a random"
		cont "other #mon."
		done
	waitbutton
	yesorno
	iffalse .CallSecondMon
	readmem wStadiumFacilityFirstTrainer   ; YES -> keep the named mon told to the player
	sjump .HaveChoice
.CallSecondMon:
	readmem wStadiumFacilitySecondTrainer  ; NO  -> the next, guaranteed-different mon
.HaveChoice:
	ifequal 0,  .CallPokemon1_0
	ifequal 1,  .CallPokemon1_1
	ifequal 2,  .CallPokemon1_2
	ifequal 3,  .CallPokemon1_3
	ifequal 4,  .CallPokemon1_4
	ifequal 5,  .CallPokemon1_5
	ifequal 6,  .CallPokemon1_6
	ifequal 7,  .CallPokemon1_7
	ifequal 8,  .CallPokemon1_8
	ifequal 9,  .CallPokemon1_9
	ifequal 10, .CallPokemon1_10
	ifequal 11, .CallPokemon1_11
	ifequal 12, .CallPokemon1_12
	ifequal 13, .CallPokemon1_13
	ifequal 14, .CallPokemon1_14
	ifequal 15, .CallPokemon1_15
	ifequal 16, .CallPokemon1_16
	ifequal 17, .CallPokemon1_17
	ifequal 18, .CallPokemon1_18
	ifequal 19, .CallPokemon1_19
	ifequal 20, .CallPokemon1_20
	ifequal 21, .CallPokemon1_21
	ifequal 22, .CallPokemon1_22
	ifequal 23, .CallPokemon1_23
	ifequal 24, .CallPokemon1_24
	ifequal 25, .CallPokemon1_25
	loadwildmon VICTREEBEL, 100            ; Pokemon1_26
	sjump .AfterPokemon1
.CallPokemon1_0:
	loadwildmon MAGCARGO, OTHER_FORM, 100  ; Ancestor form
	sjump .AfterPokemon1
.CallPokemon1_1:
	loadwildmon ELECTRODE, HISUIAN_FORM, 100 ; Hisuian form
	sjump .AfterPokemon1
.CallPokemon1_2:
	loadwildmon SLOWBRO, GALARIAN_FORM, 100   ; Galarian form
	sjump .AfterPokemon1
.CallPokemon1_3:
	loadwildmon SLOWKING, GALARIAN_FORM, 100  ; Galarian form
	sjump .AfterPokemon1
.CallPokemon1_4:
	loadwildmon SCIZOR, 100
	sjump .AfterPokemon1
.CallPokemon1_5:
	loadwildmon KLEAVOR, 100
	sjump .AfterPokemon1
.CallPokemon1_6:
	loadwildmon MINSIR, 100
	sjump .AfterPokemon1
.CallPokemon1_7:
	loadwildmon YANMEGA, 100
	sjump .AfterPokemon1
.CallPokemon1_8:
	loadwildmon FURRET, 100
	sjump .AfterPokemon1
.CallPokemon1_9:
	loadwildmon PINSIR, 100
	sjump .AfterPokemon1
.CallPokemon1_10:
	loadwildmon SCYTHER, 100
	sjump .AfterPokemon1
.CallPokemon1_11:
	loadwildmon HIPPOWDON, 100
	sjump .AfterPokemon1
.CallPokemon1_12:
	loadwildmon ABOMASNOW, 100
	sjump .AfterPokemon1
.CallPokemon1_13:
	loadwildmon AVALUGG, 100
	sjump .AfterPokemon1
.CallPokemon1_14:
	loadwildmon HERACROSS, 100
	sjump .AfterPokemon1
.CallPokemon1_15:
	loadwildmon FORRETRESS, 100
	sjump .AfterPokemon1
.CallPokemon1_16:
	loadwildmon MAGCARGO, 100
	sjump .AfterPokemon1
.CallPokemon1_17:
	loadwildmon ARIADOS, 100
	sjump .AfterPokemon1
.CallPokemon1_18:
	loadwildmon LEDIAN, 100
	sjump .AfterPokemon1
.CallPokemon1_19:
	loadwildmon NOCTOWL, OTHER_FORM, 100   ; Ancestor form
	sjump .AfterPokemon1
.CallPokemon1_20:
	loadwildmon PARASECT, 100
	sjump .AfterPokemon1
.CallPokemon1_21:
	loadwildmon SLOWBRO, 100
	sjump .AfterPokemon1
.CallPokemon1_22:
	loadwildmon SLOWKING, 100
	sjump .AfterPokemon1
.CallPokemon1_23:
	loadwildmon QUAGSIRE, 100
	sjump .AfterPokemon1
.CallPokemon1_24:
	loadwildmon STARAPTOR, 100
	sjump .AfterPokemon1
.CallPokemon1_25:
	loadwildmon JUMPLUFF, 100
;	sjump .AfterPokemon1 ; fallthru
.AfterPokemon1:
	startbattle
	reloadmapafterbattle
	opentext
	writetext FacilityCurrentStreakText
	waitbutton
	special HealParty
	writetext FacilityComeBackWhenYoureReadyText
	waitbutton
	closetext
	setscene $1
	applyonemovement PLAYER, step_left
	end

StadiumFacility_Pokemon4Event:
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	writetext FacilityExplainBallText
	waitbutton
	setval 27                      ; N = 27 mons to choose among
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
	; tell the player which mon (the FIRST roll)
	readmem wStadiumFacilityFirstTrainer
	ifequal 0,  .TellPokemon1_0
	ifequal 1,  .TellPokemon1_1
	ifequal 2,  .TellPokemon1_2
	ifequal 3,  .TellPokemon1_3
	ifequal 4,  .TellPokemon1_4
	ifequal 5,  .TellPokemon1_5
	ifequal 6,  .TellPokemon1_6
	ifequal 7,  .TellPokemon1_7
	ifequal 8,  .TellPokemon1_8
	ifequal 9,  .TellPokemon1_9
	ifequal 10, .TellPokemon1_10
	ifequal 11, .TellPokemon1_11
	ifequal 12, .TellPokemon1_12
	ifequal 13, .TellPokemon1_13
	ifequal 14, .TellPokemon1_14
	ifequal 15, .TellPokemon1_15
	ifequal 16, .TellPokemon1_16
	ifequal 17, .TellPokemon1_17
	ifequal 18, .TellPokemon1_18
	ifequal 19, .TellPokemon1_19
	ifequal 20, .TellPokemon1_20
	ifequal 21, .TellPokemon1_21
	ifequal 22, .TellPokemon1_22
	ifequal 23, .TellPokemon1_23
	ifequal 24, .TellPokemon1_24
	ifequal 25, .TellPokemon1_25
;	ifequal 26, .TellPokemon1_26 ; fallthru
;.TellPokemon1_26:
	writethistext
		text "Victreebel."
		done
	sjump .ToldPokemon
.TellPokemon1_0:
	writethistext
		text "Ancestor Magcargo."
		done
	sjump .ToldPokemon
.TellPokemon1_1:
	writethistext
		text "Hisuian Electrode."
		done
	sjump .ToldPokemon
.TellPokemon1_2:
	writethistext
		text "Galarian Slowbro."
		done
	sjump .ToldPokemon
.TellPokemon1_3:
	writethistext
		text "Galarian Slowking."
		done
	sjump .ToldPokemon
.TellPokemon1_4:
	writethistext
		text "Scizor."
		done
	sjump .ToldPokemon
.TellPokemon1_5:
	writethistext
		text "Kleavor."
		done
	sjump .ToldPokemon
.TellPokemon1_6:
	writethistext
		text "Minsir."
		done
	sjump .ToldPokemon
.TellPokemon1_7:
	writethistext
		text "Yanmega."
		done
	sjump .ToldPokemon
.TellPokemon1_8:
	writethistext
		text "Furret."
		done
	sjump .ToldPokemon
.TellPokemon1_9:
	writethistext
		text "Pinsir."
		done
	sjump .ToldPokemon
.TellPokemon1_10:
	writethistext
		text "Scyther."
		done
	sjump .ToldPokemon
.TellPokemon1_11:
	writethistext
		text "Hippowdon."
		done
	sjump .ToldPokemon
.TellPokemon1_12:
	writethistext
		text "Abomasnow."
		done
	sjump .ToldPokemon
.TellPokemon1_13:
	writethistext
		text "Avalugg."
		done
	sjump .ToldPokemon
.TellPokemon1_14:
	writethistext
		text "Heracross."
		done
	sjump .ToldPokemon
.TellPokemon1_15:
	writethistext
		text "Forretress."
		done
	sjump .ToldPokemon
.TellPokemon1_16:
	writethistext
		text "Magcargo."
		done
	sjump .ToldPokemon
.TellPokemon1_17:
	writethistext
		text "Ariados."
		done
	sjump .ToldPokemon
.TellPokemon1_18:
	writethistext
		text "Ledian."
		done
	sjump .ToldPokemon
.TellPokemon1_19:
	writethistext
		text "Ancestor Noctowl."
		done
	sjump .ToldPokemon
.TellPokemon1_20:
	writethistext
		text "Parasect."
		done
	sjump .ToldPokemon
.TellPokemon1_21:
	writethistext
		text "Slowbro."
		done
	sjump .ToldPokemon
.TellPokemon1_22:
	writethistext
		text "Slowking."
		done
	sjump .ToldPokemon
.TellPokemon1_23:
	writethistext
		text "Quagsire."
		done
	sjump .ToldPokemon
.TellPokemon1_24:
	writethistext
		text "Staraptor."
		done
	sjump .ToldPokemon
.TellPokemon1_25:
	writethistext
		text "Jumpluff."
		done
;	sjump .ToldPokemon ; fallthru
.ToldPokemon:
	waitbutton
	writethistext
		text "Would you like to"
		line "try to catch it?"
		
		para "If no, then I can"
		line "call a random"
		cont "other #mon."
		done
	waitbutton
	yesorno
	iffalse .CallSecondMon
	readmem wStadiumFacilityFirstTrainer   ; YES -> keep the named mon told to the player
	sjump .HaveChoice
.CallSecondMon:
	readmem wStadiumFacilitySecondTrainer  ; NO  -> the next, guaranteed-different mon
.HaveChoice:
	ifequal 0,  .CallPokemon1_0
	ifequal 1,  .CallPokemon1_1
	ifequal 2,  .CallPokemon1_2
	ifequal 3,  .CallPokemon1_3
	ifequal 4,  .CallPokemon1_4
	ifequal 5,  .CallPokemon1_5
	ifequal 6,  .CallPokemon1_6
	ifequal 7,  .CallPokemon1_7
	ifequal 8,  .CallPokemon1_8
	ifequal 9,  .CallPokemon1_9
	ifequal 10, .CallPokemon1_10
	ifequal 11, .CallPokemon1_11
	ifequal 12, .CallPokemon1_12
	ifequal 13, .CallPokemon1_13
	ifequal 14, .CallPokemon1_14
	ifequal 15, .CallPokemon1_15
	ifequal 16, .CallPokemon1_16
	ifequal 17, .CallPokemon1_17
	ifequal 18, .CallPokemon1_18
	ifequal 19, .CallPokemon1_19
	ifequal 20, .CallPokemon1_20
	ifequal 21, .CallPokemon1_21
	ifequal 22, .CallPokemon1_22
	ifequal 23, .CallPokemon1_23
	ifequal 24, .CallPokemon1_24
	ifequal 25, .CallPokemon1_25
	loadwildmon VICTREEBEL, 100            ; Pokemon1_26
	sjump .AfterPokemon1
.CallPokemon1_0:
	loadwildmon MAGCARGO, OTHER_FORM, 100  ; Ancestor form
	sjump .AfterPokemon1
.CallPokemon1_1:
	loadwildmon ELECTRODE, HISUIAN_FORM, 100 ; Hisuian form
	sjump .AfterPokemon1
.CallPokemon1_2:
	loadwildmon SLOWBRO, GALARIAN_FORM, 100   ; Galarian form
	sjump .AfterPokemon1
.CallPokemon1_3:
	loadwildmon SLOWKING, GALARIAN_FORM, 100  ; Galarian form
	sjump .AfterPokemon1
.CallPokemon1_4:
	loadwildmon SCIZOR, 100
	sjump .AfterPokemon1
.CallPokemon1_5:
	loadwildmon KLEAVOR, 100
	sjump .AfterPokemon1
.CallPokemon1_6:
	loadwildmon MINSIR, 100
	sjump .AfterPokemon1
.CallPokemon1_7:
	loadwildmon YANMEGA, 100
	sjump .AfterPokemon1
.CallPokemon1_8:
	loadwildmon FURRET, 100
	sjump .AfterPokemon1
.CallPokemon1_9:
	loadwildmon PINSIR, 100
	sjump .AfterPokemon1
.CallPokemon1_10:
	loadwildmon SCYTHER, 100
	sjump .AfterPokemon1
.CallPokemon1_11:
	loadwildmon HIPPOWDON, 100
	sjump .AfterPokemon1
.CallPokemon1_12:
	loadwildmon ABOMASNOW, 100
	sjump .AfterPokemon1
.CallPokemon1_13:
	loadwildmon AVALUGG, 100
	sjump .AfterPokemon1
.CallPokemon1_14:
	loadwildmon HERACROSS, 100
	sjump .AfterPokemon1
.CallPokemon1_15:
	loadwildmon FORRETRESS, 100
	sjump .AfterPokemon1
.CallPokemon1_16:
	loadwildmon MAGCARGO, 100
	sjump .AfterPokemon1
.CallPokemon1_17:
	loadwildmon ARIADOS, 100
	sjump .AfterPokemon1
.CallPokemon1_18:
	loadwildmon LEDIAN, 100
	sjump .AfterPokemon1
.CallPokemon1_19:
	loadwildmon NOCTOWL, OTHER_FORM, 100   ; Ancestor form
	sjump .AfterPokemon1
.CallPokemon1_20:
	loadwildmon PARASECT, 100
	sjump .AfterPokemon1
.CallPokemon1_21:
	loadwildmon SLOWBRO, 100
	sjump .AfterPokemon1
.CallPokemon1_22:
	loadwildmon SLOWKING, 100
	sjump .AfterPokemon1
.CallPokemon1_23:
	loadwildmon QUAGSIRE, 100
	sjump .AfterPokemon1
.CallPokemon1_24:
	loadwildmon STARAPTOR, 100
	sjump .AfterPokemon1
.CallPokemon1_25:
	loadwildmon JUMPLUFF, 100
;	sjump .AfterPokemon1 ; fallthru
.AfterPokemon1:
	startbattle
	reloadmapafterbattle
	opentext
	writetext FacilityCurrentStreakText
	waitbutton
	special HealParty
	writetext FacilityComeBackWhenYoureReadyText
	waitbutton
	closetext
	setscene $1
	applyonemovement PLAYER, step_left
	end

StadiumFacility_Pokemon5Event:
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	writetext FacilityExplainBallText
	waitbutton
	setval 27                      ; N = 27 mons to choose among
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
	; tell the player which mon (the FIRST roll)
	readmem wStadiumFacilityFirstTrainer
	ifequal 0,  .TellPokemon1_0
	ifequal 1,  .TellPokemon1_1
	ifequal 2,  .TellPokemon1_2
	ifequal 3,  .TellPokemon1_3
	ifequal 4,  .TellPokemon1_4
	ifequal 5,  .TellPokemon1_5
	ifequal 6,  .TellPokemon1_6
	ifequal 7,  .TellPokemon1_7
	ifequal 8,  .TellPokemon1_8
	ifequal 9,  .TellPokemon1_9
	ifequal 10, .TellPokemon1_10
	ifequal 11, .TellPokemon1_11
	ifequal 12, .TellPokemon1_12
	ifequal 13, .TellPokemon1_13
	ifequal 14, .TellPokemon1_14
	ifequal 15, .TellPokemon1_15
	ifequal 16, .TellPokemon1_16
	ifequal 17, .TellPokemon1_17
	ifequal 18, .TellPokemon1_18
	ifequal 19, .TellPokemon1_19
	ifequal 20, .TellPokemon1_20
	ifequal 21, .TellPokemon1_21
	ifequal 22, .TellPokemon1_22
	ifequal 23, .TellPokemon1_23
	ifequal 24, .TellPokemon1_24
	ifequal 25, .TellPokemon1_25
;	ifequal 26, .TellPokemon1_26 ; fallthru
;.TellPokemon1_26:
	writethistext
		text "Victreebel."
		done
	sjump .ToldPokemon
.TellPokemon1_0:
	writethistext
		text "Ancestor Magcargo."
		done
	sjump .ToldPokemon
.TellPokemon1_1:
	writethistext
		text "Hisuian Electrode."
		done
	sjump .ToldPokemon
.TellPokemon1_2:
	writethistext
		text "Galarian Slowbro."
		done
	sjump .ToldPokemon
.TellPokemon1_3:
	writethistext
		text "Galarian Slowking."
		done
	sjump .ToldPokemon
.TellPokemon1_4:
	writethistext
		text "Scizor."
		done
	sjump .ToldPokemon
.TellPokemon1_5:
	writethistext
		text "Kleavor."
		done
	sjump .ToldPokemon
.TellPokemon1_6:
	writethistext
		text "Minsir."
		done
	sjump .ToldPokemon
.TellPokemon1_7:
	writethistext
		text "Yanmega."
		done
	sjump .ToldPokemon
.TellPokemon1_8:
	writethistext
		text "Furret."
		done
	sjump .ToldPokemon
.TellPokemon1_9:
	writethistext
		text "Pinsir."
		done
	sjump .ToldPokemon
.TellPokemon1_10:
	writethistext
		text "Scyther."
		done
	sjump .ToldPokemon
.TellPokemon1_11:
	writethistext
		text "Hippowdon."
		done
	sjump .ToldPokemon
.TellPokemon1_12:
	writethistext
		text "Abomasnow."
		done
	sjump .ToldPokemon
.TellPokemon1_13:
	writethistext
		text "Avalugg."
		done
	sjump .ToldPokemon
.TellPokemon1_14:
	writethistext
		text "Heracross."
		done
	sjump .ToldPokemon
.TellPokemon1_15:
	writethistext
		text "Forretress."
		done
	sjump .ToldPokemon
.TellPokemon1_16:
	writethistext
		text "Magcargo."
		done
	sjump .ToldPokemon
.TellPokemon1_17:
	writethistext
		text "Ariados."
		done
	sjump .ToldPokemon
.TellPokemon1_18:
	writethistext
		text "Ledian."
		done
	sjump .ToldPokemon
.TellPokemon1_19:
	writethistext
		text "Ancestor Noctowl."
		done
	sjump .ToldPokemon
.TellPokemon1_20:
	writethistext
		text "Parasect."
		done
	sjump .ToldPokemon
.TellPokemon1_21:
	writethistext
		text "Slowbro."
		done
	sjump .ToldPokemon
.TellPokemon1_22:
	writethistext
		text "Slowking."
		done
	sjump .ToldPokemon
.TellPokemon1_23:
	writethistext
		text "Quagsire."
		done
	sjump .ToldPokemon
.TellPokemon1_24:
	writethistext
		text "Staraptor."
		done
	sjump .ToldPokemon
.TellPokemon1_25:
	writethistext
		text "Jumpluff."
		done
;	sjump .ToldPokemon ; fallthru
.ToldPokemon:
	waitbutton
	writethistext
		text "Would you like to"
		line "try to catch it?"
		
		para "If no, then I can"
		line "call a random"
		cont "other #mon."
		done
	waitbutton
	yesorno
	iffalse .CallSecondMon
	readmem wStadiumFacilityFirstTrainer   ; YES -> keep the named mon told to the player
	sjump .HaveChoice
.CallSecondMon:
	readmem wStadiumFacilitySecondTrainer  ; NO  -> the next, guaranteed-different mon
.HaveChoice:
	ifequal 0,  .CallPokemon1_0
	ifequal 1,  .CallPokemon1_1
	ifequal 2,  .CallPokemon1_2
	ifequal 3,  .CallPokemon1_3
	ifequal 4,  .CallPokemon1_4
	ifequal 5,  .CallPokemon1_5
	ifequal 6,  .CallPokemon1_6
	ifequal 7,  .CallPokemon1_7
	ifequal 8,  .CallPokemon1_8
	ifequal 9,  .CallPokemon1_9
	ifequal 10, .CallPokemon1_10
	ifequal 11, .CallPokemon1_11
	ifequal 12, .CallPokemon1_12
	ifequal 13, .CallPokemon1_13
	ifequal 14, .CallPokemon1_14
	ifequal 15, .CallPokemon1_15
	ifequal 16, .CallPokemon1_16
	ifequal 17, .CallPokemon1_17
	ifequal 18, .CallPokemon1_18
	ifequal 19, .CallPokemon1_19
	ifequal 20, .CallPokemon1_20
	ifequal 21, .CallPokemon1_21
	ifequal 22, .CallPokemon1_22
	ifequal 23, .CallPokemon1_23
	ifequal 24, .CallPokemon1_24
	ifequal 25, .CallPokemon1_25
	loadwildmon VICTREEBEL, 100            ; Pokemon1_26
	sjump .AfterPokemon1
.CallPokemon1_0:
	loadwildmon MAGCARGO, OTHER_FORM, 100  ; Ancestor form
	sjump .AfterPokemon1
.CallPokemon1_1:
	loadwildmon ELECTRODE, HISUIAN_FORM, 100 ; Hisuian form
	sjump .AfterPokemon1
.CallPokemon1_2:
	loadwildmon SLOWBRO, GALARIAN_FORM, 100   ; Galarian form
	sjump .AfterPokemon1
.CallPokemon1_3:
	loadwildmon SLOWKING, GALARIAN_FORM, 100  ; Galarian form
	sjump .AfterPokemon1
.CallPokemon1_4:
	loadwildmon SCIZOR, 100
	sjump .AfterPokemon1
.CallPokemon1_5:
	loadwildmon KLEAVOR, 100
	sjump .AfterPokemon1
.CallPokemon1_6:
	loadwildmon MINSIR, 100
	sjump .AfterPokemon1
.CallPokemon1_7:
	loadwildmon YANMEGA, 100
	sjump .AfterPokemon1
.CallPokemon1_8:
	loadwildmon FURRET, 100
	sjump .AfterPokemon1
.CallPokemon1_9:
	loadwildmon PINSIR, 100
	sjump .AfterPokemon1
.CallPokemon1_10:
	loadwildmon SCYTHER, 100
	sjump .AfterPokemon1
.CallPokemon1_11:
	loadwildmon HIPPOWDON, 100
	sjump .AfterPokemon1
.CallPokemon1_12:
	loadwildmon ABOMASNOW, 100
	sjump .AfterPokemon1
.CallPokemon1_13:
	loadwildmon AVALUGG, 100
	sjump .AfterPokemon1
.CallPokemon1_14:
	loadwildmon HERACROSS, 100
	sjump .AfterPokemon1
.CallPokemon1_15:
	loadwildmon FORRETRESS, 100
	sjump .AfterPokemon1
.CallPokemon1_16:
	loadwildmon MAGCARGO, 100
	sjump .AfterPokemon1
.CallPokemon1_17:
	loadwildmon ARIADOS, 100
	sjump .AfterPokemon1
.CallPokemon1_18:
	loadwildmon LEDIAN, 100
	sjump .AfterPokemon1
.CallPokemon1_19:
	loadwildmon NOCTOWL, OTHER_FORM, 100   ; Ancestor form
	sjump .AfterPokemon1
.CallPokemon1_20:
	loadwildmon PARASECT, 100
	sjump .AfterPokemon1
.CallPokemon1_21:
	loadwildmon SLOWBRO, 100
	sjump .AfterPokemon1
.CallPokemon1_22:
	loadwildmon SLOWKING, 100
	sjump .AfterPokemon1
.CallPokemon1_23:
	loadwildmon QUAGSIRE, 100
	sjump .AfterPokemon1
.CallPokemon1_24:
	loadwildmon STARAPTOR, 100
	sjump .AfterPokemon1
.CallPokemon1_25:
	loadwildmon JUMPLUFF, 100
;	sjump .AfterPokemon1 ; fallthru
.AfterPokemon1:
	startbattle
	reloadmapafterbattle
	opentext
	writetext FacilityCurrentStreakText
	waitbutton
	special HealParty
	writetext FacilityComeBackWhenYoureReadyText
	waitbutton
	closetext
	setscene $1
	applyonemovement PLAYER, step_left
	end

StadiumFacility_Trainers2Event: ; todo need to figure out adding in the optional healing 
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	; clear the events
	clearevent EVENT_STADIUM_HEALED
	clearevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	clearevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	clearevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	writetext FacilityExplainTrainersText
	waitbutton
	setval 20                       ; N = how many mons to choose among. setval passes the number to the next ... 
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
.FacilityTrainerBattles:
	checkevent EVENT_STADIUM_HEALED
	iftrue .AlreadyHealed
	opentext
	writetext FacilityHealPartyText
	yesorno
	iffalse .AlreadyHealed
	special HealParty
	setevent EVENT_STADIUM_HEALED
	; todo add heal sfx 
.AlreadyHealed:
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .SecondFacilityTrainer
	readmem wStadiumFacilityFirstTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.SecondFacilityTrainer:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .ThirdFacilityTrainer
	readmem wStadiumFacilitySecondTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.ThirdFacilityTrainer:
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	readmem wStadiumFacilityThirdTrainer ; reads the first value that's written
.LoadedFacilityTrainerIndex:
	ifequal 0,  .CallTrainer1_0
	ifequal 1,  .CallTrainer1_1
	ifequal 2,  .CallTrainer1_2
	ifequal 3,  .CallTrainer1_3
	ifequal 4,  .CallTrainer1_4
	ifequal 5,  .CallTrainer1_5
	ifequal 6,  .CallTrainer1_6
	ifequal 7,  .CallTrainer1_7
	ifequal 8,  .CallTrainer1_8
	ifequal 9,  .CallTrainer1_9
	ifequal 10, .CallTrainer1_10
	ifequal 11, .CallTrainer1_11
	ifequal 12, .CallTrainer1_12
	ifequal 13, .CallTrainer1_13
	ifequal 14, .CallTrainer1_14
	ifequal 15, .CallTrainer1_15
	ifequal 16, .CallTrainer1_16
	ifequal 17, .CallTrainer1_17
	ifequal 18, .CallTrainer1_18
;	ifequal 19, .CallTrainer1_19 ; fallthru
;.CallTrainer1_19:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 20
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 1
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 2
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 3
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 4
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 5
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 6
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 7
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 8
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 9
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 10
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 11
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 12
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 13
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 14
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 15
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 16
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 17
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 18
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 19
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .CheckSecond
	setevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.CheckSecond:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .CheckThird
	setevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.CheckThird:
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	setevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.FinalFacilityElder: 
	; SILAS WALKS IN 
	winlosstext FacilityWinTextSilas, FacilityLossTextSilas 
	loadtrainer HOLLIS, HOLLIS_FACILITY 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
; HOLLIS WALKS AWAY
	special HealParty
	waitbutton
;	closetext
	applyonemovement PLAYER, step_left
	setscene $2 
	end

StadiumFacility_Trainers3Event: ; todo need to figure out adding in the optional healing 
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	; clear the events
	clearevent EVENT_STADIUM_HEALED
	clearevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	clearevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	clearevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	writetext FacilityExplainTrainersText
	waitbutton
	setval 20                       ; N = how many mons to choose among. setval passes the number to the next ... 
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
.FacilityTrainerBattles:
	checkevent EVENT_STADIUM_HEALED
	iftrue .AlreadyHealed
	opentext
	writetext FacilityHealPartyText
	yesorno
	iffalse .AlreadyHealed
	special HealParty
	setevent EVENT_STADIUM_HEALED
	; todo add heal sfx 
.AlreadyHealed:
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .SecondFacilityTrainer
	readmem wStadiumFacilityFirstTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.SecondFacilityTrainer:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .ThirdFacilityTrainer
	readmem wStadiumFacilitySecondTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.ThirdFacilityTrainer:
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	readmem wStadiumFacilityThirdTrainer ; reads the first value that's written
.LoadedFacilityTrainerIndex:
	ifequal 0,  .CallTrainer1_0
	ifequal 1,  .CallTrainer1_1
	ifequal 2,  .CallTrainer1_2
	ifequal 3,  .CallTrainer1_3
	ifequal 4,  .CallTrainer1_4
	ifequal 5,  .CallTrainer1_5
	ifequal 6,  .CallTrainer1_6
	ifequal 7,  .CallTrainer1_7
	ifequal 8,  .CallTrainer1_8
	ifequal 9,  .CallTrainer1_9
	ifequal 10, .CallTrainer1_10
	ifequal 11, .CallTrainer1_11
	ifequal 12, .CallTrainer1_12
	ifequal 13, .CallTrainer1_13
	ifequal 14, .CallTrainer1_14
	ifequal 15, .CallTrainer1_15
	ifequal 16, .CallTrainer1_16
	ifequal 17, .CallTrainer1_17
	ifequal 18, .CallTrainer1_18
;	ifequal 19, .CallTrainer1_19 ; fallthru
;.CallTrainer1_19:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 20
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 1
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 2
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 3
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 4
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 5
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 6
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 7
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 8
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 9
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 10
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 11
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 12
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 13
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 14
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 15
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 16
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 17
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 18
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 19
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .CheckSecond
	setevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.CheckSecond:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .CheckThird
	setevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.CheckThird:
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	setevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.FinalFacilityElder: 
	; SILAS WALKS IN 
	winlosstext FacilityWinTextSilas, FacilityLossTextSilas 
	loadtrainer HOLLIS, HOLLIS_FACILITY 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
; HOLLIS WALKS AWAY
	special HealParty
	waitbutton
;	closetext
	applyonemovement PLAYER, step_left
	setscene $2 
	end

StadiumFacility_Trainers4Event: ; todo need to figure out adding in the optional healing 
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	; clear the events
	clearevent EVENT_STADIUM_HEALED
	clearevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	clearevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	clearevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	writetext FacilityExplainTrainersText
	waitbutton
	setval 20                       ; N = how many mons to choose among. setval passes the number to the next ... 
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
.FacilityTrainerBattles:
	checkevent EVENT_STADIUM_HEALED
	iftrue .AlreadyHealed
	opentext
	writetext FacilityHealPartyText
	yesorno
	iffalse .AlreadyHealed
	special HealParty
	setevent EVENT_STADIUM_HEALED
	; todo add heal sfx 
.AlreadyHealed:
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .SecondFacilityTrainer
	readmem wStadiumFacilityFirstTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.SecondFacilityTrainer:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .ThirdFacilityTrainer
	readmem wStadiumFacilitySecondTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.ThirdFacilityTrainer:
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	readmem wStadiumFacilityThirdTrainer ; reads the first value that's written
.LoadedFacilityTrainerIndex:
	ifequal 0,  .CallTrainer1_0
	ifequal 1,  .CallTrainer1_1
	ifequal 2,  .CallTrainer1_2
	ifequal 3,  .CallTrainer1_3
	ifequal 4,  .CallTrainer1_4
	ifequal 5,  .CallTrainer1_5
	ifequal 6,  .CallTrainer1_6
	ifequal 7,  .CallTrainer1_7
	ifequal 8,  .CallTrainer1_8
	ifequal 9,  .CallTrainer1_9
	ifequal 10, .CallTrainer1_10
	ifequal 11, .CallTrainer1_11
	ifequal 12, .CallTrainer1_12
	ifequal 13, .CallTrainer1_13
	ifequal 14, .CallTrainer1_14
	ifequal 15, .CallTrainer1_15
	ifequal 16, .CallTrainer1_16
	ifequal 17, .CallTrainer1_17
	ifequal 18, .CallTrainer1_18
;	ifequal 19, .CallTrainer1_19 ; fallthru
;.CallTrainer1_19:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 20
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 1
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 2
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 3
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 4
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 5
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 6
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 7
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 8
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 9
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 10
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 11
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 12
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 13
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 14
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 15
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 16
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 17
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 18
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 19
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .CheckSecond
	setevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.CheckSecond:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .CheckThird
	setevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.CheckThird:
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	setevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.FinalFacilityElder: 
	; SILAS WALKS IN 
	winlosstext FacilityWinTextSilas, FacilityLossTextSilas 
	loadtrainer HOLLIS, HOLLIS_FACILITY 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
; HOLLIS WALKS AWAY
	special HealParty
	waitbutton
;	closetext
	applyonemovement PLAYER, step_left
	setscene $2 
	end

StadiumFacility_Trainers5Event: ; todo need to figure out adding in the optional healing 
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	; clear the events
	clearevent EVENT_STADIUM_HEALED
	clearevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	clearevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	clearevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	writetext FacilityExplainTrainersText
	waitbutton
	setval 20                       ; N = how many mons to choose among. setval passes the number to the next ... 
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
.FacilityTrainerBattles:
	checkevent EVENT_STADIUM_HEALED
	iftrue .AlreadyHealed
	opentext
	writetext FacilityHealPartyText
	yesorno
	iffalse .AlreadyHealed
	special HealParty
	setevent EVENT_STADIUM_HEALED
	; todo add heal sfx 
.AlreadyHealed:
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .SecondFacilityTrainer
	readmem wStadiumFacilityFirstTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.SecondFacilityTrainer:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .ThirdFacilityTrainer
	readmem wStadiumFacilitySecondTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.ThirdFacilityTrainer:
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	readmem wStadiumFacilityThirdTrainer ; reads the first value that's written
.LoadedFacilityTrainerIndex:
	ifequal 0,  .CallTrainer1_0
	ifequal 1,  .CallTrainer1_1
	ifequal 2,  .CallTrainer1_2
	ifequal 3,  .CallTrainer1_3
	ifequal 4,  .CallTrainer1_4
	ifequal 5,  .CallTrainer1_5
	ifequal 6,  .CallTrainer1_6
	ifequal 7,  .CallTrainer1_7
	ifequal 8,  .CallTrainer1_8
	ifequal 9,  .CallTrainer1_9
	ifequal 10, .CallTrainer1_10
	ifequal 11, .CallTrainer1_11
	ifequal 12, .CallTrainer1_12
	ifequal 13, .CallTrainer1_13
	ifequal 14, .CallTrainer1_14
	ifequal 15, .CallTrainer1_15
	ifequal 16, .CallTrainer1_16
	ifequal 17, .CallTrainer1_17
	ifequal 18, .CallTrainer1_18
;	ifequal 19, .CallTrainer1_19 ; fallthru
;.CallTrainer1_19:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 20
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 1
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 2
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 3
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 4
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 5
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 6
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 7
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 8
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 9
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 10
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 11
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 12
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 13
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 14
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 15
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 16
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 17
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 18
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 19
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .CheckSecond
	setevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.CheckSecond:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .CheckThird
	setevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.CheckThird:
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	setevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.FinalFacilityElder: 
	; SILAS WALKS IN 
	winlosstext FacilityWinTextSilas, FacilityLossTextSilas 
	loadtrainer HOLLIS, HOLLIS_FACILITY 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
; HOLLIS WALKS AWAY
	special HealParty
	waitbutton
;	closetext
	applyonemovement PLAYER, step_left
	setscene $2 
	end

StadiumFacility_TrainersEndlessEvent: ; todo need to figure out adding in the optional healing 
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	; clear the events
	clearevent EVENT_STADIUM_HEALED
	clearevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	clearevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	clearevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	writetext FacilityExplainTrainersText
	waitbutton
	setval 20                       ; N = how many mons to choose among. setval passes the number to the next ... 
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
.FacilityTrainerBattles:
	checkevent EVENT_STADIUM_HEALED
	iftrue .AlreadyHealed
	opentext
	writetext FacilityHealPartyText
	yesorno
	iffalse .AlreadyHealed
	special HealParty
	setevent EVENT_STADIUM_HEALED
	; todo add heal sfx 
.AlreadyHealed:
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .SecondFacilityTrainer
	readmem wStadiumFacilityFirstTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.SecondFacilityTrainer:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .ThirdFacilityTrainer
	readmem wStadiumFacilitySecondTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.ThirdFacilityTrainer:
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	readmem wStadiumFacilityThirdTrainer ; reads the first value that's written
.LoadedFacilityTrainerIndex:
	ifequal 0,  .CallTrainer1_0
	ifequal 1,  .CallTrainer1_1
	ifequal 2,  .CallTrainer1_2
	ifequal 3,  .CallTrainer1_3
	ifequal 4,  .CallTrainer1_4
	ifequal 5,  .CallTrainer1_5
	ifequal 6,  .CallTrainer1_6
	ifequal 7,  .CallTrainer1_7
	ifequal 8,  .CallTrainer1_8
	ifequal 9,  .CallTrainer1_9
	ifequal 10, .CallTrainer1_10
	ifequal 11, .CallTrainer1_11
	ifequal 12, .CallTrainer1_12
	ifequal 13, .CallTrainer1_13
	ifequal 14, .CallTrainer1_14
	ifequal 15, .CallTrainer1_15
	ifequal 16, .CallTrainer1_16
	ifequal 17, .CallTrainer1_17
	ifequal 18, .CallTrainer1_18
;	ifequal 19, .CallTrainer1_19 ; fallthru
;.CallTrainer1_19:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 20
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 1
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 2
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 3
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 4
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 5
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 6
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 7
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 8
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 9
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 10
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 11
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 12
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 13
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 14
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 15
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 16
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 17
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 18
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 19
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .CheckSecond
	setevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.CheckSecond:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .CheckThird
	setevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.CheckThird:
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	setevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	sjump .FacilityTrainerBattles
.FinalFacilityElder: 
	; SILAS WALKS IN 
	winlosstext FacilityWinTextSilas, FacilityLossTextSilas 
	loadtrainer HOLLIS, HOLLIS_FACILITY 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
; HOLLIS WALKS AWAY
	special HealParty
	waitbutton
;	closetext
	applyonemovement PLAYER, step_left
	setscene $2 
	end


; =================
; text
; =================
FacilityHealPartyText:
	text "Heal your team?"
	line "You can do this"
	para "one time per set"
	line "of trainers."
	done

FacilityExplainTrainersText:
	text "You will battle"
	line "three regular"
	cont "trainers, then"
	para "a battle with an"
	line "Elder to complete"
	cont "the round."
	
	para "You cannot change"
	line "your team between"
	cont "battles."
	
	para "You will have the"
	line "option to heal"
	cont "your party once."
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

FacilityCurrentStreakText:
	text "Current Streak:"
;	line "insert streak" ; TODO 
	done


KeepBattlingText:
	text "Good luck!"
	done

FacilityWinText:
	text "Battle won!"
	done

FacilityLossText:
	text "Battle lost!"
	done

FacilityWinTextSilas:
	text "Congrats"
	done

FacilityLossTextSilas:
	text "ha ha ha"
	done
