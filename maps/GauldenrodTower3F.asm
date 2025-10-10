GauldenrodTower3F_MapScriptHeader: ; need to make it go around a circle 
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, GauldenrodTowerBoulders
	callback MAPCALLBACK_TILES, GauldenrodTowerBoulderCallback


	def_warp_events
	warp_event  11,  5, GAULDENROD_TOWER_2F, 2
	warp_event  5, 11, GAULDENROD_TOWER_4F, 1
	warp_event  10,  8, GAULDENROD_TOWER_3F, 1 ; HOLE 
	warp_event  11,  8, GAULDENROD_TOWER_3F, 1 ; HOLE  ; 4

	warp_event   2,  1, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   3,  1, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   4,  1, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   5,  1, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   6,  1, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   7,  1, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   8,  1, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   9,  1, GAULDENROD_TOWER_3F, 1 ; HOLE 	12
	warp_event  10,  1, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event  11,  1, GAULDENROD_TOWER_3F, 1 ; HOLE 		14
	warp_event   1,  2, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   1,  3, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   1,  4, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   1,  5, GAULDENROD_TOWER_3F, 1 ; HOLE 		
	warp_event   1,  6, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   1,  7, GAULDENROD_TOWER_3F, 1 ; HOLE 	20
	warp_event   2,  8, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   3,  8, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   4,  8, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   5,  8, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   6,  8, GAULDENROD_TOWER_3F, 1 ; HOLE 	
	warp_event   7,  8, GAULDENROD_TOWER_3F, 1 ; HOLE 	26


	
	def_coord_events

	def_bg_events

	def_object_events
	strengthboulder_event 9, 0, EVENT_GAULDENROD_3F_BOULDER
	object_event  6,  4, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, CLEFAIRY, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GauldenrodTower3FClefairyStepRight, EVENT_GAULDENROD_3F_CLEFAIRY
	object_event  5,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, CLEFAIRY, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GauldenrodTower3FClefairyStepUp, EVENT_GAULDENROD_3F_CLEFAIRY
	object_event  3,  5, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, CLEFAIRY, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GauldenrodTower3FClefairyStepLeft, EVENT_GAULDENROD_3F_CLEFAIRY
	object_event  4,  6, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, CLEFAIRY, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GauldenrodTower3FClefairyStepDown, EVENT_GAULDENROD_3F_CLEFAIRY
	object_event  3,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, CLEFAIRY, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GauldenrodTower3FClefairyReset, EVENT_GAULDENROD_3F_CLEFAIRY
	
	object_const_def
	const GAULDENROD_TOWER_BOULDER
	const GAULDENROD_TOWER_CLEFAIRY_R
	const GAULDENROD_TOWER_CLEFAIRY_U
	const GAULDENROD_TOWER_CLEFAIRY_L
	const GAULDENROD_TOWER_CLEFAIRY_D
	const GAULDENROD_TOWER_CLEFAIRY_RESET

GauldenrodTowerBoulders:
	usestonetable .BoulderTable
	endcallback

.BoulderTable:
	; right holes 
	stonetable 3, GAULDENROD_TOWER_BOULDER, .Disappear1
	stonetable 4, GAULDENROD_TOWER_BOULDER, .Disappear1
	; wrong holes 
	stonetable 5, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 6, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 7, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 8, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 9, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 10, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 11, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 12, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 13, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 14, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 15, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 16, GAULDENROD_TOWER_BOULDER, .Disappear2	
	stonetable 17, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 18, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 19, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 20, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 21, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 22, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 23, GAULDENROD_TOWER_BOULDER, .Disappear2	
	stonetable 24, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 25, GAULDENROD_TOWER_BOULDER, .Disappear2
	stonetable 26, GAULDENROD_TOWER_BOULDER, .Disappear2		

	db -1 ; end
	
.Disappear1:
	disappear GAULDENROD_TOWER_BOULDER
	pause 60
	showemote EMOTE_HAPPY, GAULDENROD_TOWER_CLEFAIRY_RESET, 60
	disappear GAULDENROD_TOWER_CLEFAIRY_RESET ; might have to use a unique move for each one 
	showemote EMOTE_HAPPY, GAULDENROD_TOWER_CLEFAIRY_R, 60
	disappear GAULDENROD_TOWER_CLEFAIRY_R, teleport_from
	showemote EMOTE_HAPPY, GAULDENROD_TOWER_CLEFAIRY_U, 60
	disappear GAULDENROD_TOWER_CLEFAIRY_U, teleport_from
	showemote EMOTE_HAPPY, GAULDENROD_TOWER_CLEFAIRY_L, 60
	disappear GAULDENROD_TOWER_CLEFAIRY_L, teleport_from
	showemote EMOTE_HAPPY, GAULDENROD_TOWER_CLEFAIRY_D, 60
	disappear GAULDENROD_TOWER_CLEFAIRY_D, teleport_from
	setevent EVENT_GAULDENROD_3F_CLEFAIRY
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 8,  6, $09
	reloadmappart
	jumpthistext

	text "The boulder fell"
	line "through!"
	done

.Disappear2:
	disappear GAULDENROD_TOWER_BOULDER
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	reloadmappart
	jumpthistext

	text "The boulder fell"
	line "through!"
	done

GauldenrodTowerBoulderCallback:
	checkevent EVENT_GAULDENROD_3F_BOULDER
	iffalse .Done
	changeblock 8,  6, $09
.Done:
	endcallback

GauldenrodTower3FClefairyReset:
	opentext
	writetext CallingBackBoulderText
	waitbutton
	yesorno
	iffalse .Done
	closetext
	disappear GAULDENROD_TOWER_BOULDER
	earthquake 80
	clearevent EVENT_GAULDENROD_3F_BOULDER
	moveobject GAULDENROD_TOWER_BOULDER, 9, 0
	appear GAULDENROD_TOWER_BOULDER
.Done:
	closetext
	end
	
CallingBackBoulderText:
	text "Call back the"
	line "boulder?"
	done
	
	
GauldenrodTower3FClefairyStepLeft:
	opentext
	writetext PushBoulderLeftText
	waitbutton
	yesorno
	iffalse .NoMove
	applyonemovement GAULDENROD_TOWER_BOULDER, step_left
.NoMove:
	closetext
	end

PushBoulderLeftText:
	text "Move boulder"
	line "to the left?"
	done

GauldenrodTower3FClefairyStepDown:
	opentext
	writetext PushBoulderDownText
	waitbutton
	yesorno
	iffalse .NoMove
	applyonemovement GAULDENROD_TOWER_BOULDER, step_down
.NoMove:
	closetext
	end

PushBoulderDownText:
	text "Move boulder"
	line "down a space?"
	done


GauldenrodTower3FClefairyStepUp:	
	opentext
	writetext PushBoulderUpText
	waitbutton
	yesorno
	iffalse .NoMove
	applyonemovement GAULDENROD_TOWER_BOULDER, step_up
.NoMove:
	closetext
	end

PushBoulderUpText:
	text "Move boulder"
	line "up a space?"
	done


GauldenrodTower3FClefairyStepRight:
	opentext
	writetext PushBoulderRightText
	waitbutton
	yesorno
	iffalse .NoMove
	applyonemovement GAULDENROD_TOWER_BOULDER, step_right
.NoMove:
	closetext
	end

PushBoulderRightText:
	text "Move boulder"
	line "to the right?"
	done



