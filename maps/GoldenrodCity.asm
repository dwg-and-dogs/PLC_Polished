GoldenrodCity_MapScriptHeader:
	def_scene_scripts
	scene_script GoldenrodCityTrigger0

	def_callbacks
	callback MAPCALLBACK_NEWMAP, GoldenrodCityFlyPointAndFloria

	def_warp_events
	warp_event 28,  7, GOLDENROD_GYM, 1
	warp_event 33, 29, GOLDENROD_BIKE_SHOP, 1
	warp_event 37, 15, GOLDENROD_HAPPINESS_RATER, 1
	warp_event  9, 25, GOLDENROD_BILLS_HOUSE, 1
	warp_event 13, 13, GOLDENROD_MAGNET_TRAIN_STATION, 2
	warp_event 33,  5, GOLDENROD_FLOWER_SHOP, 1
	warp_event 37,  9, GOLDENROD_PP_SPEECH_HOUSE, 1
	warp_event 19,  7, GOLDENROD_NAME_RATER, 1
	warp_event 28, 27, GOLDENROD_DEPT_STORE_1F, 1
	warp_event 18, 21, GOLDENROD_GAME_CORNER, 1
	warp_event  9, 15, RADIO_TOWER_1F, 1 ; hole
	warp_event 23,  1, ROUTE_35_GOLDENROD_GATE, 3
	warp_event 13,  5, UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, 8
	warp_event 13, 29, UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, 5
	warp_event 18, 27, GOLDENROD_POKECOM_CENTER_1F, 2
	warp_event 30, 15, GOLDENROD_MUSEUM_1F, 2
	warp_event 37, 19, GOLDENROD_NET_BALL_HOUSE, 1
	warp_event 33, 23, GOLDENROD_BAND_HOUSE, 1
	warp_event 13, 21, GOLDENROD_HP_UP_HOUSE, 1

	def_coord_events
	coord_event  9, 15, 1, GoldenrodCityPanUpScript

	def_bg_events
	bg_event 14, 14, BGEVENT_JUMPTEXT, GoldenrodCityStationSignText
	bg_event  7, 15, BGEVENT_JUMPTEXT, GoldenrodCityRadioTowerSignText
	bg_event 30, 27, BGEVENT_JUMPTEXT, GoldenrodDeptStoreSignText
	bg_event 30,  9, BGEVENT_JUMPTEXT, GoldenrodGymSignText
	bg_event 26, 18, BGEVENT_JUMPTEXT, GoldenrodCitySignText
	bg_event 32, 30, BGEVENT_JUMPTEXT, GoldenrodCityBikeShopSignText
	bg_event 20, 22, BGEVENT_JUMPTEXT, GoldenrodCityGameCornerSignText
	bg_event 16,  7, BGEVENT_JUMPTEXT, GoldenrodCityNameRaterSignText
	bg_event 12,  6, BGEVENT_JUMPTEXT, GoldenrodCityUndergroundSignNorthText
	bg_event 14, 30, BGEVENT_JUMPTEXT, GoldenrodCityUndergroundSignSouthText
	bg_event 20, 27, BGEVENT_JUMPTEXT, PokeComCenterSignText
	bg_event 34,  6, BGEVENT_JUMPTEXT, GoldenrodCityFlowerShopSignText
	bg_event 27, 15, BGEVENT_JUMPTEXT, GoldenrodMuseumSignText

	def_object_events
	object_event 16, 22, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveTutor, -1 ; no changes
	object_event 28,  8, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodCityGymLassText, -1 ; done
	object_event 38, 24, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodCityBeautyText, -1 ; done
	object_event 11, 18, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodCityPokefanMText, -1 ; done
	object_event 38, 17, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodCityYoungster1Text, -1 ; done
	object_event 16, 16, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodCityCooltrainerF1Script, -1 ; done 
	object_event 25, 25, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodCityCooltrainerF2Script, -1
	object_event 25, 17, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodCityYoungster2Script, -1 ; no changes
	object_event 20, 10, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodCityLassText, -1 ; done
	object_event 15, 27, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodCityGrampsText, -1 ; done


	object_const_def


GoldenrodCityFlyPointAndFloria:
	setflag ENGINE_FLYPOINT_GOLDENROD
	endcallback

MoveTutor:
	faceplayer
	opentext
	writetext GoldenrodCityMoveTutorAskTeachAMoveText
	yesorno
	iffalse_jumpopenedtext GoldenrodCityMoveTutorAwwButTheyreAmazingText
	special Special_DisplayCoinCaseBalance
	writetext GoldenrodCityMoveTutorAsk4000CoinsOkayText
	yesorno
	iffalse_jumpopenedtext GoldenrodCityMoveTutorHmTooBadText
	checkcoins 200
	ifequal $2, .NotEnoughMoney
	writetext GoldenrodCityMoveTutorWhichMoveShouldITeachText
	loadmenu .MoveMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, .FirePunch
	ifequal $2, .ThunderPunch
	ifequal $3, .IcePunch
	jumpopenedtext GoldenrodCityMoveTutorBButText

.FirePunch:
	setval FIRE_PUNCH
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
	jumpopenedtext GoldenrodCityMoveTutorBButText

.ThunderPunch:
	setval THUNDERPUNCH
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
	jumpopenedtext GoldenrodCityMoveTutorBButText

.IcePunch:
	setval ICE_PUNCH
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
	jumpopenedtext GoldenrodCityMoveTutorBButText

.MoveMenuDataHeader:
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Fire Punch@"
	db "ThunderPunch@"
	db "Ice Punch@"
	db "Cancel@"

.TeachMove:
	writetext GoldenrodCityMoveTutorIfYouUnderstandYouveMadeItText
	promptbutton
	takecoins 200
	waitsfx
	playsound SFX_TRANSACTION
	special Special_DisplayCoinCaseBalance
	jumpopenedtext GoldenrodCityMoveTutorFarewellKidText

.NotEnoughMoney:
	jumpopenedtext GoldenrodCityMoveTutorYouDontHaveEnoughCoinsText

GoldenrodCityCooltrainerF1Script:
	jumptextfaceplayer GoldenrodCityCooltrainerF1Text

GoldenrodCityCooltrainerF2Script:
	checkflag ENGINE_RADIO_CARD
	iffalse_jumptextfaceplayer GoldenrodCityCooltrainerF2Text
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iffalse_jumptextfaceplayer GoldenrodCityCooltrainerFOlivineText
	jumptextfaceplayer GoldenrodCityCooltrainerF2Text_GotRadioCard

GoldenrodCityYoungster2Script:
	faceplayer
	opentext
	checktime (1 << EVE) | (1 << NITE)
	iftrue_jumpopenedtext GoldenrodCityYoungster2Text
	jumpopenedtext GoldenrodCityYoungsterDayText

GoldenrodCityPanUpMovementData:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

GoldenrodCityPokefanMText:
	text "I heard that"
	line "Goldenrod used to"
	cont "have a big wooden"
	cont "tower, kind of"
	cont "like Sprout Tower"
	cont "used to be in"
	cont "Violet City."
	done

GoldenrodCityYoungster1Text:
	text "I love my new"
	line "e-bike."
	done

GoldenrodCityCooltrainerF1Text:
	text "I love talking to"
	line "other people abou"
	cont "t Whitney's show,"
	cont " ReArming Voice."

	para "It's a real"
	line "community!"
	done

GoldenrodCityCooltrainerF2Text:
	text "The Radio Tower in"
	line "Goldenrod City is"
	cont "a landmark."

	para "They're running a"
	line "promotional cam-"
	cont "paign right now."

	para "They'll modify"
	line "your #gear,"

	para "so it can also"
	line "serve as a radio."
	done

GoldenrodCityCooltrainerFOlivineText:
	text "I came here on"
	line "the S.S.Aqua."

	para "It's slower than"
	line "the Magnet Train,"
	cont "but more scenic."
	done

GoldenrodCityCooltrainerF2Text_GotRadioCard:
	text "I came here on the"
	line "Magnet Train."

	para "Time to do some"
	line "shopping!"
	done

GoldenrodCityYoungsterDayText:
	text "I can't wait to"
	line "visit the Museum"
	cont "once it's open!"

	para "I heard they have"
	line "some beautiful"
	cont "paintings."
	done

GoldenrodCityYoungster2Text:
	text "E-he-he-he…"

	para "I got in trouble"
	line "for playing in the"

	para "basement of the"
	line "Dept.Store."
	done

GoldenrodCityLassText:
	text "Whitney has lots"
	line "of people on her"
	cont "show."

	para "But sometimes"
	line "she's out of her"
	cont "depth."
	done


GoldenrodCityGrampsText:
	text "My son works for"
	line "Silph!"
	
	para "I'm so proud."
	done

GoldenrodCityGymLassText:
	text "Want to do a fun"
	line "experiment?"

	para "Take a quote "
	line "from Whitney’s"
	cont "show and ask a"
	cont "friend if she "
	cont "said it, or if "
	cont "Giovanni said it."
	
	para "You’d be surprised"	
	line "how often they"
	cont "get it wrong."
	done

GoldenrodCityBeautyText:
	text "“I wonder what this"
	line "town was like a "
	cont "long time ago."
	done

GoldenrodCityStationSignText:
	text "Goldenrod City"
	line "Station"
	done

GoldenrodCityRadioTowerSignText:
	text "Goldenrod City"
	line "Radio Tower"
	done

GoldenrodDeptStoreSignText:
	text "Full Selection of"
	line "#mon Goods!"

	para "Goldenrod City"
	line "Dept.Store"
	
	para "Run by Silph"
	done

GoldenrodGymSignText:
	text "The sign is"
	line "faded..."
	
	para "Goldenrod City"
	line "#mon Gym"
	cont "Leader: Whitney"

	para "The Incredibly"
	line "Pretty Girl!"
	done

GoldenrodCitySignText:
	text "Goldenrod City"

	para "The Festive City"
	line "of Opulent Charm"

	done

GoldenrodCityBikeShopSignText:
	text "The World is a"
	line "Cycle Path!"

	para "Miracle Cycle"
	done

GoldenrodCityGameCornerSignText:
	text "Your Playground!"

	para "Goldenrod City"
	line "Game Corner"
	done

GoldenrodCityNameRaterSignText:
	text "Name Rater"

	para "Get Your #mon"
	line "Nicknames Rated"
	done

GoldenrodCityUndergroundSignNorthText:
	text "Underground"
	line "Entrance"
	done

GoldenrodCityUndergroundSignSouthText:
	text "Underground"
	line "Entrance"
	done

PokeComCenterSignText:
	text "Connect the World!"
	line "#Com Center"
	done

GoldenrodCityFlowerShopSignText:
	text "Gloria's"
	line "Smile Plumes"
	done

GoldenrodMuseumSignText:
	text "Goldenrod Museum"
	line "Opening Soon!"
	done

GoldenrodCityMoveTutorAskTeachAMoveText:
	text "I can teach your"
	line "#mon amazing"

	para "moves if you'd"
	line "like."

	para "Should I teach a"
	line "new move?"
	done

GoldenrodCityMoveTutorAsk4000CoinsOkayText:
	text "It will cost you"
	line "200 coins. OK?"
	done

GoldenrodCityMoveTutorAwwButTheyreAmazingText:
	text "Aww… But they're"
	line "amazing…"
	done

GoldenrodCityMoveTutorWhichMoveShouldITeachText:
	text "Wahahah! You won't"
	line "regret it!"

	para "Which move should"
	line "I teach?"
	done

GoldenrodCityMoveTutorHmTooBadText:
	text "Hm, too bad. I'll"
	line "have to get some"
	cont "cash from home…"
	done

GoldenrodCityMoveTutorIfYouUnderstandYouveMadeItText:
	text "If you understand"
	line "what's so amazing"

	para "about this move,"
	line "you've made it as"
	cont "a trainer."
	done

GoldenrodCityMoveTutorFarewellKidText:
	text "Wahahah!"
	line "Good day, kid!"
	done

GoldenrodCityMoveTutorBButText:
	text "B-but…"
	done

GoldenrodCityMoveTutorYouDontHaveEnoughCoinsText:
	text "…You don't have"
	line "enough coins here…"
	done
