Route42EcruteakGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, ECRUTEAK_CITY, 1
	warp_event  0,  5, ECRUTEAK_CITY, 2
	warp_event  9,  4, ROUTE_42, 1
	warp_event  9,  5, ROUTE_42, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route42EcruteakGateOfficerText, -1
	object_event  6,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route42GateEnergyBall, -1 


Route42EcruteakGateOfficerText:
	text "Mt.Mortar has had"
	line "some landslides,"
	
	para "so most entrances"
	line "are caved in."
	done

Route42GateEnergyBall:
	checkevent EVENT_GOT_TM_ENERGY_BALL
	iftrue_jumptextfaceplayer GotEnergyBallText
	faceplayer
	opentext
	writetext GiveEnergyBall
	promptbutton
	verbosegivetmhm TM_ENERGY_BALL
	setevent EVENT_GOT_TM_ENERGY_BALL
	jumpthisopenedtext

	text "Energy Ball is a"
	line "thorn in your"
	cont "foe's side!"
	done

GotEnergyBallText:
	text "Energy Ball is a"
	line "thorn in your"
	cont "foe's side!"
	done
	
GiveEnergyBall:
	text "Plants may look"
	line "passive, but they"
	cont "can defend them-"
	cont "selves!"
	
	para "When stressed,"
	line "they secrete che-"
	cont "micals."
	
	para "If they need to"
	line "do more, they use"
	cont "Energy Ball!"	
	done
