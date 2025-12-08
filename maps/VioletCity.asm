VioletCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VioletCityFlyPoint

	def_warp_events
	warp_event  9, 21, VIOLET_MART, 2
	warp_event 18, 21, VIOLET_GYM, 1
	warp_event 30, 21, EARLS_POKEMON_ACADEMY, 1
	warp_event  3, 19, VIOLET_NICKNAME_SPEECH_HOUSE, 1
	warp_event 31, 29, VIOLET_POKECENTER_1F, 1
	warp_event 21, 33, VIOLET_ONIX_TRADE_HOUSE, 1
	warp_event 23,  5, SPROUT_TOWER_1F, 1
	warp_event 29, 17, EARLS_POKEMON_ACADEMY, 3
	warp_event 30, 17, EARLS_POKEMON_ACADEMY, 4
	warp_event 3, 2, VIOLET_CATACOMBS, 1 ; NOT ACCESSIBLE
	

	def_coord_events

	def_bg_events
	bg_event 24, 24, BGEVENT_JUMPTEXT, VioletCitySignText
	bg_event 15, 21, BGEVENT_JUMPTEXT, VioletGymSignText
	bg_event 25,  7, BGEVENT_JUMPTEXT, SproutTowerSignText
	bg_event 27, 21, BGEVENT_JUMPTEXT, EarlsPokemonAcademySignText
	bg_event 37, 18, BGEVENT_ITEM + NUGGET, EVENT_VIOLET_CITY_HIDDEN_HYPER_POTION
	bg_event 21, 13, BGEVENT_ITEM + NUGGET, EVENT_VIOLET_CITY_HIDDEN_POKE_BALL
	bg_event  1,  0, BGEVENT_JUMPTEXT, VioletTombstoneText
	bg_event  5,  0, BGEVENT_JUMPTEXT, VioletTombstoneText
	bg_event  3,  0, BGEVENT_READ, NoctowlTombstone


	def_object_events
	object_event 28, 32, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, 					OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletCityLassText, -1 
	object_event 26, 18, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WANDER, 2, 1, -1, 0, 0, 							OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletCityCooltrainerM1Text, -1 
	object_event 26, 18, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WANDER, 2, 1, -1, 0, 0, 							OBJECTTYPE_SCRIPT, 0, VioletCityCooltrainerFScript, -1
	object_event 17, 24, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, 						OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletCityGrampsText, -1 ;
	object_event  5, 22, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_PURPLE, 	OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletCityCooltrainerM2Text, -1 ;
	object_event 26, 20, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, 				OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletCityFisherText, -1 ;
	; road blocks 
	object_event 34, 30, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletCityImmigrationText, -1; ; ROUTE 31 
	object_event 34, 31, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletCityImmigrationText, -1; ; ROUTE 31
	object_event 23, 10, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletCityTowerBlockingText, EVENT_BEAT_FALKNER; 
	object_event 24, 10, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletCityTowerBlockingText, EVENT_BEAT_FALKNER; 	
	; others 
	fruittree_event 14, 33, FRUITTREE_VIOLET_CITY, PNK_APRICORN, PAL_NPC_RED ; 
	itemball_event 10,  6, PP_MAX, 1, EVENT_VIOLET_CITY_PP_UP
	itemball_event 35, 12, CALCIUM, 1, EVENT_VIOLET_CITY_RARE_CANDY
	object_event 1, 1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, VioletKimonoGirlScript, EVENT_SET_DVS_3


VioletCityFlyPoint:
	setflag ENGINE_FLYPOINT_VIOLET
	endcallback

VioletCityLassText:
	text "The drought's so"
	line "bad, Bellsprout"
	para "roots couldn't"
	line "hold the tower!"
	para "Thank goodness"
	line "it was renovated."
	done

VioletCityCooltrainerM1Text:
	text "People think"
	line "Falkner's self-"
	para "made, but he"
	line "started with his"
	cont "dad's #mon."
	done

VioletCityCooltrainerFScript:
	checkevent EVENT_BEAT_FALKNER
	iftrue_jumptextfaceplayer .Text1
	jumpthistextfaceplayer

	text "They want Bronz-"
	line "ong atop the tower"
	cont "for a rain dance."
	done

.Text1: 
	text "I'm kinda sad that"
	line "there won't be a"
	para "Bronzong. I've"
	line "always admired"
	cont "belltowers."
	done 


VioletCityGrampsText:
	text "Falkner pushed"
	line "out the sages to"
	para "build his weather"
	line "tower."
	done

VioletCityFisherText:
	text "Elders lost their"
	line "tower, but keep"
	cont "their duty."
	para "They hold tight"
	line "to tradition,"
	cont "tower or not."
	done

VioletCityCooltrainerM2Text:
	text "Falkner's been"
	line "trying to fix the"
	para "drought forever."
	line "He raised alarm"
	para "long before it"
	line "was mainstream."
	done

VioletCitySignText:
	text "Violet City"
	line "Conserve Water!"
	done

VioletGymSignText:
	text "Violet City"
	line "#mon Gym"

	para "Closed until"
	line "further notice"
	done

SproutTowerSignText:
	text "Violet Weather"
	line "Institute"
	done

EarlsPokemonAcademySignText:
	text "Sprout Tower"
	line "Passageway"
	
	para "Manged by"
	line "Elder Li"
	done


VioletCityImmigrationText:
	text "Eastern Johto is"
	line "on its own water"
	cont "management plan."
	
	para "Mt Silver belongs"
	line "to Dragons!"
	done

VioletCityTowerBlockingText:
	text "Sprout Tower is"
	line "only accessible"
	para "with Elder Li's"
	line "blessing."
	done

VioletTombstoneText:
	text "The tombstone has"
	line "an inscription:"
	
	para "A shadow outside"
	line "your window,"
	
	para "Curious claws"
	line "test for echoes,"
	
	para "A faithful guide"
	line "to the other side"
	
	para "For if you lived"
	line "an honest life."
	
	para "Carries only four"
	line "karat souls, it"
	
	para "NOCS"
	line "FOR "
	cont "YOUR"
	cont "TOLL"
	done

NoctowlTombstone:
	opentext
	writetext AskToVentureText
	yesorno
	iffalse_jumpopenedtext NoVentureText
	writetext VenturingText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp VIOLET_CATACOMBS,  3,  26
	end

AskToVentureText:
	text "Oh? There's a hole"
	line "behind this"
	cont "tombstone."
	
	para "Venture inside?"
	done

NoVentureText:
	text "Who would do such"
	line "a thing?"
	done

VenturingText:
	text "Who wouldn't?"
	done

VioletKimonoGirlScript: 
	faceplayer
	; Store the original DVs in temporary memory locations
	readmem wPartyMon1DVs+0     ; Reads value into hScriptVar
	writemem wOriginalDV1       ; Writes hScriptVar to wOriginalDV1
	readmem wPartyMon1DVs+1     ; Reads value into hScriptVar
	writemem wOriginalDV2       ; Writes hScriptVar to wOriginalDV1
	readmem wPartyMon1DVs+2     ; Reads value into hScriptVar
	writemem wOriginalDV3       ; Writes hScriptVar to wOriginalDV1
	opentext
	checkevent EVENT_SET_DVS_3
	iftrue_jumptext VioletCityGreatnessLiesWithinText 
	writetext VioletCityWhatPotentialText
	promptbutton
	loadmenu .PhysicalOrSpecialMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .PhysicalDVSettingMenus
	ifequal 2, .SpecialDVSettingMenus
	ifequal 3, .MaximumDVSetting
	jumptext VioletCityDV_Setting_CancelText 

.NoChange:
	jumptext VioletCityDV_Setting_CancelText

.EggChange:
	jumptext VioletCityDV_Setting_EggText

.PhysicalOrSpecialMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 9, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 9 
	dw .PhysicalOrSpecialMenuData
	db 1 ; default option

.PhysicalDVsMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw .PhysicalMenuData
	db 1 ; default option

.PhysicalOrSpecialMenuData:
	db STATICMENU_CURSOR | STATICMENU_WRAP
	db 4 ; items
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
	writetext GaveMaximumDVsText_VioletCity
	waitbutton
	closetext
	; Show the pokemon with new DVs
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	; Player confirms - make it permanent
	setevent EVENT_SET_DVS_3
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
	jumptext VioletCityDV_Setting_CancelText 

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
	jumptext VioletCityDV_Setting_CancelText

.GiveFightingDVs:	; todo: Make all of the other .Give__DVs: follow this format. Keep the original values after loadmem. FOr instance, flying should still have ff, ef, ee
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ee
; begin section to copy throughout 
	opentext
	writetext GaveDVsText_VioletCity_Fighting ; make new writetxt for ..._Flying, _Dark, etc 
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges
; end 

.GiveFlyingDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_VioletCity_Flying
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GivePoisonDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_VioletCity_Poison
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGroundDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_VioletCity_Ground
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveRockDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_VioletCity_Rock
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveBugDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_VioletCity_Bug
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGhostDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_VioletCity_Ghost
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveSteelDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_VioletCity_Steel
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveFireDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_VioletCity_Fire
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveWaterDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_VioletCity_Water
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGrassDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_VioletCity_Grass
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveElectricDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_VioletCity_Electric
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GivePsychicDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_VioletCity_Psychic
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveIceDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_VioletCity_Ice
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveDragonDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_VioletCity_Dragon
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveDarkDVs:
	loadmem wPartyMon1DVs+0, $fe
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_VioletCity_Dark
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
	writetext ConfirmDVChangeText_VioletCity
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.ConfirmChanges:
	setevent EVENT_SET_DVS_3
	writetext DVChangeConfirmedText_VioletCity
	waitbutton
	closetext
	end

.UndoChanges:
;	writetext DebugStoringText
;	waitbutton
	; Store the original DVs in temporary memory locations
	readmem wOriginalDV1       ; Writes hScriptVar to wOriginalDV1
	writemem wPartyMon1DVs+0     ; Reads value into hScriptVar
	readmem wOriginalDV2       ; Writes hScriptVar to wOriginalDV1
	writemem wPartyMon1DVs+1     ; Reads value into hScriptVar
	readmem wOriginalDV3       ; Writes hScriptVar to wOriginalDV1
	writemem wPartyMon1DVs+2     ; Reads value into hScriptVar
	writetext DVChangeUndoneText_VioletCity
	waitbutton
	closetext
	end

GaveMaximumDVsText_VioletCity:
	text "Intrinsic power"
	line "maximized!"
	done

GaveDVsText_VioletCity:
	text "DVs are set"
	done


GaveDVsText_VioletCity_Fighting:
	text "Maximized DVs for"
	line "HP Fighting!"
	done

GaveDVsText_VioletCity_Flying:
	text "Maximized DVs for"
	line "HP Flying!"
	done

GaveDVsText_VioletCity_Poison:
	text "Maximized DVs for"
	line "HP Poison!"
	done

GaveDVsText_VioletCity_Ground:
	text "Maximized DVs for"
	line "HP Ground!"
	done

GaveDVsText_VioletCity_Rock:
	text "Maximized DVs for"
	line "HP Rock!"
	done

GaveDVsText_VioletCity_Bug:
	text "Maximized DVs for"
	line "HP Bug!"
	done

GaveDVsText_VioletCity_Ghost:
	text "Maximized DVs for"
	line "HP Ghost!"
	done

GaveDVsText_VioletCity_Steel:
	text "Maximized DVs for"
	line "HP Steel!"
	done

GaveDVsText_VioletCity_Fire:
	text "Maximized DVs for"
	line "HP Fire!"
	done

GaveDVsText_VioletCity_Water:
	text "Maximized DVs for"
	line "HP Water!"
	done

GaveDVsText_VioletCity_Grass:
	text "Maximized DVs for"
	line "HP Grass!"
	done

GaveDVsText_VioletCity_Electric:
	text "Maximized DVs for"
	line "HP Electric!"
	done

GaveDVsText_VioletCity_Psychic:
	text "Maximized DVs for"
	line "HP Psychic!"
	done

GaveDVsText_VioletCity_Ice:
	text "Maximized DVs for"
	line "HP Ice!"
	done

GaveDVsText_VioletCity_Dragon:
	text "Maximized DVs for"
	line "HP Dragon!"
	done

GaveDVsText_VioletCity_Dark:
	text "Maximized DVs for"
	line "HP Dark!"
	done

ConfirmDVChangeText_VioletCity:
	text "This is how your"
	line "#mon will"
	cont "appear."
	
	para "Do you wish to"
	line "make this change"
	cont "permanent?"
	done

DVChangeConfirmedText_VioletCity:
	text "The transformation"
	line "is complete!"
	
	para "Your #mon has"
	line "unlocked its true"
	cont "potential!"
	done

DVChangeUndoneText_VioletCity:
	text "Your #mon has"
	line "returned to its"
	cont "original form."
	
	para "The potential"
	line "remains dormant"
	cont "for now."
	done

VioletCityDV_Setting_CancelText:
	text "Greatness lies"
	line "within - if you"
	para "have the courage"
	line "to show it!"
	done

VioletCityGreatnessLiesWithinText:
	text "Greatness lies"
	line "within!"
	done

VioletCityDV_Setting_EggText:
	text "That's only an"
	line "egg! Give it time"
	cont "to grow."
	done

VioletCityWhatPotentialText:
	text "Metaphorically,"
	line "you stand on the"
	cont "shoulders of"
	cont "your ancestors."
	
	para "And physically,"
	line "we walk on the"
	para "very Earth they"
	line "returned to."
	
	para "Everywhere you"
	line "look, you can see"
	para "how their choices"
	line "color our world."
	
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