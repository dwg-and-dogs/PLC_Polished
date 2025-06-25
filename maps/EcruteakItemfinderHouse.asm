EcruteakItemfinderHouse_MapScriptHeader: ; not accessible 
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 11
	warp_event  4,  7, ECRUTEAK_CITY, 11

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_JUMPSTD, radio2

	def_object_events
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakHistoryBook, -1

EcruteakHistoryBook:
	opentext
	writetext EcruteakHistoryBookText
	yesorno
	iffalse_endtext
	writetext EcruteakTwoTowersText
	yesorno
	iffalse_endtext
	jumpthisopenedtext

	text "Ecruteak was also"
	line "home to three"

	para "#mon that raced"
	line "around the town."

	para "They were said to"
	line "have been born of"

	para "water, lightning"
	line "and fire."

	para "But they could not"
	line "contain their"
	cont "excessive power."

	para "So they say the"
	line "three ran like the"

	para "wind off into the"
	line "grassland."
	done

EcruteakHistoryBookText:
	text "History of"
	line "Ecruteak"

	para "Want to read it?"
	done

EcruteakTwoTowersText:
	text "In Ecruteak, there"
	line "were two towers."

	para "Each tower was the"
	line "roost of powerful"
	cont "flying #mon."

	para "But one of the"
	line "towers burned to"
	cont "the ground."

	para "The two #mon"
	line "haven't been seen"
	cont "since…"

	para "Keep reading?"
	done
