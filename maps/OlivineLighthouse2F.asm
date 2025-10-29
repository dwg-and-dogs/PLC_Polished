OlivineLighthouse2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3, 11, OLIVINE_LIGHTHOUSE_1F, 3
	warp_event  5,  3, OLIVINE_LIGHTHOUSE_3F, 1


	def_coord_events


	def_bg_events

<<<<<<< HEAD

	def_object_events 
	object_event  15,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, 	TrainerScientistNigel, -1 
	object_event  6, 14, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, 	TrainerBattleGirlNozomi, -1
	object_event  16,  9, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, 	TrainerEngineerHugo, -1
=======
	def_object_events ; scientists, engineers 
	object_event  15,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, 	TrainerScientistNigel, EVENT_BEAT_CHUCK
	object_event  6, 14, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, 	TrainerBattleGirlNozomi, EVENT_BEAT_CHUCK
	object_event  16,  9, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, 	TrainerEngineerHugo, EVENT_BEAT_CHUCK
>>>>>>> newgame_works_072725_c8be725

TrainerScientistNigel:
	generictrainer SCIENTIST, NIGEL, EVENT_BEAT_SCIENTIST_NIGEL, .SeenText, .BeatenText

	text "I don't get paid"
	line "enough to stop"
	cont "you anymore."
	done

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

	text "Do you know why"
	line "<RIVAL> looked"
	para "so upset? He was"
	line "really huffing on"
	cont "his way out."
	done

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

	text "Don't stare too"
	line "deep into the"
	para "eyes of the"
	line "OMLAS Slowking."
	
	para "You may not be "
	line "able to stop."
	done

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
