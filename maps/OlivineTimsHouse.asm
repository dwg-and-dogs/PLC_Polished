OlivineTimsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 3
	warp_event  3,  7, OLIVINE_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChoiceBandScript, -1


ChoiceBandScript:
	faceplayer
	opentext
	writetext OfferChoiceBandText
	waitbutton
	closetext
	end

OfferChoiceBandText:
	text "Chuck completely"
	line "remade this town."
	
	para "He saw that if"
	line "we made the right"
	cont "investments, we"
	
	para "could be so much"
	line "more than a port."
	done

GiveBandText1:
	text "Yes! You have the"
	line "resolve to do"
	cont "what needs to"
	cont "be done!"
	done

