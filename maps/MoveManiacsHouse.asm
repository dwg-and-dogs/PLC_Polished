MoveManiacsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 3
	warp_event  3,  7, CIANWOOD_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_JUMPSTD, magazinebookshelf

	def_object_events
	object_event  2,  3, SPRITE_COSPLAYER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveReminderScript, -1

MoveReminderScript:
	faceplayer
	opentext
	writetext MoveReminderIntroText
	waitbutton
	checkitem BIG_PEARL
	iffalse .no_gold_leaf
	writetext MoveReminderPromptText
	yesorno
	iffalse .refused
	setval NO_MOVE ; to toggle move relearner
	writetext MoveReminderWhichMonText
	waitbutton
	special Special_MoveTutor
	ifequal $0, .teach_move
.refused
	jumpopenedtext MoveReminderCancelText

.no_gold_leaf
	jumpopenedtext MoveReminderNoGoldLeafText

.teach_move
	takeitem BIG_PEARL
	jumpopenedtext MoveReminderCancelText

MoveReminderIntroText::
	text "Why am I here?"
	line "I'm the move re-"
	cont "minder."
	
	para "And someone needs"
	line "to remember this"
	para "sandy little city"
	line "until it washes"
	cont "into the sea."
	done

MoveReminderPromptText::
	text "Do you want me to"
	line "teach one of your"
	cont "#mon a move?"
	done

MoveReminderWhichMonText::
	text "Yay! Which #mon"
	line "needs tutoring?"
	done

MoveReminderNoGoldLeafText::
	text "Huh? You don't"
	line "have any Big"
	cont "Pearls."
	done

MoveReminderNoMovesText::
	text "Sorry… There isn't"
	line "any move I can"

	para "make that #mon"
	line "remember."
	done

MoveReminderCancelText::
	text "If your #mon"
	line "needs to learn a"

	para "move, come back"
	line "with a Big Pearl!"
	done
