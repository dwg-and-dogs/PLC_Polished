HollysHoltCredit_MapScriptHeader:
	def_scene_scripts
	scene_script HollyHoltCreditScene 

	def_callbacks


	def_warp_events
	warp_event 10, 25, DEBUG_ROOM, 1 ; WARP INTO 


	def_coord_events


	def_bg_events


	def_object_events
	object_event  8, 25, SPRITE_HOLLIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 18, 38, SPRITE_TAMMY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 17, 37, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1 
	tmhmball_event 24, 33, TM_X_SCISSOR, EVENT_GOT_TM_X_SCISSOR


HollyHoltCreditScene: 
	;MOVING CAMERA
	; warp in at 10, 25
	applyonemovement PLAYER, hide_object
	waitsfx
	pause 120
	applymovement PLAYER, HH_Credit_Move1
	pause 120
	applymovement PLAYER, HH_Credit_Move2
	pause 120
	applymovement PLAYER, HH_Credit_Move3
	pause 120
	; hall of fame section 
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 120
	waitbutton
	closepokepic
	pause 60
	setevent EVENT_BURNED_TOWER_B1F_BEASTS_1
	clearevent EVENT_BURNED_TOWER_B1F_BEASTS_2
	setevent EVENT_STADIUM_GROUNDS_FIRST_FLOOD
	setevent EVENT_STADIUM_GROUNDS_SECOND_FLOOD
	special FadeOutPalettes
	warp STADIUM_GROUNDS_CREDIT, 8, 35
	end


HH_Credit_Move1:
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

HH_Credit_Move2:
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

HH_Credit_Move3:
	step_left
	step_left
	step_up
	step_left
	step_up
	step_left
	step_up
	step_left
	step_left
	step_end
