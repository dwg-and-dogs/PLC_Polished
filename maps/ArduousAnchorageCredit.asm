ArduousAnchorageCredit_MapScriptHeader:
	def_scene_scripts
	scene_script ArdudousAnchorageCreditScene
	

	def_callbacks


	def_warp_events
	warp_event 6, 26, DEBUG_ROOM, 1

	def_coord_events


	def_bg_events


	def_object_events
	object_event 11, 12, SPRITE_NOMAD_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8,  9, SPRITE_NOMAD_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1




ArdudousAnchorageCreditScene: 
	;MOVING CAMERA
	; warp in at x, y 
	applyonemovement PLAYER, hide_object
	waitsfx
	pause 120
	applymovement PLAYER, AA_Credit_Move1
	pause 120
	applymovement PLAYER, AA_Credit_Move2
	pause 120
	; hall of fame section 
	ld a, 3 ; jumps if the party size is 3 (or less) 
	cp PARTY_LENGTH
	jp nc, .done
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 3    ; Select party slot
	readmem wPartyMon4Species  ; or wCurPartySpecies
	pokepic 0	
	pause 120
	waitbutton
	closepokepic
.done:
	pause 60
	special FadeOutPalettes
	warp SINJOH_CROSSROADS_CREDIT, 21, 19
	end


AA_Credit_Move1: ;14 up 
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

AA_Credit_Move2: ; 24 right  
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
