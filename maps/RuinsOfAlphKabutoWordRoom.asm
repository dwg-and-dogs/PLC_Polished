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
	iftrue_jumptext AlphRuinsGreatnessLiesWithinText 
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
	; Store the original DVs in temporary memory locations
	readmem wPartyMon1DVs+0     ; Reads value into hScriptVar
	writemem wOriginalDV1       ; Writes hScriptVar to wOriginalDV1
	readmem wPartyMon1DVs+1     ; Reads value into hScriptVar
	writemem wOriginalDV2       ; Writes hScriptVar to wOriginalDV1
	readmem wPartyMon1DVs+2     ; Reads value into hScriptVar
	writemem wOriginalDV3       ; Writes hScriptVar to wOriginalDV1
	opentext
	checkevent EVENT_SET_DVS_1
	iftrue_jumptext AlphRuinsGreatnessLiesWithinText 
	writetext AlphRuinsWhatPotentialText
	promptbutton
	loadmenu .PhysicalOrSpecialMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .PhysicalDVSettingMenus
	ifequal 2, .SpecialDVSettingMenus
	ifequal 3, .MaximumDVSetting
	jumptext AlphRuinsDV_Setting_CancelText 

.NoChange:
	jumptext AlphRuinsDV_Setting_CancelText

.EggChange:
	jumptext AlphRuinsDV_Setting_EggText

.PhysicalOrSpecialMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 9, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 10 
	dw .PhysicalOrSpecialMenuData
	db 1 ; default option

.PhysicalDVsMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
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
	menu_coords 13, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw .SpecialMenuData
	db 1 ; default option

.SpecialMenuData:
	db STATICMENU_CURSOR | STATICMENU_WRAP
	db 8 ; items
	db "FIR@"
	db "WTR@"
	db "GRS@"
	db "ELE@"
	db "PSY@"
	db "ICE@"
	db "DGN@"
	db "DRK@"

.MaximumDVSetting:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	writetext GaveMaximumDVsText_AlphRuins
	waitbutton
	closetext
	; Show the pokemon with new DVs
	readmem wPartyMon1Species
	pokepic 0
	cry 0
	waitsfx
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	; Player confirms - make it permanent
	setevent EVENT_SET_DVS_1
	writetext DVChangeConfirmedText
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
	jumptext AlphRuinsDV_Setting_CancelText 

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
	jumptext AlphRuinsDV_Setting_CancelText

.GiveFightingDVs:	; todo: Make all of the other .Give__DVs: follow this format. Keep the original values after loadmem. FOr instance, flying should still have ff, ef, ee
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ee
; begin section to copy throughout 
	opentext
	writetext GaveDVsText_AlphRuins_Fighting ; make new writetxt for ..._Flying, _Dark, etc 
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges
; end 

.GiveFlyingDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_AlphRuins_Flying
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GivePoisonDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_AlphRuins_Poison
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGroundDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_AlphRuins_Ground
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveRockDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_AlphRuins_Rock
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveBugDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_AlphRuins_Bug
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGhostDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_AlphRuins_Ghost
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveSteelDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_AlphRuins_Steel
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveFireDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_AlphRuins_Fire
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveWaterDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_AlphRuins_Water
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGrassDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_AlphRuins_Grass
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveElectricDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_AlphRuins_Electric
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GivePsychicDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_AlphRuins_Psychic
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveIceDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_AlphRuins_Ice
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveDragonDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_AlphRuins_Dragon
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveDarkDVs:
	loadmem wPartyMon1DVs+0, $fe
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_AlphRuins_Dark
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_AlphRuins
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.ConfirmChanges:
	setevent EVENT_SET_DVS_1
	writetext DVChangeConfirmedText_AlphRuins
	waitbutton
	closetext
	end

.UndoChanges:
	; Store the original DVs in temporary memory locations
	readmem wOriginalDV1       ; Writes hScriptVar to wOriginalDV1
	writemem wPartyMon1DVs+0     ; Reads value into hScriptVar
	readmem wOriginalDV2       ; Writes hScriptVar to wOriginalDV1
	writemem wPartyMon1DVs+1     ; Reads value into hScriptVar
	readmem wOriginalDV3       ; Writes hScriptVar to wOriginalDV1
	writemem wPartyMon1DVs+2     ; Reads value into hScriptVar
	writetext DVChangeUndoneText_AlphRuins
	waitbutton
	closetext
	end

GaveMaximumDVsText_AlphRuins:
	text "Intrinsic power"
	line "maximized!"
	done

GaveDVsText_AlphRuins:
	text "DVs are set"
	done


GaveDVsText_AlphRuins_Fighting:
	text "Maximized DVs for"
	line "HP Fighting!"
	done

GaveDVsText_AlphRuins_Flying:
	text "Maximized DVs for"
	line "HP Flying!"
	done

GaveDVsText_AlphRuins_Poison:
	text "Maximized DVs for"
	line "HP Poison!"
	done

GaveDVsText_AlphRuins_Ground:
	text "Maximized DVs for"
	line "HP Ground!"
	done

GaveDVsText_AlphRuins_Rock:
	text "Maximized DVs for"
	line "HP Rock!"
	done

GaveDVsText_AlphRuins_Bug:
	text "Maximized DVs for"
	line "HP Bug!"
	done

GaveDVsText_AlphRuins_Ghost:
	text "Maximized DVs for"
	line "HP Ghost!"
	done

GaveDVsText_AlphRuins_Steel:
	text "Maximized DVs for"
	line "HP Steel!"
	done

GaveDVsText_AlphRuins_Fire:
	text "Maximized DVs for"
	line "HP Fire!"
	done

GaveDVsText_AlphRuins_Water:
	text "Maximized DVs for"
	line "HP Water!"
	done

GaveDVsText_AlphRuins_Grass:
	text "Maximized DVs for"
	line "HP Grass!"
	done

GaveDVsText_AlphRuins_Electric:
	text "Maximized DVs for"
	line "HP Electric!"
	done

GaveDVsText_AlphRuins_Psychic:
	text "Maximized DVs for"
	line "HP Psychic!"
	done

GaveDVsText_AlphRuins_Ice:
	text "Maximized DVs for"
	line "HP Ice!"
	done

GaveDVsText_AlphRuins_Dragon:
	text "Maximized DVs for"
	line "HP Dragon!"
	done

GaveDVsText_AlphRuins_Dark:
	text "Maximized DVs for"
	line "HP Dark!"
	done

ConfirmDVChangeText_AlphRuins:
	text "This is how your"
	line "#mon will"
	cont "appear."
	
	para "Do you wish to"
	line "make this change"
	cont "permanent?"
	done

DVChangeConfirmedText_AlphRuins:
	text "The transformation"
	line "is complete!"
	
	para "Your #mon has"
	line "unlocked its true"
	cont "potential!"
	done

DVChangeUndoneText_AlphRuins:
	text "Your #mon has"
	line "returned to its"
	cont "original form."
	
	para "The potential"
	line "remains dormant"
	cont "for now."
	done

AlphRuinsDV_Setting_CancelText:
	text "Greatness lies"
	line "within - if you"
	para "have the courage"
	line "to show it!"
	done

AlphRuinsGreatnessLiesWithinText:
	text "Greatness lies"
	line "within!"
	
	para "Be on the lookout"
	line "for my 5 sisters."
	done	
	


AlphRuinsDV_Setting_EggText:
	text "That's only an"
	line "egg! Give it time"
	cont "to grow."
	done

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

AlphRuinsWhatPotentialText:
	text "What potential"
	line "would you like to"
	para "express within"
	line "the first #mon"
	cont "in your party?"
	
	para "Reorganize your"
	line "party, if you"
	cont "need to."
	done
