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



HollyHoltCreditScene: 
	;MOVING CAMERA
	; warp in at 10, 25
	applyonemovement PLAYER, hide_object
	waitsfx
	pause 30
	applymovement PLAYER, HH_Credit_Move1
	pause 30
	applymovement PLAYER, HH_Credit_Move2
	pause 30
	; hall of fame section 
;	special FadeOutPalettes
; need the following for later cutscenes 
	setevent EVENT_BURNED_TOWER_B1F_BEASTS_1
	clearevent EVENT_BURNED_TOWER_B1F_BEASTS_2
	setevent EVENT_STADIUM_GROUNDS_FIRST_FLOOD
	setevent EVENT_STADIUM_GROUNDS_SECOND_FLOOD
	clearevent EVENT_HALL_OF_FAME_POKEMON_1
	clearevent EVENT_HALL_OF_FAME_POKEMON_2
	clearevent EVENT_HALL_OF_FAME_POKEMON_3
	clearevent EVENT_HALL_OF_FAME_POKEMON_4
	clearevent EVENT_HALL_OF_FAME_POKEMON_5
	clearevent EVENT_HALL_OF_FAME_POKEMON_6
	warphide STADIUM_GROUNDS_CREDIT, 4, 5 
	applyonemovement PLAYER, hide_object
	end


HH_Credit_Move1: ; goes to 21 25
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

HH_Credit_Move2: ; goes to 21 43
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
