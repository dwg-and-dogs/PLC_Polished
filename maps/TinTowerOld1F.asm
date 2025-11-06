TinTowerOld1F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 7, 15, WESTERN_CAPITAL, 9
	warp_event 8, 15, WESTERN_CAPITAL, 9
	
	warp_event 9, 3, TIN_TOWER_OLD_2F, 1 ; ok 
;	warp_event 2, 12, TIN_TOWER_OLD_2F, 1
;	warp_event 2, 3, TIN_TOWER_OLD_2F, 2


	def_coord_events



	def_bg_events



	def_object_events
;	object_event  7,  11, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MasterBallScript, -1
	object_event 12,  7, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTowerOld1FNPC1Text, -1 ; done
	object_event 2, 2, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTowerOld1FNPC2Text, -1 ; done
	object_event 13, 2, SPRITE_GRANNY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTowerOld1FNPC3Text, -1 ; done

TinTowerOld1FNPC1Text:
	text "This tower was"
	line "modernized with"
	para "metals thanks to"
	line "Hisui crafters."
	done

TinTowerOld1FNPC2Text:
	text "The towers are a"
	line "veritable maze"
	para "from Vespera's"
	line "#mon powers."
	done

TinTowerOld1FNPC3Text:
	text "Vespera is the"
	line "chief priestess."
	
	para "She determines "
	line "who is worthy"
	para "to cross the"
	line "Capital's moat."
	done

