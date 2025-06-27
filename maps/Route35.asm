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
	bg_event  4, 12, BGEVENT_ITEM + NUGGET, EVENT_ROUTE_35_HIDDEN_NUGGET

	def_object_events
	object_event  8, 19, SPRITE_CAMPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerCamperIvan, -1;
	object_event 12, 20, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerCooltrainerMNick, -1;
	object_event 11, 20, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerCooltrainerFGwen, -1;
	object_event 14, 26, SPRITE_CAMPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerPicnickerKim, -1 ; roland 
	object_event 18, 29, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBreederTheresa, -1
	object_event  6, 10, SPRITE_FIREBREATHER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerFirebreatherWalt, -1
	object_event  9, 10, SPRITE_JUGGLER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, TrainerJugglerIrwin, -1
	fruittree_event  10, 27, FRUITTREE_ROUTE_35, SHORE_FOAM, PAL_NPC_BLUE
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

Route35KimonoGirlScript: ; todo some problem... 
	faceplayer
	opentext
	checkevent EVENT_SET_DVS_2
	iftrue_jumptext Route35GreatnessLiesWithinText 
	opentext
	writetext Route35WhatPotentialText
	promptbutton
	loadmenu .PhysicalOrSpecialMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .PhysicalDVSettingMenus
	ifequal 2, .SpecialDVSettingMenus
	ifequal 3, .MaximumDVSetting
	jumptext Route35DV_Setting_CancelText 

.MaximumDVSetting:
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	opentext
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

.GiveFightingDVs:; 	db $ff, $ee, $ee
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GiveFlyingDVs: ; DVS_HP_FLYING   EQUS "$ff, $fe, $ee"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ee
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GivePoisonDVs: ; DVS_HP_POISON   EQUS "$ff, $ef, $ee"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ee
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GiveGroundDVs: ; DVS_HP_GROUND   EQUS "$ff, $ff, $ee"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ee
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GiveRockDVs: ; DVS_HP_ROCK     EQUS "$ff, $ee, $fe"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $fe
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GiveBugDVs: ; DVS_HP_BUG      EQUS "$ff, $fe, $fe"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $fe
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GiveGhostDVs: ; DVS_HP_GHOST    EQUS "$ff, $ef, $fe"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $fe
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GiveSteelDVs: ;DVS_HP_STEEL    EQUS "$ff, $ff, $fe"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $fe
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GiveFireDVs: ; EQUS "$ff, $ee, $ef"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ef
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GiveWaterDVs:;DVS_HP_WATER    EQUS "$ff, $fe, $ef"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ef
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GiveGrassDVs:;DVS_HP_GRASS    EQUS "$ff, $ef, $ef"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ef
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GiveElectricDVs:;DVS_HP_ELECTRIC EQUS "$ff, $ff, $ef"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ef
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GivePsychicDVs:;DVS_HP_PSYCHIC  EQUS "$ff, $ee, $ff"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ff
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GiveIceDVs:;DVS_HP_ICE      EQUS "$ff, $fe, $ff"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ff
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GiveDragonDVs:;DVS_HP_DRAGON   EQUS "$ff, $ef, $ff"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ff
	writetext Route35GaveDVsText
	waitbutton
	closetext
	end

.GiveDarkDVs:;DVS_HP_DARK     EQUS "$fe, $ff, $ff"
	setevent EVENT_SET_DVS_2
	loadmem wPartyMon1DVs+0, $fe
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	writetext Route35GaveDVsText
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

Route35GaveMaximumDVsText:
	text "Intrinsic power"
	line "maximized!"
	done

Route35GaveDVsText:
	text "Your #mon is"
	line "now expressing"
	para "that part of its"
	line "lineage."
	done

Route35DV_Setting_CancelText:
	text "Greatness lies"
	line "within - if you"
	para "have the courage"
	line "to show it!"
	done

Route35GreatnessLiesWithinText: ; todo place five others 
	text "Greatness lies"
	line "within!"
	done	
	