ROUTE39FARMHOUSE_MILK_PRICE EQU 500
ROUTE39FARMHOUSE_DOZEN_MILK_PRICE EQU 5000

Route39Farmhouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_39, 2
	warp_event  3,  7, ROUTE_39, 2

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_JUMPSTD, picturebookshelf
	bg_event  7,  1, BGEVENT_JUMPSTD, picturebookshelf

	def_object_events
	object_event  3,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PokefanM_DairyFarmer, -1
	object_event  5,  4, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PokefanF_AcrobaticsFarmer, -1

PokefanM_DairyFarmer:
	faceplayer
	opentext
	checkevent EVENT_MILTANK_SUICUNE
	iffalse FarmerMScript_SellMilk
	writetext FarmerText_Rustler
	waitbutton
	closetext
	end

FarmerMScript_SellMilk:
;	checkflag ENGINE_BOUGHT_MOOMOO_MILK
;	iftrue .Milking
	opentext
	writetext FarmerMText_BuyMilk
	special PlaceMoneyTopRight
	loadmenu .MenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, .Buy1
	ifequal $2, .Buy12
	sjump .Cancel

.Buy1:
	checkmoney $0, ROUTE39FARMHOUSE_MILK_PRICE
	ifequal $2, .NotEnoughMoney
	giveitem MOOMOO_MILK
	iffalse .BagFull
	takemoney $0, ROUTE39FARMHOUSE_MILK_PRICE
	sjump .Done

.Buy12:
	checkmoney $0, ROUTE39FARMHOUSE_DOZEN_MILK_PRICE
	ifequal $2, .NotEnoughMoney
	giveitem MOOMOO_MILK, 12
	iffalse .BagFull
	takemoney $0, ROUTE39FARMHOUSE_DOZEN_MILK_PRICE

.Done:
	setflag ENGINE_BOUGHT_MOOMOO_MILK
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	writetext FarmerMText_GotMilk
	promptbutton
	itemnotify
	endtext

.Cancel:
	jumpopenedtext FarmerMText_NoSale

.NotEnoughMoney:
	jumpopenedtext FarmerMText_NoMoney

.BagFull:
	jumpopenedtext FarmerMText_NoRoom

.MenuDataHeader:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 14 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "× 1    ¥{d:ROUTE39FARMHOUSE_MILK_PRICE}@"
	db "×12   ¥{d:ROUTE39FARMHOUSE_DOZEN_MILK_PRICE}@"
	db "Cancel@"

.Milking:
	jumpopenedtext FarmerMText_Milking

PokefanF_AcrobaticsFarmer:
	faceplayer
	opentext
	checkevent EVENT_MILTANK_SUICUNE
	iftrue_jumpopenedtext FarmerText_Rustler
	jumpopenedtext FarmerFText_GreatCows

FarmerText_Rustler:
	text "Hey! Get out of"
	line "our house, you"
	cont "Rustler!"
	done

FarmerFText_GreatCows:
	text "Believe it or not"
	line "there are more"
	para "Miltank alive now"
	line "than any other"
	cont "time in the past!"
	done

FarmerMText_BuyMilk:
	text "How'd you like my"
	line "Moomoo Milk?"

	para "It's my pride and"
	line "joy, there."

	para "#mon drink it"
	line "to restore HP!"
	done

FarmerMText_GotMilk:
	text "Here ya go!"
	line "Drink up'n enjoy!"
	done

FarmerMText_NoMoney:
	text "Sorry, there."
	line "No cash, no sale!"
	done

FarmerMText_NoRoom:
	text "I reckon yer"
	line "Bag's full."
	done

FarmerMText_NoSale:
	text "You don't want it?"
	line "Come again, hear?"
	done

FarmerMText_Milking:
	text "Back to work!"
	done

FarmerFText_InTrouble:
	text "I think our cows"
	line "are lucky to be"
	cont "at our ranch."
	
	para "Our ponds are cl-"
	line "osed loop pools."
	para "Water they drink"
	line "goes right back"
	cont "a bit later."
	
	para "And the sheen on"
	line "the ponds changes"
	cont "with the seasons!"
	
	para "Magical, right?"
	done
