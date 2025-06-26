EarlsPokemonAcademy_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5, 15, VIOLET_CITY, 3
	warp_event  4, 15, VIOLET_CITY, 3
	warp_event  2,  0, VIOLET_CITY, 8
	warp_event  3,  0, VIOLET_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5, 12, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, AcademyNPC1Text, -1
	object_event  1, 10, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSageEdmond, -1
	object_event  6,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSageTroy, -1
	object_event  1,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSageNeal, -1
	object_event  4,  3, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerElderLi, -1
	object_event  6,  14, SPRITE_KURT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AcademyKurtScript, -1

	object_const_def

AcademyNPC1Text:
	text "Young Falkner saw"
	line "the drought when"
	para "others' eyes"
	line "were clouded."

	para "But wisdom, like"
	line "water, can become"
	para "stagnant if not"
	line "flowing freely."

	para "Now his tower"
	line "stands tall, yet"
	para "casts a long"
	line "shadow."

	para "May he remember:"
	line "the highest trees"
	para "have the deepest"
	line "roots."
	done


GenericTrainerSageEdmond:
    generictrainer SAGE, EDMOND, EVENT_BEAT_SAGE_EDMOND, SageEdmondSeenText, SageEdmondBeatenText

    text "Most don't realize"
    line "Bellsprout roots"
    para "are good for the"
    line "ground."
    para "The drought was"
    line "an excuse to push"
    cont "us out."
    done

GenericTrainerSageTroy:
    generictrainer SAGE, TROY, EVENT_BEAT_SAGE_TROY, SageTroySeenText, SageTroyBeatenText

    text "The rain clouds"
    line "Falkner gathers…"
    para "They're misappro-"
    line "priated when he"
    para "pushes them all"
    line "to us in vain."
    done

GenericTrainerSageNeal:
    generictrainer SAGE, NEAL, EVENT_BEAT_SAGE_NEAL, SageNealSeenText, SageNealBeatenText

    text "Our grass types"
    line "couldn't stand up"
    cont "to Falkner."
    para "But still we take"
    line "our job to honor"
    cont "#mon seriously."
    done

SageEdmondSeenText:
    text "Can you work"
    line "together with"
    cont "your #mon?"
    done

SageEdmondBeatenText:
    text "Yes, they are"
    line "working together."
    done

SageTroySeenText:
    text "Can you find a"
    line "silver lining?"
    done

SageTroyBeatenText:
    text "Your heart is"
    line "untarnished."
    done

SageNealSeenText:
    text "Our roots run"
    line "deep!"
    done

SageNealBeatenText:
    text "Bottomed out…"
    done

GenericTrainerElderLi:
    generictrainer ELDER, LI, EVENT_BEAT_ELDER_LI, ElderLiSeenText, ElderLiBeatenText

    text "Our grass types"
    line "couldn't stand up"
    cont "to Falkner."
    para "But still we take"
    line "our job to honor"
    cont "#mon seriously."
    done

ElderLiSeenText: 
	text "You seek Falkner?"

	para "We guard his"
	line "tower by duty,"
	para "not by choice,"
	line "but I hope we can"
	cont "still shape him."
	done


ElderLiBeatenText:
	text "You may be the"
	line "mirror he needs."

	para "Show him that the"
	line "tallest trees have"
	para "the strongest"
	line "roots."
	done

AcademyKurtScript: ; will this work?....
	faceplayer
	opentext
	writetext KurtHearAStoryQuestion
	yesorno
	iffalse .AskToBattle
	writetext AcademyKurtText
	clearevent EVENT_KURTS_HOUSE_BOOK_3
	waitbutton
.AskToBattle
	writetext EarlKurtBattleQuestion
	yesorno
	iffalse_jumpopenedtext KurtEarlDeclineText
	winlosstext EarlKurtBattleText, EarlKurtBattleText
	loadtrainer KURT, 4 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext EarlKurtText2

KurtHearAStoryQuestion:
	text "Would you like"
	line "to hear a story,"
	
	para "about when I came"
	line "here with your"
	cont "father?"
	done

EarlKurtBattleQuestion:
	text "Say, how about a"
	line "battle with some"
	cont "#mon I found?"
	done

KurtEarlDeclineText:
	text "Some other time."
	done

EarlKurtBattleText:
	text "You've learned!"
	done

EarlKurtText2:
	text "You'll be a"
	line "master one day."
	done
	
AcademyKurtText: 
	text "This was your"
	line "dad's school."
	
	para "After class, we"
	line "walked around the"
	para "ponds, your dad"
	line "walking side by"
	para "side with his"
	line "partner, holding"
	cont "his apricorn."

	para "The other kids had"
	line "#seals for their"
	cont "#balls,"

	para "So we decorated"
	line "the Apricorn with"
	cont "vibrant paints!"

	para "Each scrape and"
	line "chip in the coat"
	para "was a memory of"
	line "an adventure."

	para "If you ever want"
	line "to hear it again,"
	para "check the journal"
	line "in my house."
	done
