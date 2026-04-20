VioletOnixTradeHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, VIOLET_CITY, 6
	warp_event  4,  7, VIOLET_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletKylesHousePokefanMText, -1
	object_event  6,  5, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletHisuiTraderScript, -1

VioletKylesHousePokefanMText:
	text "My son has made a"
	line "career out of"
	cont "#mon trading!"
	done

VioletHisuiTraderScript:
	faceplayer
	opentext
	checkevent EVENT_VIOLET_TRADER_SAW_SLOWPOKETAIL
	iftrue .SawTail
	checkitem SLOWPOKETAIL
	iffalse .NoTail
.SawTail:
	writetext VioletHisuiTraderText ; Ah, someone with a slowpoke tail! 
	setevent EVENT_VIOLET_TRADER_SAW_SLOWPOKETAIL
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext VioletHisuiText4
	checkmoney $0, 30000
	ifequal $2, VioletHisuiNotEnoughMoney 
	promptbutton
	loadmenu .PokemonMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GiveCranidosEgg
	ifequal 2, .GiveShieldonEgg
	jumptext VioletTraderCancelText

.GiveCranidosEgg:
	givepoke CRANIDOS, NO_FORM, 5, NO_ITEM, POKE_BALL, HEADBUTT
	iffalse_jumpopenedtext .PartyAndBoxFullText 
	takemoney $0, 30000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Come back any"
	line "time."
	done

.GiveShieldonEgg:
	givepoke SHIELDON, NO_FORM, 5, NO_ITEM, POKE_BALL, MIRROR_COAT
	iffalse_jumpopenedtext .PartyAndBoxFullText 
	playsound SFX_TRANSACTION
	takemoney $0, 30000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Come back any"
	line "time."
	done

.PartyAndBoxFullText:
	text "You have no room"
	line "for it."
	done

.PokemonMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 12, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "Cranidos@"
	db "Shieldon@"
	db "Cancel@"
	
.NoTail:
	writetext VioletHisuiTraderNoTailText
	waitbutton
	closetext
	end

VioletHisuiNotEnoughMoney:
	jumpthisopenedtext

	text "You think raising"
	line "these #mon"
	cont "is cheap?"
	done

VioletHisuiTraderPartyFullText:
	text "Oh! Your party is"
	line "full."
	done

VioletTraderCancelText:
	text "You think raising"
	line "these #mon"
	cont "is cheap?"
	done

VioletHisuiTraderNoTailText:
	text "You could say I'm"
	line "in the #mon"
	cont "trading business."
	
	para "It's right under"
	line "the nose of a big"
	para "mining operation"
	line "in Union Cave."
	
	para "If you bring me a"
	line "Slowpoketail to"
	para "prove you won't"
	line "snitch on me,"
	
	para "we can get in"
	line "business."

	para "You can get them"
	line "on Route 32 from"
	para "a former Team"
	line "Rocket Grunt."
	done

VioletHisuiTraderText:
	text "A Slowpoketail!"
	line "You're just the"
	para "type of person I"
	line "look for."
	
	para "A scientist in"
	line "the mine has been"
	para "smuggling these"
	line "out of those"
	cont "tough conditions."

	para "I'm fostering them"
	line "but it's not easy"
	cont "work."
		
	para "I'll let you have"
	line "one for 30k."
	done
	
VioletHisuiText4:
	text "This wasn't a"
	line "Beedrill Sting,"
	cont "was it?"
	done
	