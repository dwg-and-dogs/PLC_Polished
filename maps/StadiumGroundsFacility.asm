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
	setval 3                       ; N = how many mons to choose among. setval passes the number to the next ... 
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
	; tell the player which mon (the FIRST roll)
	readmem wStadiumFacilityFirstTrainer ; reads the first value that's written, the player gets to see that. 
	ifequal 0, .TellPokemon1_0	
	ifequal 1, .TellPokemon1_1
;	ifequal 2, .TellPokemon1_2 ; fallthru 
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
	ifequal 0, .CallPokemon1_0
	ifequal 1, .CallPokemon1_1
	loadwildmon ARIADOS, 100               ; Pokemon1_2 
	sjump .AfterPokemon1
.CallPokemon1_0:
	loadwildmon LEDIAN, 100
	sjump .AfterPokemon1
.CallPokemon1_1:
	loadwildmon NOCTOWL, OTHER_FORM, 100
;	sjump .AfterPokemon1
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
	setval 4                       ; N = how many mons to choose among. setval passes the number to the next ... 
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
	ifequal 0, .CallTrainer1_0
	ifequal 1, .CallTrainer1_1
	ifequal 2, .CallTrainer1_2
	ifequal 3, .CallTrainer1_3
	ifequal 4, .CallTrainer1_4
	; Trainer1_5
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 6 
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 1 ; index is different by 1
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
.LoadedTrainer
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
	; crashes if you lose ? 
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
