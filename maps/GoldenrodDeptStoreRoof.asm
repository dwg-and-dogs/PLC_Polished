GoldenrodDeptStoreRoof_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, GoldenrodDeptStoreRoofCheckSaleChangeBlock
	callback MAPCALLBACK_OBJECTS, GoldenrodDeptStoreRoofCheckSaleChangeClerk

	def_warp_events
	warp_event 13,  1, GOLDENROD_DEPT_STORE_6F, 3

	def_coord_events

	def_bg_events
	bg_event 15,  3, BGEVENT_RIGHT, Binoculars1
	bg_event 15,  5, BGEVENT_RIGHT, Binoculars2
	bg_event 15,  6, BGEVENT_RIGHT, Binoculars3
	bg_event  3,  0, BGEVENT_UP, PokeDollVendingMachine

	def_object_events
	object_event  2,  1, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofScientistScript, -1
	pokemon_event  1, 1, WEEZING, -1, -1, PAL_NPC_BLUE, WeezingText, -1
	object_event 10,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStoreRoofPokefanFText, -1
;	object_event 12,  4, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofSuperNerdScript, EVENT_GOLDENROD_SALE_ON
	object_event  3,  4, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStoreRoofTwinText, EVENT_GOLDENROD_SALE_ON
	object_event  1,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_ROOFTOP, 0, EVENT_GOLDENROD_SALE_OFF
	object_event  7,  0, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStoreRoofPokefanMText, EVENT_GOLDENROD_SALE_OFF
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStoreRoofTeacherText, EVENT_GOLDENROD_SALE_OFF
	object_event  1,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStoreRoofBugCatcherText, EVENT_GOLDENROD_SALE_OFF

GoldenrodDeptStoreRoofCheckSaleChangeBlock:
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .ChangeBlock
	endcallback

.ChangeBlock:
	changeblock 0, 2, $3f
	changeblock 0, 4, $f
	endcallback

GoldenrodDeptStoreRoofCheckSaleChangeClerk:
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .ChangeClerk
	setevent EVENT_GOLDENROD_SALE_OFF
	clearevent EVENT_GOLDENROD_SALE_ON
	endcallback

.ChangeClerk:
	clearevent EVENT_GOLDENROD_SALE_OFF
	setevent EVENT_GOLDENROD_SALE_ON
	endcallback

WeezingText:
	text "(Puff!) (Puff!)"
	done

GoldenrodDeptStoreRoofScientistScript:
	faceplayer
	opentext
	writetext GivingBalloonText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext NoMoneyTextBalloon
	checkmoney $0, 5000
	ifequal $2, AirBalloonNotEnoughMoney 
	promptbutton
	giveitem AIR_BALLOON
	playsound SFX_TRANSACTION
	takemoney $0, 5000
	special PlaceMoneyTopRight
	writetext GotBalloonsText
	waitbutton
	closetext
	end

AirBalloonNotEnoughMoney:
	jumptext NoMoneyTextBalloon

GotBalloonsText:
    text "Principles of"
    line "buoyancy apply"
    cont "to #mon too!"
    done

NoMoneyTextBalloon:
	text "Do you know how"
	line "much Helium costs"
	cont "these days?"
	done

GivingBalloonText:
    text "Ah, fascinating!"
	
    para "See my Weezing?"
    line "It rises until"
    para "the buoyant"
    line "force is zero."
    
	para "Just like this"
    line "Air Balloon. It"
    cont "works similarly."
	
	para "I'll sell to you"
	line "for 5000."
    done
	

GoldenrodDeptStoreRoofSuperNerdScript:
	showtext GoldenrodDeptStoreRoofSuperNerdOhWowText
	faceplayer
	showtext GoldenrodDeptStoreRoofSuperNerdQuitBotheringMeText
	turnobject LAST_TALKED, RIGHT
	end

Binoculars1:
	jumptext Binoculars1Text

Binoculars2:
	jumptext Binoculars2Text

Binoculars3:
	jumptext Binoculars3Text

PokeDollVendingMachine:
	opentext
	writetext PokeDollVendingMachineText
.Start:
	special PlaceMoneyTopRight
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequal $1, .JigglypuffDoll
	ifequal $2, .DittoDoll
	ifequal $3, .MeowthDoll
	endtext

.JigglypuffDoll:
	checkmoney $0, 2400
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_JIGGLYPUFF_DOLL
	iftrue .AlreadyBought
	takemoney $0, 2400
	setevent EVENT_DECO_JIGGLYPUFF_DOLL
	writetext BoughtJigglypuffDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext JigglypuffDollSentText
	waitbutton
	sjump .Start

.DittoDoll:
	checkmoney $0, 2400
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_DITTO_DOLL
	iftrue .AlreadyBought
	takemoney $0, 2400
	setevent EVENT_DECO_DITTO_DOLL
	writetext BoughtDittoDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext DittoDollSentText
	waitbutton
	sjump .Start

.MeowthDoll:
	checkmoney $0, 2400
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_MEOWTH_DOLL
	iftrue .AlreadyBought
	takemoney $0, 2400
	setevent EVENT_DECO_MEOWTH_DOLL
	writetext BoughtMeowthDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext MeowthDollSentText
	waitbutton
	sjump .Start

.NotEnoughMoney:
	writetext PokeDollVendingMachineNoMoneyText
	waitbutton
	sjump .Start

.AlreadyBought:
	writetext PokeDollVendingMachineAlreadyBoughtText
	waitbutton
	sjump .Start

.MenuData:
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Jigglypuff  ¥2400@"
	db "Ditto       ¥2400@"
	db "Meowth      ¥2400@"
	db "Cancel@"

GoldenrodDeptStoreRoofPokefanFText:
	text "Whew, I'm tired."

	para "I sometimes come"
	line "up to the rooftop"

	para "to take a break"
	line "from shopping."
	done

GoldenrodDeptStoreRoofTwinText:
	text "They have bargain"
	line "sales here every"
	cont "so often."
	done

GoldenrodDeptStoreRoofSuperNerdOhWowText:
	text "Oh, wow!"
	done

GoldenrodDeptStoreRoofSuperNerdQuitBotheringMeText:
	text "Will you quit"
	line "bothering me?"
	done

GoldenrodDeptStoreRoofPokefanMText:
	text "There's something"
	line "I really want, but"

	para "I don't have the"
	line "necessary cash…"

	para "Maybe I'll sell"
	line "off the Berries"
	cont "I've collected…"
	done

GoldenrodDeptStoreRoofTeacherText:
	text "Oh, everything is"
	line "so cheap!"

	para "I bought so much,"
	line "my Bag's crammed!"
	done

GoldenrodDeptStoreRoofBugCatcherText:
	text "My #mon always"
	line "get paralyzed or"

	para "poisoned when the"
	line "chips are down…"

	para "So I came to buy"
	line "some Full Heal."

	para "I wonder if"
	line "there's any left?"
	done



Binoculars1Text:
	text "Wow, I can see"
	line "the whole magnet"
	cont "train route!"
	
	para "Wait, are those"
	line "Prinplup playing"
	cont "at the peak?"
	done

Binoculars2Text:
	text "Why does Sprout"
	line "Tower look so"
	cont "metallic?"
	done

Binoculars3Text:
	text "There's so much"
	line "activity outside"
	cont "Union Cave."
	done

PokeDollVendingMachineText:
	text "A vending machine"
	line "for #mon dolls!"
	done

PokeDollVendingMachineNoMoneyText:
	text "It costs too much!"
	done

PokeDollVendingMachineAlreadyBoughtText:
	text "It's a duplicate!"
	done

BoughtJigglypuffDollText:
	text "<PLAYER> bought"
	line "Jigglypuff Doll."
	done

JigglypuffDollSentText:
	text "Jigglypuff Doll"
	line "was sent home."
	done

BoughtDittoDollText:
	text "<PLAYER> bought"
	line "Ditto Doll."
	done

DittoDollSentText:
	text "Ditto Doll"
	line "was sent home."
	done

BoughtMeowthDollText:
	text "<PLAYER> bought"
	line "Meowth Doll."
	done

MeowthDollSentText:
	text "Meowth Doll"
	line "was sent home."
	done
