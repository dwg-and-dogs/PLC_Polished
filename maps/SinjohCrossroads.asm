SinjohCrossroads_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 13, 19, SINJOH_DORMS, 1
	warp_event 19, 11, SINJOH_STOCKROOM, 1
	warp_event 21, 17, SINJOH_ELDERS_HOUSE, 1
	warp_event 13, 5, GROTTOED_GLACIER_1F, 1
	warp_event 4, 7, WESTERN_GLACIER_1F, 1

	def_coord_events


	def_bg_events
	bg_event  18, 12, BGEVENT_JUMPTEXT, SinjohSign1TextStockroom
	bg_event  20, 18, BGEVENT_JUMPTEXT, SinjohSign2TextElder
	bg_event  12, 20, BGEVENT_JUMPTEXT, SinjohSign2TextDorms


	def_object_events
	object_event 12, 11, SPRITE_BRIGADER,		SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, 				OBJECTTYPE_SCRIPT, 0, SinjohBrigader1Script, -1
	object_event 14, 9, SPRITE_BRIGADER,		SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, 				OBJECTTYPE_SCRIPT, 0, SinjohBrigader2Script, -1
	object_event 10, 17, SPRITE_NINJA, 			SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptext, SinjohNinjaText, EVENT_BEAT_KANNA
	object_event 16, 16, SPRITE_AROMA_LADY, 	SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, SinjohNPC1Text, EVENT_BEAT_KANNA
	object_event 23, 12, SPRITE_HIKER, 			SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, SinjohNPC2Text, EVENT_BEAT_KANNA
	object_event 14, 6, SPRITE_SAGE, 			SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, SinjohNPC3Text, EVENT_BEAT_KANNA
	itemball_event 4, 1, ENERGY_ROOT, 1, EVENT_SINJOH_ITEM
	itemball_event  30, 20, CALCIUM, 1, EVENT_SINJOH_ITEM_2 
	itemball_event  33, 5, ZINC, 1, EVENT_SINJOH_ITEM_3


SinjohBrigader1Script:
	faceplayer
	checkevent EVENT_BEAT_KANNA
	iftrue_jumptext Brigader1Text1
	jumpthistext
	
	text "Haha! Her plan,"
	line "it worked!"
	
	para "We got a few His-"
	line "uians to join us!"
	done

Brigader1Text1:
	text "General Adrinna"
	line "has been in there"
	cont "so long."
	
	para "I hope she's OK."
	done

SinjohBrigader2Script:
	faceplayer
	checkevent EVENT_BEAT_KANNA
	iftrue_jumptext Brigader2Text1
	jumpthistext
	
	text "We didn't get all"
	line "The Hisuians to"
	cont "join forces."
	
	para "But enough did"
	line "that Kanna won't"
	para "try to mess with"
	line "us again."
	done

Brigader2Text1:
	text "It's nice to get"
	line "some fresh air."
	done

SinjohNinjaText:
	text "Shh..."
	
	para "I'm watching the"
	line "brigaders."
	done

SinjohNPC1Text:
	text "Why didn't the"
	line "Kimono girls come"
	cont "to Sinjoh?"
	done
	
SinjohNPC2Text:
	text "This is as far"
	line "away as Hisuian"
	cont "#mon will go."
	done
	
SinjohNPC3Text:
	text "Elder Kanna and"
	line "General Adrinna"
	
	para "are negotiating"
	line "inside."
	
	para "Please do not"
	line "interrupt."
	done
	

SinjohSign1TextStockroom:
	text "Sinjoh Stockroom"
	done
	
SinjohSign2TextDorms:
	text "Sinjoh Dorms"
	done
	
SinjohSign2TextElder:
	text "Sinjoh: Where"
	line "worlds collide"
	done
