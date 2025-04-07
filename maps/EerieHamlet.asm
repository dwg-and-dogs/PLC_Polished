EerieHamlet_MapScriptHeader: 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_NEWMAP, EerieHamletFlyPoint

	def_warp_events
	warp_event 13, 7, REBELS_REDOUBT_1F, 1
	warp_event 9, 3, EMPIRES_EXTENT_EERIE_HAMLET_GATE, 2
	warp_event 5, 13, EERIE_HAMLET_STOCKROOM, 1
	warp_event 15, 13, EERIE_HAMLET_DORMS, 1


	def_coord_events


	def_bg_events
	bg_event  4,  6, BGEVENT_JUMPTEXT, HamletText
	bg_event 14,  8, BGEVENT_JUMPTEXT, RedoubtSignText
	bg_event  3, 13, BGEVENT_JUMPTEXT, HamletStockroomText

	def_object_events
	object_event  6,  8, SPRITE_ENGINEER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EerieHamletHoneyScript, -1
	object_event  1, 6, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, 0, EerieHamletRoadblockText1, EVENT_BEAT_AMOS
	object_event  1, 7, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_UP, 0, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, 0, EerieHamletRoadblockText2, EVENT_BEAT_AMOS

	object_event 12, 9, SPRITE_GRANNY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, 0, EerieHamletNPC3, -1
	object_event 10, 14, SPRITE_ACE_TRAINER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, 0, EerieHamletNPC4, -1

	object_const_def


EerieHamletFlyPoint:
	setflag ENGINE_FLYPOINT_EERIE_HAMLET
	endcallback

EerieHamletNPC3:
	text "The brigaders all"
	line "find this place"
	cont "a bit eerie."
	done

EerieHamletNPC4:
	text "Not many venture"
	line "this far East."
	
	para "The training- I"
	line "mean, temple is"
	para "not even open"
	line "to outsiders."
	
	para "Further east, the"
	line "villages are even"
	cont "more reclusive."
	done

HamletText:
	text "Eastern Hamlet"
	done

RedoubtSignText:
	text "Hamlet Temple"
	line "No outsiders"
	cont "allowed"
	done

HamletStockroomText:	
	text "Hamlet Stockroom"
	done

EerieHamletRoadblockText1:
	text "The compasses are"
	line "fine - we need to"
	cont "stick to their"
	cont "North!"
	
	para "How could they be"
	line "shifting?"
	done

EerieHamletRoadblockText2:
	text "The compasses are"
	line "shifting! My rec-"
	cont "ords show that"
	
	para "true north keeps"
	line "shifting every "
	para "time we go deeper"
	line "into the mine."
	done


EerieHamletHoneyScript:
	faceplayer
	opentext	
	writetext NeedAFossilText
	waitbutton
	checkitem OLD_AMBER
	iffalse_jumpopenedtext Text_NoFossil
	writetext Text_FossilQuestion ;;
	yesorno
	iffalse_jumpopenedtext Text_NoFossil
	takeitem OLD_AMBER
	verbosegiveitem SWEET_HONEY
	iffalse_endtext
	jumpopenedtext GiveSweetHoneyText 

NeedAFossilText: 
	text "Cripes, Adrinna"
	line "will be so mad"
	cont "at me. I should"
	cont "be digging at the"
	
	para "mine, but I just"
	line "need one more pot"
	cont "of honey tea."
	
	para "If I had a little"
	line "artifact from the"
	cont "ground, that'd"
	cont "show that I was"
	cont "working hard,"
	
	para "and get Adrinna"
	line "off my back."
	done

Text_FossilQuestion:
	text "Hey, that fossil,"
	line "did you dig it?"
	
	para "I would give you"
	line "some Sweet Honey"
	cont "for it."
	done

	
GiveSweetHoneyText: 
	text "Thanks, this"
	line "fossil will prove"
	cont "I was working."

	para "This honey is so"
	line "sweet, it'll give"
	cont "you the energy"
	
	para "you need to fin-"
	line "ish your work!"
	done

Text_NoFossil:
	text "Uff, back to"
	line "work for me."
	done
