StadiumGroundsFacility_MapScriptHeader:
	def_scene_scripts
	; todo prevent using items in battle 
		; probably in engine/item_effects 
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
		text "Please speak to"
		line "me from the"
		cont "left, please."
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
	writetext FacilityExplainBallText
	waitbutton
	; random 1 - 20 
	; store it in the wram variable
	; depending on the wram, we report various text
.Pokemon1_1:
	writetext Facility1_1Text
	waitbutton
	sjump .Facility1_EndMonsScript

.Facility1_EndMonsScript:
	writetext Facility1_EndMonsText
; battle the mon, then move the player to allow for TMs, etc 	
	end

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

;StadiumGroundsFacilityScript:
	; random 1-5, for now we just do these in order
	; set the spawn to gauldenrod 
;	opentext
;	writethistext
;		text "<PLAYER>!"
;		line "Prove youself as"
;		cont "a master of both"
;		cont "catching and"
;		cont "battling!"
;		done
;	waitbutton
;	closetext
	
;	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	; random 1- 5
;	loadwildmon SCYTHER, 100 ; CHECK MOVES AT LV 100  TODO AND ALSO ADD CUSTOM ITEMS -- SCYTHER LEFTIES
;	loadwildmon KLEAVOR, 100 ; CHECK MOVES AT LV 100  HARD STONE 
;	loadwildmon MINSIR, 100 ; CHECK MOVES AT LV 100  CHOICE SCARF 
;	loadwildmon YANMEGA, 100 ; CHECK MOVES AT LV 100 CHOICE SPECS 
;	loadwildmon HELECTRODE, 100 ; CHECK MOVES AT LV 100 BRIGHTPOWDER 
; GLSOWKING 
; HERACROSS 
; FORRETRESS 
; AMAGCARGO 
;	startbattle
;	ifequal $1, .Continue
	
	; heal the PLAYER
	; allow them to reorganize the party and items 
	; then prompt to start the battles 
	
	; now start the trainers, up to three 

;	winlosstext SGF_Tier1_WinText, SGF_Tier1_LoseText
	; START 
; random 1 - 3
;	loadtrainer BUG_MANIAC, BUG_MANIAC_SGF_1
;	startbattle
;	ifequal $1, .Continue2
;.Continue2:
;	reloadmapafterbattle
; random 4 - 6
;	winlosstext SGF_Tier1_WinText, SGF_Tier1_LoseText
;	loadtrainer BUG_MANIAC, BUG_MANIAC_SGF_4
;	startbattle
;	ifequal $1, .Continue2
; random 7 - 9
;	winlosstext SGF_Tier1_WinText, SGF_Tier1_LoseText
;	loadtrainer BUG_MANIAC, BUG_MANIAC_SGF_7
;	startbattle
;	ifequal $1, .Continue2






; SANDRAS MONS 
;	loadwildmon CLEFABLE, 100 ; CHECK MOVES AT LV 100  TODO AND ALSO ADD CUSTOM ITEMS
;	loadwildmon RAPIDASH GALARIAN, 100 ; CHECK MOVES AT LV 100 
;	loadwildmon GALARIAN WEEZING, 100 ; CHECK MOVES AT LV 100  CHOICE SCARF 
;	loadwildmon SNEASLER, 100 ; CHECK MOVES AT LV 100 CHOICE SPECS 
;	loadwildmon RAPIDASH, 100 ; CHECK MOVES AT LV 100 BRIGHTPOWDER 
; NIDOQUEEN 
; BLISSEY 
; TOGEKISS 
; AMEGNAIUM 







; SYBIL MONS 
;	loadwildmon MISMAGIUS, 100 ; CHECK MOVES AT LV 100  TODO AND ALSO ADD CUSTOM ITEMS
;	loadwildmon GENGAR, 100 ; CHECK MOVES AT LV 100 
;	loadwildmon WYRDEER, 100 ; CHECK MOVES AT LV 100  CHOICE SCARF 
;	loadwildmon CROBAT, 100 ; CHECK MOVES AT LV 100 CHOICE SPECS 
;	loadwildmon ANNIHILAPE , 100 ; CHECK MOVES AT LV 100 BRIGHTPOWDER 
; NIDOQUEEN 
; HOUNDOOM  
; BSCULAEION  
; DRIFBLIM
; SPIRITOMB
; ENTEI 
; ANOCTOWL 
; AXATU 

; REMY  MONS 
;	loadwildmon LANTURN, 100 ; CHECK MOVES AT LV 100  TODO AND ALSO ADD CUSTOM ITEMS
;	loadwildmon QUGASIRE , 100 ; CHECK MOVES AT LV 100 
;	loadwildmon GDOS, 100 ; CHECK MOVES AT LV 100  CHOICE SCARF 
;	loadwildmon JUMPLUFF, 100 ; CHECK MOVES AT LV 100 CHOICE SPECS 
;	loadwildmon TENTACRURL , 100 ; CHECK MOVES AT LV 100 BRIGHTPOWDER 
; OCTILLERY  
; FROLSASS 
; SUICUNE   



; AMOS   MONS 
;	loadwildmon HGOODRA, 100 ; CHECK MOVES AT LV 100  TODO AND ALSO ADD CUSTOM ITEMS
;	loadwildmon ABOMOASNOW  , 100 ; CHECK MOVES AT LV 100 
;	loadwildmon GALLADE, 100 ; CHECK MOVES AT LV 100  CHOICE SCARF 
;	loadwildmon FERALIGAR, 100 ; CHECK MOVES AT LV 100 CHOICE SPECS 
;	loadwildmon MEGANIUM , 100 ; CHECK MOVES AT LV 100 BRIGHTPOWDER 
; BRONZONG   
; URSALUNA
; AKAZM 
; TTAR
; DNITE

; RAIKOU    
