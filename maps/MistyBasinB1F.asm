MistyBasinB1F_MapScriptHeader: ; should be like  "BurnedTowerB1F_MapScriptHeader"
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event   9, 11, MISTY_BASIN, 2

	def_coord_events


	def_bg_events


	def_object_events
	fruittree_event  4,  4, FRUITTREE_MISTYBASIN, RADIANT_OPAL, PAL_NPC_RED
	object_event 10,  8, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MistyBasinB1FBBScript, -1


	object_const_def


MistyBasinB1FBBScript:
	faceplayer
	opentext
	writetext MistyBasinB1F_MoveBoulderText
	yesorno
	iffalse .GiveUp
	setevent EVENT_MISTY_BASIN_B1F_BLACKBELT ; for slowpokewell b2f
	jumpopenedtext MistyBasinB1FText3


.GiveUp
	clearevent EVENT_MISTY_BASIN_B1F_BLACKBELT
	jumpopenedtext MistyBasinB1FText2

MistyBasinB1FText2:
	text "Yeah, probably"
	line "a waste of time."
	done
	
MistyBasinB1F_MoveBoulderText:
	text "I hear rushing"
	line "water behind this"
	cont "boulder."
	
	para "But I've barely"
	line "moved it..."
	
	para "Should I keep"
	line "going?"
	done

MistyBasinB1FText3:
	text "That's right!"
	line "I'll do it one"
	cont "inch at a time!"
	done
