EmperorsGardenCredit_MapScriptHeader:
	def_scene_scripts
	scene_script EmperorsGardenCreditScene

	def_callbacks


	def_warp_events
	warp_event 29, 28, DEBUG_ROOM, 1

	def_coord_events


	def_bg_events


	def_object_events
	; other scenes 
	object_event 	16, 17, 	SPRITE_AMOS, 	SPRITEMOVEDATA_STANDING_DOWN,  	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1 	
	; others 
	itemball_event  27,  9, PROTEIN, 1, EVENT_EMPERORS_GARDEN_PROTEIN
	itemball_event  21,  3, CALCIUM, 1, EVENT_EMPERORS_GARDEN_CALCIUM
	itemball_event  13,  9, CARBOS, 1, EVENT_EMPERORS_GARDEN_CARBOS


EmperorsGardenCreditScene: 
	;MOVING CAMERA
	; warp in at x, y 
	applyonemovement PLAYER, hide_object
	pause 120
	applymovement PLAYER, EG_Credit_Move1 ; up 20 
	pause 120
	applymovement PLAYER, EG_Credit_Move2 ; left 16 
	pause 120
	applymovement PLAYER, EG_Credit_Move3 ; down 9 
	pause 120
	; hall of fame section 
	; CHECK FOR party of at least five mons 
	; iffalse .done 
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 2    ; Select first party slot
	readmem wPartyMon3Species  ; or wCurPartySpecies
	pokepic 0	
	pause 120
	waitbutton
	closepokepic
	; .done:
	pause 60
	special FadeOutPalettes
	warp ARDUOUS_ANCHORAGE_CREDIT, 6, 26
	end


EG_Credit_Move1:
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
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

EG_Credit_Move2:
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

EG_Credit_Move3:
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
