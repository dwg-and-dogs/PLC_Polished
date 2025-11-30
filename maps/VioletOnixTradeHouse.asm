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
	writetext VioletHisuiTraderText ; Ah, someone with a slowpoke tail! todo 
	setevent EVENT_VIOLET_TRADER_SAW_SLOWPOKETAIL
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext VioletHisuiText4
	checkmoney $0, 50000
	ifequal $2, VioletHisuiNotEnoughMoney ; todo pick up here 
	promptbutton
	loadmenu .PokemonMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GiveHBraviary
	ifequal 2, .GiveDrapion
	ifequal 3, .GiveSkuntank
	ifequal 4, .GiveLopunny
	ifequal 5, .GiveSnover
	jumptext VioletTraderCancelText

.GiveHBraviary:
	givepoke H__BRAVIARY, NO_FORM, 25, NO_ITEM, POKE_BALL, NO_MOVE
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 50000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Watch out for its"
	line "loud squawks."
	done

.GiveDrapion:
	givepoke DRAPION, NO_FORM, 25, NO_ITEM, POKE_BALL, NO_MOVE
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 50000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Wear gloves when"
	line "you handle it."
	done
	
.GiveSkuntank:
	givepoke SKUNTANK, NO_FORM, 25, NO_ITEM, POKE_BALL, NO_MOVE
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 50000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "I never got used"
	line "to its smell."
	done
	
.GiveLopunny:
	givepoke LOPUNNY, NO_FORM, 25, NO_ITEM, POKE_BALL, NO_MOVE
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 50000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "That one was a"
	line "pain to raise."
	done
	
.GiveSnover:
	givepoke SNOVER, NO_FORM, 25, NO_ITEM, POKE_BALL, NO_MOVE
	iffalse_jumpopenedtext Text_NoCarry
	playsound SFX_TRANSACTION
	takemoney $0, 50000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "That one is very"
	line "curious."
	done

.PokemonMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 12, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "HBraviary@"
	db "Drapion@"
	db "Skuntank@"
	db "Lopunny@"
	db "Snover@"
	db "Cancel@"
	
.NoTail:
	writetext VioletHisuiTraderNoTailText
	waitbutton
	closetext
	end

VioletHisuiNotEnoughMoney:
	jumpthisopenedtext

	text "Don't waste my"
	line "time."
	done

VioletHisuiTraderPartyFullText:
	text "Oh! Your party is"
	line "full."
	done

VioletTraderCancelText:
	text "Not unique enough"
	line "for you?"
	done

VioletHisuiTraderNoTailText:
	text "You could say I'm"
	line "in the #mon"
	para "trading business."
	line "If you can prove"
	para "you lack scruples"
	line "by showing me a"
	cont "Slowpoketail,"
	cont "then we can talk."

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
	
	para "I've got the most"
	line "variety of any"
	para "#mon trader in"
	line "the region."
	
	para "For 50k, you can"
	line "walk away with"
	para "one of these rare"
	line "#mon."
	done
	
VioletHisuiText4:
	text "This wasn't a"
	line "Beedrill Sting,"
	cont "was it?"
	done
	