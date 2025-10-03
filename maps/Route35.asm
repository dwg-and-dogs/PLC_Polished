Route35_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 13, 31, ROUTE_35_GOLDENROD_GATE, 1
	warp_event 14, 31, ROUTE_35_GOLDENROD_GATE, 2
	warp_event  7,  5, ROUTE_35_NATIONAL_PARK_GATE, 3


	def_coord_events

	def_bg_events
	bg_event  5,  7, BGEVENT_JUMPTEXT, Route35SignText
	bg_event 15, 29, BGEVENT_JUMPTEXT, Route35SignText
	bg_event  5, 27, BGEVENT_ITEM + NUGGET, EVENT_ROUTE_35_HIDDEN_NUGGET

	def_object_events
	object_event  8, 19, SPRITE_CAMPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerCamperIvan, -1;
	object_event 12, 20, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerCooltrainerMNick, -1;
	object_event 11, 20, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerCooltrainerFGwen, -1;
	object_event 14, 26, SPRITE_CAMPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerPicnickerKim, -1 ; roland
	object_event 18, 29, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBreederTheresa, -1
	object_event  6, 10, SPRITE_FIREBREATHER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerFirebreatherWalt, -1
	object_event  9, 10, SPRITE_JUGGLER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, TrainerJugglerIrwin, -1
	fruittree_event 10, 27, FRUITTREE_ROUTE_35, TOUGH_LEAVES, PAL_NPC_BLUE
	tmhmball_event 11, 11, TM_DRAIN_PUNCH, EVENT_GOT_TM_DRAIN_PUNCH
	object_event	 4,	11, 	SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_DOWN, 	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ROUTE35_BodySlamMT, -1 ;
	object_event 14, 14, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route35KimonoGirlScript, EVENT_SET_DVS_2


GenericTrainerCamperIvan:
	generictrainer CAMPER, IVAN, EVENT_BEAT_CAMPER_IVAN, CamperIvanSeenText, CamperIvanBeatenText

	text "Oh cool, a fellow"
	line "Azalean!"
	para "I moved here to"
	line "Goldenrod. It's"
	para "hard to be away"
	line "from my family,"
	cont "though."
	done

CamperIvanSeenText:
	text "Oh hey, a fellow"
	line "Azalean!"
	done

CamperIvanBeatenText:
	text "You're as strong"
	line "as Bugsy."
	done

GenericTrainerCooltrainerMNick:
	generictrainer COOLTRAINERM, NICK, EVENT_BEAT_COOLTRAINERM_NICK, CooltrainerMCalSeenText, CooltrainerMCalBeatenText

	text "It's not really a"
	line "mystery why"
	para "Whitney got a"
	line "radio channel."
	para "She claims to"
	line "stick up for cute"
	para "#mon, but she's"
	line "just as menacing"
	cont "as Petrel."
	done

CooltrainerMCalSeenText:
	text "Are your #mon"
	line "cute or tough?"
	done

CooltrainerMCalBeatenText:
	text "Cute and tough!"
	done

GenericTrainerCooltrainerFGwen:
	generictrainer COOLTRAINERF, GWEN, EVENT_BEAT_COOLTRAINERF_GWEN, CooltrainerFGwenSeenText, CooltrainerFGwenBeatenText

	text "I'm training to be"
	line "as strong as"
	cont "Whitney."
	done

CooltrainerFGwenSeenText:
	text "Hustle!"
	done

CooltrainerFGwenBeatenText:
	text "Bustle…"
	done

GenericTrainerPicnickerKim:
	generictrainer CAMPER, ROLAND, EVENT_BEAT_CAMPER_ROLAND, RolandSeenText, RolandBeatenText

	text "Now, I have to"
	line "run back to the "
	para "#center"
	line "and it'll be too"
	para "late to make any"
	line "s'mores..."
	done

RolandSeenText:
	text "Excuse me, have"
	line "you seen my"
	cont "girlfriend Gina?"
	
	para "We're making"
	line "s'mores tonight."
	done

RolandBeatenText:
	text "Thanks a lot."
	
	para "Now, I have to"
	line "run back to the "
	cont "#center"
	cont "and it'll be too"
	cont "late..."
	done

GenericTrainerBreederTheresa:
	generictrainer BREEDER, THERESA, EVENT_BEAT_BREEDER_THERESA, BreederTheresaSeenText, BreederTheresaBeatenText

	text "I love reading"
	line "about adventures"
	para "outside. I wish I"
	line "could go on an"
	cont "adventure."
	done

BreederTheresaSeenText:
	text "Oh, the great"
	line "outdoors!"
	done

BreederTheresaBeatenText:
	text "Now I'm not"
	line "feeling so good…"
	done

GenericTrainerFirebreatherWalt:
	generictrainer FIREBREATHER, WALT, EVENT_BEAT_FIREBREATHER_WALT, FirebreatherWaltSeenText, FirebreatherWaltBeatenText

	text "Museum maps show"
	line "there was a hot"
	para "spring here. It"
	line "must have dried"
	cont "a long time ago."
	done

FirebreatherWaltSeenText:
	text "Did you know there"
	line "used to be a"
	cont "spring here?"
	done

FirebreatherWaltBeatenText:
	text "I'm all dry!"
	done

TrainerJugglerIrwin:
	generictrainer JUGGLER, IRWIN1, EVENT_BEAT_JUGGLER_IRWIN, JugglerIrwin1SeenText, JugglerIrwin1BeatenText

	text "They're saying"
	line "that a new"
	para "technique is"
	line "going to bring"
	cont "rain."
	done

JugglerIrwin1SeenText:
	text "Have you heard"
	line "what they found"
	cont "in the ruins?"
	done

JugglerIrwin1BeatenText:
	text "I wish I could"
	line "have seen it."
	done


Route35SignText:
	text "Route 35"
	done
	
ROUTE35_BodySlamMT:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_BODY_SLAM_INTRO
	iftrue ROUTE35_TutorBodySlamScript
	writetext Text_BodySlamIntro
	waitbutton
	setevent EVENT_LISTENED_TO_BODY_SLAM_INTRO
ROUTE35_TutorBodySlamScript:
	writetext Text_ROUTE35_TutorBodySlam ;;
	waitbutton
	writetext Text_ROUTE35_TutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval BODY_SLAM
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_ROUTE35_TutorRefused ;; 

.TeachMove
	jumpopenedtext Text_ROUTE35_TutorTaught ;;
	
Text_BodySlamIntro:
	text "Tuscany: Hi!"
	line "I'm Tuscany of"
	cont "Tuesday."
		
	para "Have you come"
	line "to escape the"
	para "bustle of"
	line "Goldenrod?"
	
	para "My technique will"
	line "leave your mind"
	cont "and body still."
	
	para "It's a smother-"
	line "ing BODY SLAM!"
	done
	

Text_ROUTE35_TutorBodySlam:
	text "My special relax-"
	line "ation technique"
	para "can be learned"
	line "by some #mon,"
	para "if you want your"
	line "worries cocooned"
	para "where they can't"
	line "bother you."
	done

Text_ROUTE35_TutorQuestion:
	text "Would you like"
	line "me to teach it"
	cont "to a #mon?"
	done

Text_ROUTE35_TutorRefused:
	text "Just come find"
	line "me when life"
	para "is moving too"
	line "fast!"
	done

Text_ROUTE35_TutorTaught:
	text "There! Now you"
	line "have the power"
	para "to Body Slam"
	line "your problems!"
	done

Route35KimonoGirlScript:
	faceplayer
	; Store the original DVs in temporary memory locations
	readmem wPartyMon1DVs+0     ; Reads value into hScriptVar
	writemem wOriginalDV1       ; Writes hScriptVar to wOriginalDV1
	readmem wPartyMon1DVs+1     ; Reads value into hScriptVar
	writemem wOriginalDV2       ; Writes hScriptVar to wOriginalDV1
	readmem wPartyMon1DVs+2     ; Reads value into hScriptVar
	writemem wOriginalDV3       ; Writes hScriptVar to wOriginalDV1
	opentext
	checkevent EVENT_SET_DVS_2
	iftrue_jumptext Route35GreatnessLiesWithinText 
	writetext Route35WhatPotentialText
	promptbutton
	loadmenu .PhysicalOrSpecialMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .PhysicalDVSettingMenus
	ifequal 2, .SpecialDVSettingMenus
	ifequal 3, .MaximumDVSetting
	jumptext Route35DV_Setting_CancelText 

.NoChange:
	jumptext Route35DV_Setting_CancelText

.EggChange:
	jumptext Route35DV_Setting_EggText

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
	writetext GaveMaximumDVsText_Route35
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
	setevent EVENT_SET_DVS_2
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
	jumptext Route35DV_Setting_CancelText 

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
	jumptext Route35DV_Setting_CancelText

.GiveFightingDVs:	; todo: Make all of the other .Give__DVs: follow this format. Keep the original values after loadmem. FOr instance, flying should still have ff, ef, ee
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ee
; begin section to copy throughout 
	opentext
	writetext GaveDVsText_Route35_Fighting ; make new writetxt for ..._Flying, _Dark, etc 
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges
; end 

.GiveFlyingDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_Route35_Flying
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GivePoisonDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_Route35_Poison
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGroundDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_Route35_Ground
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveRockDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_Route35_Rock
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveBugDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_Route35_Bug
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGhostDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_Route35_Ghost
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveSteelDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_Route35_Steel
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveFireDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_Route35_Fire
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveWaterDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_Route35_Water
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGrassDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_Route35_Grass
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveElectricDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_Route35_Electric
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GivePsychicDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_Route35_Psychic
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveIceDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_Route35_Ice
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveDragonDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_Route35_Dragon
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveDarkDVs:
	loadmem wPartyMon1DVs+0, $fe
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_Route35_Dark
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
	writetext ConfirmDVChangeText_Route35
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.ConfirmChanges:
	setevent EVENT_SET_DVS_2
	writetext DVChangeConfirmedText_Route35
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
	writetext DVChangeUndoneText_Route35
	waitbutton
	closetext
	end

GaveMaximumDVsText_Route35:
	text "Intrinsic power"
	line "maximized!"
	done

GaveDVsText_Route35:
	text "DVs are set"
	done


GaveDVsText_Route35_Fighting:
	text "Maximized DVs for"
	line "HP Fighting!"
	done

GaveDVsText_Route35_Flying:
	text "Maximized DVs for"
	line "HP Flying!"
	done

GaveDVsText_Route35_Poison:
	text "Maximized DVs for"
	line "HP Poison!"
	done

GaveDVsText_Route35_Ground:
	text "Maximized DVs for"
	line "HP Ground!"
	done

GaveDVsText_Route35_Rock:
	text "Maximized DVs for"
	line "HP Rock!"
	done

GaveDVsText_Route35_Bug:
	text "Maximized DVs for"
	line "HP Bug!"
	done

GaveDVsText_Route35_Ghost:
	text "Maximized DVs for"
	line "HP Ghost!"
	done

GaveDVsText_Route35_Steel:
	text "Maximized DVs for"
	line "HP Steel!"
	done

GaveDVsText_Route35_Fire:
	text "Maximized DVs for"
	line "HP Fire!"
	done

GaveDVsText_Route35_Water:
	text "Maximized DVs for"
	line "HP Water!"
	done

GaveDVsText_Route35_Grass:
	text "Maximized DVs for"
	line "HP Grass!"
	done

GaveDVsText_Route35_Electric:
	text "Maximized DVs for"
	line "HP Electric!"
	done

GaveDVsText_Route35_Psychic:
	text "Maximized DVs for"
	line "HP Psychic!"
	done

GaveDVsText_Route35_Ice:
	text "Maximized DVs for"
	line "HP Ice!"
	done

GaveDVsText_Route35_Dragon:
	text "Maximized DVs for"
	line "HP Dragon!"
	done

GaveDVsText_Route35_Dark:
	text "Maximized DVs for"
	line "HP Dark!"
	done

ConfirmDVChangeText_Route35:
	text "This is how your"
	line "#mon will"
	cont "appear."
	
	para "Do you wish to"
	line "make this change"
	cont "permanent?"
	done

DVChangeConfirmedText_Route35:
	text "The transformation"
	line "is complete!"
	
	para "Your #mon has"
	line "unlocked its true"
	cont "potential!"
	done

DVChangeUndoneText_Route35:
	text "Your #mon has"
	line "returned to its"
	cont "original form."
	
	para "The potential"
	line "remains dormant"
	cont "for now."
	done

Route35DV_Setting_CancelText:
	text "Greatness lies"
	line "within - if you"
	para "have the courage"
	line "to show it!"
	done

Route35GreatnessLiesWithinText:
	text "Greatness lies"
	line "within!"
	done

Route35DV_Setting_EggText:
	text "That's only an"
	line "egg! Give it time"
	cont "to grow."
	done


Route35WhatPotentialText:
	text "I see a blossom"
	line "flower on your"
	cont "shoulder, child."
	
	para "You know what it"
	line "is to tap into"
	para "the power of your"
	line "ancestors."
	
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