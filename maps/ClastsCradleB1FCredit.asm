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
	tmhmball_event 25, 23, TM_FOCUS_BLAST, EVENT_GOT_TM_FOCUS_BLAST 


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
	; warp in at x, y 
	applyonemovement PLAYER, hide_object
	waitsfx
	pause 120 
	applymovement PLAYER, CC_Credit_Move1 ; 13 RIGHT to 21 
	pause 60
	applymovement PLAYER, CC_Credit_Move2 ; 15 DOWN to 25
	pause 60
	applymovement PLAYER, CC_Credit_Move3 ; 16 left to 5
	pause 60
	applymovement PLAYER, CC_Credit_Move4 ; 9 up to 16 
	pause 60
	; hall of fame section 
	; CHECK FOR party of at least five mons 
	; iffalse .done 
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 5    ; Select first party slot
	readmem wPartyMon6Species  ; or wCurPartySpecies
	pokepic 0	
	pause 120
	waitbutton
	closepokepic
	; .done:
	; CHECKEVENT event_joined_adrinna
	; iftrue .done2
	pause 60
	special FadeOutPalettes
	warp BURNED_TOWER_B1F_CREDIT, 9, 6
	; .done2:
	; halloffame
	end


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

