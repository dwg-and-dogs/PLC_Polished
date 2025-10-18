SinjohCrossroadsCredit_MapScriptHeader:
	def_scene_scripts
	scene_script SinjohCrossroadsCreditScene 

	def_callbacks


	def_warp_events
	warp_event 21, 19, DEBUG_ROOM, 1

	def_coord_events


	def_bg_events


	def_object_events



SinjohCrossroadsCreditScene: 
	;MOVING CAMERA
	; warp in at x, y 
	applyonemovement PLAYER, hide_object
	waitsfx
	pause 120 
	applymovement PLAYER, SC_Credit_Move1 ; 6 LEFT 
	pause 120
	applymovement PLAYER, SC_Credit_Move2 ; 14 UP 
	pause 120
	; hall of fame section 
	ld a, 4 ; jumps if the party size is 3 (or less) 
	cp PARTY_LENGTH
	jp nc, .done
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 4    ; Select party slot
	readmem wPartyMon5Species  ; or wCurPartySpecies
	pokepic 0	
	pause 120
	waitbutton
	closepokepic
.done:
	pause 60
	special FadeOutPalettes
	warp CLASTS_CRADLE_B1F_CREDIT, 8, 6
	end


SC_Credit_Move1:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

SC_Credit_Move2:
	step_up
	step_up
	step_up
	step_up
	step_up
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
