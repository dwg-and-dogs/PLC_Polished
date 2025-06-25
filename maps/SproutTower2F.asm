SproutTower2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 11,  4, SPROUT_TOWER_1F, 3
	warp_event  7, 14, SPROUT_TOWER_3F, 1

	def_coord_events

	def_bg_events


	def_object_events
	object_event  6, 15, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBird_keeperTheo, -1

GenericTrainerBird_keeperTheo:
	generictrainer BIRD_KEEPER, THEO, EVENT_BEAT_BIRD_KEEPER_THEO, Bird_keeperTheoSeenText, Bird_keeperTheoBeatenText

	text "The gaps in the"
	line "tower allow wind"
	cont "to flow."
	
	para "Otherwise, the "
	line "tower might fall"
	cont "over."
	done

Bird_keeperTheoSeenText:
	text "If my calculations"
	line "are correct:"
	
	para "You're going to"
	line "lose!"
	done

Bird_keeperTheoBeatenText:
	text "The gaps in the"
	line "tower allow wind"
	cont "to flow."
	done
