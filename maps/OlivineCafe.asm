OlivineCafe_MapScriptHeader:
	def_scene_scripts
	scene_script OlivineCafeTrigger 

	def_callbacks

	def_warp_events
	warp_event  4,  7, OLIVINE_CITY, 6
	warp_event  5,  7, OLIVINE_CITY, 6

	def_coord_events

	def_bg_events


	def_object_events
	object_event  4,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, CafeSurfMailScript, -1 
	object_event 9, 1, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OlivineCafe1Script, -1
;	object_event 9, 2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OlivineCafe2Script, -1
;	object_event 9, 3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OlivineCafe3Script, -1



	object_const_def
	const OLIVINE_CAFE_FISHER_1

OlivineCafeTrigger:
	sdefer .TradeQuest
	end
	
.TradeQuest:
	showemote EMOTE_BOLT, OLIVINE_CAFE_FISHER_1, 30
	end
	
	
	
	
; Octillery FLASH CANNON, Mantine MIRROR COAT, Qwilfish EXPLOSION, with sitrus_berry and in ultra_balls ; 25000 
; Dratini EXTREMESPEED liechi, Seadra POISON JAB salac, Staryu transform petaya, with pinch berry and in bub_ball 50000 

;cf celadonuniversity cafeteria 

OlivineCafe1Script: ; 5000 
	faceplayer
	opentext
	writetext OlivineCafe1Text
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext OlivineCafeText4
	checkmoney $0, 5000
	ifequal $2, OlivineCafeNotEnoughMoney
	promptbutton
	loadmenu .Cafe1PokemonMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GiveMagikarp
	ifequal 2, .GiveChinchou
	ifequal 3, .GiveCorsola
	ifequal 4, .GiveShuckle
	jumptext CafeNoFishText

;	givepoke MAGIKARP, MAGIKARP_MASK_FORM, 10, EVIOLITE, ULTRA_BALL, DRAGON_RAGE
.GiveMagikarp:
	givepoke MAGIKARP, NO_FORM, 100, LEPPA_BERRY, POKE_BALL, REVERSAL
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 5000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Here you go, kid!"
	line "Enjoy it!"
	done

.GiveChinchou:
	givepoke CHINCHOU, NO_FORM, 5, LEPPA_BERRY, POKE_BALL, PSYBEAM
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 5000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Here you go, kid!"
	line "Enjoy it!"
	done


.GiveCorsola:
	givepoke CORSOLA, NO_FORM, 5, LEPPA_BERRY, POKE_BALL, AMNESIA
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 5000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Here you go, kid!"
	line "Enjoy it!"
	done


.GiveShuckle:
	givepoke SHUCKLE, NO_FORM, 5, LEPPA_BERRY, POKE_BALL, SHELL_SMASH
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 5000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Here you go, kid!"
	line "Enjoy it!"
	done


.Cafe1PokemonMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "MAGIKARP@"
	db "CHINCHOU@"
	db "CORSOLA@"
	db "SHUCKLE@"
	db "CANCEL@"
	
OlivineCafe1Text:
	text "Oy, oy, we got"
	line "a lotta fish!"

	para "These small fry"
	line "are just 5k."
	
	para "They've got spec-"
	line "ial moves."
	
	para "They cost ¥5000"
	line "to take home."
	
	para "It's a Magikarp,"
	line "Chinchou, Corsola"
	cont "or Shuckle."
	
	para "Buy for ¥4000?"
	done

OlivineCafeText4:
	text "Have a nice day!"
	done

OlivineCafeNotEnoughMoney:
	jumpthisopenedtext

	text "You don't have"
	line "enough money…"
	done

CafeNoFishText:
	text "See you later."
	done

Text_NoCarry:
	text "You can't carry"
	line "it, kid."
	done

CafeSurfMailScript: 
	faceplayer
	opentext	
	writetext NeedAPearlText
	waitbutton
	checkitem PEARL
	iffalse_jumpopenedtext Text_NoPearl
	writetext Text_PearlQuestion
	yesorno
	iffalse_jumpopenedtext Text_NoPearl
	takeitem PEARL
	verbosegiveitem SURF_MAIL
	setscene $1
	iffalse_endtext
	jumpopenedtext GiveSurfMailText 

NeedAPearlText: 
	text "Between this fish"
	line "shop and the de-"
	cont "sal discharge, I"
	
	para "can't pull any"
	line "fish! I need"
	cont "better lures."

	para "Fish love shiny"
	line "little orbs."
	
	para "It does give me"
	line "time to doodle"
	para "while I watch the"
	line "sea, though."
	done

Text_PearlQuestion:
	text "Hey - is that a"
	line "Pearl?"
	
	para "I'll give you my"
	line "Surf Mail for it,"
	
	para "I decorated it"
	line "with water-type"
	cont "#mon!"
	done
	
GiveSurfMailText: 
	text "That surf mail"
	line "evokes the sea."
	
	para "Hopefully it's a"
	line "way to remember"
	para "it by, if you"
	line "ever leave."
	done

Text_NoPearl:
	text "You won't?"
	line "That's sad."
	done
