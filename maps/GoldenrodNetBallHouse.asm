GoldenrodNetBallHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 17
	warp_event  3,  7, GOLDENROD_CITY, 17

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodNetBallHouseYoungsterScript, -1
	object_event  6,  3, SPRITE_ELDER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodNetBallHouseBugCatcherText, -1

GoldenrodNetBallHouseYoungsterScript:
	checkevent EVENT_GOT_NET_BALL_FROM_GOLDENROD
	iftrue_jumptextfaceplayer .Text2
	faceplayer
	opentext
	writetext .Text1
	promptbutton
	verbosegiveitem WISE_GLASSES
	iffalse_endtext
	setevent EVENT_GOT_NET_BALL_FROM_GOLDENROD
	jumpthisopenedtext

.Text2:
	text "My dad couldn't"
	line "focus on details"
	para "with those Wise"
	line "Glasses."
	done

.Text1:
	text "My dad's vision"
	line "perscription is"
	cont "always changing."
	
	para "We don't need"
	line "these anymore."
	
	para "Maybe you can"
	line "use them?"
	done

GoldenrodNetBallHouseBugCatcherText:
	text "My son says that"
	line "my eyes are bad."
	
	para "I say, he can"
	line "never see the"
	para "forest for the"
	line "trees!"
	done
