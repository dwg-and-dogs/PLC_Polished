Route34IlexForestGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event  4,  0, ROUTE_34, 1
	warp_event  5,  0, ROUTE_34, 2
	warp_event  4,  7, ILEX_FOREST, 1
	warp_event  5,  7, ILEX_FOREST, 1

	def_coord_events


	def_bg_events

	def_object_events
    object_event  6,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EggEnthusiastGrannyScript, -1
	pokemon_event  7,  4, MILTANK, -1, -1, PAL_NPC_RED, Route34IlexForestGateButterfreeText, -1
	object_event  3,  4, SPRITE_PICNICKER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route34IlexForestGateLassText, EVENT_ROUTE_34_ILEX_FOREST_GATE_LASS

	object_const_def


EggEnthusiastGrannyScript:
    faceplayer
    opentext
    checkevent EVENT_GOT_LUCKY_EGG_FROM_GRANNY
    iftrue .AlreadyGotEgg
    writetext EggGrannyIntroText
    promptbutton
    writetext EggGrannyEggCountText
    promptbutton
    writetext EggGrannyStrengthText
    promptbutton
    writetext EggGrannyOfferEggText
    promptbutton
    verbosegiveitem LUCKY_EGG
    iffalse .BagFull
    setevent EVENT_GOT_LUCKY_EGG_FROM_GRANNY
    writetext EggGrannyAfterText
    waitbutton
    closetext
    end

.AlreadyGotEgg
    writetext EggGrannyRemindText
    waitbutton
    closetext
    end

.BagFull
    writetext EggGrannyBagFullText
    waitbutton
    closetext
    end

EggGrannyIntroText:
    text "Oh, dearie! Let me"
    line "tell you about the"
    cont "wonders of eggs!"
    done

EggGrannyEggCountText:
    text "I eat 12 eggs"
    line "every morning!"
    done

EggGrannyStrengthText:
    text "And that's how I"
    line "can churn butter"
    para "by shaking a "
    line "whole Miltank!"
    done

EggGrannyOfferEggText:
    text "Oh, you must try"
    line "my egg diet! Here,"
    cont "take this egg."
    done

EggGrannyAfterText:
    text "That Lucky Egg"
    line "will help your"
    cont "#mon gain"
    cont "experience faster!"
    done

EggGrannyRemindText:
    text "I eat 12 eggs"
    line "every morning!"
    para "And that's how I"
    line "can churn butter"
    para "by shaking a "
    line "whole Miltank!"
	para "Those Eggs will"
	line "make your #mon"
	cont "as strong as me!"
    done

EggGrannyBagFullText:
    text "Oh my, your bag is"
    line "full! You must be"
    cont "carrying too many"
    cont "eggs already!"
    done

Route34IlexForestGateButterfreeText:
	text "This Miltank"
	line "looks dizzy."
	done

Route34IlexForestGateLassText:
	text "Did you see the"
	line "shrine honoring"
	cont "the protector?"

	para "It watches over"
	line "the Forest from"
	cont "across time."

	para "I think that it"
	line "must be a Grass-"
	cont "type #mon."
	done
