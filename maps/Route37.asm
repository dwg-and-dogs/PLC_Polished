Route37_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  5,  3, BGEVENT_JUMPTEXT, Route37SignText
	bg_event  4,  2, BGEVENT_ITEM + MAX_ETHER, EVENT_ROUTE_37_HIDDEN_ETHER

	def_object_events
	object_event 16,  8, SPRITE_ENGINEER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route37ZapCannonScript, -1 ; ok
	object_event  6, 12, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerTwinsToriandtil1, -1; ok
	object_event  7, 12, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerTwinsToriandtil2, -1; ok
	object_event 14, 11, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPsychicGreg, -1 ; OK
	object_event  4,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBeautyCallie, -1 ; OK
	object_event  9,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBeautyCassandra, -1 ; OK
	fruittree_event 13,  5, FRUITTREE_ROUTE_37_1, PNK_APRICORN, PAL_NPC_RED ; ok
	fruittree_event 16,  5, FRUITTREE_ROUTE_37_2, WHT_APRICORN, PAL_NPC_SILVER ; ok
	fruittree_event 12, 10, FRUITTREE_ROUTE_37_3, TOUGH_LEAVES, PAL_NPC_GREEN;  ok

	object_const_def


GenericTrainerTwinsToriandtil1:
	generictrainer TWINS, ANNANDANNE1, EVENT_BEAT_TWINS_ANN_AND_ANNE, TwinsToriandtil1SeenText, TwinsToriandtil1BeatenText

	text "Lea: I can tell"
	line "what my sister and"

	para "my #mon are"
	line "thinking."
	done

GenericTrainerTwinsToriandtil2:
	generictrainer TWINS, ANNANDANNE2, EVENT_BEAT_TWINS_ANN_AND_ANNE, TwinsToriandtil2SeenText, TwinsToriandtil2BeatenText

	text "Leah: We share the"
	line "same feelings as"
	cont "our #mon."
	done

GenericTrainerPsychicGreg:
	generictrainer PSYCHIC_T, GREG, EVENT_BEAT_PSYCHIC_GREG, PsychicGregSeenText, PsychicGregBeatenText

	text "Zzz..."
	
	para "Perfect time for"
	line "a nap."
	done

Route37ZapCannonScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_ZAP_CANNON_INTRO
	iftrue Route37TutorZapCannonScript
	writetext MeetSunnyText
	waitbutton
	setevent EVENT_LISTENED_TO_ZAP_CANNON_INTRO
Route37TutorZapCannonScript:
	writetext SunnyGivesGiftText ;;
	writetext Text_Route37TutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval ZAP_CANNON
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_Route37TutorRefused ;; 


.TeachMove
	jumpopenedtext Text_Route37TutorTaught ;;


MeetSunnyText:
	text "Sunny: Who are"
	line "you?"

	para "I'm Sunny of"
	line "Sunday."
	done

SunnyGivesGiftText:
	text "I learned this"
	line "technique from"
	para "when I worked on"
	line "the Magnet Train."
	
	para "Maybe it would"
	line "be useful for"
	para "restarting the"
	line "train, now?"
	done
	
Text_Route37TutorQuestion:
	text "Would you like"
	line "me to teach a"
	para "#mon Zap"
	line "Cannon?"
	done

Text_Route37TutorRefused:
	text "Suit yourself."
	done

Text_Route37TutorTaught:
	text "Sunny: That"
	line "technique may"
	para "not hit often,"
	line "but when it does,"
	cont "it's wicked!"
	done

SunnySundayText:
	text "Sunny: I'm Sunny"
	line "of Sunday."
	done


GenericTrainerBeautyCallie:
	generictrainer BEAUTY, CALLIE, EVENT_BEAT_BEAUTY_CALLIE, BeautyCallieSeenText, BeautyCallieBeatenText

	text "You rung my bell!"
	done

GenericTrainerBeautyCassandra:
	generictrainer BEAUTY, CASSANDRA, EVENT_BEAT_BEAUTY_CASSANDRA, BeautyCassandraSeenText, BeautyCassandraBeatenText

	text "You kicked my"
	line "Brass."
	done

TwinsToriandtil1SeenText:
	text "Lea: Go, my"
	line "#mon!"
	
	para "Leah: Goh, my"
	line "#mon!"
	done

TwinsToriandtil1BeatenText:
TwinsToriandtil2BeatenText:
	text "Lea: No, they"
	line "are down..."
	
	para "Leah: Noh, they"
	line "are down..."
	done


TwinsToriandtil2SeenText:
	text "Lea: Go, my"
	line "#mon!"
	
	para "Leah: Goh, my"
	line "#mon!"
	done

PsychicGregSeenText:
	text "I like to come"
	line "here when it's"
	cont "hard to sleep."
	done

PsychicGregBeatenText:
	text "Zzz..."
	
	para "Perfect time for"
	line "a nap."
	done


BeautyCallieSeenText:
	text "Do you know"
	line "where the Bell"
	cont "Tower is?"
	done

BeautyCallieBeatenText:
	text "You rung my bell!"
	done

BeautyCassandraSeenText:
	text "I want to visit"
	line "the Burned Tower!"
	done

BeautyCassandraBeatenText:
	text "Buried in ash."
	done

Route37SignText:
	text "Route 37"
	
	para "Visit Ecruteak"
	line "city! Experience"
	cont "Johto Culture!"
	done
