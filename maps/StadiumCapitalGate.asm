StadiumCapitalGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, STADIUM_GROUNDS, 5
	warp_event  3,  7, STADIUM_GROUNDS, 5
	warp_event  2,  0, WESTERN_CAPITAL, 10
	warp_event  3,  0, WESTERN_CAPITAL, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event 2, 4, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, StadiumGateBrigader1, -1
	object_event 3, 4, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, StadiumGateBrigader2, -1
	
	object_const_def
	const STADIUM_GATE_BRIGADER_1
	const STADIUM_GATE_BRIGADER_2

StadiumGateBrigader1:
	readvar VAR_FACING
	ifequal LEFT, MovedStadiumGateScript
	faceplayer
	showemote EMOTE_BOLT, STADIUM_GATE_BRIGADER_1, 30
	opentext
	writetext StadiumGateCheckBadgeText
	waitbutton
	checkevent EVENT_BEAT_SAMSARA
	iffalse_jumptext StadiumGateNoSamsaraText
	writetext StadiumGateYesSamsaraText
	waitbutton
	closetext
	applyonemovement STADIUM_GATE_BRIGADER_1, step_left
	turnobject STADIUM_GATE_BRIGADER_1, RIGHT
	applyonemovement STADIUM_GATE_BRIGADER_2, step_right
	turnobject STADIUM_GATE_BRIGADER_2, LEFT
	end


StadiumGateBrigader2:
	readvar VAR_FACING
	ifequal RIGHT, MovedStadiumGateScript
	faceplayer
	showemote EMOTE_BOLT, STADIUM_GATE_BRIGADER_2, 30
	opentext
	writetext StadiumGateCheckBadgeText
	waitbutton
	checkevent EVENT_BEAT_SAMSARA
	iffalse_jumptext StadiumGateNoSamsaraText
	writetext StadiumGateYesSamsaraText
	waitbutton
	closetext
	applyonemovement STADIUM_GATE_BRIGADER_1, step_left
	turnobject STADIUM_GATE_BRIGADER_1, RIGHT
	applyonemovement STADIUM_GATE_BRIGADER_2, step_right
	turnobject STADIUM_GATE_BRIGADER_2, LEFT
	end
	

MovedStadiumGateScript:
	opentext
	writetext StadiumGateYesSamsaraText
	waitbutton
	closetext
	end
	

StadiumGateCheckBadgeText:
	text "Halt! Do you have"
	line "a visa from Chro-"
	cont "nicler Vespera?"
	done

StadiumGateNoSamsaraText:
	text "Turn back - you"
	line "are not permitted"
	cont "to pass!"
	done

StadiumGateYesSamsaraText:
	text "Please pass"
	line "through."
	done
	