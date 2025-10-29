RadioTower3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CardKeyShutterCallback

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_2F, 1
	warp_event 17,  0, RADIO_TOWER_4F, 2

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_JUMPTEXT, RadioTower3FPersonnelSignText
	bg_event  9,  0, BGEVENT_JUMPTEXT, RadioTower3FPokemonMusicSignText
	bg_event 14,  0, BGEVENT_UP, CardKeySlotScript ; INACCESSIBLE

    def_object_events
    object_event  2,  3, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerCooltrainerMWriter, EVENT_BEAT_WHITNEY
    object_event  6,  3, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, TrainerCooltrainerMLightUp, EVENT_BEAT_WHITNEY
    object_event  9,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 4, TrainerBeautyCharm, EVENT_BEAT_WHITNEY
    object_event 14,  5, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, TrainerCooltrainerMEndurance, EVENT_BEAT_WHITNEY

CardKeyShutterCallback:
	endcallback

RadioTower3FCardKeySlotText: ; keep
	text "It's the Card Key"
	line "slot."
	done

InsertedTheCardKeyText:; keep
	text "<PLAYER> inserted"
	line "the Card Key."
	done

RadioTower3FPersonnelSignText:
	text "3F Writers"
	line "Room"
	done

RadioTower3FPokemonMusicSignText:
	text "#mon Music with"
	line "Host DJ Ben"
	done


TrainerCooltrainerMWriter:
    generictrainer COOLTRAINERM, AARON, EVENT_BEAT_COOLTRAINERM_AARON, CooltrainerMWriterSeenText, CooltrainerMWriterBeatenText

    text "They'll get the"
	line "power on soon."
    done

TrainerCooltrainerMLightUp:
    generictrainer COOLTRAINERM, CODY, EVENT_BEAT_COOLTRAINERM_CODY, CooltrainerMLightUpSeenText, CooltrainerMLightUpBeatenText

    text "You lit me up."
    done

TrainerBeautyCharm:
    generictrainer BEAUTY, VALENCIA, EVENT_BEAT_BEAUTY_VALENCIA, BeautyCharmSeenText, BeautyCharmBeatenText

    text "It's tough to work"
    line "for Whitney. "
    para "That's why I'm"
    line "here, to prove"
    cont "that anyone can!"
    done

TrainerCooltrainerMEndurance:
    generictrainer COOLTRAINERM, MIKE, EVENT_BEAT_COOLTRAINERM_MIKE, CooltrainerMEnduranceSeenText, CooltrainerMEnduranceBeatenText

    text "Whitney's up"
    line "ahead. She"
    cont "sounds mad."
    done

CooltrainerMWriterSeenText:
    text "What are you"
    line "doing in the"
    cont "writer's room?"
    done

CooltrainerMWriterBeatenText:
    text "scratch that…"
    done

CooltrainerMLightUpSeenText:
    text "My #mon will"
    line "light up the"
    cont "room!"
    done

CooltrainerMLightUpBeatenText:
    text "No, you lit me up."
    done

BeautyCharmSeenText:
    text "Just because I"
    line "have cute #mon"
    para "doesn't mean I'm"
    line "a pushover!"
    done

BeautyCharmBeatenText:
    text "It's tough to work"
    line "for Whitney."
    para "That's why I'm"
    line "here, to prove"
    cont "that anyone can"
    cont "do it!"
    done


CooltrainerMEnduranceSeenText:
    text "That's it!"
    done

CooltrainerMEnduranceBeatenText:
    text "Whitney's up"
    line "ahead. She"
    cont "sounded mad."
    done

CardKeySlotScript::
	end
