StadiumGroundsFacility_MapScriptHeader:
	def_scene_scripts

; engine fixes 
	; todo prevent using items in battle 
		; probably in engine/item_effects 
		; maybe check the map you're on ? 

; minor scripting fixes 
	; check that each time you can actually get a heal and it doesn't prompt you to waste it before the first one 
	; TODO ninjas say "my last stand", check
	; todo "what do I do now" final text still needs to remove sages 
	; todo add more pause, more drama in between battles, more text in between each, the clerk tells you the streak you have 
	; todo increment the battle points with each trainer and update the streak counter
	; save the mon that was used in the previous best streak, check that this works

; battle fixes
	; TODO elder parties better for the stadium when they only have three to hax a win 
	; todo ONE OF THE bug catcher fac teams has avalugg and abomosnow twice 
	; todo likely tune up the levels of the enemies, 75/80/85/90/95 is too low? maybe 85/88/91/94/97? -- depends on testing 

; stretch goals
	; read the loaded mon and make its sprite appear 
	
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
 	object_event 19, 15, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FacilityClerkScript, EVENT_FACILITY_CLERK
;	object_event 0, 0, SPRITE_FACILITY_MON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FacilityMonScript, EVENT_FACILITY_MON


	object_event 24, 14, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_BUG_MANIAC
	object_event 24, 14, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_AROMA_LADY
	object_event 24, 14, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_SAGE
	object_event 24, 14, SPRITE_NOMAD_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_NOMADF
	object_event 24, 14, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_NINJA
	object_event 24, 14, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_BRIGADER
	; TODO WRITE THE FINAL TEAMS FOR ALL OF THESE 
	object_event 19, 17, SPRITE_HOLLIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_SILAS ; SUICUNE FINALE  TEAM 
	object_event 19, 17, SPRITE_SANDRA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_SANDRA ;  FINALE HO OH TEAM 
	object_event 19, 17, SPRITE_SAMSARA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_SYBIL ; ENTEI TEAM 
	object_event 19, 17, SPRITE_BARBEAU, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_REMY ; ANOTHER LUGIA TEAM  
	object_event 19, 17, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_AMOS ; RAIKOU TEAM 
	object_event 19, 17, SPRITE_KURT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_KURT ; CELEBI TEAM 
	object_event 19, 17, SPRITE_MEJIMI, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FACILITY_VESPER ; HEATRAN TEAM 

; always present
 	object_event 14, 15, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FacilityClerkRetireScript, EVENT_FACILITY_CLERK	
	
	object_const_def
 	const STADIUM_FACILITY_CLERK
; 	const STADIUM_FACILITY_MON

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

FacilityClerkRetireScript: ; todo fix 
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
	; TODO add warp sfx 
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
	special UpdateStadiumStreak
	clearevent EVENT_TROPHY_MON
	setscene $1
	applyonemovement PLAYER, step_left
	end

StadiumFacility_Pokemon2Event:
	turnobject STADIUM_FACILITY_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FacilityAreYouReadyText
	yesorno
	iffalse_jumptext FacilityGetReadyText
	writetext FacilityExplainBallText
	waitbutton
	setval 28                      ; N = 28 mons to choose among
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
	ifequal 26, .TellPokemon1_26
;	ifequal 27, .TellPokemon1_27 ; fallthru
;.TellPokemon1_27:
	writethistext
		text "Alolan Golem."
		done
	sjump .ToldPokemon
.TellPokemon1_0:
	writethistext
		text "Clefable."
		done
	sjump .ToldPokemon
.TellPokemon1_1:
	writethistext
		text "Togekiss."
		done
	sjump .ToldPokemon
.TellPokemon1_2:
	writethistext
		text "Bellossom."
		done
	sjump .ToldPokemon
.TellPokemon1_3:
	writethistext
		text "Nidoqueen."
		done
	sjump .ToldPokemon
.TellPokemon1_4:
	writethistext
		text "Jynx."
		done
	sjump .ToldPokemon
.TellPokemon1_5:
	writethistext
		text "Blissey."
		done
	sjump .ToldPokemon
.TellPokemon1_6:
	writethistext
		text "Toxicroak."
		done
	sjump .ToldPokemon
.TellPokemon1_7:
	writethistext
		text "Golem."
		done
	sjump .ToldPokemon
.TellPokemon1_8:
	writethistext
		text "Nidoking."
		done
	sjump .ToldPokemon
.TellPokemon1_9:
	writethistext
		text "Exeggutor."
		done
	sjump .ToldPokemon
.TellPokemon1_10:
	writethistext
		text "Granbull."
		done
	sjump .ToldPokemon
.TellPokemon1_11:
	writethistext
		text "Azumarill."
		done
	sjump .ToldPokemon
.TellPokemon1_12:
	writethistext
		text "Hitmonlee."
		done
	sjump .ToldPokemon
.TellPokemon1_13:
	writethistext
		text "Hitmonchan."
		done
	sjump .ToldPokemon
.TellPokemon1_14:
	writethistext
		text "Hitmontop."
		done
	sjump .ToldPokemon
.TellPokemon1_15:
	writethistext
		text "Tangrowth."
		done
	sjump .ToldPokemon
.TellPokemon1_16:
	writethistext
		text "Rapidash."
		done
	sjump .ToldPokemon
.TellPokemon1_17:
	writethistext
		text "Bastiodon."
		done
	sjump .ToldPokemon
.TellPokemon1_18:
	writethistext
		text "Raichu."
		done
	sjump .ToldPokemon
.TellPokemon1_19:
	writethistext
		text "Meganium."
		done
	sjump .ToldPokemon
.TellPokemon1_20:
	writethistext
		text "Weezing."
		done
	sjump .ToldPokemon
.TellPokemon1_21:
	writethistext
		text "Sunflora."
		done
	sjump .ToldPokemon
.TellPokemon1_22:
	writethistext
		text "Gardevoir."
		done
	sjump .ToldPokemon
.TellPokemon1_23:
	writethistext
		text "Alolan Raichu."
		done
	sjump .ToldPokemon
.TellPokemon1_24:
	writethistext
		text "Alolan Meganium."
		done
	sjump .ToldPokemon
.TellPokemon1_25:
	writethistext
		text "Galarian Weezing."
		done
	sjump .ToldPokemon
.TellPokemon1_26:
	writethistext
		text "Galarian Rapidash."
		done
	sjump .ToldPokemon
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
	ifequal 26, .CallPokemon1_26
	loadwildmon GOLEM, ALOLAN_FORM, 100    ; Agolem (Pokemon1_27)
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
	special UpdateStadiumStreak
	setscene $3
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
	setval 25                      ; N = 25 mons to choose among
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
;	ifequal 24, .TellPokemon1_24 ; fallthru
;.TellPokemon1_24:
	writethistext
		text "Alolan Muk."
		done
	sjump .ToldPokemon
.TellPokemon1_0:
	writethistext
		text "Sudowoodo."
		done
	sjump .ToldPokemon
.TellPokemon1_1:
	writethistext
		text "Gengar."
		done
	sjump .ToldPokemon
.TellPokemon1_2:
	writethistext
		text "Vileplume."
		done
	sjump .ToldPokemon
.TellPokemon1_3:
	writethistext
		text "Wyrdeer."
		done
	sjump .ToldPokemon
.TellPokemon1_4:
	writethistext
		text "Annihilape."
		done
	sjump .ToldPokemon
.TellPokemon1_5:
	writethistext
		text "Ambipom."
		done
	sjump .ToldPokemon
.TellPokemon1_6:
	writethistext
		text "Xatu."
		done
	sjump .ToldPokemon
.TellPokemon1_7:
	writethistext
		text "Honchkrow."
		done
	sjump .ToldPokemon
.TellPokemon1_8:
	writethistext
		text "Houndoom."
		done
	sjump .ToldPokemon
.TellPokemon1_9:
	writethistext
		text "Crobat."
		done
	sjump .ToldPokemon
.TellPokemon1_10:
	writethistext
		text "Ninetales."
		done
	sjump .ToldPokemon
.TellPokemon1_11:
	writethistext
		text "Farigiraf."
		done
	sjump .ToldPokemon
.TellPokemon1_12:
	writethistext
		text "Magmortar."
		done
	sjump .ToldPokemon
.TellPokemon1_13:
	writethistext
		text "Basculegion."
		done
	sjump .ToldPokemon
.TellPokemon1_14:
	writethistext
		text "Mismagius."
		done
	sjump .ToldPokemon
.TellPokemon1_15:
	writethistext
		text "Dusknoir."
		done
	sjump .ToldPokemon
.TellPokemon1_16:
	writethistext
		text "Weavile."
		done
	sjump .ToldPokemon
.TellPokemon1_17:
	writethistext
		text "Entei."
		done
	sjump .ToldPokemon
.TellPokemon1_18:
	writethistext
		text "Muk."
		done
	sjump .ToldPokemon
.TellPokemon1_19:
	writethistext
		text "Electrode."
		done
	sjump .ToldPokemon
.TellPokemon1_20:
	writethistext
		text "Donphan."
		done
	sjump .ToldPokemon
.TellPokemon1_21:
	writethistext
		text "Spiritomb."
		done
	sjump .ToldPokemon
.TellPokemon1_22:
	writethistext
		text "Rotom."
		done
	sjump .ToldPokemon
.TellPokemon1_23:
	writethistext
		text "Ancestor Xatu."
		done
	sjump .ToldPokemon
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
	loadwildmon MUK, ALOLAN_FORM, 100       ; Muk, Alolan_form (Pokemon1_26)
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
	special UpdateStadiumStreak
	setscene $5
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
	setval 25                      ; N = 25 mons to choose among
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
;	ifequal 24, .TellPokemon1_24 ; fallthru
;.TellPokemon1_24:
	writethistext
		text "Suicune."
		done
	sjump .ToldPokemon
.TellPokemon1_0:
	writethistext
		text "Ampharos."
		done
	sjump .ToldPokemon
.TellPokemon1_1:
	writethistext
		text "Politoed."
		done
	sjump .ToldPokemon
.TellPokemon1_2:
	writethistext
		text "Poliwrath."
		done
	sjump .ToldPokemon
.TellPokemon1_3:
	writethistext
		text "Gyarados."
		done
	sjump .ToldPokemon
.TellPokemon1_4:
	writethistext
		text "Kingdra."
		done
	sjump .ToldPokemon
.TellPokemon1_5:
	writethistext
		text "Shuckle."
		done
	sjump .ToldPokemon
.TellPokemon1_6:
	writethistext
		text "Feraligatr."
		done
	sjump .ToldPokemon
.TellPokemon1_7:
	writethistext
		text "Goodra."
		done
	sjump .ToldPokemon
.TellPokemon1_8:
	writethistext
		text "Skarmory."
		done
	sjump .ToldPokemon
.TellPokemon1_9:
	writethistext
		text "Drifblim."
		done
	sjump .ToldPokemon
.TellPokemon1_10:
	writethistext
		text "Braviary."
		done
	sjump .ToldPokemon
.TellPokemon1_11:
	writethistext
		text "Miltank."
		done
	sjump .ToldPokemon
.TellPokemon1_12:
	writethistext
		text "Electivire."
		done
	sjump .ToldPokemon
.TellPokemon1_13:
	writethistext
		text "Overqwil."
		done
	sjump .ToldPokemon
.TellPokemon1_14:
	writethistext
		text "Tentacruel."
		done
	sjump .ToldPokemon
.TellPokemon1_15:
	writethistext
		text "Octillery."
		done
	sjump .ToldPokemon
.TellPokemon1_16:
	writethistext
		text "Lanturn."
		done
	sjump .ToldPokemon
.TellPokemon1_17:
	writethistext
		text "Corsola."
		done
	sjump .ToldPokemon
.TellPokemon1_18:
	writethistext
		text "Mantine."
		done
	sjump .ToldPokemon
.TellPokemon1_19:
	writethistext
		text "Lapras."
		done
	sjump .ToldPokemon
.TellPokemon1_20:
	writethistext
		text "Alolan Ninetales."
		done
	sjump .ToldPokemon
.TellPokemon1_21:
	writethistext
		text "Galarian Corsola."
		done
	sjump .ToldPokemon
.TellPokemon1_22:
	writethistext
		text "Galarian Exeggutor."
		done
	sjump .ToldPokemon
.TellPokemon1_23:
	writethistext
		text "Ancestor Feraligatr."
		done
	sjump .ToldPokemon
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
	loadwildmon SUICUNE, 100               ; Suicune (Pokemon1_30)
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
	special UpdateStadiumStreak
	setscene $7
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
	setval 39                      ; N = 39 mons to choose among
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
	ifequal 26, .TellPokemon1_26
	ifequal 27, .TellPokemon1_27
	ifequal 28, .TellPokemon1_28
	ifequal 29, .TellPokemon1_29
	ifequal 30, .TellPokemon1_30
	ifequal 31, .TellPokemon1_31
	ifequal 32, .TellPokemon1_32
	ifequal 33, .TellPokemon1_33
	ifequal 34, .TellPokemon1_34
	ifequal 35, .TellPokemon1_35
	ifequal 36, .TellPokemon1_36
	ifequal 37, .TellPokemon1_37
;	ifequal 38, .TellPokemon1_38 ; fallthru
;.TellPokemon1_38:
	writethistext
		text "Bloodmoon"
		line "Ursaluna."
		done
	sjump .ToldPokemon
.TellPokemon1_0:
	writethistext
		text "Typhlosion."
		done
	sjump .ToldPokemon
.TellPokemon1_1:
	writethistext
		text "Decidueye."
		done
	sjump .ToldPokemon
.TellPokemon1_2:
	writethistext
		text "Samurott."
		done
	sjump .ToldPokemon
.TellPokemon1_3:
	writethistext
		text "Machamp."
		done
	sjump .ToldPokemon
.TellPokemon1_4:
	writethistext
		text "Ursaluna."
		done
	sjump .ToldPokemon
.TellPokemon1_5:
	writethistext
		text "Luxray."
		done
	sjump .ToldPokemon
.TellPokemon1_6:
	writethistext
		text "Lucario."
		done
	sjump .ToldPokemon
.TellPokemon1_7:
	writethistext
		text "Gallade."
		done
	sjump .ToldPokemon
.TellPokemon1_8:
	writethistext
		text "Dragonite."
		done
	sjump .ToldPokemon
.TellPokemon1_9:
	writethistext
		text "Tyranitar."
		done
	sjump .ToldPokemon
.TellPokemon1_10:
	writethistext
		text "Hisuian"
		line "Arcanine."
		done
	sjump .ToldPokemon
.TellPokemon1_11:
	writethistext
		text "Steelix."
		done
	sjump .ToldPokemon
.TellPokemon1_12:
	writethistext
		text "Dudunsparce."
		done
	sjump .ToldPokemon
.TellPokemon1_13:
	writethistext
		text "Arcanine."
		done
	sjump .ToldPokemon
.TellPokemon1_14:
	writethistext
		text "Hisuian"
		line "Typhlosion."
		done
	sjump .ToldPokemon
.TellPokemon1_15:
	writethistext
		text "Hisuian"
		line "Decidueye."
		done
	sjump .ToldPokemon
.TellPokemon1_16:
	writethistext
		text "Hisuian"
		line "Samurott."
		done
	sjump .ToldPokemon
.TellPokemon1_17:
	writethistext
		text "Jolteon."
		done
	sjump .ToldPokemon
.TellPokemon1_18:
	writethistext
		text "Vaporeon."
		done
	sjump .ToldPokemon
.TellPokemon1_19:
	writethistext
		text "Flareon."
		done
	sjump .ToldPokemon
.TellPokemon1_20:
	writethistext
		text "Leafeon."
		done
	sjump .ToldPokemon
.TellPokemon1_21:
	writethistext
		text "Sylveon."
		done
	sjump .ToldPokemon
.TellPokemon1_22:
	writethistext
		text "Glaceon."
		done
	sjump .ToldPokemon
.TellPokemon1_23:
	writethistext
		text "Espeon."
		done
	sjump .ToldPokemon
.TellPokemon1_24:
	writethistext
		text "Umbreon."
		done
	sjump .ToldPokemon
.TellPokemon1_25:
	writethistext
		text "Alakazam."
		done
	sjump .ToldPokemon
.TellPokemon1_26:
	writethistext
		text "Magnezone."
		done
	sjump .ToldPokemon
.TellPokemon1_27:
	writethistext
		text "Mamoswine."
		done
	sjump .ToldPokemon
.TellPokemon1_28:
	writethistext
		text "Rhyperior."
		done
	sjump .ToldPokemon
.TellPokemon1_29:
	writethistext
		text "Sneasler."
		done
	sjump .ToldPokemon
.TellPokemon1_30:
	writethistext
		text "Porygon2."
		done
	sjump .ToldPokemon
.TellPokemon1_31:
	writethistext
		text "PorygonZ."
		done
	sjump .ToldPokemon
.TellPokemon1_32:
	writethistext
		text "Rampardos."
		done
	sjump .ToldPokemon
.TellPokemon1_33:
	writethistext
		text "Bronzong."
		done
	sjump .ToldPokemon
.TellPokemon1_34:
	writethistext
		text "Zoroark."
		done
	sjump .ToldPokemon
.TellPokemon1_35:
	writethistext
		text "Garchomp."
		done
	sjump .ToldPokemon
.TellPokemon1_36:
	writethistext
		text "Snorlax."
		done
	sjump .ToldPokemon
.TellPokemon1_37:
	writethistext
		text "Gliscor."
		done
	sjump .ToldPokemon
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
	loadwildmon URSALUNA, OTHER_FORM, 100  ; Ursaluna_bloodmoon (Pokemon1_45)
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
	special UpdateStadiumStreak
	setscene $9
	applyonemovement PLAYER, step_left
	end


; =========
; trainers
; =========

StadiumFacility_Trainers1Event: ; todo need to figure out adding in the optional healing 
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
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 1
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 2
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 3
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 4
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 5
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 6
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 7
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 8
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 9
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 10
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 11
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 12
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 13
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 14
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 15
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 16
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 17
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 18
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer PKMN_TRAINER_HF_FACILITY, 19
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	applymovement STADIUM_FACILITY_AROMA_LADY, GenericTrainerWalkAwayMovement
	special UpdateStadiumStreak
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
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 1
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 2
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 3
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 4
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 5
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 6
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 7
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 8
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 9
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 10
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 11
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 12
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 13
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 14
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 15
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 16
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 17
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 18
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer SAGE_FACILITY, 19
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	applymovement STADIUM_FACILITY_SAGE, GenericTrainerWalkAwayMovement
	special UpdateStadiumStreak
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
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 1
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 2
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 3
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 4
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 5
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 6
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 7
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 8
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 9
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 10
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 11
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 12
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 13
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 14
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 15
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 16
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 17
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 18
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NOMAD_F_FACILITY, 19
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	applymovement STADIUM_FACILITY_NOMADF, GenericTrainerWalkAwayMovement
	special UpdateStadiumStreak
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
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 1
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 2
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 3
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 4
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 5
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 6
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 7
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 8
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 9
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 10
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 11
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 12
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 13
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 14
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 15
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 16
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 17
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 18
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer NINJA_FACILITY, 19
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle ; or just reloadmap? 
; ========
; check which trainer we're on, set the event, and jump back to the trainer sequences 
; ========
	applymovement STADIUM_FACILITY_NINJA, GenericTrainerWalkAwayMovement
	special UpdateStadiumStreak
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
	; TODO THIS ONE JUST CYCLES THROUGH FOUR BRIGADERS FROM THE GP OF 20, 
	; WHILE AFTER EACH SET OF 4 THERE IS ONE OF THE FOLLOWING BOSS TRAINERS LOADED RANDOMLY, 
	; FROM A, B, C, D, E, F, G
	; EVERY FIVE TURNS YOU GET THE CHANCE TO STEP ASIDE AND CHANGE UP YOUR TEAM 
	; TODO ONCE THE STREAK REACHES 50 YOU GET A LITTLE TROPHY OF the mon you started with

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
	loadtrainer BRIGADER_FACILITY, 20
	sjump .LoadedTrainer
.CallTrainer1_0:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 1
	sjump .LoadedTrainer
.CallTrainer1_1:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 2
	sjump .LoadedTrainer
.CallTrainer1_2:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 3
	sjump .LoadedTrainer
.CallTrainer1_3:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 4
	sjump .LoadedTrainer
.CallTrainer1_4:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 5
	sjump .LoadedTrainer
.CallTrainer1_5:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 6
	sjump .LoadedTrainer
.CallTrainer1_6:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 7
	sjump .LoadedTrainer
.CallTrainer1_7:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 8
	sjump .LoadedTrainer
.CallTrainer1_8:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 9
	sjump .LoadedTrainer
.CallTrainer1_9:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 10
	sjump .LoadedTrainer
.CallTrainer1_10:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 11
	sjump .LoadedTrainer
.CallTrainer1_11:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 12
	sjump .LoadedTrainer
.CallTrainer1_12:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 13
	sjump .LoadedTrainer
.CallTrainer1_13:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 14
	sjump .LoadedTrainer
.CallTrainer1_14:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 15
	sjump .LoadedTrainer
.CallTrainer1_15:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 16
	sjump .LoadedTrainer
.CallTrainer1_16:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 17
	sjump .LoadedTrainer
.CallTrainer1_17:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 18
	sjump .LoadedTrainer
.CallTrainer1_18:
	winlosstext FacilityWinText, FacilityLossText
	loadtrainer BRIGADER_FACILITY, 19
;	sjump .LoadedTrainer ; fallthru
.LoadedTrainer:
	startbattle
	reloadmapafterbattle
	applymovement STADIUM_FACILITY_AROMA_LADY, GenericTrainerWalkAwayMovement
	special UpdateStadiumStreak
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
	; have to roll for this, todo 
	appear STADIUM_FACILITY_SANDRA
	setevent EVENT_FACILITY_AROMA_LADY
	disappear STADIUM_FACILITY_AROMA_LADY
	applymovement STADIUM_FACILITY_SANDRA, BossTrainerWalkTowardMovement
	winlosstext FacilityWinTextSandra, FacilityLossTextSandra 
	loadtrainer SANDRA, SANDRA_STADIUM 
	startbattle
	reloadmap
	applymovement STADIUM_FACILITY_SANDRA, BossTrainerWalkAwayMovement 
	setevent EVENT_FACILITY_SILAS
	disappear STADIUM_FACILITY_SANDRA	
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
	end 	; can do it all over again... 

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
	line "an Apricorn with a"
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
;	step_left
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

