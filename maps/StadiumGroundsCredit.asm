StadiumGroundsCredit_MapScriptHeader:
	def_scene_scripts
	scene_script StadiumGroundsCreditScene

	def_callbacks
	callback MAPCALLBACK_TILES, StadiumGroundsFloodCallback2

	def_warp_events
	warp_event 21, 28, DEBUG_ROOM, 1

	def_coord_events


	def_bg_events


	def_object_events
	object_event 46, 28, SPRITE_SANDRA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	tmhmball_event 53, 35, TM_FLAME_CHARGE, EVENT_BURNED_TOWER_B1F_TM_FLAME_CHARGE
	itemball_event 15,  7, BLACK_BELT, 1, EVENT_GOT_BLACK_BELT_FROM_WESLEY


StadiumGroundsFloodCallback2:
	checkevent EVENT_STADIUM_GROUNDS_FIRST_FLOOD
	iffalse .Done
	changeblock 26, 10, $35
	changeblock 26, 14, $35
	changeblock 24, 12, $35	
	changeblock 28, 12, $35
	changeblock 26, 12, $86
	checkevent EVENT_STADIUM_GROUNDS_SECOND_FLOOD
	iffalse .Done
	changeblock 28, 10, $35
	changeblock 24, 10, $35
	changeblock 22, 12, $35
	changeblock 30, 12, $35
	changeblock 24, 14, $35
	changeblock 28, 14, $35	
.Done:
	endcallback

StadiumGroundsCreditScene: 
	;MOVING CAMERA
	applyonemovement PLAYER, hide_object
	pause 120
	applymovement PLAYER, SG_Credit_Move1
	pause 120
	applymovement PLAYER, SG_Credit_Move2
	pause 120
	applymovement PLAYER, SG_Credit_Move3
	pause 120
	; hall of fame section 
	ld a, 1
	cp PARTY_LENGTH
	jp nc, .done

	; CHECK FOR party of at least five mons 
	; iffalse .done 
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 1    ; Select first party slot
	readmem wPartyMon2Species  ; or wCurPartySpecies
	pokepic 0	
	pause 120
	waitbutton
	closepokepic
.done:
	pause 60
	special FadeOutPalettes
	warp EMPERORS_GARDEN_CREDIT, 29, 28
	end


SG_Credit_Move1: ; NOT ENOUGHT? 
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

SG_Credit_Move2: ; NOT ENOUGH? 
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
	step_up
	step_up
	step_up
	step_end

SG_Credit_Move3:
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
	step_left 
	step_left 
	step_left 	
	step_end

SG_Credit_Move4:
	step_end

