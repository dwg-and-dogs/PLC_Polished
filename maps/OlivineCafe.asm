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
	object_event 9, 2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineCafe2Script, -1
	object_event 9, 3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OlivineCafe3Script, -1



	object_const_def
	const OLIVINE_CAFE_FISHER_1

OlivineCafeTrigger:
	sdefer .TradeQuest
	end
	
.TradeQuest:
	showemote EMOTE_BOLT, OLIVINE_CAFE_FISHER_1, 30
	setscene $1
	end
	

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
	db "Magikarp@"
	db "Chinchou@"
	db "Corsola@"
	db "Shuckle@"
	db "Cancel@"
	
OlivineCafe1Text:
	text "Oy, oy, we got"
	line "a lotta fish!"

	para "These small fry"
	line "are just 5k."
	
	para "They've got spec-"
	line "ial moves."
	
	para "They cost ¥5000"
	line "to take home."
	
	para "Reversal Magik,"
	line "Psybeam Chinchou,"
	cont "Amnesia Corsola,"
	cont "or a smashing"
	cont "Shuckle."
	
	para "Buy for ¥5000?"
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
	checkevent EVENT_GOT_SURF_MAIL
	iftrue_jumpopenedtext GiveSurfMailText
	writetext NeedAPearlText
	waitbutton
	checkkeyitem PEARL_K
	iffalse_jumpopenedtext Text_NoPearl
	writetext Text_PearlQuestion
	yesorno
	iffalse_jumpopenedtext Text_NoPearl
	takekeyitem PEARL_K
	verbosegivekeyitem SURF_MAIL_K
	setevent EVENT_GOT_SURF_MAIL
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

OlivineCafe2Script: ; 25000 
	faceplayer
	opentext
	writetext OlivineCafe2Text
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext OlivineCafeText4
	checkmoney $0, 25000
	ifequal $2, OlivineCafeNotEnoughMoney
	promptbutton
	loadmenu .Cafe2PokemonMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GiveOctillery
	ifequal 2, .GiveMantine
	ifequal 3, .GiveQwilfish
	jumptext CafeNoFishText
; Octillery FLASH CANNON, Mantine MIRROR COAT, Qwilfish EXPLOSION, with sitrus_berry and in ultra_balls ; 25000 
.GiveOctillery:
	givepoke OCTILLERY, NO_FORM, 20, SITRUS_BERRY, ULTRA_BALL, FLASH_CANNON
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 25000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Here you go, kid!"
	line "Enjoy it!"
	done

.GiveMantine:
	givepoke MANTINE, NO_FORM, 20, SITRUS_BERRY, ULTRA_BALL, MIRROR_COAT
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 25000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Here you go, kid!"
	line "Enjoy it!"
	done


.GiveQwilfish:
	givepoke CORSOLA, NO_FORM, 20, SITRUS_BERRY, ULTRA_BALL, EXPLOSION
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 25000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Here you go, kid!"
	line "Enjoy it!"
	done

.Cafe2PokemonMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 15, TEXTBOX_Y - 1
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "Octillery@"
	db "Mantine@"
	db "Qwilfish@"
	db "Cancel@"
	
OlivineCafe2Text:
	text "Oy, oy, we got"
	line "a lotta fish!"

	para "These fish are"
	line "fighting fit,"
	
	para "They've got moves"
	line "unlike any other."
	
	para "They cost ¥25000"
	line "to take home."
	
	para "Flashy Octillery,"
	para "Mirror-coated"
	line "Mantine,"
	para "Or a Qwilfish"
	line "that's the bomb."
	
	para "Buy for ¥25000?"
	done

;;;;;;;

OlivineCafe3Script: ; 50000 
	faceplayer
	opentext
	writetext OlivineCafe3Text
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext OlivineCafeText4
	checkmoney $0, 50000
	ifequal $2, OlivineCafeNotEnoughMoney
	promptbutton
	loadmenu .Cafe3PokemonMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GiveDratini
	ifequal 2, .GiveSeadra
	ifequal 3, .GiveStaryu
	jumptext CafeNoFishText
; Dratini EXTREMESPEED liechi, Seadra POISON JAB salac, Staryu transform petaya, with pinch berry and in bub_ball 50000 
.GiveDratini:
	givepoke DRATINI, NO_FORM, 25, LIECHI_BERRY, BUB_BALL, EXTREMESPEED
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 50000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Here you go, kid!"
	line "Enjoy it!"
	done

.GiveSeadra:
	givepoke SEADRA, NO_FORM, 25, SALAC_BERRY, BUB_BALL, POISON_JAB
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 50000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Here you go, kid!"
	line "Enjoy it!"
	done


.GiveStaryu:
	givepoke STARYU, NO_FORM, 25, PETAYA_BERRY, BUB_BALL, TRANSFORM
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 50000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Here you go, kid!"
	line "Enjoy it!"
	done

.Cafe3PokemonMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 15, TEXTBOX_Y - 1
	dw .MenuData3
	db 1 ; default option

.MenuData3:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "Dratini@"
	db "Seadra@"
	db "Staryu@"
	db "Cancel@"
	
OlivineCafe3Text:
	text "Oy, oy, we got"
	line "a lotta fish!"

	para "These fish are"
	line "the head of their"
	cont "schools,"
	
	para "with incredible"
	line "moves!"
	
	para "They cost ¥50000"
	line "to take home."
	
	para "Speedy Dratini,"
	line "Jabbing Seadra,"
	cont "Or a Staryu that"
	cont "isn't as it seems."
	
	para "Buy for ¥50000?"
	done
