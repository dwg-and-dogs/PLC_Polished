GoldenrodGym_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 17, GOLDENROD_CITY, 1
	warp_event  3, 17, GOLDENROD_CITY, 1

	def_coord_events

	def_bg_events


	def_object_events
	object_event  0,  1, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSrandjrJoandcath1, EVENT_BEAT_WHITNEY
	object_event  1,  1, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSrandjrJoandcath1, EVENT_BEAT_WHITNEY
	object_event  9, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerLassCathy, EVENT_BEAT_WHITNEY
	object_event  9,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBeautyVictoria, EVENT_BEAT_WHITNEY
	object_event  8,  3, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PryceScriptGoldenrod, EVENT_BEAT_WHITNEY
	object_event  8,  4, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhitneyScript, EVENT_WHITNEY_GYM

	object_const_def


GenericTrainerSrandjrJoandcath1:
    generictrainer SR_AND_JR, JOANDCATH1, EVENT_BEAT_SR_AND_JR_JO_AND_CATH, SrandjrJoandcath1SeenText, SrandjrJoandcath1BeatenText

    text "Whitney made it"
    line "all look so easy."
    para "Maybe we need to"
    line "rethink things."
    done

SrandjrJoandcath1SeenText:
    text "We thought we had"
    line "paradise here."
    para "But at what cost?"
    done

SrandjrJoandcath1BeatenText:
    text "Huh. Didn't see"
    line "that coming."
    done
	
GenericTrainerLassCathy:
    generictrainer LASS, CATHY, EVENT_BEAT_LASS_CATHY, LassCathySeenText, LassCathyBeatenText

    text "We used to idolize"
    line "Whitney, you know?"
    done

LassCathySeenText:
    text "I've been here"
    line "since the start."
    para "Let me show you"
    line "how we battle!"
    done

LassCathyBeatenText:
    text "Times change,"
    line "don't they?"
    done
	
GenericTrainerBeautyVictoria:
    generictrainer BEAUTY, VICTORIA, EVENT_BEAT_BEAUTY_VICTORIA, BeautyVictoriaSeenText, BeautyVictoriaBeatenText

    text "My little corner"
    line "here is perfect."
    para "No need for"
    line "Whitney's glamour."
    done

BeautyVictoriaSeenText:
    text "Welcome to our"
    line "sanctuary."
    para "Care for a battle?"
    done

BeautyVictoriaBeatenText:
    text "Defeat is just"
    line "part of life."
    done

PryceScriptGoldenrod:
    faceplayer
    opentext
    writetext PryceText
    closetext
    end

PryceText:
    text "Pryce: <PLAYER>…"
    line "what are you"
    cont "doing here?"
    para "… Ah, I see."
    line "Well you are"
    cont "probably asking"
    cont "the same of me."
    para "I came here to"
    line "confront Whitney,"
    cont "but she is in the"
    cont "Radio Tower."
    done


WhitneyScript:
    faceplayer
    opentext
    checkevent EVENT_GAVE_FACADE
    iftrue .AlreadyGaveTMWhitney
    writetext WhitneyTextFacade
    promptbutton
    verbosegivetmhm TM_FACADE
    setevent EVENT_GAVE_FACADE
.AlreadyGaveTMWhitney
    writetext WhitneyAfterText
    waitbutton
    closetext
    end

WhitneyTextFacade:
	text "<PLAYER>."
	
	para "When Silph let"
	line "me have my own"
	cont "show, I thought"
	cont "it would be a"
	cont "way to let cute"
	cont "#mon take"
	cont "center stage."
	
	para "But over time,"
	line "I was shifting to"
	cont "pushing everyone"
	cont "else away."
	
	para "I was putting"
	line "up a false im-"
	cont "age of myself"
	cont "with that show."

	para "For your candid"
	line "thoughts, please"
	cont "take this TM."
	done


WhitneyAfterText:
	text "I need to get"
	line "back to the rea-"
	cont "son why I be-"
	cont "came a Gym"
	cont "Leader in the"
	cont "first place-"

	para "helping people"
	line "see the cuteness"
	cont "in each other."
	done
