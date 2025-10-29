Route41_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 13, 17, WHIRL_ISLAND_NW, 1
	warp_event 37, 19, WHIRL_ISLAND_NE, 1
	warp_event 13, 37, WHIRL_ISLAND_SW, 1
	warp_event 37, 45, WHIRL_ISLAND_SE, 1

	def_coord_events
	

	def_bg_events
	bg_event  24, 24, BGEVENT_ITEM + BIG_NUGGET, EVENT_ROUTE_41_HIDDEN_MAX_ETHER
	bg_event 26, 42, BGEVENT_JUMPTEXT, Route41SignText ; fix sign


	def_object_events
;sage
	object_event  41, 9, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route41SageScript, EVENT_ROUTE_41_SAGE_1
	object_event  40, 9, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route41SageScript, EVENT_ROUTE_41_SAGE_2
	object_event  35, 21, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route41SageScript2, -1
	object_event  36, 21, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route41SageScript2, -1
; scavengers doing a deep sea dive to look for stuff from cianwood, done 
	object_event 37,  4, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSwimmermKirk, -1
	object_event 23, 20, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSwimmermBerke, -1
	object_event  8, 28, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSwimmermMathew, -1
; gentleman out for a boat ride , done
	object_event 23,  8, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerGentlemanCamus, -1;;
;beauties sunbathing on a bachelorette party , done
	object_event 23, 29, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerBeautyOlivia, -1;;
	object_event 24, 26, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBeautyCharlotte, -1;;
	object_event 25, 29, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBeautyBridget, -1;;
	object_event 22, 27, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route41MatronScript, -1
;scientists collecting data for Olivine , done
	object_event 27, 41, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 1, 1, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerScientistBraydon, EVENT_BEAT_CHUCK;;
	object_event 24, 44, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerScientistCarl, EVENT_BEAT_CHUCK;;
	object_event 23, 44, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerScientistDexter, EVENT_BEAT_CHUCK;;

	object_const_def
	const ROUTE41_SAGE_1
	const ROUTE41_SAGE_2

Route41SignText:
	text "Route 41"
	line "OMLAS Weather"
	cont "Station"
	done

Route41SageScript:
	faceplayer
	showtext Route41SageImpressedText ; sees the silver wing
	turnobject ROUTE41_SAGE_1, RIGHT
	turnobject ROUTE41_SAGE_1, LEFT
	pause 60
	turnobject ROUTE41_SAGE_1, UP
	turnobject ROUTE41_SAGE_1, UP
	showtext Route41SageText2
	applyonemovement ROUTE41_SAGE_1, teleport_from
	disappear ROUTE41_SAGE_1
	applyonemovement ROUTE41_SAGE_2, teleport_from
	disappear ROUTE41_SAGE_2
	setevent EVENT_ROUTE_41_SAGE_1
	setevent EVENT_ROUTE_41_SAGE_2
	blackoutmod SHELTERED_SHORES
	end

Route41SageImpressedText:
	text "Halt! Who approa-"
	line "ches Lugia's"
	cont "islands?"
	
	para "..."
	
	para "Is that... Is it"
	line "a Silver Wing?"
	done

Route41SageText2:
	para "Clearly you honor"
	line "Lugia if you"
	para "preserve one of"
	line "her feathers."
	
	para "We grant you"
	line "passage."
	done


Route41SageScript2:
	faceplayer
	opentext
	writetext Route41AskToTimeTravel
	yesorno
	iffalse_jumpopenedtext Route41NoTimeTravel  
	writetext Route41TimeTravel
	waitbutton
	closetext
	playsound SFX_WARP_TO
	showtext Route41WaitText
	special FadeOutPalettes
	waitsfx
	warp SHELTERED_SHORES, 34, 20
	end

Route41AskToTimeTravel:
	text "Have you come to"
	line "observe Lugia's"
	para "AncientPower with"
	line "us?"
	done

Route41NoTimeTravel:
	text "Oh? But I thought"
	line "you wanted to"
	cont "join us?"
	done

Route41TimeTravel:
	text "Swirling depths,"
	line "Lugia's might"
	para "Even pulls the"
	line "Day into night."
	
	para "From the deep"
	line "she watches all,"
	para "Until tides turn"
	line "And empires fall."
	done
	
Route41WaitText:
	text "Egad! What is"
	line "happening to us?"
	done

GenericTrainerSwimmermMathew:
	generictrainer SWIMMERM, MATHEW, EVENT_BEAT_SWIMMERM_MATHEW, .SeenText10, .BeatenText10

.BeatenText10:
	text "So: what's atop"
	line "the lighthouse?"
	
	para "It's a #mon"
	line "that washed up in"
	cont "the storm."
	done

.SeenText10:
	text "If you beat me,"
	line "I'll tell you a"
	cont "secret!"
	done

GenericTrainerSwimmermBerke:
	generictrainer SWIMMERM, BERKE, EVENT_BEAT_SWIMMERM_BERKE, .SeenText9, .BeatenText9

.BeatenText9:
	text "My metal detector"
	line "is going crazy."
	
	para "Must be a big'n."
	done

.SeenText9:
	text "That nugget is"
	line "mine!"
	done

GenericTrainerSwimmermKirk:
	generictrainer SWIMMERM, KIRK, EVENT_BEAT_SWIMMERM_KIRK, .SeenText8, .BeatenText8

	text "Cianwood is but a"
	line "sandbar, now."
	done
	
.BeatenText8:
	text "Lots of stuff is"
	line "still washing up"
	cont "from Cianwood."
	
	para "Er, what used to"
	line "be Cianwood."
	done

.SeenText8:
	text "Are you looking"
	line "for buried items"
	cont "too?"
	done

GenericTrainerGentlemanCamus:
	generictrainer GENTLEMAN, CAMUS, EVENT_BEAT_GENTLEMAN_CAMUS, .SeenText7, .BeatenText7

	text "I hear there's a"
	line "rare mineral in"
	cont "Cianwood Cove."
	done

.BeatenText7:
	text "I'm hoping to get"
	line "all the way to"
	cont "Cianwood."
	
	para "I hear the storm"
	line "opened up a cave."
	done

.SeenText7:
	text "Beautiful day to"
	line "be on the sea!"
	done

Route41MatronScript:
	faceplayer
	opentext
	writetext Route41WantToHeal
	waitbutton
	closetext
	
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	
	opentext
	writetext Route41Healed
	waitbutton
	closetext
	end

Route41WantToHeal:
	text "Did my daughters"
	line "battle you? Let"
	para "me heal your"
	line "#mon."
	done

Route41Healed:
	text "Ta-ta now!"
	done

GenericTrainerBeautyOlivia:
	generictrainer BEAUTY, OLIVIA, EVENT_BEAT_BEAUTY_OLIVIA, .SeenText6, .BeatenText6

	text "I wish I had the"
	line "courage to swim"
	para "over to those"
	line "workers south of"
	cont "our beach!"
	done

.BeatenText6:
	text "Oh, I lost. I'll"
	line "never have the"
	para "nerve to swim to"
	line "those scientists."
	done

.SeenText6:
	text "You can surf? If"
	line "you win, will you"
	cont "do me a favor?"
	done

GenericTrainerBeautyCharlotte:
	generictrainer BEAUTY, CHARLOTTE, EVENT_BEAT_BEAUTY_CHARLOTTE, .SeenText5, .BeatenText5

	text "Olivia doesn't"
	line "know that those"
	para "scientists are"
	line "more nervous at"
	para "the sight of her"
	line "than she is of"
	cont "them!"
	done

.BeatenText5:
	text "Here's a little"
	line "gossip: Olivia"
	para "has a crush on"
	line "those scientists."
	done

.SeenText5:
	text "Oh, you found our"
	line "secret beach!"
	done

GenericTrainerBeautyBridget:
	generictrainer BEAUTY, BRIDGET, EVENT_BEAT_BEAUTY_BRIDGET, .SeenText4, .BeatenText4

	text "Fine, stay, but"
	line "don't linger."
	done

.BeatenText4:
	text "We're just trying"
	line "to get a tan."
	done

.SeenText4:
	text "How did you"
	line "find us?"
	done

GenericTrainerScientistBraydon:
	generictrainer SCIENTIST, BRAYDON, EVENT_BEAT_SCIENTIST_BRAYDON, .SeenText3, .BeatenText3

	text "Why didn't you let"
	line "me win to impress"
	cont "those girls?"

.BeatenText3:
	text "I should stick"
	line "to simulations."
	done

.SeenText3:
	text "Let me show off"
	line "my #mon for"
	cont "those girls!"
	done

GenericTrainerScientistCarl:
	generictrainer SCIENTIST, CARL, EVENT_BEAT_SCIENTIST_CARL, .SeenText2, .BeatenText2

	text "Chuck's OMLAS"
	line "needs terabytes"
	cont "of weathere data."
	done

.BeatenText2:
	text "This equipment"
	line "costs more than"
	cont "a master ball,"
	cont "kid."
	done

.SeenText2:
	text "Hey, this is our"
	line "weather station!"
	done

GenericTrainerScientistDexter:
	generictrainer SCIENTIST, DEXTER, EVENT_BEAT_SCIENTIST_DEXTER, .SeenText1, .BeatenText1

	text "My battle skills"
	line "are on a gradient"
	cont "descent since I"
	cont "started working."
	done

.BeatenText1:
	text "We're collecting"
	line "data to help the"
	cont "forecasting in"
	cont "Olivine."
	done

.SeenText1:
	text "So much data!"
	line "So little time!"
	done
	