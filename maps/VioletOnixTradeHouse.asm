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
	object_event  6,  5, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletHisuiTraderScript, -1

VioletKylesHousePokefanMText:
	text "There's no substi-"
	line "tute for the smell"
	para "of freshly fallen"
	line "rain."
	done

VioletHisuiTraderScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_VIOLET_POKEMON
	iftrue .AlreadyGotPokemon
	writetext VioletHisuiTraderText
	promptbutton
	loadmenu .HisuiPokemonMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GiveDusclops
	ifequal 2, .GiveKirlia
	ifequal 3, .GiveSnover
	ifequal 4, .GiveLapras
	jumptext VioletHisuiTraderNoThanksText

.AlreadyGotPokemon
	writetext VioletHisuiTraderRememberText
	waitbutton
	closetext
	end

.GiveDusclops:
	givepoke DUSCLOPS, 27
	iffalse .PartyFull
	setevent EVENT_GOT_VIOLET_POKEMON
	writetext VioletHisuiTraderDusclopsText
	waitbutton
	closetext
	end

.GiveKirlia:
	givepoke KIRLIA, 27
	iffalse .PartyFull
	setevent EVENT_GOT_VIOLET_POKEMON
	writetext VioletHisuiTraderKirliaText
	waitbutton
	closetext
	end

.GiveSnover:
	givepoke SNOVER, 27
	iffalse .PartyFull
	setevent EVENT_GOT_VIOLET_POKEMON
	writetext VioletHisuiTraderSnoverText
	waitbutton
	closetext
	end

.GiveLapras:
	givepoke LAPRAS, 27
	iffalse .PartyFull
	setevent EVENT_GOT_VIOLET_POKEMON
	writetext VioletHisuiTraderLaprasText
	waitbutton
	closetext
	end


.PartyFull:
	writetext VioletHisuiTraderPartyFullText
	waitbutton
	closetext
	end

.HisuiPokemonMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "Dusclops@"
	db "Kirlia@"
	db "Snover@"
	db "Cancel@"
	db "CANCEL@"

VioletHisuiTraderRememberText:
	text "I really miss"
	line "that #mon, but"
	para "I know it was"
	line "for the best."
	done

VioletHisuiTraderText:
	text "Are you a"
	line "#mon trainer?"
	
	para "I rescued these"
	line "#mon from bad"
	para "situations, and"
	line "can't take care"
	cont "of them all."
	
	para "Would you take"
	line "one? Please?"
	done

VioletHisuiTraderDusclopsText:
	text "Oh, Dusclops?"
	
	para "It must have"
	line "beckoned to you."

	done

VioletHisuiTraderKirliaText:
	text "Kirlia! Its power"
	line "will grow as it"
	cont "bonds to you."	
	done

VioletHisuiTraderSnoverText:
	text "Snover!"
	
	para "A great companion"
	line "in the winter."
	done
	
VioletHisuiTraderLaprasText:
	text "Oh Lapras!"

	para "It has such a"
	line "lovely song."
	
	done

VioletHisuiTraderPartyFullText:
	text "Oh! Your party is"
	line "full."
	done

VioletHisuiTraderNoThanksText:
	text "You won't? But"
	line "they really need"
	cont "your help."
	done
