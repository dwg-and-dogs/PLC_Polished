GauldenrodTower3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, GauldenrodTowerBoulders
	callback MAPCALLBACK_TILES, GauldenrodTowerBoulderCallback


	def_warp_events
	warp_event  5,  1, GAULDENROD_TOWER_2F, 2
	warp_event  5, 11, GAULDENROD_TOWER_4F, 1
	warp_event  10,  8, GAULDENROD_TOWER_1F, 1 ; HOLE 
	warp_event  11,  8, GAULDENROD_TOWER_1F, 1 ; HOLE 
	
	def_coord_events

	def_bg_events

	def_object_events
	strengthboulder_event 11, 7, EVENT_GAULDENROD_3F_BOULDER
	object_event  9,  7, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, CLEFAIRY, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GauldenrodTower3FClefairy, -1
	
	object_const_def
	const GAULDENROD_TOWER_BOULDER
	const GAULDENROD_TOWER_CLEFAIRY

GauldenrodTowerBoulders:
	usestonetable .BoulderTable
	endcallback

.BoulderTable:
	stonetable 3, GAULDENROD_TOWER_BOULDER, .Disappear
	stonetable 4, GAULDENROD_TOWER_BOULDER, .Disappear
	db -1 ; end
	
.Disappear:
	disappear GAULDENROD_TOWER_BOULDER
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 5,  4, $09
	reloadmappart
	jumpthistext

	text "The boulder fell"
	line "through!"
	done

GauldenrodTowerBoulderCallback:
	checkevent EVENT_GAULDENROD_3F_BOULDER
	iffalse .Done
	changeblock 5,  4, $09
.Done:
	endcallback

GauldenrodTower3FClefairy:
	opentext
	writetext PushBoulderText
	waitbutton
	yesorno
	iffalse .NoMove
	applyonemovement GAULDENROD_TOWER_BOULDER, step_down
.NoMove:
	closetext
	end

PushBoulderText:
	text "Move boulder?"
	done

BoulderStepDownMovement:
	fix_facing
	step_down
	step_end
	
