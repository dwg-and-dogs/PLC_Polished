AnarresTown_MapScriptHeader: 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_NEWMAP, AnarresTownFlypointCallback

	def_warp_events
	warp_event  4, 10, ANARRES_HOLT_GATE, 1
	warp_event  4, 11, ANARRES_HOLT_GATE, 2
	warp_event  9,  3, ANARRES_HOUSE, 1
	warp_event 21, 15, ANARRES_CHARCOAL_KILN, 1
	warp_event 11, 13, ANARRES_TOWER_1F, 1
	warp_event 17, 9, ANARRES_DORMS, 1
	warp_event 21, 5, ANARRES_STOCKROOM, 1
	warp_event 30, 9, MISTY_BASIN, 1


	def_coord_events


	def_bg_events
	bg_event 27,  5, BGEVENT_ITEM + ETHER, EVENT_ANARRES_ETHER
	bg_event 28, 10, BGEVENT_ITEM + PP_UP, EVENT_ANARRES_PPUP
	bg_event 13, 15, BGEVENT_JUMPTEXT, AnarresTowerSignText
	bg_event 22,  6, BGEVENT_JUMPTEXT, AnarresStockroomSignText
	bg_event 16, 10, BGEVENT_JUMPTEXT, AnarresDormsSignText

	def_object_events
	object_event  7,  9, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, 		OBJECTTYPE_SCRIPT, 0, AnarresNPC1Script, -1
	object_event 17, 14, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, 		OBJECTTYPE_SCRIPT, 0, AnarresNPC2Script, -1
	object_event 12,  6, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, 		OBJECTTYPE_SCRIPT, 0, AnarresNPC3Script, -1
	object_event 15, 13, SPRITE_SAGE, 		SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, 		OBJECTTYPE_COMMAND, jumptextfaceplayer, AnarresNPC4Text, -1
; blocker
	object_event 11, 15, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, 	OBJECTTYPE_COMMAND, jumptextfaceplayer, AnarresNPC5Text, EVENT_BEAT_TAMMY
; others 
	fruittree_event  6,  3, FRUITTREE_AZALEA_TOWN, PNK_APRICORN, PAL_NPC_RED

	object_const_def

AnarresTownFlypointCallback:
	setflag ENGINE_FLYPOINT_ANARRES_TOWN
	endcallback

AnarresNPC1Script:
	checkevent EVENT_BEAT_HOLLIS
	iftrue_jumptextfaceplayer .Text1
	jumpthistextfaceplayer

	text "Elder Hollis"
	line "controls how many"
	cont "trees are cut."
	done

.Text1:
	text "I'm going to ask"
	line "Ursula how to do"
	para "the Headbutt to"
	line "shake off Pineco!"
	done

AnarresNPC2Script:
	checkevent EVENT_BEAT_HOLLIS
	iftrue_jumptextfaceplayer .Text2
	jumpthistextfaceplayer

	text "We work from"
	line "sunrise until"
	para "noon, when it"
	line "gets too hot."
	done

.Text2:
	text "I wonder why the"
	line "Pineco predators"
	para "weren't keeping"
	line "them in check."
	done
	

AnarresNPC3Script:
	jumpthistextfaceplayer

	text "The new guy from"
	line "the coast asked"
	cont "me for dinner."
	
	para "But his breath"
	line "smells so bad!"
	
	para "I would not"
	line "have an appetite."
	done



AnarresNPC4Text:
	text "I'm nervous - the"
	line "town north of us"
	para "is being occupied"
	line "by the Consul."
	
	para "It's so strange,"
	line "Johto's Consuls"
	para "have never done"
	line "anything like it."
	done

AnarresNPC5Text:
	text "Hollis closed"
	line "the temple."
	
	para "He shouldn't be"
	line "bothered while he"
	para "deliberates how"
	line "to address the"
	cont "Pineco situation."
	done 

AnarresTowerSignText:
	text "Anarres Tower"
	line "honors all types"
	cont "of #mon"
	done

AnarresStockroomSignText:
	text "Anarres Stockroom"
	done

AnarresDormsSignText:
	text "Anarres Dorms"
	done	
