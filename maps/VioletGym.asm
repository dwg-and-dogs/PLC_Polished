VioletGym_MapScriptHeader:
	def_scene_scripts


	def_callbacks

	def_warp_events
	warp_event  4, 15, VIOLET_CITY, 2
	warp_event  5, 15, VIOLET_CITY, 2

	def_coord_events

	def_bg_events


	def_object_events
	object_event  4,  2, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletGymPryceText, EVENT_BEAT_FALKNER  


VioletGymPryceText:
	text "Johto's Gyms once"
	line "shared techniques"
	para "like a wild grove"
	line "of fruit trees."

	para "But Falkner's is"
	line "like a walled"
	cont "garden!"
	
	para "He won't even let"
	line "me talk to him!"
	done
