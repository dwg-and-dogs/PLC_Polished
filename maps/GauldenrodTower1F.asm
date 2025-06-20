GauldenrodTower1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 11, GAULDENROD, 9
	warp_event  3, 11, GAULDENROD, 9
	warp_event 11,  1, GAULDENROD_TOWER_2F, 1
	warp_event  1, 10, GAULDENROD_TOWER_1F, 1 ; TELEPORT 

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5, 10, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GauldenrodTower1FBrigader1Script, EVENT_BEAT_SANDRA
	object_event  6, 10, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GauldenrodTower1FBrigader2Script, EVENT_BEAT_SANDRA

GauldenrodTower1FBrigader1Script:
	setevent EVENT_4F_BRIGADER
	setevent EVENT_4F_AMOS
	jumptextfaceplayer GauldenrodTower1FBrigader1Text

GauldenrodTower1FBrigader1Text:
	text "The Consul says"
	line "we'll tear down"
	para "this tower and"
	line "build a metal one"
	cont "in its place."
	done

GauldenrodTower1FBrigader2Script:
	jumptextfaceplayer GauldenrodTower1FBrigader2Text

GauldenrodTower1FBrigader2Text:
	text "What are you"
	line "looking at?"
	para "Scram!"
	done
