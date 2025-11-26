Route32_MapScriptHeader:
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event 11, 73, ROUTE_32_POKECENTER_1F, 1
	warp_event  4,  2, ROUTE_32_RUINS_OF_ALPH_GATE, 3
	warp_event  4,  3, ROUTE_32_RUINS_OF_ALPH_GATE, 4


	def_coord_events


	def_bg_events
	bg_event 13,  3, BGEVENT_JUMPTEXT, Route32SignText
	bg_event  9,  1, BGEVENT_JUMPTEXT, Route32RuinsSignText
	bg_event  6, 80, BGEVENT_JUMPTEXT, Route32UnionCaveSignText
	bg_event 11, 14, BGEVENT_ITEM + MAX_REVIVE, EVENT_ROUTE_32_HIDDEN_SUPER_POTION_2;
	bg_event  4, 41, BGEVENT_ITEM + SILVER_LEAF, EVENT_ROUTE_32_HIDDEN_GOLD_LEAF
	bg_event 13, 84, BGEVENT_ITEM + GREAT_BALL, EVENT_ROUTE_32_HIDDEN_GREAT_BALL_2 ; ok

	def_object_events
	object_event 19,  8, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, Route32CooltrainermPetrieTrainer, -1
	object_event 16, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterAlbert, -1
	object_event  4, 36, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterGordon, -1
	object_event 11, 45, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerFisherJustin, -1
	object_event  9, 49, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerFisherHenry, -1
	object_event 13, 56, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerFisherTully, -1 ; new fisher, add SCRIPT
	object_event  4, 66, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerCamperLloyd, -1 ; renamed to lloyd
	object_event 12, 67, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FriedaScript, -1 ; venoshock
	object_event  6, 68, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBird_keeperPeter, -1
	object_event 11, 84, SPRITE_BAKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route32SlowpokeTailScript, -1
	smashrock_event 6, 82
	smashrock_event 7, 83
	itemball_event  6, 83, GEODE, 5, EVENT_ROUTE_32_REPEL
	itemball_event 10, 14, JEZE_BALL, 5, EVENT_ROUTE_32_GREAT_BALL
	cuttree_event 10, 19, EVENT_ROUTE_32_CUT_TREE
	fruittree_event 3, 31, FRUITTREE_ROUTE_32, FIXED_CHARGE, PAL_NPC_RED


Route32CooltrainermPetrieTrainer: ; fix 
	generictrainer COOLTRAINERM, PETRIE, EVENT_BEAT_COOLTRAINERM_PETRIE, PetrieSeenText, PetrieBeatenText

	text "Maybe I'll"
	line "be a pop star"
	cont "in Goldenrod."
	done

PetrieSeenText:
	text "I'm going to show"
	line "Falkner that I"
	para "deserve to train"
	line "with him!"
	done


PetrieBeatenText:
	text "I'm so deflated!"
	done
	

GenericTrainerCamperLloyd:
	generictrainer CAMPER, LLOYD, EVENT_BEAT_CAMPER_LLOYD, CamperLloydSeenText, CamperLloydBeatenText

	text "If you don't want"
	line "to battle, just"
	cont "avoid eye contact."
	done

GenericTrainerFisherJustin:
	generictrainer FISHER, JUSTIN, EVENT_BEAT_FISHER_JUSTIN, FisherJustinSeenText, FisherJustinBeatenText

	text "Calm, collected…"
	line "The essence of"

	para "fishing and #-"
	line "mon is the same."
	done

GenericTrainerFisherHenry:
	generictrainer FISHER, HENRY, EVENT_BEAT_FISHER_HENRY, FisherHenrySeenText, FisherHenryBeatenText

	text "Freshly caught"
	line "#mon are no"

	para "match for properly"
	line "raised ones."
	done

GenericTrainerFisherTully:
	generictrainer FISHER, TULLY, EVENT_BEAT_FISHER_TULLY, FisherTullySeenText, FisherTullyBeatenText

	text "There's a lot"
	line "more poison-type"
	cont "#mon with the"
	cont "mine open."
	done

GenericTrainerYoungsterAlbert:
	generictrainer YOUNGSTER, ALBERT, EVENT_BEAT_YOUNGSTER_ALBERT, YoungsterAlbertSeenText, YoungsterAlbertBeatenText

	text "I'm going to try"
	line "to be the best"
	cont "with my favorites."
	
	para "Also, my favorite"
	line "#mon are"
	para "Snorlax, Gengar,"
	line "Exeggutor, Skarm-"
	cont "ory, Tyranitar,"
	cont "and Starmie."
	done

GenericTrainerYoungsterGordon:
	generictrainer YOUNGSTER, GORDON, EVENT_BEAT_YOUNGSTER_GORDON, YoungsterGordonSeenText, YoungsterGordonBeatenText

	text "The grass is full"
	line "of clingy things."
	done

GenericTrainerBird_keeperPeter:
	generictrainer BIRD_KEEPER, PETER, EVENT_BEAT_BIRD_KEEPER_PETER, Bird_keeperPeterSeenText, Bird_keeperPeterBeatenText

	text "I need to tell"
	line "Falkner about"
	cont "these #mon."
	done

FriedaScript:
	checkevent EVENT_GOT_POISON_BARB_FROM_FRIEDA
	iftrue_jumptextfaceplayer FriedaFridayText
	faceplayer
	opentext
	checkevent EVENT_MET_FRIEDA_OF_FRIDAY
	iftrue .MetFrieda
	writetext MeetFriedaText
	promptbutton
	setevent EVENT_MET_FRIEDA_OF_FRIDAY
.MetFrieda:
	writetext FriedaGivesGiftText
	promptbutton
	verbosegivetmhm TM_VENOSHOCK ; 
	iffalse_endtext
	setevent EVENT_GOT_POISON_BARB_FROM_FRIEDA
	jumpopenedtext FriedaGaveGiftText


FisherJustinSeenText:
	text "You're scaring"
	line "away the fish!"
	done

FisherJustinBeatenText:
	text "The boardwalk is"
	line "so squeaky."
	done

FisherHenrySeenText:
	text "My #mon?"
	line "Freshly caught!"
	done

FisherHenryBeatenText:
	text "Well, you're"
	line "a pin in my"
	cont "side."
	done

YoungsterAlbertSeenText:
	text "I found some good"
	line "#mon in the"
	cont "grass!"

	para "I think they'll do"
	line "it for me!"
	done

YoungsterAlbertBeatenText:
	text "You're strong!"
	done

YoungsterGordonSeenText:
	text "I'm helping a"
	line "professor with"
	cont "his research!"
	
	para "Jealous?"
	done

YoungsterGordonBeatenText:
	text "I didn't think"
	line "that through."
	done

FisherTullySeenText:
	text "I've fished all"
	line "over Johto!"
	done

FisherTullyBeatenText:
	text "I haven't won"
	line "all over."
	done

CamperLloydSeenText:
	text "That glance…"
	line "It's intriguing."
	done

CamperLloydBeatenText:
	text "Hmmm. This is"
	line "disappointing."
	done

Bird_keeperPeterSeenText:
	text "I'm going to"
	line "show Falkner"
	cont "how bird #mon"
	cont "can win!"
	done

Bird_keeperPeterBeatenText:
	text "I know what my"
	line "weaknesses are."
	done

MeetFriedaText:
	text "I'm Frieda of"
	line "Friday!"

	para "There's a saying:"
	line "When the going is"
	cont "tough, the tough"
	cont "get going."
	
	done

FriedaGivesGiftText:
	text "But sometimes,"
	line "when the going"
	para "gets tough, it"
	line "all goes downhill!"
	para "That's Venoshock!"
	
	para "2x damage if your"
	line "foe is poisoned."
	
	done

FriedaGaveGiftText:
	text "It's wicked!"

	done

FriedaFridayText:
	text "Frieda: Veno-"
	line "shock, to kick"
	para "your opponent wh-"
	line "en they're down!"
	done


Route32SignText:
	text "Route 32"

	para "Violet City -"
	line "Union Cave"
	done

Route32RuinsSignText:
	text "Ruins of Alph"
	line "East Entrance"
	done

Route32UnionCaveSignText:
	text "Union Cave:"
	
	para "Absolutely no"
	line "trespassing!"
	
	para "-Silph Mining"

	done

Route32SlowpokeTailScript:
	checkevent EVENT_GOT_SLOWPOKETAIL_ROUTE32
	iftrue Route32BerryVendor
	faceplayer
	opentext
	writetext Route32AmenitiesText
	promptbutton
	verbosegiveitem SLOWPOKETAIL
	iffalse_endtext
	setevent EVENT_GOT_SLOWPOKETAIL_ROUTE32
	writetext Route32Slowpoketail2Text
	waitbutton
	; fallthru 
Route32BerryVendor:
	writetext Route32BerryVendorOptions
	special PlaceMoneyTopRight
	yesorno
	waitbutton
; revise from olivine stuff
	iffalse_jumpopenedtext Route32Text4
	checkmoney $0, 1000
	ifequal $2, Route32NotEnoughMoney
	promptbutton
	loadmenu .BerryMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GiveMagikarp
	ifequal 2, .GiveChinchou
	ifequal 3, .GiveCorsola
	ifequal 4, .GiveShuckle
	jumptext Route32NoFishText

;	givepoke MAGIKARP, MAGIKARP_MASK_FORM, 10, EVIOLITE, ULTRA_BALL, DRAGON_RAGE
.GiveMagikarp:
	givepoke MAGIKARP, NO_FORM, 100, LEPPA_BERRY, POKE_BALL, REVERSAL
	iffalse_jumpopenedtext Text_NoCarryRoute32
	playsound SFX_TRANSACTION
	takemoney $0, 1000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Here you go, kid!"
	line "Enjoy it!"
	done

.GiveChinchou:
	givepoke CHINCHOU, NO_FORM, 5, LEPPA_BERRY, POKE_BALL, PSYBEAM
	iffalse_jumpopenedtext Text_NoCarryRoute32
	playsound SFX_TRANSACTION
	takemoney $0, 1000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Here you go, kid!"
	line "Enjoy it!"
	done


.GiveCorsola:
	givepoke CORSOLA, NO_FORM, 5, LEPPA_BERRY, POKE_BALL, AMNESIA
	iffalse_jumpopenedtext Text_NoCarryRoute32
	playsound SFX_TRANSACTION
	takemoney $0, 1000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Here you go, kid!"
	line "Enjoy it!"
	done


.GiveShuckle:
	givepoke SHUCKLE, NO_FORM, 5, LEPPA_BERRY, POKE_BALL, SHELL_SMASH
	iffalse_jumpopenedtext Text_NoCarryRoute32
	playsound SFX_TRANSACTION
	takemoney $0, 1000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Here you go, kid!"
	line "Enjoy it!"
	done


.BerryMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData: ; see data/items/desc4
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "Magikarp@"
	db "Chinchou@"
	db "Corsola@"
	db "Shuckle@"
	db "Cancel@"
	
Route32BerryVendorOptions:
	text "My berries can"
	line "get your EVs as"
	para "low as you need!"
	
	para "Buy a dozen"
	line "for ¥1000?"
	done

Route32Text4:
	text "Suit yourself!"
	done

Route32NotEnoughMoney:
	jumpthisopenedtext

	text "You don't have"
	line "enough money…"
	done

Route32NoFishText:
	text "See you later."
	done

Text_NoCarryRoute32:
	text "You can't carry"
	line "it, kid."
	done








Route32Slowpoketail2Text:
	text "Don't look at me"
	line "like that!"
	para "It's a lab-grown"
	line "SlowpokeTail."
	done

Route32AmenitiesText:
	text "I was once a"
	line "Rocket Grunt."
	
	para "I served my time,"
	line "and got a job"
	
	para "making lunch for"
	line "Silph workers!"
	
	para "I've got a wide"
	line "selection of EV-"
	cont "reducing berries."
	
	para "But my specialty"
	line "is Slowpoketail!"
	
	para "Hungry? Take one,"
	line "I have many!"
	done
