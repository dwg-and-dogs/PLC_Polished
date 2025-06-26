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

	text "In the ashes of"
	line "the tower, Ho-Oh"

	para "resurrected three"
	line "#mon to remind"

	para "humans of the"
	line "sacred, yet"
	cont "unknowable,"

	para "mysteries they"
	line "share with all"
	cont "of nature."

	para "They roam Johto,"
	line "appearing to"
	para "those who witness"
	line "the divine in"
	cont "the ordinary."

	done

EcruteakHistoryBookText:
	text "History of"
	line "Ecruteak"

	para "Want to read it?"
	done

EcruteakTwoTowersText:
	text "In Ecruteak, there"
	line "were two towers."

	para "The towers were"
	line "mirror images:"
	
	para "One of Brass,"
	line "One of Tin."
	
	para "The towers were"
	line "initially constr-"
	cont "ucted as a show"
	para "of power for the"
	line "city against an"
	cont "invading force."
	
	para "The Brass Tower"
	line "was nearly comp-"
	cont "lete when it was"
	
	para "struck by a ligh-"
	line "tning bolt."
	
	para "Resources for the"
	line "tower were redir-"
	cont "ected to other"
	para "cities to unite"
	line "Johto together."
	done
