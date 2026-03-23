GoldenrodGameCorner_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 13, GOLDENROD_CITY, 10
	warp_event  3, 13, GOLDENROD_CITY, 10

	def_coord_events

	def_bg_events
	bg_event  6,  6, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  6,  7, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  6,  8, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  6,  9, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  6, 10, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  6, 11, BGEVENT_RIGHT, GoldenrodGameCornerSlotsMachineScript
	bg_event  7,  6, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  7,  7, BGEVENT_READ, GoldenrodGameCornerLuckySlotsMachineScript
	bg_event  7,  8, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  7,  9, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  7, 10, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  7, 11, BGEVENT_LEFT, GoldenrodGameCornerSlotsMachineScript
	bg_event 12,  6, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 12,  7, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 12,  8, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 12,  9, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 12, 10, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 12, 11, BGEVENT_RIGHT, GoldenrodGameCornerSlotsMachineScript
	bg_event 13,  6, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 13,  7, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 13,  8, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 13,  9, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 13, 10, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 13, 11, BGEVENT_LEFT, GoldenrodGameCornerSlotsMachineScript
	bg_event 18,  6, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 18,  7, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 18,  8, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 18,  9, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 18, 10, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 18, 11, BGEVENT_RIGHT, GoldenrodGameCornerSlotsMachineScript
	bg_event 12,  1, BGEVENT_LEFT, GoldenrodGameCornerLeftTheirDrinkScript

	def_object_events
	object_event  3,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumpstd, gamecornercoinvendor, -1
	object_event 16,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerTMVendorScript, -1
	object_event 18,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPrizeMonVendorScript, -1
	object_event 10,  3, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodGameCornerCooltrainerFText, -1
	object_event 17,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPokefanFScript, -1
	object_event  8,  7, SPRITE_BURGLAR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, (1 << DAY) | (1 << NITE), 0, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPharmacistScript, -1
	object_event 14,  8, SPRITE_BURGLAR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerCooltrainerMScript, -1
	object_event  5, 10, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GameCornerSwaggerScript, -1
	object_event 11, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPokefanM1Script, -1
	object_event 17, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPokefanM3Script, -1
	object_event  2,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodGameCornerPokefanM2Text, EVENT_BEAT_WHITNEY

GoldenrodGameCornerPokefanM3Script:
	showtextfaceplayer GoldenrodGameCornerPokefanM3Text
	turnobject LAST_TALKED, RIGHT
	end

GoldenrodGameCornerTMVendorScript:
	faceplayer
	opentext
	writetext GoldenrodGameCornerPrizeVendorIntroText
	waitbutton
	checkkeyitem COIN_CASE
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorNoCoinCaseText
	writetext GoldenrodGameCornerPrizeVendorWhichPrizeText
GoldenrodGameCornerTMVendor_LoopScript: ; 056c36
	special Special_DisplayCoinCaseBalance
	loadmenu GoldenrodGameCornerTMVendorMenuData
	verticalmenu
	closewindow
	ifequal $1, .flamethrower
	ifequal $2, .thunderbolt
	ifequal $3, .ice_beam
	jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText

.flamethrower:
	checktmhm TM_FLAMETHROWER
	iftrue GoldenrodGameCornerPrizeVendor_AlreadyHaveTMScript
	checkcoins 10000
	ifequal $2, GoldenrodGameCornerPrizeVendor_NotEnoughCoinsScript
	gettmhmname TM_FLAMETHROWER, $0
	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText
	givetmhm TM_FLAMETHROWER
	takecoins 10000
	sjump GoldenrodGameCornerTMVendor_FinishScript

.thunderbolt:
	checktmhm TM_THUNDERBOLT
	iftrue GoldenrodGameCornerPrizeVendor_AlreadyHaveTMScript
	checkcoins 10000
	ifequal $2, GoldenrodGameCornerPrizeVendor_NotEnoughCoinsScript
	gettmhmname TM_THUNDERBOLT, $0
	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText
	givetmhm TM_THUNDERBOLT
	takecoins 10000
	sjump GoldenrodGameCornerTMVendor_FinishScript

.ice_beam:
	checktmhm TM_ICE_BEAM
	iftrue GoldenrodGameCornerPrizeVendor_AlreadyHaveTMScript
	checkcoins 10000
	ifequal $2, GoldenrodGameCornerPrizeVendor_NotEnoughCoinsScript
	gettmhmname TM_ICE_BEAM, $0
	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText
	givetmhm TM_ICE_BEAM
	takecoins 10000
	sjump GoldenrodGameCornerTMVendor_FinishScript

GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript:
	writetext GoldenrodGameCornerPrizeVendorConfirmPrizeText
	yesorno
	end

GoldenrodGameCornerTMVendor_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodGameCornerPrizeVendorHereYouGoText
	waitbutton
	sjump GoldenrodGameCornerTMVendor_LoopScript

GoldenrodGameCornerPrizeVendor_AlreadyHaveTMScript:
	writetext GoldenrodGameCornerPrizeVendorAlreadyHaveTMText
	waitbutton
	sjump GoldenrodGameCornerTMVendor_LoopScript

GoldenrodGameCornerPrizeVendor_NotEnoughCoinsScript:
	jumpopenedtext GoldenrodGameCornerPrizeVendorNeedMoreCoinsText

GoldenrodGameCornerTMVendorMenuData:
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "TM35   10000@"
	db "TM24   10000@"
	db "TM13   10000@"
	db "Cancel@"

GoldenrodGameCornerPrizeMonVendorScript:
	faceplayer
	opentext
	writetext GoldenrodGameCornerPrizeVendorIntroText
	waitbutton
	checkkeyitem COIN_CASE
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorNoCoinCaseText
.loop
	writetext GoldenrodGameCornerPrizeVendorWhichPrizeText
	special Special_DisplayCoinCaseBalance
	loadmenu .MenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, .eevee
	ifequal $2, .porygon
	ifequal $3, .chansey
	jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText

.eevee
	checkcoins 200
	ifequal $2, GoldenrodGameCornerPrizeVendor_NotEnoughCoinsScript
	getmonname EEVEE, $0
	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodGameCornerPrizeVendorHereYouGoText
	waitbutton
	givepoke EEVEE, 5
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorNoMoreRoomText
	setval EEVEE
	special Special_GameCornerPrizeMonCheckDex
	takecoins 200
	sjump .loop

.porygon
	checkcoins 800
	ifequal $2, GoldenrodGameCornerPrizeVendor_NotEnoughCoinsScript
	getmonname PORYGON, $0
	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodGameCornerPrizeVendorHereYouGoText
	waitbutton
	givepoke PORYGON, 10
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorNoMoreRoomText
	setval PORYGON
	special Special_GameCornerPrizeMonCheckDex
	takecoins 800
	sjump .loop

.chansey
	checkcoins 2500
	ifequal $2, GoldenrodGameCornerPrizeVendor_NotEnoughCoinsScript
	getmonname CHANSEY, $0
	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodGameCornerPrizeVendorHereYouGoText
	waitbutton
	givepoke CHANSEY, 15
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorNoMoreRoomText
	setval CHANSEY
	special Special_GameCornerPrizeMonCheckDex
	takecoins 1500
	sjump .loop

.MenuDataHeader:
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 17 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Eevee       200@"
	db "Porygon     800@"
	db "Chansey    2500@"
	db "Cancel@"

GoldenrodGameCornerPharmacistScript:
	showtextfaceplayer GoldenrodGameCornerPharmacistText
	turnobject LAST_TALKED, LEFT
	end

GoldenrodGameCornerPokefanM1Script:
	showtextfaceplayer GoldenrodGameCornerPokefanM1Text
	turnobject LAST_TALKED, RIGHT
	end

GoldenrodGameCornerCooltrainerMScript:
	showtextfaceplayer GoldenrodGameCornerCooltrainerMText
	turnobject LAST_TALKED, LEFT
	end

GoldenrodGameCornerPokefanFScript:
	showtextfaceplayer GoldenrodGameCornerPokefanFText
	turnobject LAST_TALKED, RIGHT
	end

GoldenrodGameCornerLeftTheirDrinkScript:
	jumptext GoldenrodGameCornerLeftTheirDrinkText

GoldenrodGameCornerSlotsMachineScript:
	random 6
	ifequal 0, GoldenrodGameCornerLuckySlotsMachineScript
	refreshscreen
	setval FALSE
	special Special_SlotMachine
	endtext

GoldenrodGameCornerLuckySlotsMachineScript:
	refreshscreen
	setval TRUE
	special Special_SlotMachine
	endtext

GoldenrodGameCornerCardFlipMachineScript:
	refreshscreen
	special Special_CardFlip
	endtext

GoldenrodGameCornerPrizeVendorIntroText:
	text "Welcome!"

	para "We exchange your"
	line "game coins for"
	cont "fabulous prizes!"
	done

GoldenrodGameCornerPrizeVendorWhichPrizeText:
	text "Which prize would"
	line "you like?"
	done

GoldenrodGameCornerPrizeVendorConfirmPrizeText:
	text_ram wStringBuffer3
	text "."
	line "Is that right?"
	done

GoldenrodGameCornerPrizeVendorHereYouGoText:
	text "Here you go!"
	done

GoldenrodGameCornerPrizeVendorAlreadyHaveTMText:
	text "But you already"
	line "have that TM!"
	done

GoldenrodGameCornerPrizeVendorNeedMoreCoinsText:
	text "Sorry! You need"
	line "more coins."
	done

GoldenrodGameCornerPrizeVendorNoMoreRoomText:
	text "Oh, no. You can't"
	line "carry any more and"
	cont "your box is full."

	para "I'll return your"
	line "coins to you."
	done

GoldenrodGameCornerPrizeVendorQuitText:
	text "OK. Please save"
	line "your coins and"
	cont "come again!"
	done

GoldenrodGameCornerPrizeVendorNoCoinCaseText:
	text "Oh? You don't have"
	line "a Coin Case."
	done

GoldenrodGameCornerFisherText:
	text "Today's pay day!"
	line "Time to celebrate"
	cont "with some slots!"

	para "…You know, #mon"
	line "get a Pay Day too."
	done

Text_GoldenrodGameCornerTutorSwaggerQuestion:
	text "If you give me a"
	line "Silver Leaf, I'll"

	para "teach Pay Day to"
	line "your #mon."
	done

Text_GoldenrodGameCornerTutorNoSilverLeaf:
	text "You don't have a"
	line "Silver Leaf?"
	cont "Never mind then."
	done

Text_GoldenrodGameCornerTutorRefused:
	text "Never mind then."
	done

Text_GoldenrodGameCornerTutorTaught:
	text "Pay Day nets you"
	line "more money after a"
	cont "battle."

	para "Keep using it and"
	line "you'll be rich!"
	done

GoldenrodGameCornerPharmacistText:
	text "I always play this"
	line "slot machine. It"

	para "pays out more than"
	line "others, I think."
	done

GoldenrodGameCornerPokefanM1Text:
	text "I just love this"
	line "new slot machine."

	para "It's more of a"
	line "challenge than the"
	cont "ones in Celadon."
	done

GoldenrodGameCornerCooltrainerMText:
	text "Life is a gamble."
	line "I'm going to flip"
	cont "cards till I drop!"
	done

GoldenrodGameCornerPokefanFText:
	text "Card flip…"

	para "I prefer it over"
	line "the slots because"

	para "it's easier to"
	line "figure the odds."

	para "But the payout is"
	line "much lower."
	done

GoldenrodGameCornerCooltrainerFText:
	text "I won't quit until"
	line "I win!"
	done

GoldenrodGameCornerPokefanM2Text:
	text "I couldn't win at"
	line "the slots, and I"

	para "blew it on card"
	line "flipping…"
	done

GoldenrodGameCornerPokefanM3Text:
	text "Wahahah! The coins"
	line "keep rolling in!"
	done

GoldenrodGameCornerLeftTheirDrinkText:
	text "Someone left their"
	line "drink."

	para "It smells sweet."
	done

GameCornerSwaggerScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_SWAGGER_INTRO
	iftrue GameCornerTutorSwaggerScript
	writetext Text_SwaggerIntro
	waitbutton
	setevent EVENT_LISTENED_TO_SWAGGER_INTRO
GameCornerTutorSwaggerScript:
	writetext Text_GameCornerTutorSwagger ;;
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_GameCornerTutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval SWAGGER
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_GameCornerTutorRefused ;; 

.NoSilverLeaf
	jumpopenedtext Text_GameCornerTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_GameCornerTutorTaught ;;
	
Text_SwaggerIntro: 
	text "I stick to poker."
	line "I can make my own"
	cont "luck there."
	
	para "I act macho with"
	line "Swagger. They get"
	cont "tilted and take"
	cont "themselves out!"
	done

Text_GameCornerTutorSwagger:
	text "I can teach your"
	line "#mon to use"

	para "Swagger, for"
	line "a Silver Leaf."
	done

Text_GameCornerTutorNoSilverLeaf:
	text "You don't have"
	line "a Silver Leaf."
	done

Text_GameCornerTutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "Swagger?"
	done

Text_GameCornerTutorRefused:
	text "Alright then."
	done

Text_GameCornerTutorTaught:
	text "You look like a"
	line "winner, kid."	
	done