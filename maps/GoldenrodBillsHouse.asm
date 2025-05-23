GoldenrodBillsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 4
	warp_event  3,  7, GOLDENROD_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BillsGrandpa, -1
	object_event  5,  3, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BillsMom, -1
	object_event  5,  4, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BillsSister, -1

BillsGrandpa:
    faceplayer
    opentext
    checkevent EVENT_GOT_AMULET_COIN
    iftrue .AlreadyHaveAmuletCoin
    writetext BillsGrandpaAmuletCoinText
    promptbutton
    giveitem AMULET_COIN
    iffalse .BagFull
    setevent EVENT_GOT_AMULET_COIN
    writetext BillsGrandpaText
    waitbutton
    closetext
    end

.AlreadyHaveAmuletCoin:
    writetext BillsGrandpaText
    waitbutton
    closetext
    end

.BagFull:
    writetext BillsMomBagFullText
    waitbutton
    closetext
    end

BillsMom:
    faceplayer
    opentext
    checkevent EVENT_GOT_COIN_CASE_FROM_BILLS_MOM
    iftrue .AlreadyHaveCoinCase
    writetext BillsMomOfferText
    promptbutton
    verbosegivekeyitem COIN_CASE
    iffalse .BagFull
    setevent EVENT_GOT_COIN_CASE_FROM_BILLS_MOM
    writetext BillsMomAfterText
    waitbutton
    closetext
    end

.AlreadyHaveCoinCase:
    writetext BillsMomRemindText
    waitbutton
    closetext
    end

.BagFull:
    writetext BillsMomBagFullText
    waitbutton
    closetext
    end

BillsSister:
    jumptextfaceplayer BillsSisterText

BillsGrandpaText:
    text "Shh.. I'm trying"
    line "to watch the"
    cont "game."
    done

BillsMomOfferText:
    text "Here, take this."
    done

BillsMomAfterText:
    text "Don't tell him I"
    line "gave you that."
    done

BillsMomRemindText:
    text "Don't tell him"
	line "you got his coin"
	cont "case from me."
    done

BillsMomBagFullText:
    text "Oh, your Bag is"
    line "full. Come back"
    cont "later."
    done

BillsSisterText:
    text "My grandpa is on"
    line "DraftKingdra all"
    cont "the time."
    para "It was bad"
    line "enough living so"
    cont "close to the"
    cont "casino…"
    done
	
BillsGrandpaAmuletCoinText:
	text "Hey kid, want"
	line "to know how I"
	cont "always win at"
	cont "the slots?"
	
	para "Practice!"
	
	para "I get enough"
	line "cash with this"
	cont "trendy item."
	
	para "Take one of"
	line "these Amulet"
	cont "Coins. They"
	cont "double your"
	cont "earnings!"
	done
