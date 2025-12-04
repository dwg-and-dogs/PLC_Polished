ClastsCradleB1FCredit_MapScriptHeader:
	def_scene_scripts
	scene_script ClastsCradleB1FCreditScene

	def_callbacks
	callback MAPCALLBACK_TILES, CradleB1FStonesCallback2

	def_warp_events
	warp_event 7, 5, DEBUG_ROOM, 1

	def_coord_events


	def_bg_events


	def_object_events


CradleB1FStonesCallback2:
	checkevent EVENT_BOULDER_CRADLE1F_1
	iffalse .Check2
	changeblock 14,  6, $5D
.Check2:
	checkevent EVENT_BOULDER_CRADLE1F_2
	iffalse .Check3
	changeblock 18,  14, $5F
.Check3:
	checkevent EVENT_BOULDER_CRADLE1F_3
	iffalse .Done
	changeblock 14,  26, $5D
.Done:
	endcallback

ClastsCradleB1FCreditScene: 
	;MOVING CAMERA
	applyonemovement PLAYER, hide_object
	waitsfx
	pause 30 
	applymovement PLAYER, CC_Credit_Move1 ; 13 RIGHT to 21 
	pause 30
	applymovement PLAYER, CC_Credit_Move2 ; 15 DOWN to 25
	pause 30
	applymovement PLAYER, CC_Credit_Move3 ; 16 left to 5
	pause 30
	applymovement PLAYER, CC_Credit_Move4 ; 9 up to 16 
	pause 30
	; hall of fame section 
;	readvar VAR_PARTYCOUNT
;	ifless $6, .done
;	refreshscreen
;	loadmem wCurForm, -1
;	loadmem wCurPartyMon, 5    ; Select party slot
;	readmem wPartyMon6Species  ; or wCurPartySpecies
;	pokepic 0	
;	pause 120
;	waitbutton
;	closepokepic
;.done:
	checkevent EVENT_ACCEPTED_ADRINNA
	iftrue .done2
	pause 30
;	special FadeOutPalettes
	warphide BURNED_TOWER_B1F_CREDIT, 9, 6
	end

.done2:
	pause 30
	special FadeOutPalettes
	opentext
	writetext halloffametext_1
	waitbutton
	closetext
	warphide CREDITS_POKEMON_ALL, 4, 5
	end

halloffametext_1:
	text "If there's someone"
	line "who shaped your"
	cont "world for the"
	cont "better,"
	
	para "Give them a call,"
	line "send a letter,"
	cont "a message, or"
	para "even a prayer,"
	
	para "to let them know"
	line "what they mean"
	cont "to you."
	
	para "It may mean the"
	line "world to them to"
	para "know that their"
	line "inheritance is"
	cont "treasured."
	done
	
CC_Credit_Move1:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

CC_Credit_Move2:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

CC_Credit_Move3:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

CC_Credit_Move4:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

