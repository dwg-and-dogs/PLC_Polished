StadiumGroundsFacility_MapScriptHeader:
	def_scene_scripts

; 06.24.26  ROMX bank #29:   	SECTION: $4000-$6811 ($2812 bytes) ["Tohjo Falls Scripts"]


; battle fixes
	; todo check a few more rounds of the final section
	; fix the shiny star showing up for ff with non ee,ff dvs
	; adjust the format of the first pokemon event to the other five --> todo check 
	
; testing fixes
	; todo write phrases for all trainers 
	; todo adjust enemy levels based on testing 

; stretch goals 
	; todo see how hard it would be to tell you one, then two, then random mon 


	def_callbacks


	
	def_warp_events

	
	def_coord_events 
	coord_event 18, 15, 0, StadiumFacility_Pokemon1Event ; DONE 
	coord_event 18, 15, 1, StadiumFacility_Trainers1Event ; done 
	coord_event 18, 15, 2, StadiumFacility_Pokemon2Event ; done 
	coord_event 18, 15, 3, StadiumFacility_Trainers2Event ; done 
	coord_event 18, 15, 4, StadiumFacility_Pokemon3Event ; done
	coord_event 18, 15, 5, StadiumFacility_Trainers3Event ; done
	coord_event 18, 15, 6, StadiumFacility_Pokemon4Event ; done
	coord_event 18, 15, 7, StadiumFacility_Trainers4Event ; done
	coord_event 18, 15, 8, StadiumFacility_Pokemon5Event ; done
	coord_event 18, 15, 9, StadiumFacility_Trainers5Event ; check that amos party loads correctly now and hands off to the endless event 
	coord_event 18, 15, 10, StadiumFacility_TrainersEndlessEvent	

	def_bg_events
; 


	def_object_events
 	object_event 19, 15, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FacilityClerkScript, -1

	object_event 24, 14, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_BUG_MANIAC
	object_event 24, 14, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_AROMA_LADY
	object_event 24, 14, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_SAGE
	object_event 24, 14, SPRITE_NOMAD_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_NOMADF
	object_event 24, 14, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_NINJA
	object_event 24, 14, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_BRIGADER

	object_event 19, 17, SPRITE_HOLLIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_SILAS ; SUICUNE FINALE  TEAM 
	object_event 19, 17, SPRITE_SANDRA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_SANDRA ;  FINALE HO OH TEAM 
	object_event 19, 17, SPRITE_SAMSARA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_SYBIL ; ENTEI TEAM 
	object_event 19, 17, SPRITE_BARBEAU, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_REMY ; ANOTHER LUGIA TEAM  
	object_event 19, 17, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_AMOS ; RAIKOU TEAM 
	object_event 19, 17, SPRITE_KURT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_KURT ; CELEBI TEAM 
	object_event 19, 17, SPRITE_MEJIMI, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_VESPER ; HEATRAN TEAM 
; always present
 	object_event 14, 15, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FacilityClerkRetireScript, -1	
 	object_event 14,  9, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, RandomGiftGiverScript, -1 ; option to give you a master ball if you are on the last round AND you "get lucky" ie the value of one of your random numbers is exactly 0, which is 17/20 to not get it 
 	object_event 23,  9, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FacilityMoveReminderScript, -1 ; move reminder 
; 	object_event 14, 10, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FacilityMoveTutorScript, -1 ; move tutor 
	
	object_const_def
 	const STADIUM_FACILITY_CLERK

 	const STADIUM_FACILITY_BUG_CATCHER
 	const STADIUM_FACILITY_AROMA_LADY
 	const STADIUM_FACILITY_SAGE
 	const STADIUM_FACILITY_NOMADF
 	const STADIUM_FACILITY_NINJA
 	const STADIUM_FACILITY_BRIGADER

 	const STADIUM_FACILITY_HOLLIS 
 	const STADIUM_FACILITY_SANDRA
 	const STADIUM_FACILITY_SAMSARA
 	const STADIUM_FACILITY_BARBEAU
 	const STADIUM_FACILITY_AMOS
 	const STADIUM_FACILITY_KURTF
 	const STADIUM_FACILITY_MEJIMI

FacilityClerkRetireScript:
	faceplayer
	opentext
	writethistext
		text "Your current"
		line "streak is:"
		text_decimal wBattleTowerCurStreak, 2, 5
; print battle tower number 		
		done
	waitbutton
;	opentext
	readmem wStadiumFacilityBestMon    ; script var = best species number
	getmonname 0, 0                    ; 0 = take species from script var; dest 0 -> wStringBuffer3
	writethistext
		text "Best #MON:"
		line ""
		text_ram wStringBuffer3        ; <- the resolved name, not a party mon
		done
	waitbutton
	writethistext
		text "Would you like"
		line "to retire?"
		done
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
	checkevent EVENT_REACHED_CREDITS_ONCE
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx	
	iftrue .WarpToPrepRoom
	warp KURTS_HOUSE, 7, 1 ; TODO CHECK 
	sjump .Warped
.WarpToPrepRoom:
	warp STADIUM_GROUNDS_FACILITY_PREP, 13, 12
.Warped:
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
	setval 27                      ; N = 27 mons
	special FacilityThreeRandoms   ; rolls 3 distinct values into First/Second/Third

; ---- step 2: announce mon1, mon2, "or random" ----
	setval 0
	writemem wFacilityLoopStage
	readmem wStadiumFacilityFirstTrainer
	sjump .PrintName
.AfterAnnounce1:
	waitbutton
	setval 1
	writemem wFacilityLoopStage
	readmem wStadiumFacilitySecondTrainer
	sjump .PrintName
.AfterAnnounce2:
	waitbutton
	writethistext
		text "Or, I can call"
		line "a random #mon."
		done
	waitbutton

; ---- step 3: offer mon1 ----
.OfferFirst:
	setval 2
	writemem wFacilityLoopStage
	readmem wStadiumFacilityFirstTrainer
	sjump .PrintName
.AfterOfferFirst:
	waitbutton
	writethistext
		text "Try to catch"
		line "this one?"
		done
	yesorno
	iftrue .ChoseFirst

; ---- step 4: offer mon2 ----
.OfferSecond:
	setval 3
	writemem wFacilityLoopStage
	readmem wStadiumFacilitySecondTrainer
	sjump .PrintName
.AfterOfferSecond:
	waitbutton
	writethistext
		text "Try to catch"
		line "this one?"
		done
	yesorno
	iftrue .ChoseSecond

; ---- step 5: offer random, else loop to step 3 ----
	writethistext
		text "Shall I call a"
		line "random #mon"
		cont "instead?"
		done
	yesorno
	iffalse .OfferFirst
	readmem wStadiumFacilityThirdTrainer
	sjump .HaveChoice

.ChoseFirst:
	readmem wStadiumFacilityFirstTrainer
	sjump .HaveChoice
.ChoseSecond:
	readmem wStadiumFacilitySecondTrainer
;	fallthrough
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
	loadwildmon VICTREEBEL, 100            ; index 26
	sjump .AfterPokemon1
.CallPokemon1_0:
	loadwildmon MAGCARGO, OTHER_FORM, 100
	sjump .AfterPokemon1
.CallPokemon1_1:
	loadwildmon ELECTRODE, HISUIAN_FORM, 100
	sjump .AfterPokemon1
.CallPokemon1_2:
	loadwildmon SLOWBRO, GALARIAN_FORM, 100
	sjump .AfterPokemon1
.CallPokemon1_3:
	loadwildmon SLOWKING, GALARIAN_FORM, 100
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
	loadwildmon NOCTOWL, OTHER_FORM, 100
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
;	fallthrough
.AfterPokemon1:
	startbattle
	reloadmapafterbattle
	special UpdateStadiumStreak
	opentext
	writetext FacilityCurrentStreakText
	waitbutton
	special HealParty
	writetext FacilityComeBackWhenYoureReadyText
	waitbutton
	closetext
	readdifficultymode
	ifequal DIFFICULTY_HARD, .hard
	sjump .NotHardDifficulty
.hard:
	clearevent EVENT_TROPHY_MON
.NotHardDifficulty:
	setscene $1
	applyonemovement PLAYER, step_left
	end

; ===== single shared name table =====
.PrintName:
	ifequal 0,  .Name_0
	ifequal 1,  .Name_1
	ifequal 2,  .Name_2
	ifequal 3,  .Name_3
	ifequal 4,  .Name_4
	ifequal 5,  .Name_5
	ifequal 6,  .Name_6
	ifequal 7,  .Name_7
	ifequal 8,  .Name_8
	ifequal 9,  .Name_9
	ifequal 10, .Name_10
	ifequal 11, .Name_11
	ifequal 12, .Name_12
	ifequal 13, .Name_13
	ifequal 14, .Name_14
	ifequal 15, .Name_15
	ifequal 16, .Name_16
	ifequal 17, .Name_17
	ifequal 18, .Name_18
	ifequal 19, .Name_19
	ifequal 20, .Name_20
	ifequal 21, .Name_21
	ifequal 22, .Name_22
	ifequal 23, .Name_23
	ifequal 24, .Name_24
	ifequal 25, .Name_25
	writethistext
		text "Victreebel."
		done
	sjump .NamePrinted
.Name_0:
	writethistext
		text "Ancestor Magcargo."
		done
	sjump .NamePrinted
.Name_1:
	writethistext
		text "Hisuian Electrode."
		done
	sjump .NamePrinted
.Name_2:
	writethistext
		text "Galarian Slowbro."
		done
	sjump .NamePrinted
.Name_3:
	writethistext
		text "Galarian Slowking."
		done
	sjump .NamePrinted
.Name_4:
	writethistext
		text "Scizor."
		done
	sjump .NamePrinted
.Name_5:
	writethistext
		text "Kleavor."
		done
	sjump .NamePrinted
.Name_6:
	writethistext
		text "Minsir."
		done
	sjump .NamePrinted
.Name_7:
	writethistext
		text "Yanmega."
		done
	sjump .NamePrinted
.Name_8:
	writethistext
		text "Furret."
		done
	sjump .NamePrinted
.Name_9:
	writethistext
		text "Pinsir."
		done
	sjump .NamePrinted
.Name_10:
	writethistext
		text "Scyther."
		done
	sjump .NamePrinted
.Name_11:
	writethistext
		text "Hippowdon."
		done
	sjump .NamePrinted
.Name_12:
	writethistext
		text "Abomasnow."
		done
	sjump .NamePrinted
.Name_13:
	writethistext
		text "Avalugg."
		done
	sjump .NamePrinted
.Name_14:
	writethistext
		text "Heracross."
		done
	sjump .NamePrinted
.Name_15:
	writethistext
		text "Forretress."
		done
	sjump .NamePrinted
.Name_16:
	writethistext
		text "Magcargo."
		done
	sjump .NamePrinted
.Name_17:
	writethistext
		text "Ariados."
		done
	sjump .NamePrinted
.Name_18:
	writethistext
		text "Ledian."
		done
	sjump .NamePrinted
.Name_19:
	writethistext
		text "Ancestor Noctowl."
		done
	sjump .NamePrinted
.Name_20:
	writethistext
		text "Parasect."
		done
	sjump .NamePrinted
.Name_21:
	writethistext
		text "Slowbro."
		done
	sjump .NamePrinted
.Name_22:
	writethistext
		text "Slowking."
		done
	sjump .NamePrinted
.Name_23:
	writethistext
		text "Quagsire."
		done
	sjump .NamePrinted
.Name_24:
	writethistext
		text "Staraptor."
		done
	sjump .NamePrinted
.Name_25:
	writethistext
		text "Jumpluff."
		done
;	fallthrough
.NamePrinted:
	readmem wFacilityLoopStage
	ifequal 0, .AfterAnnounce1
	ifequal 1, .AfterAnnounce2
	ifequal 2, .AfterOfferFirst
;	stage 3 fallthru
	sjump .AfterOfferSecond
	
; ===================
; above is for pokemon 1	
; ===================
	
; ====================================================================
; ====================================================================
;   STADIUM FACILITY - POKEMON 2 EVENT  (28 mons)
; ====================================================================
; ====================================================================
StadiumFacility_Pokemon2Event:
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	writetext FacilityExplainBallText
	waitbutton
	setval 28                      ; N = 28 mons
	special FacilityThreeRandoms   ; rolls 3 distinct values into First/Second/Third

; ---- step 2: announce mon1, mon2, "or random" ----
	setval 0
	writemem wFacilityLoopStage
	readmem wStadiumFacilityFirstTrainer
	sjump .PrintName
.AfterAnnounce1:
	waitbutton
	setval 1
	writemem wFacilityLoopStage
	readmem wStadiumFacilitySecondTrainer
	sjump .PrintName
.AfterAnnounce2:
	waitbutton
	writethistext
		text "Or, I can call"
		line "a random #mon."
		done
	waitbutton

; ---- step 3: offer mon1 ----
.OfferFirst:
	setval 2
	writemem wFacilityLoopStage
	readmem wStadiumFacilityFirstTrainer
	sjump .PrintName
.AfterOfferFirst:
	waitbutton
	writethistext
		text "Try to catch"
		line "this one?"
		done
	yesorno
	iftrue .ChoseFirst

; ---- step 4: offer mon2 ----
.OfferSecond:
	setval 3
	writemem wFacilityLoopStage
	readmem wStadiumFacilitySecondTrainer
	sjump .PrintName
.AfterOfferSecond:
	waitbutton
	writethistext
		text "Try to catch"
		line "this one?"
		done
	yesorno
	iftrue .ChoseSecond

; ---- step 5: offer random, else loop to step 3 ----
	writethistext
		text "Shall I call a"
		line "random #mon"
		cont "instead?"
		done
	yesorno
	iffalse .OfferFirst
	readmem wStadiumFacilityThirdTrainer
	sjump .HaveChoice

.ChoseFirst:
	readmem wStadiumFacilityFirstTrainer
	sjump .HaveChoice
.ChoseSecond:
	readmem wStadiumFacilitySecondTrainer
;	fallthrough
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
	ifequal 26, .CallPokemon1_26
	loadwildmon GOLEM, ALOLAN_FORM, 100    ; index 27
	sjump .AfterPokemon1
.CallPokemon1_0:
	loadwildmon CLEFABLE, 100
	sjump .AfterPokemon1
.CallPokemon1_1:
	loadwildmon TOGEKISS, 100
	sjump .AfterPokemon1
.CallPokemon1_2:
	loadwildmon BELLOSSOM, 100
	sjump .AfterPokemon1
.CallPokemon1_3:
	loadwildmon NIDOQUEEN, 100
	sjump .AfterPokemon1
.CallPokemon1_4:
	loadwildmon JYNX, 100
	sjump .AfterPokemon1
.CallPokemon1_5:
	loadwildmon BLISSEY, 100
	sjump .AfterPokemon1
.CallPokemon1_6:
	loadwildmon TOXICROAK, 100
	sjump .AfterPokemon1
.CallPokemon1_7:
	loadwildmon GOLEM, 100
	sjump .AfterPokemon1
.CallPokemon1_8:
	loadwildmon NIDOKING, 100
	sjump .AfterPokemon1
.CallPokemon1_9:
	loadwildmon EXEGGUTOR, 100
	sjump .AfterPokemon1
.CallPokemon1_10:
	loadwildmon GRANBULL, 100
	sjump .AfterPokemon1
.CallPokemon1_11:
	loadwildmon AZUMARILL, 100
	sjump .AfterPokemon1
.CallPokemon1_12:
	loadwildmon HITMONLEE, 100
	sjump .AfterPokemon1
.CallPokemon1_13:
	loadwildmon HITMONCHAN, 100
	sjump .AfterPokemon1
.CallPokemon1_14:
	loadwildmon HITMONTOP, 100
	sjump .AfterPokemon1
.CallPokemon1_15:
	loadwildmon TANGROWTH, 100
	sjump .AfterPokemon1
.CallPokemon1_16:
	loadwildmon RAPIDASH, 100
	sjump .AfterPokemon1
.CallPokemon1_17:
	loadwildmon BASTIODON, 100
	sjump .AfterPokemon1
.CallPokemon1_18:
	loadwildmon RAICHU, 100
	sjump .AfterPokemon1
.CallPokemon1_19:
	loadwildmon MEGANIUM, 100
	sjump .AfterPokemon1
.CallPokemon1_20:
	loadwildmon WEEZING, 100
	sjump .AfterPokemon1
.CallPokemon1_21:
	loadwildmon SUNFLORA, 100
	sjump .AfterPokemon1
.CallPokemon1_22:
	loadwildmon GARDEVOIR, 100
	sjump .AfterPokemon1
.CallPokemon1_23:
	loadwildmon RAICHU, ALOLAN_FORM, 100   ; ARaichu
	sjump .AfterPokemon1
.CallPokemon1_24:
	loadwildmon MEGANIUM, OTHER_FORM, 100 ; AMeganium
	sjump .AfterPokemon1
.CallPokemon1_25:
	loadwildmon WEEZING, GALARIAN_FORM, 100  ; GWeezing
	sjump .AfterPokemon1
.CallPokemon1_26:
	loadwildmon RAPIDASH, GALARIAN_FORM, 100 ; GRapidash
;	fallthrough
.AfterPokemon1:
	startbattle
	reloadmapafterbattle
	special UpdateStadiumStreak
	opentext
	writetext FacilityCurrentStreakText
	waitbutton
	special HealParty
	writetext FacilityComeBackWhenYoureReadyText
	waitbutton
	closetext
	setscene $3
	applyonemovement PLAYER, step_left
	end

; ===== single shared name table =====
.PrintName:
	ifequal 0,  .Name_0
	ifequal 1,  .Name_1
	ifequal 2,  .Name_2
	ifequal 3,  .Name_3
	ifequal 4,  .Name_4
	ifequal 5,  .Name_5
	ifequal 6,  .Name_6
	ifequal 7,  .Name_7
	ifequal 8,  .Name_8
	ifequal 9,  .Name_9
	ifequal 10, .Name_10
	ifequal 11, .Name_11
	ifequal 12, .Name_12
	ifequal 13, .Name_13
	ifequal 14, .Name_14
	ifequal 15, .Name_15
	ifequal 16, .Name_16
	ifequal 17, .Name_17
	ifequal 18, .Name_18
	ifequal 19, .Name_19
	ifequal 20, .Name_20
	ifequal 21, .Name_21
	ifequal 22, .Name_22
	ifequal 23, .Name_23
	ifequal 24, .Name_24
	ifequal 25, .Name_25
	ifequal 26, .Name_26
	writethistext
		text "Alolan Golem."
		done
	sjump .NamePrinted
.Name_0:
	writethistext
		text "Clefable."
		done
	sjump .NamePrinted
.Name_1:
	writethistext
		text "Togekiss."
		done
	sjump .NamePrinted
.Name_2:
	writethistext
		text "Bellossom."
		done
	sjump .NamePrinted
.Name_3:
	writethistext
		text "Nidoqueen."
		done
	sjump .NamePrinted
.Name_4:
	writethistext
		text "Jynx."
		done
	sjump .NamePrinted
.Name_5:
	writethistext
		text "Blissey."
		done
	sjump .NamePrinted
.Name_6:
	writethistext
		text "Toxicroak."
		done
	sjump .NamePrinted
.Name_7:
	writethistext
		text "Golem."
		done
	sjump .NamePrinted
.Name_8:
	writethistext
		text "Nidoking."
		done
	sjump .NamePrinted
.Name_9:
	writethistext
		text "Exeggutor."
		done
	sjump .NamePrinted
.Name_10:
	writethistext
		text "Granbull."
		done
	sjump .NamePrinted
.Name_11:
	writethistext
		text "Azumarill."
		done
	sjump .NamePrinted
.Name_12:
	writethistext
		text "Hitmonlee."
		done
	sjump .NamePrinted
.Name_13:
	writethistext
		text "Hitmonchan."
		done
	sjump .NamePrinted
.Name_14:
	writethistext
		text "Hitmontop."
		done
	sjump .NamePrinted
.Name_15:
	writethistext
		text "Tangrowth."
		done
	sjump .NamePrinted
.Name_16:
	writethistext
		text "Rapidash."
		done
	sjump .NamePrinted
.Name_17:
	writethistext
		text "Bastiodon."
		done
	sjump .NamePrinted
.Name_18:
	writethistext
		text "Raichu."
		done
	sjump .NamePrinted
.Name_19:
	writethistext
		text "Meganium."
		done
	sjump .NamePrinted
.Name_20:
	writethistext
		text "Weezing."
		done
	sjump .NamePrinted
.Name_21:
	writethistext
		text "Sunflora."
		done
	sjump .NamePrinted
.Name_22:
	writethistext
		text "Gardevoir."
		done
	sjump .NamePrinted
.Name_23:
	writethistext
		text "Alolan Raichu."
		done
	sjump .NamePrinted
.Name_24:
	writethistext
		text "Alolan Meganium."
		done
	sjump .NamePrinted
.Name_25:
	writethistext
		text "Galarian Weezing."
		done
	sjump .NamePrinted
.Name_26:
	writethistext
		text "Galarian Rapidash."
		done
;	fallthrough
.NamePrinted:
	readmem wFacilityLoopStage
	ifequal 0, .AfterAnnounce1
	ifequal 1, .AfterAnnounce2
	ifequal 2, .AfterOfferFirst
;	stage 3 fallthru
	sjump .AfterOfferSecond


; ====================================================================
; ====================================================================
;   STADIUM FACILITY - POKEMON 3 EVENT  (25 mons)
; ====================================================================
; ====================================================================
StadiumFacility_Pokemon3Event:
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	writetext FacilityExplainBallText
	waitbutton
	setval 25                      ; N = 25 mons
	special FacilityThreeRandoms   ; rolls 3 distinct values into First/Second/Third

; ---- step 2: announce mon1, mon2, "or random" ----
	setval 0
	writemem wFacilityLoopStage
	readmem wStadiumFacilityFirstTrainer
	sjump .PrintName
.AfterAnnounce1:
	waitbutton
	setval 1
	writemem wFacilityLoopStage
	readmem wStadiumFacilitySecondTrainer
	sjump .PrintName
.AfterAnnounce2:
	waitbutton
	writethistext
		text "Or, I can call"
		line "a random #mon."
		done
	waitbutton

; ---- step 3: offer mon1 ----
.OfferFirst:
	setval 2
	writemem wFacilityLoopStage
	readmem wStadiumFacilityFirstTrainer
	sjump .PrintName
.AfterOfferFirst:
	waitbutton
	writethistext
		text "Try to catch"
		line "this one?"
		done
	yesorno
	iftrue .ChoseFirst

; ---- step 4: offer mon2 ----
.OfferSecond:
	setval 3
	writemem wFacilityLoopStage
	readmem wStadiumFacilitySecondTrainer
	sjump .PrintName
.AfterOfferSecond:
	waitbutton
	writethistext
		text "Try to catch"
		line "this one?"
		done
	yesorno
	iftrue .ChoseSecond

; ---- step 5: offer random, else loop to step 3 ----
	writethistext
		text "Shall I call a"
		line "random #mon"
		cont "instead?"
		done
	yesorno
	iffalse .OfferFirst
	readmem wStadiumFacilityThirdTrainer
	sjump .HaveChoice

.ChoseFirst:
	readmem wStadiumFacilityFirstTrainer
	sjump .HaveChoice
.ChoseSecond:
	readmem wStadiumFacilitySecondTrainer
;	fallthrough
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
	loadwildmon MUK, ALOLAN_FORM, 100       ; index 24
	sjump .AfterPokemon1
.CallPokemon1_0:
	loadwildmon SUDOWOODO, 100
	sjump .AfterPokemon1
.CallPokemon1_1:
	loadwildmon GENGAR, 100
	sjump .AfterPokemon1
.CallPokemon1_2:
	loadwildmon VILEPLUME, 100
	sjump .AfterPokemon1
.CallPokemon1_3:
	loadwildmon WYRDEER, 100
	sjump .AfterPokemon1
.CallPokemon1_4:
	loadwildmon ANNIHILAPE, 100
	sjump .AfterPokemon1
.CallPokemon1_5:
	loadwildmon AMBIPOM, 100
	sjump .AfterPokemon1
.CallPokemon1_6:
	loadwildmon XATU, 100
	sjump .AfterPokemon1
.CallPokemon1_7:
	loadwildmon HONCHKROW, 100
	sjump .AfterPokemon1
.CallPokemon1_8:
	loadwildmon HOUNDOOM, 100
	sjump .AfterPokemon1
.CallPokemon1_9:
	loadwildmon CROBAT, 100
	sjump .AfterPokemon1
.CallPokemon1_10:
	loadwildmon NINETALES, 100
	sjump .AfterPokemon1
.CallPokemon1_11:
	loadwildmon FARIGIRAF, 100
	sjump .AfterPokemon1
.CallPokemon1_12:
	loadwildmon MAGMORTAR, 100
	sjump .AfterPokemon1
.CallPokemon1_13:
	loadwildmon BASCULEGION, 100
	sjump .AfterPokemon1
.CallPokemon1_14:
	loadwildmon MISMAGIUS, 100
	sjump .AfterPokemon1
.CallPokemon1_15:
	loadwildmon DUSKNOIR, 100
	sjump .AfterPokemon1
.CallPokemon1_16:
	loadwildmon WEAVILE, 100
	sjump .AfterPokemon1
.CallPokemon1_17:
	loadwildmon ENTEI, 100
	sjump .AfterPokemon1
.CallPokemon1_18:
	loadwildmon MUK, 100
	sjump .AfterPokemon1
.CallPokemon1_19:
	loadwildmon ELECTRODE, 100
	sjump .AfterPokemon1
.CallPokemon1_20:
	loadwildmon DONPHAN, 100
	sjump .AfterPokemon1
.CallPokemon1_21:
	loadwildmon SPIRITOMB, 100
	sjump .AfterPokemon1
.CallPokemon1_22:
	loadwildmon ROTOM, 100
	sjump .AfterPokemon1
.CallPokemon1_23:
	loadwildmon XATU, OTHER_FORM, 100      ; Xatu, Ancestor_form
;	fallthrough
.AfterPokemon1:
	startbattle
	reloadmapafterbattle
	special UpdateStadiumStreak
	opentext
	writetext FacilityCurrentStreakText
	waitbutton
	special HealParty
	writetext FacilityComeBackWhenYoureReadyText
	waitbutton
	closetext
	setscene $5
	applyonemovement PLAYER, step_left
	end

; ===== single shared name table =====
.PrintName:
	ifequal 0,  .Name_0
	ifequal 1,  .Name_1
	ifequal 2,  .Name_2
	ifequal 3,  .Name_3
	ifequal 4,  .Name_4
	ifequal 5,  .Name_5
	ifequal 6,  .Name_6
	ifequal 7,  .Name_7
	ifequal 8,  .Name_8
	ifequal 9,  .Name_9
	ifequal 10, .Name_10
	ifequal 11, .Name_11
	ifequal 12, .Name_12
	ifequal 13, .Name_13
	ifequal 14, .Name_14
	ifequal 15, .Name_15
	ifequal 16, .Name_16
	ifequal 17, .Name_17
	ifequal 18, .Name_18
	ifequal 19, .Name_19
	ifequal 20, .Name_20
	ifequal 21, .Name_21
	ifequal 22, .Name_22
	ifequal 23, .Name_23
	writethistext
		text "Alolan Muk."
		done
	sjump .NamePrinted
.Name_0:
	writethistext
		text "Sudowoodo."
		done
	sjump .NamePrinted
.Name_1:
	writethistext
		text "Gengar."
		done
	sjump .NamePrinted
.Name_2:
	writethistext
		text "Vileplume."
		done
	sjump .NamePrinted
.Name_3:
	writethistext
		text "Wyrdeer."
		done
	sjump .NamePrinted
.Name_4:
	writethistext
		text "Annihilape."
		done
	sjump .NamePrinted
.Name_5:
	writethistext
		text "Ambipom."
		done
	sjump .NamePrinted
.Name_6:
	writethistext
		text "Xatu."
		done
	sjump .NamePrinted
.Name_7:
	writethistext
		text "Honchkrow."
		done
	sjump .NamePrinted
.Name_8:
	writethistext
		text "Houndoom."
		done
	sjump .NamePrinted
.Name_9:
	writethistext
		text "Crobat."
		done
	sjump .NamePrinted
.Name_10:
	writethistext
		text "Ninetales."
		done
	sjump .NamePrinted
.Name_11:
	writethistext
		text "Farigiraf."
		done
	sjump .NamePrinted
.Name_12:
	writethistext
		text "Magmortar."
		done
	sjump .NamePrinted
.Name_13:
	writethistext
		text "Basculegion."
		done
	sjump .NamePrinted
.Name_14:
	writethistext
		text "Mismagius."
		done
	sjump .NamePrinted
.Name_15:
	writethistext
		text "Dusknoir."
		done
	sjump .NamePrinted
.Name_16:
	writethistext
		text "Weavile."
		done
	sjump .NamePrinted
.Name_17:
	writethistext
		text "Entei."
		done
	sjump .NamePrinted
.Name_18:
	writethistext
		text "Muk."
		done
	sjump .NamePrinted
.Name_19:
	writethistext
		text "Electrode."
		done
	sjump .NamePrinted
.Name_20:
	writethistext
		text "Donphan."
		done
	sjump .NamePrinted
.Name_21:
	writethistext
		text "Spiritomb."
		done
	sjump .NamePrinted
.Name_22:
	writethistext
		text "Rotom."
		done
	sjump .NamePrinted
.Name_23:
	writethistext
		text "Ancestor Xatu."
		done
;	fallthrough
.NamePrinted:
	readmem wFacilityLoopStage
	ifequal 0, .AfterAnnounce1
	ifequal 1, .AfterAnnounce2
	ifequal 2, .AfterOfferFirst
;	stage 3 fallthru
	sjump .AfterOfferSecond


; ====================================================================
; ====================================================================
;   STADIUM FACILITY - POKEMON 4 EVENT  (25 mons)
; ====================================================================
; ====================================================================
StadiumFacility_Pokemon4Event:
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	writetext FacilityExplainBallText
	waitbutton
	setval 25                      ; N = 25 mons
	special FacilityThreeRandoms   ; rolls 3 distinct values into First/Second/Third

; ---- step 2: announce mon1, mon2, "or random" ----
	setval 0
	writemem wFacilityLoopStage
	readmem wStadiumFacilityFirstTrainer
	sjump .PrintName
.AfterAnnounce1:
	waitbutton
	setval 1
	writemem wFacilityLoopStage
	readmem wStadiumFacilitySecondTrainer
	sjump .PrintName
.AfterAnnounce2:
	waitbutton
	writethistext
		text "Or, I can call"
		line "a random #mon."
		done
	waitbutton

; ---- step 3: offer mon1 ----
.OfferFirst:
	setval 2
	writemem wFacilityLoopStage
	readmem wStadiumFacilityFirstTrainer
	sjump .PrintName
.AfterOfferFirst:
	waitbutton
	writethistext
		text "Try to catch"
		line "this one?"
		done
	yesorno
	iftrue .ChoseFirst

; ---- step 4: offer mon2 ----
.OfferSecond:
	setval 3
	writemem wFacilityLoopStage
	readmem wStadiumFacilitySecondTrainer
	sjump .PrintName
.AfterOfferSecond:
	waitbutton
	writethistext
		text "Try to catch"
		line "this one?"
		done
	yesorno
	iftrue .ChoseSecond

; ---- step 5: offer random, else loop to step 3 ----
	writethistext
		text "Shall I call a"
		line "random #mon"
		cont "instead?"
		done
	yesorno
	iffalse .OfferFirst
	readmem wStadiumFacilityThirdTrainer
	sjump .HaveChoice

.ChoseFirst:
	readmem wStadiumFacilityFirstTrainer
	sjump .HaveChoice
.ChoseSecond:
	readmem wStadiumFacilitySecondTrainer
;	fallthrough
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
	loadwildmon SUICUNE, 100               ; index 24
	sjump .AfterPokemon1
.CallPokemon1_0:
	loadwildmon AMPHAROS, 100
	sjump .AfterPokemon1
.CallPokemon1_1:
	loadwildmon POLITOED, 100
	sjump .AfterPokemon1
.CallPokemon1_2:
	loadwildmon POLIWRATH, 100
	sjump .AfterPokemon1
.CallPokemon1_3:
	loadwildmon GYARADOS, 100
	sjump .AfterPokemon1
.CallPokemon1_4:
	loadwildmon KINGDRA, 100
	sjump .AfterPokemon1
.CallPokemon1_5:
	loadwildmon SHUCKLE, 100
	sjump .AfterPokemon1
.CallPokemon1_6:
	loadwildmon FERALIGATR, 100
	sjump .AfterPokemon1
.CallPokemon1_7:
	loadwildmon GOODRA, 100
	sjump .AfterPokemon1
.CallPokemon1_8:
	loadwildmon SKARMORY, 100
	sjump .AfterPokemon1
.CallPokemon1_9:
	loadwildmon DRIFBLIM, 100
	sjump .AfterPokemon1
.CallPokemon1_10:
	loadwildmon BRAVIARY, 100
	sjump .AfterPokemon1
.CallPokemon1_11:
	loadwildmon MILTANK, 100
	sjump .AfterPokemon1
.CallPokemon1_12:
	loadwildmon ELECTIVIRE, 100
	sjump .AfterPokemon1
.CallPokemon1_13:
	loadwildmon OVERQWIL, 100
	sjump .AfterPokemon1
.CallPokemon1_14:
	loadwildmon TENTACRUEL, 100
	sjump .AfterPokemon1
.CallPokemon1_15:
	loadwildmon OCTILLERY, 100
	sjump .AfterPokemon1
.CallPokemon1_16:
	loadwildmon LANTURN, 100
	sjump .AfterPokemon1
.CallPokemon1_17:
	loadwildmon CORSOLA, 100
	sjump .AfterPokemon1
.CallPokemon1_18:
	loadwildmon MANTINE, 100
	sjump .AfterPokemon1
.CallPokemon1_19:
	loadwildmon LAPRAS, 100
	sjump .AfterPokemon1
.CallPokemon1_20:
	loadwildmon NINETALES, ALOLAN_FORM, 100 ; Ninetales_Alolan
	sjump .AfterPokemon1
.CallPokemon1_21:
	loadwildmon CORSOLA, GALARIAN_FORM, 100  ; Corsola_Galarian
	sjump .AfterPokemon1
.CallPokemon1_22:
	loadwildmon EXEGGUTOR, GALARIAN_FORM, 100 ; Exeggutor_Galarian
	sjump .AfterPokemon1
.CallPokemon1_23:
	loadwildmon FERALIGATR, OTHER_FORM, 100 ; Feraligatr_ancestor
;	fallthrough
.AfterPokemon1:
	startbattle
	reloadmapafterbattle
	special UpdateStadiumStreak
	opentext
	writetext FacilityCurrentStreakText
	waitbutton
	special HealParty
	writetext FacilityComeBackWhenYoureReadyText
	waitbutton
	closetext
	setscene $7
	applyonemovement PLAYER, step_left
	end

; ===== single shared name table =====
.PrintName:
	ifequal 0,  .Name_0
	ifequal 1,  .Name_1
	ifequal 2,  .Name_2
	ifequal 3,  .Name_3
	ifequal 4,  .Name_4
	ifequal 5,  .Name_5
	ifequal 6,  .Name_6
	ifequal 7,  .Name_7
	ifequal 8,  .Name_8
	ifequal 9,  .Name_9
	ifequal 10, .Name_10
	ifequal 11, .Name_11
	ifequal 12, .Name_12
	ifequal 13, .Name_13
	ifequal 14, .Name_14
	ifequal 15, .Name_15
	ifequal 16, .Name_16
	ifequal 17, .Name_17
	ifequal 18, .Name_18
	ifequal 19, .Name_19
	ifequal 20, .Name_20
	ifequal 21, .Name_21
	ifequal 22, .Name_22
	ifequal 23, .Name_23
	writethistext
		text "Suicune."
		done
	sjump .NamePrinted
.Name_0:
	writethistext
		text "Ampharos."
		done
	sjump .NamePrinted
.Name_1:
	writethistext
		text "Politoed."
		done
	sjump .NamePrinted
.Name_2:
	writethistext
		text "Poliwrath."
		done
	sjump .NamePrinted
.Name_3:
	writethistext
		text "Gyarados."
		done
	sjump .NamePrinted
.Name_4:
	writethistext
		text "Kingdra."
		done
	sjump .NamePrinted
.Name_5:
	writethistext
		text "Shuckle."
		done
	sjump .NamePrinted
.Name_6:
	writethistext
		text "Feraligatr."
		done
	sjump .NamePrinted
.Name_7:
	writethistext
		text "Goodra."
		done
	sjump .NamePrinted
.Name_8:
	writethistext
		text "Skarmory."
		done
	sjump .NamePrinted
.Name_9:
	writethistext
		text "Drifblim."
		done
	sjump .NamePrinted
.Name_10:
	writethistext
		text "Braviary."
		done
	sjump .NamePrinted
.Name_11:
	writethistext
		text "Miltank."
		done
	sjump .NamePrinted
.Name_12:
	writethistext
		text "Electivire."
		done
	sjump .NamePrinted
.Name_13:
	writethistext
		text "Overqwil."
		done
	sjump .NamePrinted
.Name_14:
	writethistext
		text "Tentacruel."
		done
	sjump .NamePrinted
.Name_15:
	writethistext
		text "Octillery."
		done
	sjump .NamePrinted
.Name_16:
	writethistext
		text "Lanturn."
		done
	sjump .NamePrinted
.Name_17:
	writethistext
		text "Corsola."
		done
	sjump .NamePrinted
.Name_18:
	writethistext
		text "Mantine."
		done
	sjump .NamePrinted
.Name_19:
	writethistext
		text "Lapras."
		done
	sjump .NamePrinted
.Name_20:
	writethistext
		text "Alolan Ninetales."
		done
	sjump .NamePrinted
.Name_21:
	writethistext
		text "Galarian Corsola."
		done
	sjump .NamePrinted
.Name_22:
	writethistext
		text "Galarian Exeggutor."
		done
	sjump .NamePrinted
.Name_23:
	writethistext
		text "Ancestor Feraligatr."
		done
;	fallthrough
.NamePrinted:
	readmem wFacilityLoopStage
	ifequal 0, .AfterAnnounce1
	ifequal 1, .AfterAnnounce2
	ifequal 2, .AfterOfferFirst
;	stage 3 fallthru
	sjump .AfterOfferSecond


; ====================================================================
; ====================================================================
;   STADIUM FACILITY - POKEMON 5 EVENT  (39 mons)
; ====================================================================
; ====================================================================
StadiumFacility_Pokemon5Event:
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	writetext FacilityExplainBallText
	waitbutton
	setval 39                      ; N = 39 mons
	special FacilityThreeRandoms   ; rolls 3 distinct values into First/Second/Third

; ---- step 2: announce mon1, mon2, "or random" ----
	setval 0
	writemem wFacilityLoopStage
	readmem wStadiumFacilityFirstTrainer
	sjump .PrintName
.AfterAnnounce1:
	waitbutton
	setval 1
	writemem wFacilityLoopStage
	readmem wStadiumFacilitySecondTrainer
	sjump .PrintName
.AfterAnnounce2:
	waitbutton
	writethistext
		text "Or, I can call"
		line "a random #mon."
		done
	waitbutton

; ---- step 3: offer mon1 ----
.OfferFirst:
	setval 2
	writemem wFacilityLoopStage
	readmem wStadiumFacilityFirstTrainer
	sjump .PrintName
.AfterOfferFirst:
	waitbutton
	writethistext
		text "Try to catch"
		line "this one?"
		done
	yesorno
	iftrue .ChoseFirst

; ---- step 4: offer mon2 ----
.OfferSecond:
	setval 3
	writemem wFacilityLoopStage
	readmem wStadiumFacilitySecondTrainer
	sjump .PrintName
.AfterOfferSecond:
	waitbutton
	writethistext
		text "Try to catch"
		line "this one?"
		done
	yesorno
	iftrue .ChoseSecond

; ---- step 5: offer random, else loop to step 3 ----
	writethistext
		text "Shall I call a"
		line "random #mon"
		cont "instead?"
		done
	yesorno
	iffalse .OfferFirst
	readmem wStadiumFacilityThirdTrainer
	sjump .HaveChoice

.ChoseFirst:
	readmem wStadiumFacilityFirstTrainer
	sjump .HaveChoice
.ChoseSecond:
	readmem wStadiumFacilitySecondTrainer
;	fallthrough
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
	ifequal 26, .CallPokemon1_26
	ifequal 27, .CallPokemon1_27
	ifequal 28, .CallPokemon1_28
	ifequal 29, .CallPokemon1_29
	ifequal 30, .CallPokemon1_30
	ifequal 31, .CallPokemon1_31
	ifequal 32, .CallPokemon1_32
	ifequal 33, .CallPokemon1_33
	ifequal 34, .CallPokemon1_34
	ifequal 35, .CallPokemon1_35
	ifequal 36, .CallPokemon1_36
	ifequal 37, .CallPokemon1_37
	loadwildmon URSALUNA, OTHER_FORM, 100  ; index 38, Ursaluna_bloodmoon
	sjump .AfterPokemon1
.CallPokemon1_0:
	loadwildmon TYPHLOSION, 100
	sjump .AfterPokemon1
.CallPokemon1_1:
	loadwildmon DECIDUEYE, 100
	sjump .AfterPokemon1
.CallPokemon1_2:
	loadwildmon SAMUROTT, 100
	sjump .AfterPokemon1
.CallPokemon1_3:
	loadwildmon MACHAMP, 100
	sjump .AfterPokemon1
.CallPokemon1_4:
	loadwildmon URSALUNA, 100
	sjump .AfterPokemon1
.CallPokemon1_5:
	loadwildmon LUXRAY, 100
	sjump .AfterPokemon1
.CallPokemon1_6:
	loadwildmon LUCARIO, 100
	sjump .AfterPokemon1
.CallPokemon1_7:
	loadwildmon GALLADE, 100
	sjump .AfterPokemon1
.CallPokemon1_8:
	loadwildmon DRAGONITE, 100
	sjump .AfterPokemon1
.CallPokemon1_9:
	loadwildmon TYRANITAR, 100
	sjump .AfterPokemon1
.CallPokemon1_10:
	loadwildmon ARCANINE, HISUIAN_FORM, 100  ; Arcanine_hisuan
	sjump .AfterPokemon1
.CallPokemon1_11:
	loadwildmon STEELIX, 100
	sjump .AfterPokemon1
.CallPokemon1_12:
	loadwildmon DUDUNSPARCE, 100
	sjump .AfterPokemon1
.CallPokemon1_13:
	loadwildmon ARCANINE, 100
	sjump .AfterPokemon1
.CallPokemon1_14:
	loadwildmon TYPHLOSION, HISUIAN_FORM, 100 ; Typhlosion_hisuan
	sjump .AfterPokemon1
.CallPokemon1_15:
	loadwildmon DECIDUEYE, HISUIAN_FORM, 100 ; Decidueye_hisuan
	sjump .AfterPokemon1
.CallPokemon1_16:
	loadwildmon SAMUROTT, HISUIAN_FORM, 100  ; Samurott_hisuan
	sjump .AfterPokemon1
.CallPokemon1_17:
	loadwildmon JOLTEON, 100
	sjump .AfterPokemon1
.CallPokemon1_18:
	loadwildmon VAPOREON, 100
	sjump .AfterPokemon1
.CallPokemon1_19:
	loadwildmon FLAREON, 100
	sjump .AfterPokemon1
.CallPokemon1_20:
	loadwildmon LEAFEON, 100
	sjump .AfterPokemon1
.CallPokemon1_21:
	loadwildmon SYLVEON, 100
	sjump .AfterPokemon1
.CallPokemon1_22:
	loadwildmon GLACEON, 100
	sjump .AfterPokemon1
.CallPokemon1_23:
	loadwildmon ESPEON, 100
	sjump .AfterPokemon1
.CallPokemon1_24:
	loadwildmon UMBREON, 100
	sjump .AfterPokemon1
.CallPokemon1_25:
	loadwildmon ALAKAZAM, 100
	sjump .AfterPokemon1
.CallPokemon1_26:
	loadwildmon MAGNEZONE, 100
	sjump .AfterPokemon1
.CallPokemon1_27:
	loadwildmon MAMOSWINE, 100
	sjump .AfterPokemon1
.CallPokemon1_28:
	loadwildmon RHYPERIOR, 100
	sjump .AfterPokemon1
.CallPokemon1_29:
	loadwildmon SNEASLER, 100
	sjump .AfterPokemon1
.CallPokemon1_30:
	loadwildmon PORYGON2, 100
	sjump .AfterPokemon1
.CallPokemon1_31:
	loadwildmon PORYGON_Z, 100
	sjump .AfterPokemon1
.CallPokemon1_32:
	loadwildmon RAMPARDOS, 100
	sjump .AfterPokemon1
.CallPokemon1_33:
	loadwildmon BRONZONG, 100
	sjump .AfterPokemon1
.CallPokemon1_34:
	loadwildmon ZOROARK, 100
	sjump .AfterPokemon1
.CallPokemon1_35:
	loadwildmon GARCHOMP, 100
	sjump .AfterPokemon1
.CallPokemon1_36:
	loadwildmon SNORLAX, 100
	sjump .AfterPokemon1
.CallPokemon1_37:
	loadwildmon GLISCOR, 100
;	fallthrough
.AfterPokemon1:
	startbattle
	reloadmapafterbattle
	special UpdateStadiumStreak
	opentext
	writetext FacilityCurrentStreakText
	waitbutton
	special HealParty
	writetext FacilityComeBackWhenYoureReadyText
	waitbutton
	closetext
	setscene $9
	applyonemovement PLAYER, step_left
	end

; ===== single shared name table =====
.PrintName:
	ifequal 0,  .Name_0
	ifequal 1,  .Name_1
	ifequal 2,  .Name_2
	ifequal 3,  .Name_3
	ifequal 4,  .Name_4
	ifequal 5,  .Name_5
	ifequal 6,  .Name_6
	ifequal 7,  .Name_7
	ifequal 8,  .Name_8
	ifequal 9,  .Name_9
	ifequal 10, .Name_10
	ifequal 11, .Name_11
	ifequal 12, .Name_12
	ifequal 13, .Name_13
	ifequal 14, .Name_14
	ifequal 15, .Name_15
	ifequal 16, .Name_16
	ifequal 17, .Name_17
	ifequal 18, .Name_18
	ifequal 19, .Name_19
	ifequal 20, .Name_20
	ifequal 21, .Name_21
	ifequal 22, .Name_22
	ifequal 23, .Name_23
	ifequal 24, .Name_24
	ifequal 25, .Name_25
	ifequal 26, .Name_26
	ifequal 27, .Name_27
	ifequal 28, .Name_28
	ifequal 29, .Name_29
	ifequal 30, .Name_30
	ifequal 31, .Name_31
	ifequal 32, .Name_32
	ifequal 33, .Name_33
	ifequal 34, .Name_34
	ifequal 35, .Name_35
	ifequal 36, .Name_36
	ifequal 37, .Name_37
	writethistext
		text "Bloodmoon"
		line "Ursaluna."
		done
	sjump .NamePrinted
.Name_0:
	writethistext
		text "Typhlosion."
		done
	sjump .NamePrinted
.Name_1:
	writethistext
		text "Decidueye."
		done
	sjump .NamePrinted
.Name_2:
	writethistext
		text "Samurott."
		done
	sjump .NamePrinted
.Name_3:
	writethistext
		text "Machamp."
		done
	sjump .NamePrinted
.Name_4:
	writethistext
		text "Ursaluna."
		done
	sjump .NamePrinted
.Name_5:
	writethistext
		text "Luxray."
		done
	sjump .NamePrinted
.Name_6:
	writethistext
		text "Lucario."
		done
	sjump .NamePrinted
.Name_7:
	writethistext
		text "Gallade."
		done
	sjump .NamePrinted
.Name_8:
	writethistext
		text "Dragonite."
		done
	sjump .NamePrinted
.Name_9:
	writethistext
		text "Tyranitar."
		done
	sjump .NamePrinted
.Name_10:
	writethistext
		text "Hisuian"
		line "Arcanine."
		done
	sjump .NamePrinted
.Name_11:
	writethistext
		text "Steelix."
		done
	sjump .NamePrinted
.Name_12:
	writethistext
		text "Dudunsparce."
		done
	sjump .NamePrinted
.Name_13:
	writethistext
		text "Arcanine."
		done
	sjump .NamePrinted
.Name_14:
	writethistext
		text "Hisuian"
		line "Typhlosion."
		done
	sjump .NamePrinted
.Name_15:
	writethistext
		text "Hisuian"
		line "Decidueye."
		done
	sjump .NamePrinted
.Name_16:
	writethistext
		text "Hisuian"
		line "Samurott."
		done
	sjump .NamePrinted
.Name_17:
	writethistext
		text "Jolteon."
		done
	sjump .NamePrinted
.Name_18:
	writethistext
		text "Vaporeon."
		done
	sjump .NamePrinted
.Name_19:
	writethistext
		text "Flareon."
		done
	sjump .NamePrinted
.Name_20:
	writethistext
		text "Leafeon."
		done
	sjump .NamePrinted
.Name_21:
	writethistext
		text "Sylveon."
		done
	sjump .NamePrinted
.Name_22:
	writethistext
		text "Glaceon."
		done
	sjump .NamePrinted
.Name_23:
	writethistext
		text "Espeon."
		done
	sjump .NamePrinted
.Name_24:
	writethistext
		text "Umbreon."
		done
	sjump .NamePrinted
.Name_25:
	writethistext
		text "Alakazam."
		done
	sjump .NamePrinted
.Name_26:
	writethistext
		text "Magnezone."
		done
	sjump .NamePrinted
.Name_27:
	writethistext
		text "Mamoswine."
		done
	sjump .NamePrinted
.Name_28:
	writethistext
		text "Rhyperior."
		done
	sjump .NamePrinted
.Name_29:
	writethistext
		text "Sneasler."
		done
	sjump .NamePrinted
.Name_30:
	writethistext
		text "Porygon2."
		done
	sjump .NamePrinted
.Name_31:
	writethistext
		text "PorygonZ."
		done
	sjump .NamePrinted
.Name_32:
	writethistext
		text "Rampardos."
		done
	sjump .NamePrinted
.Name_33:
	writethistext
		text "Bronzong."
		done
	sjump .NamePrinted
.Name_34:
	writethistext
		text "Zoroark."
		done
	sjump .NamePrinted
.Name_35:
	writethistext
		text "Garchomp."
		done
	sjump .NamePrinted
.Name_36:
	writethistext
		text "Snorlax."
		done
	sjump .NamePrinted
.Name_37:
	writethistext
		text "Gliscor."
		done
;	fallthrough
.NamePrinted:
	readmem wFacilityLoopStage
	ifequal 0, .AfterAnnounce1
	ifequal 1, .AfterAnnounce2
	ifequal 2, .AfterOfferFirst
;	stage 3 fallthru
	sjump .AfterOfferSecond


; =========
; trainers
; =========

StadiumFacility_Trainers1Event: 
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	; clear the events
;	clearevent EVENT_STADIUM_HEALED ; this is below so that you don't accidentally waste your heal before the first trainer 
	clearevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	clearevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	clearevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	writetext FacilityExplainTrainersText
	waitbutton
	closetext
	setval 20                       ; N = how many mons to choose among. setval passes the number to the next ... 
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
	applymovement STADIUM_FACILITY_CLERK, ClerkWalkAwayMovement  ; walks one step up, one step left, turns head down 
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
	closetext
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	appear STADIUM_FACILITY_BUG_CATCHER
	applymovement STADIUM_FACILITY_BUG_CATCHER, GenericTrainerWalkTowardMovement ; walks on screen and faces the player 
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .SecondFacilityTrainer
	clearevent EVENT_STADIUM_HEALED
	readmem wStadiumFacilityFirstTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.SecondFacilityTrainer:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .ThirdFacilityTrainer
	readmem wStadiumFacilitySecondTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.ThirdFacilityTrainer:
;	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
;	iftrue .FinalFacilityElder
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
	showtext BUG_MANIAC_FACILITY_20_Text
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 1
	showtext BUG_MANIAC_FACILITY_1_Text
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 2
	showtext BUG_MANIAC_FACILITY_2_Text
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 3
	showtext BUG_MANIAC_FACILITY_3_Text
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 4
	showtext BUG_MANIAC_FACILITY_4_Text
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 5
	showtext BUG_MANIAC_FACILITY_5_Text
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 6
	showtext BUG_MANIAC_FACILITY_6_Text
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 7
	showtext BUG_MANIAC_FACILITY_7_Text
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 8
	showtext BUG_MANIAC_FACILITY_8_Text
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 9
	showtext BUG_MANIAC_FACILITY_9_Text
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 10
	showtext BUG_MANIAC_FACILITY_10_Text
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 11
	showtext BUG_MANIAC_FACILITY_11_Text
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 12
	showtext BUG_MANIAC_FACILITY_12_Text
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 13
	showtext BUG_MANIAC_FACILITY_13_Text
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 14
	showtext BUG_MANIAC_FACILITY_14_Text
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 15
	showtext BUG_MANIAC_FACILITY_15_Text
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 16
	showtext BUG_MANIAC_FACILITY_16_Text
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 17
	showtext BUG_MANIAC_FACILITY_17_Text
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 18
	showtext BUG_MANIAC_FACILITY_18_Text
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BUG_MANIAC_FACILITY, 19
	showtext BUG_MANIAC_FACILITY_19_Text
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	; send the generictrainer away 
	applymovement STADIUM_FACILITY_BUG_CATCHER, GenericTrainerWalkAwayMovement
	special UpdateStadiumStreak
	showtext StadiumFacilityClerkMidRoundText
	disappear STADIUM_FACILITY_BUG_CATCHER
	moveobject STADIUM_FACILITY_BUG_CATCHER, 24, 14 
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
	appear STADIUM_FACILITY_HOLLIS
	setevent EVENT_FACILITY_BUG_MANIAC
	disappear STADIUM_FACILITY_BUG_CATCHER
	applymovement STADIUM_FACILITY_HOLLIS, BossTrainerWalkTowardMovement
	winlosstext FacilityWinTextSilas, FacilityLossTextSilas 
	loadtrainer HOLLIS, HOLLIS_STADIUM 
	showtext HOLLIS_HOLLIS_STADIUM_Text
;	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	applymovement STADIUM_FACILITY_HOLLIS, BossTrainerWalkAwayMovement 
	special UpdateStadiumStreak
	setevent EVENT_FACILITY_SILAS
	disappear STADIUM_FACILITY_HOLLIS	
	special HealParty
	applymovement STADIUM_FACILITY_CLERK, ClerkWalkTowardsMovement
	opentext
	writetext StadiumFacilityClerkPostRoundText
	waitbutton
	closetext
	setevent EVENT_STADIUM_HEALED
	setscene $2 
	applyonemovement PLAYER, step_left
	end

StadiumFacility_Trainers2Event:
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	; clear the events
;	clearevent EVENT_STADIUM_HEALED ; this is below so that you don't accidentally waste your heal before the first trainer 
	clearevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	clearevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	clearevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	writetext FacilityExplainTrainersText
	waitbutton
	closetext
	setval 20                       ; N = how many mons to choose among. setval passes the number to the next ... 
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
	applymovement STADIUM_FACILITY_CLERK, ClerkWalkAwayMovement  ; walks one step up, one step left, turns head down 
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
	closetext
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	appear STADIUM_FACILITY_AROMA_LADY
	applymovement STADIUM_FACILITY_AROMA_LADY, GenericTrainerWalkTowardMovement ; walks on screen and faces the player 
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .SecondFacilityTrainer
	clearevent EVENT_STADIUM_HEALED
	readmem wStadiumFacilityFirstTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.SecondFacilityTrainer:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .ThirdFacilityTrainer
	readmem wStadiumFacilitySecondTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.ThirdFacilityTrainer:
;	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
;	iftrue .FinalFacilityElder
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
	loadtrainer PKMN_TRAINER_HF_FACILITY, 20
	showtext PKMN_TRAINER_HF_FACILITY_20_Text
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 1
	showtext PKMN_TRAINER_HF_FACILITY_1_Text
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 2
	showtext PKMN_TRAINER_HF_FACILITY_2_Text
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 3
	showtext PKMN_TRAINER_HF_FACILITY_3_Text
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 4
	showtext PKMN_TRAINER_HF_FACILITY_4_Text
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 5
	showtext PKMN_TRAINER_HF_FACILITY_5_Text
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 6
	showtext PKMN_TRAINER_HF_FACILITY_6_Text
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 7
	showtext PKMN_TRAINER_HF_FACILITY_7_Text
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 8
	showtext PKMN_TRAINER_HF_FACILITY_8_Text
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 9
	showtext PKMN_TRAINER_HF_FACILITY_9_Text
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 10
	showtext PKMN_TRAINER_HF_FACILITY_10_Text
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 11
	showtext PKMN_TRAINER_HF_FACILITY_11_Text
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 12
	showtext PKMN_TRAINER_HF_FACILITY_12_Text
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 13
	showtext PKMN_TRAINER_HF_FACILITY_13_Text
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 14
	showtext PKMN_TRAINER_HF_FACILITY_14_Text
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 15
	showtext PKMN_TRAINER_HF_FACILITY_15_Text
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 16
	showtext PKMN_TRAINER_HF_FACILITY_16_Text
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 17
	showtext PKMN_TRAINER_HF_FACILITY_17_Text
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 18
	showtext PKMN_TRAINER_HF_FACILITY_18_Text
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 19
	showtext PKMN_TRAINER_HF_FACILITY_19_Text
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	applymovement STADIUM_FACILITY_AROMA_LADY, GenericTrainerWalkAwayMovement
	special UpdateStadiumStreak
	showtext StadiumFacilityClerkMidRoundText
	disappear STADIUM_FACILITY_AROMA_LADY
	moveobject STADIUM_FACILITY_AROMA_LADY, 24, 14 
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
	appear STADIUM_FACILITY_SANDRA
	setevent EVENT_FACILITY_AROMA_LADY
	disappear STADIUM_FACILITY_AROMA_LADY
	applymovement STADIUM_FACILITY_SANDRA, BossTrainerWalkTowardMovement
	winlosstext FacilityWinTextSandra, FacilityLossTextSandra 
	loadtrainer SANDRA, SANDRA_STADIUM 
	showtext SANDRA_SANDRA_STADIUM_Text
;	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	applymovement STADIUM_FACILITY_SANDRA, BossTrainerWalkAwayMovement 
	special UpdateStadiumStreak
	setevent EVENT_FACILITY_SILAS
	disappear STADIUM_FACILITY_SANDRA	
	special HealParty
	applymovement STADIUM_FACILITY_CLERK, ClerkWalkTowardsMovement
	opentext
	writetext StadiumFacilityClerkPostRoundText
	waitbutton
	closetext
	setevent EVENT_STADIUM_HEALED
	setscene $4
	applyonemovement PLAYER, step_left
	end


StadiumFacility_Trainers3Event:
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	; clear the events
;	clearevent EVENT_STADIUM_HEALED ; this is below so that you don't accidentally waste your heal before the first trainer 
	clearevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	clearevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	clearevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	writetext FacilityExplainTrainersText
	waitbutton
	closetext
	setval 20                       ; N = how many mons to choose among. setval passes the number to the next ... 
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
	applymovement STADIUM_FACILITY_CLERK, ClerkWalkAwayMovement  ; walks one step up, one step left, turns head down 
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
	closetext
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	appear STADIUM_FACILITY_SAGE
	applymovement STADIUM_FACILITY_SAGE, GenericTrainerWalkTowardMovement ; walks on screen and faces the player 
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .SecondFacilityTrainer
	clearevent EVENT_STADIUM_HEALED
	readmem wStadiumFacilityFirstTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.SecondFacilityTrainer:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .ThirdFacilityTrainer
	readmem wStadiumFacilitySecondTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.ThirdFacilityTrainer:
;	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
;	iftrue .FinalFacilityElder
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
	loadtrainer SAGE_FACILITY, 20
	showtext SAGE_FACILITY_20_Text
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 1
	showtext SAGE_FACILITY_1_Text
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 2
	showtext SAGE_FACILITY_2_Text
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 3
	showtext SAGE_FACILITY_3_Text
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 4
	showtext SAGE_FACILITY_4_Text
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 5
	showtext SAGE_FACILITY_5_Text
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 6
	showtext SAGE_FACILITY_6_Text
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 7
	showtext SAGE_FACILITY_7_Text
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 8
	showtext SAGE_FACILITY_8_Text
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 9
	showtext SAGE_FACILITY_9_Text
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 10
	showtext SAGE_FACILITY_10_Text
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 11
	showtext SAGE_FACILITY_11_Text
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 12
	showtext SAGE_FACILITY_12_Text
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 13
	showtext SAGE_FACILITY_13_Text
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 14
	showtext SAGE_FACILITY_14_Text
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 15
	showtext SAGE_FACILITY_15_Text
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 16
	showtext SAGE_FACILITY_16_Text
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 17
	showtext SAGE_FACILITY_17_Text
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 18
	showtext SAGE_FACILITY_18_Text
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 19
	showtext SAGE_FACILITY_19_Text
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	applymovement STADIUM_FACILITY_SAGE, GenericTrainerWalkAwayMovement
	special UpdateStadiumStreak
	showtext StadiumFacilityClerkMidRoundText
	disappear STADIUM_FACILITY_SAGE
	moveobject STADIUM_FACILITY_SAGE, 24, 14 
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
	appear STADIUM_FACILITY_SAMSARA
	setevent EVENT_FACILITY_SAGE
	disappear STADIUM_FACILITY_SAGE
	applymovement STADIUM_FACILITY_SAMSARA, BossTrainerWalkTowardMovement
	winlosstext FacilityWinTextSybil, FacilityLossTextSybil 
	loadtrainer SAMSARA, SAMSARA_STADIUM 
	showtext SAMSARA_SAMSARA_STADIUM_Text
;	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	applymovement STADIUM_FACILITY_SAMSARA, BossTrainerWalkAwayMovement 
	special UpdateStadiumStreak
	setevent EVENT_FACILITY_SYBIL
	disappear STADIUM_FACILITY_SAMSARA	
	special HealParty
	applymovement STADIUM_FACILITY_CLERK, ClerkWalkTowardsMovement
	opentext
	writetext StadiumFacilityClerkPostRoundText
	waitbutton
	closetext
	setscene $6
	setevent EVENT_STADIUM_HEALED
	applyonemovement PLAYER, step_left
	end

StadiumFacility_Trainers4Event:
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	; clear the events
;	clearevent EVENT_STADIUM_HEALED ; this is below so that you don't accidentally waste your heal before the first trainer 
	clearevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	clearevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	clearevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	writetext FacilityExplainTrainersText
	waitbutton
	closetext
	setval 20                       ; N = how many mons to choose among. setval passes the number to the next ... 
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
	applymovement STADIUM_FACILITY_CLERK, ClerkWalkAwayMovement  ; walks one step up, one step left, turns head down 
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
	closetext
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	appear STADIUM_FACILITY_NOMADF
	applymovement STADIUM_FACILITY_NOMADF, GenericTrainerWalkTowardMovement ; walks on screen and faces the player 
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .SecondFacilityTrainer
	clearevent EVENT_STADIUM_HEALED
	readmem wStadiumFacilityFirstTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.SecondFacilityTrainer:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .ThirdFacilityTrainer
	readmem wStadiumFacilitySecondTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.ThirdFacilityTrainer:
;	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
;	iftrue .FinalFacilityElder
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
	loadtrainer NOMAD_F_FACILITY, 20
	showtext NOMAD_F_FACILITY_20_Text
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 1
	showtext NOMAD_F_FACILITY_1_Text
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 2
	showtext NOMAD_F_FACILITY_2_Text
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 3
	showtext NOMAD_F_FACILITY_3_Text
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 4
	showtext NOMAD_F_FACILITY_4_Text
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 5
	showtext NOMAD_F_FACILITY_5_Text
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 6
	showtext NOMAD_F_FACILITY_6_Text
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 7
	showtext NOMAD_F_FACILITY_7_Text
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 8
	showtext NOMAD_F_FACILITY_8_Text
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 9
	showtext NOMAD_F_FACILITY_9_Text
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 10
	showtext NOMAD_F_FACILITY_10_Text
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 11
	showtext NOMAD_F_FACILITY_11_Text
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 12
	showtext NOMAD_F_FACILITY_12_Text
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 13
	showtext NOMAD_F_FACILITY_13_Text
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 14
	showtext NOMAD_F_FACILITY_14_Text
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 15
	showtext NOMAD_F_FACILITY_15_Text
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 16
	showtext NOMAD_F_FACILITY_16_Text
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 17
	showtext NOMAD_F_FACILITY_17_Text
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 18
	showtext NOMAD_F_FACILITY_18_Text
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 19
	showtext NOMAD_F_FACILITY_19_Text
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	applymovement STADIUM_FACILITY_NOMADF, GenericTrainerWalkAwayMovement
	special UpdateStadiumStreak
	showtext StadiumFacilityClerkMidRoundText
	disappear STADIUM_FACILITY_NOMADF
	moveobject STADIUM_FACILITY_NOMADF, 24, 14 
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
	appear STADIUM_FACILITY_BARBEAU
	setevent EVENT_FACILITY_NOMADF
	disappear STADIUM_FACILITY_NOMADF
	applymovement STADIUM_FACILITY_BARBEAU, BossTrainerWalkTowardMovement
	winlosstext FacilityWinTextRemy, FacilityLossTextRemy 
	loadtrainer BARBEAU, REMY_STADIUM 
	showtext BARBEAU_REMY_STADIUM_Text
;	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	applymovement STADIUM_FACILITY_BARBEAU, BossTrainerWalkAwayMovement 
	special UpdateStadiumStreak
	setevent EVENT_FACILITY_REMY
	disappear STADIUM_FACILITY_BARBEAU	
	special HealParty
	applymovement STADIUM_FACILITY_CLERK, ClerkWalkTowardsMovement
	opentext
	writetext StadiumFacilityClerkPostRoundText
	waitbutton
	closetext
	setevent EVENT_STADIUM_HEALED
	setscene $8
	applyonemovement PLAYER, step_left
	end


StadiumFacility_Trainers5Event:
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	; clear the events
;	clearevent EVENT_STADIUM_HEALED ; this is below so that you don't accidentally waste your heal before the first trainer 
	clearevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	clearevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	clearevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	writetext FacilityExplainTrainersText
	waitbutton
	closetext
	setval 20                       ; N = how many mons to choose among. setval passes the number to the next ... 
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
	applymovement STADIUM_FACILITY_CLERK, ClerkWalkAwayMovement  ; walks one step up, one step left, turns head down 
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
	closetext
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	appear STADIUM_FACILITY_NINJA
	applymovement STADIUM_FACILITY_NINJA, GenericTrainerWalkTowardMovement ; walks on screen and faces the player 
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .SecondFacilityTrainer
	clearevent EVENT_STADIUM_HEALED
	readmem wStadiumFacilityFirstTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.SecondFacilityTrainer:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .ThirdFacilityTrainer
	readmem wStadiumFacilitySecondTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.ThirdFacilityTrainer:
;	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
;	iftrue .FinalFacilityElder
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
	loadtrainer NINJA_FACILITY, 20
	showtext NINJA_FACILITY_20_Text
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 1
	showtext NINJA_FACILITY_1_Text
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 2
	showtext NINJA_FACILITY_2_Text
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 3
	showtext NINJA_FACILITY_3_Text
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 4
	showtext NINJA_FACILITY_4_Text
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 5
	showtext NINJA_FACILITY_5_Text
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 6
	showtext NINJA_FACILITY_6_Text
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 7
	showtext NINJA_FACILITY_7_Text
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 8
	showtext NINJA_FACILITY_8_Text
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 9
	showtext NINJA_FACILITY_9_Text
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 10
	showtext NINJA_FACILITY_10_Text
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 11
	showtext NINJA_FACILITY_11_Text
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 12
	showtext NINJA_FACILITY_12_Text
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 13
	showtext NINJA_FACILITY_13_Text
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 14
	showtext NINJA_FACILITY_14_Text
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 15
	showtext NINJA_FACILITY_15_Text
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 16
	showtext NINJA_FACILITY_16_Text
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 17
	showtext NINJA_FACILITY_17_Text
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 18
	showtext NINJA_FACILITY_18_Text
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 19
	showtext NINJA_FACILITY_19_Text
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	applymovement STADIUM_FACILITY_NINJA, GenericTrainerWalkAwayMovement
	special UpdateStadiumStreak
	showtext StadiumFacilityClerkMidRoundText
	disappear STADIUM_FACILITY_NINJA
	moveobject STADIUM_FACILITY_NINJA, 24, 14 
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
	appear STADIUM_FACILITY_AMOS
	setevent EVENT_FACILITY_NINJA
	disappear STADIUM_FACILITY_NINJA
	applymovement STADIUM_FACILITY_AMOS, BossTrainerWalkTowardMovement
	winlosstext FacilityWinTextAmos, FacilityLossTextAmos
	loadtrainer AMOS, AMOS_STADIUM 
	showtext AMOS_AMOS_STADIUM_Text
;	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	applymovement STADIUM_FACILITY_AMOS, BossTrainerWalkAwayMovement 
	special UpdateStadiumStreak
	setevent EVENT_FACILITY_AMOS
	disappear STADIUM_FACILITY_AMOS	
	special HealParty
	applymovement STADIUM_FACILITY_CLERK, ClerkWalkTowardsMovement
	opentext
	writetext StadiumFacilityClerkPostRoundText
	waitbutton
	closetext
	clearevent EVENT_FACILITY_GOLD_TROPHY
	opentext
	writethistext
		text "Gold Trophy is"
		line "now unlocked!"
		done
	waitbutton
	closetext
	setscene 10
	setevent EVENT_STADIUM_HEALED
	applyonemovement PLAYER, step_left
	end


StadiumFacility_TrainersEndlessEvent:
	; todo rewrite for up to 30 trainers 
	; EVERY FOUR TURNS YOU GET THE CHANCE TO STEP ASIDE AND CHANGE UP YOUR TEAM 
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	; clear the events
;	clearevent EVENT_STADIUM_HEALED ; this is below so that you don't accidentally waste your heal before the first trainer 
	clearevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	clearevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	clearevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	writetext FacilityExplainTrainersText
	waitbutton
	closetext
	setval 20                       ; N = how many mons to choose among. setval passes the number to the next ... 
	special FacilityThreeRandoms   ; rolls 3 distinct values 0..N-1 into the 3 RAM bytes
	applymovement STADIUM_FACILITY_CLERK, ClerkWalkAwayMovement  ; walks one step up, one step left, turns head down 
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
	closetext
	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
	iftrue .FinalFacilityElder
	appear STADIUM_FACILITY_BRIGADER
	applymovement STADIUM_FACILITY_BRIGADER, GenericTrainerWalkTowardMovement ; walks on screen and faces the player 
	checkevent EVENT_BEAT_FIRST_FACILITY_TRAINER
	iftrue .SecondFacilityTrainer
	clearevent EVENT_STADIUM_HEALED
	readmem wStadiumFacilityFirstTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.SecondFacilityTrainer:
	checkevent EVENT_BEAT_SECOND_FACILITY_TRAINER
	iftrue .ThirdFacilityTrainer
	readmem wStadiumFacilitySecondTrainer ; reads the first value that's written
	sjump .LoadedFacilityTrainerIndex
.ThirdFacilityTrainer:
;	checkevent EVENT_BEAT_THIRD_FACILITY_TRAINER
;	iftrue .FinalFacilityElder
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
	loadtrainer BRIGADER_FACILITY, 20
	showtext BRIGADER_FACILITY_20_Text
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 1
	showtext BRIGADER_FACILITY_1_Text
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 2
	showtext BRIGADER_FACILITY_2_Text
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 3
	showtext BRIGADER_FACILITY_3_Text
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 4
	showtext BRIGADER_FACILITY_4_Text
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 5
	showtext BRIGADER_FACILITY_5_Text
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 6
	showtext BRIGADER_FACILITY_6_Text
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 7
	showtext BRIGADER_FACILITY_7_Text
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 8
	showtext BRIGADER_FACILITY_8_Text
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 9
	showtext BRIGADER_FACILITY_9_Text
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 10
	showtext BRIGADER_FACILITY_10_Text
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 11
	showtext BRIGADER_FACILITY_11_Text
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 12
	showtext BRIGADER_FACILITY_12_Text
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 13
	showtext BRIGADER_FACILITY_13_Text
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 14
	showtext BRIGADER_FACILITY_14_Text
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 15
	showtext BRIGADER_FACILITY_15_Text
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 16
	showtext BRIGADER_FACILITY_16_Text
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 17
	showtext BRIGADER_FACILITY_17_Text
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 18
	showtext BRIGADER_FACILITY_18_Text
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 19
	showtext BRIGADER_FACILITY_19_Text
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle
	applymovement STADIUM_FACILITY_BRIGADER, GenericTrainerWalkAwayMovement
	special UpdateStadiumStreak
	showtext StadiumFacilityClerkMidRoundText
	disappear STADIUM_FACILITY_BRIGADER
	moveobject STADIUM_FACILITY_BRIGADER, 24, 14 
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
	setevent EVENT_FACILITY_BRIGADER
	disappear STADIUM_FACILITY_BRIGADER
	; roll for one of seven. 
	; TODO THIS ONE JUST CYCLES THROUGH FOUR BRIGADERS FROM THE GP OF 20, 
	; WHILE AFTER EACH SET OF 4 THERE IS ONE OF THE FOLLOWING BOSS TRAINERS LOADED RANDOMLY, 
	; FROM A, B, C, D, E, F, G
	
	; random  1 - 7 
	random 7
	ifequal 0, .BattleSilasFinal
	ifequal 1, .BattleSandraFinal
	ifequal 2, .BattleSybilFinal
	ifequal 3, .BattleRemyFinal
	ifequal 4, .BattleAmosFinal
	ifequal 5, .BattleKurtFinalFinal
;.BattleMejimiFinal:
	appear STADIUM_FACILITY_MEJIMI
	applymovement STADIUM_FACILITY_MEJIMI, BossTrainerWalkTowardMovement
	winlosstext FacilityWinTextVesperFinal, FacilityLossTextVesperFinal
	loadtrainer MEJIMI, MEJIMI_STADIUM_FINAL
	showtext VesperStadiumFinalText
	startbattle
	reloadmap
	applymovement STADIUM_FACILITY_MEJIMI, BossTrainerWalkAwayMovement 
	setevent EVENT_FACILITY_VESPER
	disappear STADIUM_FACILITY_MEJIMI	
	sjump .EndOfBossFinals

.BattleSilasFinal:
	appear STADIUM_FACILITY_HOLLIS
	applymovement STADIUM_FACILITY_HOLLIS, BossTrainerWalkTowardMovement
	winlosstext FacilityWinTextHollisFinal, FacilityLossTextHollisFinal
	loadtrainer HOLLIS, HOLLIS_STADIUM_FINAL
	showtext HollisStadiumFinalText
	startbattle
	reloadmap
	applymovement STADIUM_FACILITY_HOLLIS, BossTrainerWalkAwayMovement 
	setevent EVENT_FACILITY_SILAS
	disappear STADIUM_FACILITY_HOLLIS	
	sjump .EndOfBossFinals

.BattleSandraFinal:
	appear STADIUM_FACILITY_SANDRA
	applymovement STADIUM_FACILITY_SANDRA, BossTrainerWalkTowardMovement
	winlosstext FacilityWinTextSandraFinal, FacilityLossTextSandraFinal
	loadtrainer SANDRA, SANDRA_STADIUM_FINAL
	showtext SandraStadiumFinalText
	startbattle
	reloadmap
	applymovement STADIUM_FACILITY_SANDRA, BossTrainerWalkAwayMovement 
	setevent EVENT_FACILITY_SANDRA
	disappear STADIUM_FACILITY_SANDRA	
	sjump .EndOfBossFinals

.BattleSybilFinal:
	appear STADIUM_FACILITY_SAMSARA
	applymovement STADIUM_FACILITY_SAMSARA, BossTrainerWalkTowardMovement
	winlosstext FacilityWinTextSamsaraFinal, FacilityLossTextSamsaraFinal
	loadtrainer SAMSARA, SAMSARA_STADIUM_FINAL
	showtext SamsaraStadiumFinalText
	startbattle
	reloadmap
	applymovement STADIUM_FACILITY_SAMSARA, BossTrainerWalkAwayMovement 
	setevent EVENT_FACILITY_SYBIL
	disappear STADIUM_FACILITY_SAMSARA	
	sjump .EndOfBossFinals

.BattleRemyFinal:
	appear STADIUM_FACILITY_BARBEAU
	applymovement STADIUM_FACILITY_BARBEAU, BossTrainerWalkTowardMovement
	winlosstext FacilityWinTextRemyFinal, FacilityLossTextRemyFinal
	loadtrainer BARBEAU, REMY_STADIUM_FINAL
	showtext RemyStadiumFinalText
	startbattle
	reloadmap
	applymovement STADIUM_FACILITY_BARBEAU, BossTrainerWalkAwayMovement 
	setevent EVENT_FACILITY_REMY
	disappear STADIUM_FACILITY_BARBEAU	
	sjump .EndOfBossFinals

.BattleAmosFinal:
	appear STADIUM_FACILITY_AMOS
	applymovement STADIUM_FACILITY_AMOS, BossTrainerWalkTowardMovement
	winlosstext FacilityWinTextAmosFinal, FacilityLossTextAmosFinal
	loadtrainer AMOS, AMOS_STADIUM_FINAL
	showtext AmosStadiumFinalText
	startbattle
	reloadmap
	applymovement STADIUM_FACILITY_AMOS, BossTrainerWalkAwayMovement 
	setevent EVENT_FACILITY_AMOS
	disappear STADIUM_FACILITY_AMOS	
	sjump .EndOfBossFinals

.BattleKurtFinalFinal:
	appear STADIUM_FACILITY_KURTF
	applymovement STADIUM_FACILITY_KURTF, BossTrainerWalkTowardMovement
	winlosstext FacilityWinTextKurtFinal, FacilityLossTextKurtFinal
	loadtrainer AMOS, AMOS_STADIUM_FINAL
	showtext KurtStadiumFinalText
	startbattle
	reloadmap
	applymovement STADIUM_FACILITY_KURTF, BossTrainerWalkAwayMovement 
	setevent EVENT_FACILITY_KURT
	disappear STADIUM_FACILITY_KURTF	
	sjump .EndOfBossFinals

.EndOfBossFinals:
; end of random elder selection 
	special HealParty
	special UpdateStadiumStreak
	applymovement STADIUM_FACILITY_CLERK, ClerkWalkTowardsMovement
	opentext
	writetext StadiumFacilityClerkPostRoundText
	waitbutton
	closetext
	setevent EVENT_STADIUM_HEALED
	applyonemovement PLAYER, step_left
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
	text "In my hands are 3"
	line "Apricorns, each "
	para "with unique"
	line "#mon inside."
	
	para "I will tell you"
	line "two of them, but"
	para "the third is a"
	line "mystery. The"
	cont "#mon are:"
	done

FacilityCurrentStreakText:
	text "Your current"
	line "streak is:"
	text_decimal wBattleTowerCurStreak, 2, 5
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

FacilityWinTextSandra:
	text "yay"
	done

FacilityLossTextSandra:
	text "he he he"
	done

FacilityWinTextSybil:
	text "nice"
	done

FacilityLossTextSybil:
	text "gg"
	done

FacilityWinTextRemy:
	text "wp"
	done
	
FacilityLossTextRemy:
	text "uh oh"
	done

FacilityWinTextAmos:
	text "ugh"
	done

FacilityLossTextAmos:
	text "u mad"
	done

StadiumFacilityClerkMidRoundText:
	text "Your current"
	line "streak is:"
	text_decimal wBattleTowerCurStreak, 2, 5
	done

StadiumFacilityClerkPostRoundText:
	text "Your current"
	line "streak is:"
	text_decimal wBattleTowerCurStreak, 2, 5

	para "Please let me"
	line "know when you are"
	para "ready for the"
	line "next round."
	done


; =================
; movement 
; =================

ClerkWalkAwayMovement:
	step_up
	step_left
	turn_head_down
	step_end

ClerkWalkTowardsMovement:
	step_right
	step_down
	turn_head_left
	step_end
	
GenericTrainerWalkTowardMovement:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_down
	turn_head_left
	step_end

GenericTrainerWalkAwayMovement:
	step_down
	step_left
	step_left
	step_left
	step_up  
	step_up 
	step_left
	step_left
	step_left ; 
	step_end

BossTrainerWalkTowardMovement:
	step_up
	step_up
	turn_head_left
	step_end

BossTrainerWalkAwayMovement:
	step_down
	step_down
	step_end

SANDRA_SANDRA_STADIUM_Text:
	text "Sandra Stadium"
	done

AMOS_AMOS_STADIUM_Text:
	text "Amos Stadium"
	done

BARBEAU_REMY_STADIUM_Text:
	text "Remy Stadium"
	done

SAMSARA_SAMSARA_STADIUM_Text:
	text "Samsara Stadium"
	done

BRIGADER_FACILITY_20_Text:
	text "Brigader 20"
	done

BRIGADER_FACILITY_1_Text:
	text "Brigader 1"
	done

BRIGADER_FACILITY_2_Text:
	text "Brigader 2"
	done

BRIGADER_FACILITY_3_Text:
	text "Brigader 3"
	done

BRIGADER_FACILITY_4_Text:
	text "Brigader 4"
	done

BRIGADER_FACILITY_5_Text:
	text "Brigader 5"
	done

BRIGADER_FACILITY_6_Text:
	text "Brigader 6"
	done

BRIGADER_FACILITY_7_Text:
	text "Brigader 7"
	done

BRIGADER_FACILITY_8_Text:
	text "Brigader 8"
	done

BRIGADER_FACILITY_9_Text:
	text "Brigader 9"
	done

BRIGADER_FACILITY_10_Text:
	text "Brigader 10"
	done

BRIGADER_FACILITY_11_Text:
	text "Brigader 11"
	done

BRIGADER_FACILITY_12_Text:
	text "Brigader 12"
	done

BRIGADER_FACILITY_13_Text:
	text "Brigader 13"
	done

BRIGADER_FACILITY_14_Text:
	text "Brigader 14"
	done

BRIGADER_FACILITY_15_Text:
	text "Brigader 15"
	done

BRIGADER_FACILITY_16_Text:
	text "Brigader 16"
	done

BRIGADER_FACILITY_17_Text:
	text "Brigader 17"
	done

BRIGADER_FACILITY_18_Text:
	text "Brigader 18"
	done

BRIGADER_FACILITY_19_Text:
	text "Brigader 19"
	done

BUG_MANIAC_FACILITY_20_Text:
	text "Bug Maniac 20"
	done

BUG_MANIAC_FACILITY_1_Text:
	text "Bug Maniac 1"
	done

BUG_MANIAC_FACILITY_2_Text:
	text "Bug Maniac 2"
	done

BUG_MANIAC_FACILITY_3_Text:
	text "Bug Maniac 3"
	done

BUG_MANIAC_FACILITY_4_Text:
	text "Bug Maniac 4"
	done

BUG_MANIAC_FACILITY_5_Text:
	text "Bug Maniac 5"
	done

BUG_MANIAC_FACILITY_6_Text:
	text "Bug Maniac 6"
	done

BUG_MANIAC_FACILITY_7_Text:
	text "Bug Maniac 7"
	done

BUG_MANIAC_FACILITY_8_Text:
	text "Bug Maniac 8"
	done

BUG_MANIAC_FACILITY_9_Text:
	text "Bug Maniac 9"
	done

BUG_MANIAC_FACILITY_10_Text:
	text "Bug Maniac 10"
	done

BUG_MANIAC_FACILITY_11_Text:
	text "Bug Maniac 11"
	done

BUG_MANIAC_FACILITY_12_Text:
	text "Bug Maniac 12"
	done

BUG_MANIAC_FACILITY_13_Text:
	text "Bug Maniac 13"
	done

BUG_MANIAC_FACILITY_14_Text:
	text "Bug Maniac 14"
	done

BUG_MANIAC_FACILITY_15_Text:
	text "Bug Maniac 15"
	done

BUG_MANIAC_FACILITY_16_Text:
	text "Bug Maniac 16"
	done

BUG_MANIAC_FACILITY_17_Text:
	text "Bug Maniac 17"
	done

BUG_MANIAC_FACILITY_18_Text:
	text "Bug Maniac 18"
	done

BUG_MANIAC_FACILITY_19_Text:
	text "Bug Maniac 19"
	done

HOLLIS_HOLLIS_STADIUM_Text:
	text "Hollis Hollis Stadium"
	done

NINJA_FACILITY_20_Text:
	text "Ninja 20"
	done

NINJA_FACILITY_1_Text:
	text "Ninja 1"
	done

NINJA_FACILITY_2_Text:
	text "Ninja 2"
	done

NINJA_FACILITY_3_Text:
	text "Ninja 3"
	done

NINJA_FACILITY_4_Text:
	text "Ninja 4"
	done

NINJA_FACILITY_5_Text:
	text "Ninja 5"
	done

NINJA_FACILITY_6_Text:
	text "Ninja 6"
	done

NINJA_FACILITY_7_Text:
	text "Ninja 7"
	done

NINJA_FACILITY_8_Text:
	text "Ninja 8"
	done

NINJA_FACILITY_9_Text:
	text "Ninja 9"
	done

NINJA_FACILITY_10_Text:
	text "Ninja 10"
	done

NINJA_FACILITY_11_Text:
	text "Ninja 11"
	done

NINJA_FACILITY_12_Text:
	text "Ninja 12"
	done

NINJA_FACILITY_13_Text:
	text "Ninja 13"
	done

NINJA_FACILITY_14_Text:
	text "Ninja 14"
	done

NINJA_FACILITY_15_Text:
	text "Ninja 15"
	done

NINJA_FACILITY_16_Text:
	text "Ninja 16"
	done

NINJA_FACILITY_17_Text:
	text "Ninja 17"
	done

NINJA_FACILITY_18_Text:
	text "Ninja 18"
	done

NINJA_FACILITY_19_Text:
	text "Ninja 19"
	done

NOMAD_F_FACILITY_20_Text:
	text "Nomad F 20"
	done

NOMAD_F_FACILITY_1_Text:
	text "Nomad F 1"
	done

NOMAD_F_FACILITY_2_Text:
	text "Nomad F 2"
	done

NOMAD_F_FACILITY_3_Text:
	text "Nomad F 3"
	done

NOMAD_F_FACILITY_4_Text:
	text "Nomad F 4"
	done

NOMAD_F_FACILITY_5_Text:
	text "Nomad F 5"
	done

NOMAD_F_FACILITY_6_Text:
	text "Nomad F 6"
	done

NOMAD_F_FACILITY_7_Text:
	text "Nomad F 7"
	done

NOMAD_F_FACILITY_8_Text:
	text "Nomad F 8"
	done

NOMAD_F_FACILITY_9_Text:
	text "Nomad F 9"
	done

NOMAD_F_FACILITY_10_Text:
	text "Nomad F 10"
	done

NOMAD_F_FACILITY_11_Text:
	text "Nomad F 11"
	done

NOMAD_F_FACILITY_12_Text:
	text "Nomad F 12"
	done

NOMAD_F_FACILITY_13_Text:
	text "Nomad F 13"
	done

NOMAD_F_FACILITY_14_Text:
	text "Nomad F 14"
	done

NOMAD_F_FACILITY_15_Text:
	text "Nomad F 15"
	done

NOMAD_F_FACILITY_16_Text:
	text "Nomad F 16"
	done

NOMAD_F_FACILITY_17_Text:
	text "Nomad F 17"
	done

NOMAD_F_FACILITY_18_Text:
	text "Nomad F 18"
	done

NOMAD_F_FACILITY_19_Text:
	text "Nomad F 19"
	done

PKMN_TRAINER_HF_FACILITY_20_Text:
	text "Pkmn Trainer Hf 20"
	done

PKMN_TRAINER_HF_FACILITY_1_Text:
	text "Pkmn Trainer Hf 1"
	done

PKMN_TRAINER_HF_FACILITY_2_Text:
	text "Pkmn Trainer Hf 2"
	done

PKMN_TRAINER_HF_FACILITY_3_Text:
	text "Pkmn Trainer Hf 3"
	done

PKMN_TRAINER_HF_FACILITY_4_Text:
	text "Pkmn Trainer Hf 4"
	done

PKMN_TRAINER_HF_FACILITY_5_Text:
	text "Pkmn Trainer Hf 5"
	done

PKMN_TRAINER_HF_FACILITY_6_Text:
	text "Pkmn Trainer Hf 6"
	done

PKMN_TRAINER_HF_FACILITY_7_Text:
	text "Pkmn Trainer Hf 7"
	done

PKMN_TRAINER_HF_FACILITY_8_Text:
	text "Pkmn Trainer Hf 8"
	done

PKMN_TRAINER_HF_FACILITY_9_Text:
	text "Pkmn Trainer Hf 9"
	done

PKMN_TRAINER_HF_FACILITY_10_Text:
	text "Pkmn Trainer Hf 10"
	done

PKMN_TRAINER_HF_FACILITY_11_Text:
	text "Pkmn Trainer Hf 11"
	done

PKMN_TRAINER_HF_FACILITY_12_Text:
	text "Pkmn Trainer Hf 12"
	done

PKMN_TRAINER_HF_FACILITY_13_Text:
	text "Pkmn Trainer Hf 13"
	done

PKMN_TRAINER_HF_FACILITY_14_Text:
	text "Pkmn Trainer Hf 14"
	done

PKMN_TRAINER_HF_FACILITY_15_Text:
	text "Pkmn Trainer Hf 15"
	done

PKMN_TRAINER_HF_FACILITY_16_Text:
	text "Pkmn Trainer Hf 16"
	done

PKMN_TRAINER_HF_FACILITY_17_Text:
	text "Pkmn Trainer Hf 17"
	done

PKMN_TRAINER_HF_FACILITY_18_Text:
	text "Pkmn Trainer Hf 18"
	done

PKMN_TRAINER_HF_FACILITY_19_Text:
	text "Pkmn Trainer Hf 19"
	done

SAGE_FACILITY_20_Text:
	text "Sage 20"
	done

SAGE_FACILITY_1_Text:
	text "Sage 1"
	done

SAGE_FACILITY_2_Text:
	text "Sage 2"
	done

SAGE_FACILITY_3_Text:
	text "Sage 3"
	done

SAGE_FACILITY_4_Text:
	text "Sage 4"
	done

SAGE_FACILITY_5_Text:
	text "Sage 5"
	done

SAGE_FACILITY_6_Text:
	text "Sage 6"
	done

SAGE_FACILITY_7_Text:
	text "Sage 7"
	done

SAGE_FACILITY_8_Text:
	text "Sage 8"
	done

SAGE_FACILITY_9_Text:
	text "Sage 9"
	done

SAGE_FACILITY_10_Text:
	text "Sage 10"
	done

SAGE_FACILITY_11_Text:
	text "Sage 11"
	done

SAGE_FACILITY_12_Text:
	text "Sage 12"
	done

SAGE_FACILITY_13_Text:
	text "Sage 13"
	done

SAGE_FACILITY_14_Text:
	text "Sage 14"
	done

SAGE_FACILITY_15_Text:
	text "Sage 15"
	done

SAGE_FACILITY_16_Text:
	text "Sage 16"
	done

SAGE_FACILITY_17_Text:
	text "Sage 17"
	done

SAGE_FACILITY_18_Text:
	text "Sage 18"
	done

SAGE_FACILITY_19_Text:
	text "Sage 19"
	done


HollisStadiumFinalText:
	text "Silas Final Text"
	done

SandraStadiumFinalText:
	text "Sandra Final Text"
	done

SamsaraStadiumFinalText:
	text "Sybil Final Text"
	done
	
RemyStadiumFinalText:
	text "Remy Final Text"
	done
	
AmosStadiumFinalText:
	text "Amos Final Text"
	done
	
KurtStadiumFinalText:
	text "Kurt Final Text"
	done
	
VesperStadiumFinalText:
	text "Vesper Final Text"
	done

FacilityWinTextAmosFinal:
	text "Beat Amos Final"
	done

FacilityWinTextHollisFinal:
	text "Beat Silas Final"
	done

FacilityWinTextKurtFinal:
	text "Beat Kurt Final"
	done

FacilityWinTextRemyFinal:
	text "Beat Remy Final"
	done

FacilityWinTextSamsaraFinal:
	text "Beat Sybil Final"
	done

FacilityWinTextSandraFinal:
	text "Beat Sandra Final"
	done

FacilityWinTextVesperFinal:
	text "Beat Vesper Final"
	done

FacilityLossTextAmosFinal:
	text "Lose Amos Final"
	done

FacilityLossTextHollisFinal:
	text "Lose Silas Final"
	done

FacilityLossTextKurtFinal:
	text "Lose Kurt Final"
	done

FacilityLossTextRemyFinal:
	text "Lose Remy Final"
	done

FacilityLossTextSamsaraFinal:
	text "Lose Sybil Final"
	done

FacilityLossTextSandraFinal:
	text "Lose Sandra Final"
	done

FacilityLossTextVesperFinal:
	text "Lose Vesper Final"
	done

FacilityMoveReminderScript:
	faceplayer
	opentext
	writetext MoveReminderIntroTextFacility
	yesorno
	iffalse .refused
	setval NO_MOVE ; to toggle move relearner
	writetext MoveReminderWhichMonTextFacility
	waitbutton
	special Special_MoveTutor
	ifequal $0, .teach_move
.refused
	jumpopenedtext MoveReminderCancelTextFacility

.teach_move
	takeitem BIG_PEARL
	jumpopenedtext MoveReminderCancelTextFacility

MoveReminderIntroTextFacility:
	text "I can remind your"
	line "#mon of moves."

	para "Do you want me to"
	line "tutor one of your"
	cont "#mon a move?"
	done

MoveReminderWhichMonTextFacility:
	text "Which #mon"
	line "needs tutoring?"
	done


MoveReminderCancelTextFacility:
	text "Best of luck!"
	done



RandomGiftGiverScript:
	faceplayer
	opentext
	writetext RandomGiftGiverText
	waitbutton
;.CheckStreak:
	readmem wBattleTowerCurStreak       ; high byte
	ifgreater 0, .CheckForGift          ; streak >= 256, definitely past 15
	readmem wBattleTowerCurStreak + 1   ; otherwise test the low byte
	ifgreater $e, .CheckForGift
	jumptext RandomGiftNotYetText

.CheckForGift:
	readmem wStadiumFacilityThirdTrainer
	ifequal 0, .HasPatron          ; ~1-in-N gate, also frozen per round
	jumptext NoInterestedPatronsText
.HasPatron:
	writetext InterestedPatronText
	waitbutton
	; pick the Master Ball cutoff from the streak band
	readmem wBattleTowerCurStreak + 1   ; low byte (streak well under 256)
	ifless 20, .Tier1              ; 15-19
	ifless 25, .Tier2              ; 20-24
	ifless 30, .Tier3              ; 25-29
	sjump .Tier4                   ; 30+
.Tier1:
	readmem wStadiumFacilityFirstTrainer
	ifless 1, .GiveMasterBallScript     ; 1/20  = 5%
	sjump .Consolation
.Tier2:
	readmem wStadiumFacilityFirstTrainer
	ifless 2, .GiveMasterBallScript     ; 2/20  = 10%
	sjump .Consolation
.Tier3:
	readmem wStadiumFacilityFirstTrainer
	ifless 3, .GiveMasterBallScript     ; 3/20  = 15%
	sjump .Consolation
.Tier4:
	readmem wStadiumFacilityFirstTrainer
	ifless 4, .GiveMasterBallScript     ; 4/20  = 20%
;	fallthrough
.Consolation:
	readmem wStadiumFacilityFirstTrainer
	ifless 12, .GiveBigNuggetScript     ; the band just above the MB cutoff
	verbosegiveitem ULTRA_BALL
	jumptext RandomGiftAfterText


.GiveMasterBallScript:
	verbosegiveitem MASTER_BALL
	jumptext RandomGiftAfterText


.GiveBigNuggetScript:
	verbosegiveitem BIG_NUGGET
	jumptext RandomGiftAfterText

; ============================================================
; Master Ball odds, given a patron (ThirdTrainer == 0).
; FacilityThreeRandoms makes the 3 bytes DISTINCT, so once the
; patron gate consumes value 0, FirstTrainer is uniform on
; 1..N-1.  Thus:  P(MB | patron) = (cutoff - 1) / (N - 1)
; NOTE: cutoff 1 (ifless 1) can NEVER fire post-gate -> 0%.
;
;   Streak   cutoff    N=20      N=30
;   15-19      1       0.00%     0.00%
;   20-24      2       5.26%     3.45%
;   25-29      3      10.53%     6.90%
;   30+        4      15.79%    10.34%


RandomGiftGiverText:
	text "Fortune favors"
	line "the bold!"
	done

RandomGiftNotYetText:
	text "If you make it"
	line "to 15 rounds,"
	
	para "a patron might"
	line "take interest in"
	cont "your streak."
	done

NoInterestedPatronsText:
	text "No patrons have"
	line "taken interest."
	
	para "Try again later."
	done

InterestedPatronText:
	text "You have interest"
	line "by a patron!"
	
	para "Congratulations!"
	done

RandomGiftAfterText:
	text "Keep going!"
	done
