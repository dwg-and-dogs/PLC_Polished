WesternCapitalCemetery_MapScriptHeader: ;	def_scene_scripts
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event  4, 17, WESTERN_CAPITAL, 3
	warp_event  5, 17, WESTERN_CAPITAL, 3
	warp_event  4, 0, WESTERN_CAPITAL, 7
	warp_event  5, 0, WESTERN_CAPITAL, 8

	def_coord_events



	def_bg_events
	bg_event 2, 14, BGEVENT_JUMPTEXT, WC_Cemetery8Text
	bg_event 2, 15, BGEVENT_JUMPTEXT, WC_Cemetery8Text
	
	bg_event 2, 10, BGEVENT_JUMPTEXT, WC_Cemetery6Text
	bg_event 2, 11, BGEVENT_JUMPTEXT, WC_Cemetery6Text

	bg_event 2,  6, BGEVENT_JUMPTEXT, WC_Cemetery4Text
	bg_event 2,  7, BGEVENT_JUMPTEXT, WC_Cemetery4Text

	bg_event 2,  2, BGEVENT_JUMPTEXT, WC_Cemetery2Text
	bg_event 2,  3, BGEVENT_JUMPTEXT, WC_Cemetery2Text

	bg_event 7, 14, BGEVENT_JUMPTEXT, WC_Cemetery7Text
	bg_event 7, 15, BGEVENT_JUMPTEXT, WC_Cemetery7Text

	bg_event 7, 10, BGEVENT_JUMPTEXT, WC_Cemetery5Text
	bg_event 7, 11, BGEVENT_JUMPTEXT, WC_Cemetery5Text

	bg_event 7,  6, BGEVENT_JUMPTEXT, WC_Cemetery3Text
	bg_event 7,  7, BGEVENT_JUMPTEXT, WC_Cemetery3Text

	bg_event 7,  2, BGEVENT_JUMPTEXT, WC_Cemetery1Text
	bg_event 7,  3, BGEVENT_JUMPTEXT, WC_Cemetery1Text	

	bg_event 3,  1, BGEVENT_JUMPTEXT, WC_Cemetery0Text
	bg_event 6,  1, BGEVENT_JUMPTEXT, WC_Cemetery0Text	
	


	def_object_events
	object_event  4, 4, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CemeteryNPC1Text, -1
	object_event  5, 8, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CemeteryNPC2Text, -1
	object_event 4, 11, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CemeteryNPC3Text, EVENT_BEAT_ADRINNA_MOUNT_MORTAR

	object_const_def


CemeteryNPC1Text:
	text "Emperor Mejimi"
	line "has not visited"
	cont "in some time."
	done

CemeteryNPC2Text:
	text "When Emperor"
	line "Mejimi's grand-"
	cont "father died,"
	
	para "Ho-Oh graced us"
	line "with its presence"
	cont "at the funeral."
	
	para "A single feather"
	line "fell into the"
	cont "casket."
	
	para "When Mejimi was"
	line "born one year"
	cont "afterward,"
	
	para "We all noticed"
	line "that he looked"
	cont "striking similar."
	done
	

CemeteryNPC3Text:
	text "If Mejimi goes"
	line "through with his"
	cont "plans for self-"
	cont "exaltation,"
	
	para "I will need to"
	line "flee to Hisui,"
	
	para "because I won't"
	line "stand for such"
	cont "sacrilege."
	done
	
WC_Cemetery0Text:
	text "Glory to"
	line "Emperor Mejimi!"
	
	para "Builder of Tin"
	line "and Brass Towers"
	done

WC_Cemetery1Text:
	text "For Emperor"
	line "Ambrosia,"
	para "Father of "
	cont "Mejimi,"
	
	para "Withering as he"
	line "guided Johto"
	cont "through famine."
	done
	
WC_Cemetery2Text:
	text "For Emperor"
	line "Fabian,"
	para "Father of "
	line "Ambrosia,"
	
	para "Taught all how"
	line "to battle."
	done
	
WC_Cemetery3Text:
	text "For Emperor"
	line "Bronte,"
	para "Father of "
	line "Fabian,"
	
	para "Donated his herd"
	line "of Miltank to a"
	cont "ravaged region."	
	done
	
WC_Cemetery4Text:
	text "For Emperor"
	line "Mansour,"
	para "Father of "
	line "Bronte,"
	
	para "Wished us well, as"
	line "he brought clean"
	cont "water to all."
	done
	
WC_Cemetery5Text:
	text "For Emperor"
	line "Oscar,"
	para "Father of "
	line "Mansour,"
	
	para "Risked his life"
	line "defending against"
	cont "restless dragons."
	done

WC_Cemetery6Text:
	text "For Emperor"
	line "Leigh,"
	para "Father of "
	line "Oscar,"
	
	para "During an epi-"
	line "demic, tore the"
	para "ornamental trees"
	line "for medicinal"
	cont "berries."
	done
	
WC_Cemetery7Text:
	text "For Emperor"
	line "Faron,"
	para "Father of "
	line "Leigh,"
	
	para "Fostered relat-"
	line "ionships near"
	cont "and far."
	done
	
WC_Cemetery8Text:
	text "For Emperor"
	line "Fiora,"
	para "Father of "
	line "Faron,"
	
	para "His voice made"
	line "the Kimono Girls"
	cont "dance heavenly."
	done
