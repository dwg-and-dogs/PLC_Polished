OlivineLighthouse3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  3, OLIVINE_LIGHTHOUSE_2F, 2
	warp_event 9, 11, OLIVINE_LIGHTHOUSE_6F, 1


	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, 	TrainerScientistPiotr, -1 ; drifblim 
	object_event  6, 14, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, 	TrainerBattleGirlRonda, -1
	object_event 13,  5, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, 	TrainerEngineerHoward, -1

	itemball_event  8,  2, FULL_RESTORE, 1, EVENT_OLIVINE_LIGHTHOUSE_3F_ETHER

	object_const_def

TrainerScientistPiotr:
	generictrainer SCIENTIST, PIOTR, EVENT_BEAT_SCIENTIST_PIOTR, .SeenText, .BeatenText

.BeatenText:
	text "I'm proud of what"
	line "we built."
	done

.SeenText:
	text "OMLAS Slowking"
	line "must not be"
	cont "distrbed!"
	done

TrainerEngineerHoward:
	generictrainer ENGINEER, HOWARD, EVENT_BEAT_ENGINEER_HOWARD, .Seen1Text, .Beaten1Text

.Beaten1Text:
	text "Blew my gasket."
	done

.Seen1Text:
	text "I've been working"
	line "overtime with the"
	para "downtime... I'm"
	line "ready to blow!"
	done
	
TrainerBattleGirlRonda:
	generictrainer BATTLE_GIRL, RONDA, EVENT_BEAT_BATTLE_GIRL_RONDA, .Seen2Text, .Beaten2Text

.Beaten2Text:
	text "Now I was thrown"
	line "back."
	done

.Seen2Text:
	text "I'll throw you"
	line "back to the first"
	cont "floor!"
	done
