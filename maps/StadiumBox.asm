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
	writetext KurtDialogue
	waitbutton
	writetext SandraDialogue
	waitbutton
	turnobject STADIUMBOX_KURT, UP
	writetext KurtDialogue2
	waitbutton
	writetext SandraDialogue2
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

KurtDialogue:
	text "KURT: We need to"
	line "get to Olivine"
	cont "port, to stop the"
	cont "steel from enter-"
	cont "ing Johto. Is"
	cont "there any way to"
	cont "get there?"
	done

SandraDialogue:
	text "SANDRA: You mean"
	line "the Trader's"
	cont "Landing? You would"
	cont "have to get inside"
	cont "the capital. I"
	cont "hear that there is"
	cont "a path that goes"
	cont "there."
	
	para "However, the path"
	line "from here to the"
	cont "capital is very"
	cont "tightly guarded."
	
	para "You will need to"
	line "find a way in"
	cont "to the capital"
	cont "from your own"
	cont "time period."
	done

KurtDialogue2:
	text "KURT: <PLAYER>."
	line "We must get"
	cont "into Ecruteak."
	cont "Then we can get" 
	cont "to old Olivine"
	cont "port and stop the"
	cont "shipment."
	
	para "We will go back"
	line "in time from"
	cont "modern Ecruteak"
	cont "to get to the"
	cont "port."
	done

SandraDialogue2:
	text "SANDRA: Celebi? We"
	line "used to build"
	cont "shrines from the"
	cont "blossom trees in"
	cont "this area."

	para "I think there is a"
	line "blossom tree"
	cont "around here. I"
	cont "will meet you"
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
	text "Adrinna:"
	line "Your victory over"
	cont "Bobesh was..."
	cont "extraordinary."

	para "You achieved it"
	line "through your own"
	cont "merit, not relying"
	para "on those subpar"
	line "minds cowering"
	cont "below."

	para "I see in you the"
	line "potential for"
	cont "greatness,"
	para "unburdened by the"
	line "misguided ideal of"
	cont "self-sacrifice."

	para "Remember, <PLAYER>:"
	line "The world is full"
	cont "of unrealized"
	para "potential, waiting"
	line "for those with the"
	cont "will to seize it."

	para "I'll be observing"
	line "your progress with"
	cont "great interest."
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
