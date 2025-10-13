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
	object_event 19,  8, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route32CooltrainermPetrieScript, -1
	object_event 16, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterAlbert, -1
	object_event  4, 36, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterGordon, -1
	object_event 11, 45, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerFisherJustin, -1
	object_event  9, 49, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerFisherHenry, -1
	object_event 13, 56, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerFisherTully, -1 ; new fisher, add SCRIPT
	object_event  4, 66, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerCamperLloyd, -1 ; renamed to lloyd
	object_event 12, 67, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FriedaScript, -1 ; venoshock
	object_event  6, 68, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBird_keeperPeter, -1
	object_event 11, 84, SPRITE_BAKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route32SlowpokeTailScript, -1
	smashrock_event 6, 82
	smashrock_event 7, 83
	itemball_event  6, 83, GEODE, 5, EVENT_ROUTE_32_REPEL
	itemball_event 10, 14, JEZE_BALL, 5, EVENT_ROUTE_32_GREAT_BALL
	cuttree_event 10, 19, EVENT_ROUTE_32_CUT_TREE
	fruittree_event 3, 31, FRUITTREE_ROUTE_32, FIXED_CHARGE, PAL_NPC_RED


Route32CooltrainermPetrieScript: ; fix 
	faceplayer
	opentext
	checkevent EVENT_GOT_AIR_BALLOONS_FROM_ROUTE_32_LEADER
	iftrue_jumpopenedtext GotAirBalloonsText
	checkitem SLOWPOKETAIL
	iffalse_jumpopenedtext WannaGetMeText
	showtext Route32QuestionText
	winlosstext PetrieBeatenText, 0
	loadtrainer COOLTRAINERM, PETRIE 
	startbattle
	reloadmapafterbattle	
	setevent EVENT_BEAT_COOLTRAINERM_PETRIE
	opentext
	writetext PetrieAfterText
	promptbutton
	verbosegiveitem AIR_BALLOON, 5 
	iffalse_endtext
	setevent EVENT_GOT_AIR_BALLOONS_FROM_ROUTE_32_LEADER
	jumpthisopenedtext

GotAirBalloonsText:
	text "Maybe I'll"
	line "be a pop star"
	cont "in Goldenrod."
	done


Route32QuestionText:
	text "I'm so low since"
	line "being rejected"
	cont "by Falkner."
	
	para "The only thing"
	line "that would raise"
	para "them is a tasty"
	line "SlowpokeTail..."
	
	para "Oh! I smell it!"
	
	para "I feel invigor-"
	line "ated already!"
	
	para "I'll battle you"
	line "for it!"
	done

.SeenText:
	text "My training in"
	line "Sprout Tower over-"
	cont "came even Falkner."

	para "Let's see how you"
	line "compare!"
	done

PetrieBeatenText:
	text "I'm so deflated!"
	done
	
PetrieAfterText:
	text "Maybe Falkner"
	line "was right."
		
	para "Maybe you can"
	line "use these better"
	cont "than me."
	done

WannaGetMeText:
	text "I wanted to be"
	line "a trainer in"
	cont "Falkner's Gym."
	
	para "But he said my"
	line "#mon weren't"
	para "real flying-"
	line "types!"
	
	para "I came here to"
	line "get some comfort"
	para "food - a tasty"
	line "SlowpokeTail."
	
	para "But the vendor"
	line "is so far away."
	
	para "If you go to"
	line "get me one, it"
	para "would raise my"
	line "spirits!"
	
	para "I heard you can"
	line "get one at the"
	para "end of this"
	line "route."
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
	iftrue_jumptextfaceplayer Route32Slowpoketail2Text
	faceplayer
	opentext
	writetext Route32AmenitiesText
	promptbutton
	verbosegiveitem SLOWPOKETAIL
	iffalse_endtext
	setevent EVENT_GOT_SLOWPOKETAIL_ROUTE32
	writetext Route32Slowpoketail2Text
	closetext
	end

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
	
	para "They are getting"
	line "so far into the"
	cont "cave. I hear"
	
	para "that they will"
	line "be on B2F soon."
	
	para "Hungry? Take one,"
	line "I have many!"
	done
