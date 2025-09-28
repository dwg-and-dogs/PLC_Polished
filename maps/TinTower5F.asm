TinTower5F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9, 15, TIN_TOWER_6F, 2
	warp_event  0,  4, TIN_TOWER_4F, 1
	warp_event  0, 14, TIN_TOWER_4F, 3
	warp_event 15, 15, TIN_TOWER_4F, 4

	def_coord_events

	def_bg_events
	bg_event 14, 14, BGEVENT_ITEM + FULL_RESTORE, EVENT_TIN_TOWER_5F_HIDDEN_FULL_RESTORE
	bg_event  1, 15, BGEVENT_ITEM + CARBOS, EVENT_TIN_TOWER_5F_HIDDEN_CARBOS

	def_object_events
	itemball_event  7,  9, HP_UP, 1, EVENT_TIN_TOWER_5F_RARE_CANDY
	object_event 11, 6, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TinTower5FKimonoGirlScript, EVENT_SET_DVS_5



TinTower5FKimonoGirlScript: 
	faceplayer
	; Store the original DVs in temporary memory locations
	readmem wPartyMon1DVs+0     ; Reads value into hScriptVar
	writemem wOriginalDV1       ; Writes hScriptVar to wOriginalDV1
	readmem wPartyMon1DVs+1     ; Reads value into hScriptVar
	writemem wOriginalDV2       ; Writes hScriptVar to wOriginalDV1
	readmem wPartyMon1DVs+2     ; Reads value into hScriptVar
	writemem wOriginalDV3       ; Writes hScriptVar to wOriginalDV1
	opentext
	checkevent EVENT_SET_DVS_5
	iftrue_jumptext TinTower5FGreatnessLiesWithinText 
	writetext TinTower5FWhatPotentialText
	promptbutton
	loadmenu .PhysicalOrSpecialMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .PhysicalDVSettingMenus
	ifequal 2, .SpecialDVSettingMenus
	ifequal 3, .MaximumDVSetting
	jumptext TinTower5FDV_Setting_CancelText 

.NoChange:
	jumptext TinTower5FDV_Setting_CancelText

.EggChange:
	jumptext TinTower5FDV_Setting_EggText

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
	writetext GaveMaximumDVsText_TT5F
	waitbutton
	closetext
	; Show the pokemon with new DVs
	readmem wPartyMon1Species
	pokepic 0
	pause 60
	cry 0
	waitsfx
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	; Player confirms - make it permanent
	setevent EVENT_SET_DVS_5
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
	jumptext TinTower5FDV_Setting_CancelText 

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
	jumptext TinTower5FDV_Setting_CancelText

.GiveFightingDVs:	; todo: Make all of the other .Give__DVs: follow this format. Keep the original values after loadmem. FOr instance, flying should still have ff, ef, ee
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ee
; begin section to copy throughout 
	opentext
	writetext GaveDVsText_TinTower_Fighting ; make new writetxt for ..._Flying, _Dark, etc 
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges
; end 

.GiveFlyingDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_TinTower_Flying
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GivePoisonDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_TinTower_Poison
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGroundDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_TinTower_Ground
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveRockDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_TinTower_Rock
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveBugDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_TinTower_Bug
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGhostDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_TinTower_Ghost
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveSteelDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_TinTower_Steel
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveFireDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_TinTower_Fire
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveWaterDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_TinTower_Water
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGrassDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_TinTower_Grass
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveElectricDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_TinTower_Electric
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GivePsychicDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_TinTower_Psychic
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveIceDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_TinTower_Ice
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveDragonDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_TinTower_Dragon
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic

	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveDarkDVs:
	loadmem wPartyMon1DVs+0, $fe
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_TinTower_Dark
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.ConfirmChanges:
	setevent EVENT_SET_DVS_5
	writetext DVChangeConfirmedText
	waitbutton
	closetext
	halloffame
	end

.UndoChanges:
	; Store the original DVs in temporary memory locations
	readmem wOriginalDV1       ; Writes hScriptVar to wOriginalDV1
	writemem wPartyMon1DVs+0     ; Reads value into hScriptVar
	readmem wOriginalDV2       ; Writes hScriptVar to wOriginalDV1
	writemem wPartyMon1DVs+1     ; Reads value into hScriptVar
	readmem wOriginalDV3       ; Writes hScriptVar to wOriginalDV1
	writemem wPartyMon1DVs+2     ; Reads value into hScriptVar
	writetext DVChangeUndoneText
	waitbutton
	closetext
	end

; Text strings
TinTower5FWhatPotentialText:
	text "A strong founda-"
	line "tion withstands"
	para "stress from any"
	line "angle."
	
	para "I know you have"
	line "cultivated many"
	cont "experiences."
	
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

GaveMaximumDVsText_TT5F:
	text "Intrinsic power"
	line "maximized!"
	done

GaveDVsText_TinTower:
	text "DVs are set"
	done


GaveDVsText_TinTower_Fighting:
	text "Maximized DVs for"
	line "HP Fighting!"
	done

GaveDVsText_TinTower_Flying:
	text "Maximized DVs for"
	line "HP Flying!"
	done

GaveDVsText_TinTower_Poison:
	text "Maximized DVs for"
	line "HP Poison!"
	done

GaveDVsText_TinTower_Ground:
	text "Maximized DVs for"
	line "HP Ground!"
	done

GaveDVsText_TinTower_Rock:
	text "Maximized DVs for"
	line "HP Rock!"
	done

GaveDVsText_TinTower_Bug:
	text "Maximized DVs for"
	line "HP Bug!"
	done

GaveDVsText_TinTower_Ghost:
	text "Maximized DVs for"
	line "HP Ghost!"
	done

GaveDVsText_TinTower_Steel:
	text "Maximized DVs for"
	line "HP Steel!"
	done

GaveDVsText_TinTower_Fire:
	text "Maximized DVs for"
	line "HP Fire!"
	done

GaveDVsText_TinTower_Water:
	text "Maximized DVs for"
	line "HP Water!"
	done

GaveDVsText_TinTower_Grass:
	text "Maximized DVs for"
	line "HP Grass!"
	done

GaveDVsText_TinTower_Electric:
	text "Maximized DVs for"
	line "HP Electric!"
	done

GaveDVsText_TinTower_Psychic:
	text "Maximized DVs for"
	line "HP Psychic!"
	done

GaveDVsText_TinTower_Ice:
	text "Maximized DVs for"
	line "HP Ice!"
	done

GaveDVsText_TinTower_Dragon:
	text "Maximized DVs for"
	line "HP Dragon!"
	done

GaveDVsText_TinTower_Dark:
	text "Maximized DVs for"
	line "HP Dark!"
	done

ConfirmDVChangeText:
	text "This is how your"
	line "#mon will"
	cont "appear."
	
	para "Do you wish to"
	line "make this change"
	cont "permanent?"
	done

DVChangeConfirmedText:
	text "The transformation"
	line "is complete!"
	
	para "Your #mon has"
	line "unlocked its true"
	cont "potential!"
	done

DVChangeUndoneText:
	text "Your #mon has"
	line "returned to its"
	cont "original form."
	
	para "The potential"
	line "remains dormant"
	cont "for now."
	done

TinTower5FDV_Setting_CancelText:
	text "Greatness lies"
	line "within - if you"
	para "have the courage"
	line "to show it!"
	done

TinTower5FGreatnessLiesWithinText:
	text "Greatness lies"
	line "within!"
	done

TinTower5FDV_Setting_EggText:
	text "That's only an"
	line "egg! Give it time"
	cont "to grow."
	done
