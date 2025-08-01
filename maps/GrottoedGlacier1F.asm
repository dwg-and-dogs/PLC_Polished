GrottoedGlacier1F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 2, 13, SINJOH_CROSSROADS, 4
	warp_event 13, 3, GROTTOED_GLACIER_B1F, 1

	def_coord_events



	def_bg_events



	def_object_events
	object_event  3, 13, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerMediumGrace, EVENT_BEAT_KANNA
	object_event 12,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSageUri, EVENT_BEAT_KANNA


	object_const_def


GenericTrainerMediumGrace:
	generictrainer MEDIUM, GRACE, EVENT_BEAT_MEDIUM_GRACE, .SeenText, .BeatenText

.BeatenText:
	text "It's not a big"
	line "fish - there'll"
	cont "be trouble."	
	done

.SeenText:
	text "What are you"
	line "doing here?"
	
	para "Do not disturb"
	line "Elder Kanna's"
	cont "meeting!"
	done



GenericTrainerSageUri:
	generictrainer SAGE, URI, EVENT_BEAT_SAGE_URI, .SeenText1, .BeatenText1

.BeatenText1:
	text "I can't stop you"
	line "from descending."
	
	para "But if I were you"
	line "I'd stay out."
	done

.SeenText1:
	text "The glacier moves"
	line "slowly, but can"
	cont "cut mountains!"	
	done
