OlivineLighthouse2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3, 11, OLIVINE_LIGHTHOUSE_1F, 3
	warp_event  5,  3, OLIVINE_LIGHTHOUSE_3F, 1


	def_coord_events


	def_bg_events


	def_object_events 
	object_event  15,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, 	TrainerScientistNigel, -1 
	object_event  6, 14, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, 	TrainerBattleGirlNozomi, -1
	object_event  16,  9, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, 	TrainerEngineerHugo, -1

TrainerScientistNigel:
	generictrainer SCIENTIST, NIGEL, EVENT_BEAT_SCIENTIST_NIGEL, .SeenText, .BeatenText

.BeatenText:
	text "Wait, are you"
	line "even allowed in"
	cont "here?"
	done

.SeenText:
	text "Hey, can't you"
	line "see we're having"
	cont "a conversation?"
	done

TrainerEngineerHugo:
	generictrainer ENGINEER, HUGO, EVENT_BEAT_ENGINEER_HUGO, .Seen1Text, .Beaten1Text

.Beaten1Text:
	text "Wait, are you"
	line "even allowed in"
	cont "here?"
	done

.Seen1Text:
	text "A battle? Fine,"
	line "but make it fast."	
	done
	
TrainerBattleGirlNozomi:
	generictrainer BATTLE_GIRL, NOZOMI, EVENT_BEAT_BATTLE_GIRL_NOZOMI, .Seen2Text, .Beaten2Text

.Beaten2Text:
	text "I'm going to be"
	line "kicked back to"
	cont "white belt."
	done

.Seen2Text:
	text "Chuck said to"
	line "kick out anyone"
	para "who shouldn't"
	line "be here!"
	para "That means you!"
	done
