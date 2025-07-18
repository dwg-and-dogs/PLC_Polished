WhirlIsland1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  3, WHIRL_ISLAND_NW, 2 ; ok 
	warp_event 15, 13, WHIRL_ISLAND_NE, 2 ; ok
	warp_event  7, 23, WHIRL_ISLAND_SW, 2 ; ok 
	warp_event 23, 23, WHIRL_ISLAND_SE, 2 ; ok 
	warp_event 21, 11, WHIRL_ISLAND_B1F, 1 ; 5
	warp_event 11,  5, WHIRL_ISLAND_B1F, 2 ; 6 
	warp_event 25, 13, WHIRL_ISLAND_B1F, 3 ; 7 
	warp_event  5, 19, WHIRL_ISLAND_B1F, 4 ; 8 

	def_coord_events

	def_bg_events
	bg_event 26, 24, BGEVENT_ITEM + GEODE, EVENT_WHIRL_ISLAND_B1F_HIDDEN_RARE_CANDY
	bg_event  6, 12, BGEVENT_ITEM + ULTRA_BALL, EVENT_WHIRL_ISLAND_B1F_HIDDEN_ULTRA_BALL
	bg_event 22,  6, BGEVENT_ITEM + FULL_RESTORE, EVENT_WHIRL_ISLAND_B1F_HIDDEN_FULL_RESTORE

	def_object_events
	itemball_event 15, 18, FULL_RESTORE, 1, EVENT_WHIRL_ISLAND_B1F_FULL_RESTORE
	itemball_event 21, 26, CARBOS, 1, EVENT_WHIRL_ISLAND_B1F_CARBOS
	itemball_event 13,  5, CALCIUM, 1, EVENT_WHIRL_ISLAND_B1F_CALCIUM
	itemball_event 12, 23, BIG_NUGGET, 1, EVENT_WHIRL_ISLAND_B1F_BIG_NUGGET
	itemball_event 15, 16, ESCAPE_ROPE, 1, EVENT_WHIRL_ISLAND_B1F_ESCAPE_ROPE
;	strengthboulder_event 23, 26
	object_event 16, 3, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, WhirlIsland1FKimonoGirlScript, EVENT_SET_DVS_4

WhirlIsland1FKimonoGirlScript: 
	faceplayer
	opentext
	checkevent EVENT_SET_DVS_4
	iftrue_jumptext WhirlIsland1FGreatnessLiesWithinText 
	opentext
	writetext WhirlIsland1FWhatPotentialText
	promptbutton
	loadmenu .PhysicalOrSpecialMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .PhysicalDVSettingMenus
	ifequal 2, .SpecialDVSettingMenus
	ifequal 3, .MaximumDVSetting
	jumptext WhirlIsland1FDV_Setting_CancelText 

.MaximumDVSetting:
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	writetext GaveMaximumDVsText
	waitbutton
	closetext
	end

.PhysicalDVSettingMenus:	
	loadmenu .PhysicalDVsMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GiveFightingDVs
	ifequal 2, .GiveFlyingDVs
	ifequal 3, .GivePoisonDVs
	ifequal 4, .GiveGroundDVs
	ifequal 5, .GiveRockDVs
	ifequal 6, .GiveBugDVs
	ifequal 7, .GiveGhostDVs
	ifequal 8, .GiveSteelDVs
	jumptext WhirlIsland1FDV_Setting_CancelText 

.SpecialDVSettingMenus:	
	loadmenu .SpecialDVsMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GiveFireDVs
	ifequal 2, .GiveWaterDVs
	ifequal 3, .GiveGrassDVs
	ifequal 4, .GiveElectricDVs
	ifequal 5, .GivePsychicDVs
	ifequal 6, .GiveIceDVs
	ifequal 7, .GiveDragonDVs
	ifequal 8, .GiveDarkDVs
	jumptext WhirlIsland1FDV_Setting_CancelText

.GiveFightingDVs:; 	db $ff, $ee, $ee
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ee
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveFlyingDVs: ; DVS_HP_FLYING   EQUS "$ff, $fe, $ee"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ee
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GivePoisonDVs: ; DVS_HP_POISON   EQUS "$ff, $ef, $ee"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ee
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveGroundDVs: ; DVS_HP_GROUND   EQUS "$ff, $ff, $ee"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ee
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveRockDVs: ; DVS_HP_ROCK     EQUS "$ff, $ee, $fe"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $fe
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveBugDVs: ; DVS_HP_BUG      EQUS "$ff, $fe, $fe"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $fe
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveGhostDVs: ; DVS_HP_GHOST    EQUS "$ff, $ef, $fe"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $fe
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveSteelDVs: ;DVS_HP_STEEL    EQUS "$ff, $ff, $fe"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $fe
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveFireDVs: ; EQUS "$ff, $ee, $ef"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ef
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveWaterDVs:;DVS_HP_WATER    EQUS "$ff, $fe, $ef"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ef
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveGrassDVs:;DVS_HP_GRASS    EQUS "$ff, $ef, $ef"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ef
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveElectricDVs:;DVS_HP_ELECTRIC EQUS "$ff, $ff, $ef"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ef
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GivePsychicDVs:;DVS_HP_PSYCHIC  EQUS "$ff, $ee, $ff"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ff
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveIceDVs:;DVS_HP_ICE      EQUS "$ff, $fe, $ff"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ff
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveDragonDVs:;DVS_HP_DRAGON   EQUS "$ff, $ef, $ff"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ff
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveDarkDVs:;DVS_HP_DARK     EQUS "$fe, $ff, $ff"
	setevent EVENT_SET_DVS_4
	loadmem wPartyMon1DVs+0, $fe
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	writetext GaveDVsText
	waitbutton
	closetext
	end

.PhysicalOrSpecialMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 9, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 10 ;todo proper size
	dw .PhysicalOrSpecialMenuData
	db 1 ; default option

.PhysicalDVsMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1  ;todo proper size
;	menu_coords 0, 0, 15, TEXTBOX_Y - 1 ; alternate syntax
	dw .PhysicalMenuData
	db 1 ; default option

.PhysicalOrSpecialMenuData:
	db STATICMENU_CURSOR | STATICMENU_WRAP
	db 3 ; items
	db "Physical@"
	db "Special@"
	db "Maximum@"
	db "Cancel@"

.PhysicalMenuData:
	db STATICMENU_CURSOR | STATICMENU_WRAP
	db 8 ; items
	db "FGT@"
	db "FLY@"
	db "PSN@"
	db "GND@"
	db "RCK@"
	db "BUG@"
	db "GHT@"
	db "STL@"
	
.SpecialDVsMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1  ;todo proper size 
	dw .SpecialMenuData
	db 1 ; default option

.SpecialMenuData:
	db STATICMENU_CURSOR | STATICMENU_WRAP ; flags
	db 8 ; items
	db "FIR@"
	db "WTR@"
	db "GRS@"
	db "ELE@"
	db "PSY@"
	db "ICE@"
	db "DGN@"
	db "DRK@"

WhirlIsland1FWhatPotentialText:
	text "How do we break"
	line "free of self-"
	para "defeating cycles,"
	line "our whirlpools of"
	cont "doubt?"
	
	para "Consider that you"
	line "are not alone!"

	para "The people around"
	line "you can guide you"
	para "through your dark"
	line "moments."
	
	para "#mon can do"
	line "the same - each"
	para "one contains"
	line "multitudes."
	
	para "What potential"
	line "would you like to"
	para "express within"
	line "the first #mon"
	cont "in your party?"
	
	para "Reorganize your"
	line "party, if you"
	cont "need to."
	done

WhirlIsland1FGaveMaximumDVsText:
	text "Intrinsic power"
	line "maximized!"
	done

WhirlIsland1FGaveDVsText:
	text "Your #mon is"
	line "now expressing"
	para "that part of its"
	line "lineage."
	done

WhirlIsland1FDV_Setting_CancelText:
	text "Greatness lies"
	line "within - if you"
	para "have the courage"
	line "to show it!"
	done

WhirlIsland1FGreatnessLiesWithinText: ; todo place five others 
	text "Greatness lies"
	line "within!"
	done	
	