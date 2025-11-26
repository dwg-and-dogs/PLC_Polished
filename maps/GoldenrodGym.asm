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
	object_event  2,  15, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PryceScriptGoldenrod, EVENT_BEAT_WHITNEY
	object_event  8,  4, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhitneyScript, EVENT_WHITNEY_GYM


GenericTrainerSrandjrJoandcath1:
    generictrainer SR_AND_JR, JOANDCATH1, EVENT_BEAT_SR_AND_JR_JO_AND_CATH, SrandjrJoandcath1SeenText, SrandjrJoandcath1BeatenText

    text "At least we have"
	line "each other."
    done

SrandjrJoandcath1SeenText:
    text "We won't give up"
	line "the gym, even if"
	cont "Whitney's gone!"
    done

SrandjrJoandcath1BeatenText:
    text "At least we have"
	line "each other."
    done
	
GenericTrainerLassCathy:
    generictrainer LASS, CATHY, EVENT_BEAT_LASS_CATHY, LassCathySeenText, LassCathyBeatenText

    text "Times change,"
    line "don't they?"
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

    text "I'd never leave"
	line "my #mon."
	done
	
BeautyVictoriaSeenText:
    text "I still love"
	line "Normal #mon!"
	done

BeautyVictoriaBeatenText:
    text "I'd never leave"
	line "my #mon."
	done

PryceScriptGoldenrod:
    faceplayer
    opentext
    writetext PryceTextGoldenrod
	waitbutton
    closetext
    end

PryceTextGoldenrod:
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
	para "show, I thought"
	line "it would be a"
	para "way to let cute"
	line "#mon take"
	cont "center stage."
	
	para "But over time,"
	line "I was shifting to"
	para "pushing everyone"
	line "else away."
	
	para "I was putting"
	line "up a false im-"
	para "age of myself"
	line "with that show."
	done


WhitneyAfterText:
	text "I need to get"
	line "back to the rea-"
	para "son why I be-"
	line "came a Gym"
	para "Leader in the"
	line "first place-"

	para "helping people"
	line "see the cuteness"
	cont "in each other."
	done
