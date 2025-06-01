StadiumBox_MapScriptHeader: 
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event  5, 11, STADIUM_GROUNDS, 2
	warp_event  6, 11, STADIUM_GROUNDS, 2
	warp_event  5,  2, STADIUM_UNDERGROUND, 2


	def_coord_events
	coord_event 5, 11, 1, StadiumBoxScene_warp1
	coord_event 6, 11, 1, StadiumBoxScene_warp2
	coord_event 5,  2, 1, StadiumBoxScene_warp3


	def_bg_events

	def_object_events
	object_event  6,  7, SPRITE_ADRINNA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_STADIUM_BOX_ADRINNA
	object_event  5,  11, SPRITE_SANDRA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StadiumBoxSandraScript, EVENT_BEAT_SANDRA
	object_event  6,  11, SPRITE_KURT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StadiumBoxKurtScript, EVENT_BEAT_SANDRA 
	itemball_event  8,  2, SCOPE_LENS, 1, EVENT_STADIUM_BOX_SCOPE_LENS
	itemball_event  2,  2, WIDE_LENS, 1, EVENT_WIDE_LENS

	object_const_def
	const STADIUMBOX_ADRINNA
	const STADIUMBOX_SANDRA
	const STADIUMBOX_KURT

StadiumBoxScene_warp2:
	applyonemovement PLAYER, step_left
StadiumBoxScene_warp1:
	applyonemovement PLAYER, step_up
	applyonemovement PLAYER, step_up
	applyonemovement PLAYER, step_up
	applyonemovement PLAYER, step_up
	sjump StadiumBoxScene

StadiumBoxScene_warp3:
	applyonemovement PLAYER, step_down
	applyonemovement PLAYER, step_down
	applyonemovement PLAYER, step_down
	applyonemovement PLAYER, step_left
	applyonemovement PLAYER, step_down
	applyonemovement PLAYER, step_down
	applyonemovement PLAYER, step_right
	sjump StadiumBoxScene	

StadiumBoxScene:
	; cut the sound 
	turnobject STADIUMBOX_ADRINNA, LEFT 
	refreshscreen
	trainerpic ADRINNA
	waitbutton
	closepokepic
	opentext
	writetext AdrinnaDialogueStadium
	closetext
	applyonemovement STADIUMBOX_ADRINNA, teleport_from
	disappear STADIUMBOX_ADRINNA
	appear STADIUMBOX_SANDRA
	applymovement STADIUMBOX_SANDRA, StadiumBoxSandraWalksToPlayer
	appear STADIUMBOX_KURT
	applymovement STADIUMBOX_KURT, StadiumBoxKurtWalksToPlayer
	turnobject PLAYER, DOWN
	opentext
	writetext KurtDialogueStadiumBox
	waitbutton
	writetext SandraDialogueStadiumBox
	waitbutton
	turnobject STADIUMBOX_KURT, UP
	writetext KurtDialogue2StadiumBox
	waitbutton
	writetext SandraDialogue2StadiumBox
	waitbutton
	closetext
	applymovement STADIUMBOX_SANDRA, BoxSandraExitMovement
	disappear STADIUMBOX_SANDRA
	clearevent EVENT_NO_EVENT
	setevent EVENT_STADIUM_BOX_ADRINNA
	setscene $0  ; shouldn't happen again 
	end

StadiumBoxSandraScript:
	end

BoxSandraExitMovement:
	step_down
	step_down
	step_down
	step_end

KurtDialogueStadiumBox:
	text_high
    text " Kurt: "
	next
	text_start
	text "<PLAYER>, nice"
	line "work."
	para "General Bobesh"
	line "was such a tyrant"
	para "to force everyone"
	line "to follow him,"
	
	para "always believing"
	line "he was right."

	para "Now, we need to"
	line "get to the port"
	para "to stop the outs-"
	line "iders technology."

	para "Johto depends on"
	line "it! Sandra, how"
	cont "can we get there?"
	done

SandraDialogueStadiumBox:
	text_high
    text " Sandra: "
	next
	text_start
	text "A port: you mean"
	line "Trader's Landing?"
	para "You'd have to"
	line "pass through the"
	cont "Capital."
	
	para "However, the path"
	line "is guarded."
	done

KurtDialogue2StadiumBox:
	text_high
    text " Kurt: "
	next
	text_start
	text "<PLAYER>."
	line "We must get"
	para "to Ecruteak."
	line "Then we can pray"
	para "to Celebi to take"
	line "us back in time."
	done

SandraDialogue2StadiumBox:
	text_high
    text " Sandra: "
	next
	text_start
	text "Celebi? We once"
	line "built shrines by"
	para "the blossom trees"
	line "near the stadium."
	para "There's one left."
	line "I will meet you"
	cont "there."
	done

StadiumBoxKurtScript:
	faceplayer
	opentext
	writetext KurtDialogue2
	waitbutton
	closetext
	end

AdrinnaDialogueStadium:
	text_high
    text " Adrinna: "
	next
	text_start
	line "Your victory was"
	cont "extraordinary."

	para "You achieved it"
	line "through your own"
	cont "merit."

	para "You have some"
	line "potential, if you"
	para "let go of your"
	line "misguided ideals."
	done

	
StadiumBoxSandraWalksToPlayer:
	step_up
	step_up	
	step_up
	step_end
	

StadiumBoxKurtWalksToPlayer:
	step_up
	step_left
	step_left
	step_up	
	step_up	
	turn_head_right
	step_end
