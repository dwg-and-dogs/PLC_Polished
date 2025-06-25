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
	line "shared wisdom like"
	cont "fruitful trees."

	para "Now Falkner hides"
	line "in a walled"
	cont "garden."

	para "A Gym's strength"
	line "lies in nurturing"
	para "trainers, not in"
	line "baffling them!"

	para "I hoped to remind"
	line "him, but he would"
	para "rather rule over"
	line "sand than admit"
	cont "his mistakes."
	
	para "Doesn't he know:"
	line "sand is a poor"
	cont "foundation."
	done
