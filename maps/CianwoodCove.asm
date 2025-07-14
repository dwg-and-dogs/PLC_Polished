CianwoodCove_MapScriptHeader: 

	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_NEWMAP, CianwoodCoveFlyPoint

	def_warp_events


	def_coord_events


	def_bg_events
	bg_event 10, 13, BGEVENT_READ, CianwoodCovetimeTravelScript 


	def_object_events
	object_event 11, 16, SPRITE_KURT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCoveKurtScript, EVENT_CIANWOOD_COVE_KURT
	itemball_event 11, 21, PETAYA_BERRY, 3, EVENT_CIANWOODCOVE_BERRY_1
	itemball_event 11, 26, LIECHI_BERRY, 3, EVENT_CIANWOODCOVE_BERRY_2
	fruittree_event 16, 29, FRUITTREE_CIANWOOD_COVE, SHORE_FOAM, PAL_NPC_GREEN ;OK

	object_const_def
	const CIANWOOD_COVE_KURT

CianwoodCoveFlyPoint:
	setflag ENGINE_FLYPOINT_CIANWOOD_COVE
	endcallback	
	
CianwoodCoveKurtScript:
	faceplayer
	showtext KurtExplainsTheStormText
	applymovement CIANWOOD_COVE_KURT, CC_Kurt_Moves_Away
	disappear CIANWOOD_COVE_KURT
	setevent EVENT_CIANWOOD_COVE_KURT
	end
	
KurtExplainsTheStormText:
	text "So this is Cian-"
	line "wood long ago."
	
	para "I'm commanding"
	line "Lugia to summon"
	cont "a monsoon."
	
	para "Surely it will"
	line "wreck any boats"
	para "trying to ferry"
	line "Steel for the"
	cont "Consul."
	
	para "Come, <PLAYER>."
	line "We must use this"
	cont "#mon's power"
	cont "for good, even"
	para "though it might"
	line "not understand."
	
	para "Let's head back"
	line "to the port."
	done
	
CC_Kurt_Moves_Away:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

CianwoodCovetimeTravelScript:
	opentext
	writetext CCAskToTimeTravelText
	yesorno
	iffalse_jumpopenedtext CCNoTimeTravelText
	writetext CCYesTimeTravelText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp CIANWOOD_CITY, 11, 16
	end

CCAskToTimeTravelText:
	text "Travel back to"
	line "modern Cianwood?"
	done

CCNoTimeTravelText:
	text "Some other time."
	done

CCYesTimeTravelText:
	text "Time to go."
	done
