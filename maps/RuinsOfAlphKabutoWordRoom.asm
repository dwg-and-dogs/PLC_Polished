RuinsOfAlphKabutoWordRoom_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 16, 12, RUINS_OF_ALPH_KABUTO_CHAMBER, 3
	warp_event 17, 12, RUINS_OF_ALPH_KABUTO_CHAMBER, 3
	warp_event 2, 0, RUINS_OF_ALPH_KABUTO_ITEM_ROOM, 1
	warp_event 3, 0, RUINS_OF_ALPH_KABUTO_ITEM_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 16,  8, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KabutoWordKimonoGirlScript, EVENT_SET_DVS_1
	

	object_const_def
	const KABUTO_WORD_ROOM_KIMONO_GIRL
		
KabutoWordKimonoGirlScript:
	faceplayer
	opentext
	checkevent EVENT_SET_DVS_1
	iftrue_jumptext GreatnessLiesWithinText 
	checkevent EVENT_BEAT_KROMA
	iftrue .SettingDVsOptions
	writetext KromaExplainsHiddenPowerText
	waitbutton
	closetext	
	winlosstext KromaBattleText, KromaBattleText 
	setlasttalked KABUTO_WORD_ROOM_KIMONO_GIRL
	loadtrainer KIMONO_GIRL_1, KROMA
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KROMA
.SettingDVsOptions:
	opentext
	writetext WhatPotentialText
	promptbutton
	loadmenu .PhysicalOrSpecialMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .PhysicalDVSettingMenus
	ifequal 2, .SpecialDVSettingMenus
	ifequal 3, .MaximumDVSetting
	jumptext DV_Setting_CancelText 

.MaximumDVSetting:
	setevent EVENT_SET_DVS_1
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
	jumptext DV_Setting_CancelText 

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
	jumptext DV_Setting_CancelText

.GiveFightingDVs:; 	db $ff, $ee, $ee
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ee
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveFlyingDVs: ; DVS_HP_FLYING   EQUS "$ff, $fe, $ee"
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ee
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GivePoisonDVs: ; DVS_HP_POISON   EQUS "$ff, $ef, $ee"
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ee
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveGroundDVs: ; DVS_HP_GROUND   EQUS "$ff, $ff, $ee"
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ee
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveRockDVs: ; DVS_HP_ROCK     EQUS "$ff, $ee, $fe"
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $fe
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveBugDVs: ; DVS_HP_BUG      EQUS "$ff, $fe, $fe"
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $fe
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveGhostDVs: ; DVS_HP_GHOST    EQUS "$ff, $ef, $fe"
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $fe
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveSteelDVs: ;DVS_HP_STEEL    EQUS "$ff, $ff, $fe"
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $fe
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveFireDVs: ; EQUS "$ff, $ee, $ef"
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ef
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveWaterDVs:;DVS_HP_WATER    EQUS "$ff, $fe, $ef"
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ef
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveGrassDVs:;DVS_HP_GRASS    EQUS "$ff, $ef, $ef"
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ef
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveElectricDVs:;DVS_HP_ELECTRIC EQUS "$ff, $ff, $ef"
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ef
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GivePsychicDVs:;DVS_HP_PSYCHIC  EQUS "$ff, $ee, $ff"
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ff
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveIceDVs:;DVS_HP_ICE      EQUS "$ff, $fe, $ff"
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ff
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveDragonDVs:;DVS_HP_DRAGON   EQUS "$ff, $ef, $ff"
	setevent EVENT_SET_DVS_1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ff
	writetext GaveDVsText
	waitbutton
	closetext
	end

.GiveDarkDVs:;DVS_HP_DARK     EQUS "$fe, $ff, $ff"
	setevent EVENT_SET_DVS_1
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

KromaExplainsHiddenPowerText:
	text "Congratulations"
	line "to discover this"
	cont "chamber."
	
	para "Some would rather"
	line "turn away from"
	para "history than see"
	line "what lies within."
	
	para "You contain mult-"
	line "itudes."
	
	para "Good and evil,"
	line "day and night,"
	cont "past and future,"
	
	para "It's up to you to"
	line "decide what to"
	cont "express."
	
	para "#mon can be"
	line "made sensitive to"
	para "parts of their"
	line "lineages."
	
	para "Confused? I think"
	line "it's best if I"
	para "demonstrate with"
	line "a battle."
	done

KromaBattleText:
	text "Were you watching"
	line "closely?"
	done

WhatPotentialText:
	text "What potential"
	line "would you like to"
	para "express within"
	line "the first #mon"
	cont "in your party?"
	
	para "Reorganize your"
	line "party, if you"
	cont "need to."
	done

GaveMaximumDVsText:
	text "Intrinsic power"
	line "maximized!"
	done

GaveDVsText:
	text "Your #mon is"
	line "now expressing"
	para "that part of its"
	line "lineage."
	done

DV_Setting_CancelText:
	text "Greatness lies"
	line "within - if you"
	para "have the courage"
	line "to show it!"
	done

GreatnessLiesWithinText: 
	text "Greatness lies"
	line "within!"
	
	para "I'll tell my five"
	line "sisters to be on"
	para "the lookout for"
	line "you."
	done	
	
