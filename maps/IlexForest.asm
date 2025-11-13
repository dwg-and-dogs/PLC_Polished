IlexForest_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Callback_IlexForest_Kurt

	def_warp_events
	warp_event  3,  7, ROUTE_34_ILEX_FOREST_GATE, 3
	warp_event  5, 44, ILEX_FOREST_AZALEA_GATE, 1
	warp_event  5, 45, ILEX_FOREST_AZALEA_GATE, 2
	warp_event  11,  6, HIDDEN_TREE_GROTTO, 1

	def_coord_events
	coord_event  7, 26, 1, IlexForestKurtEngineerScript
	coord_event  7, 26, 2, IlexForestCelebiEventScript

	def_bg_events
	bg_event  5, 19, BGEVENT_JUMPTEXT, Text_IlexForestSignpost0;
	bg_event 11, 31, BGEVENT_JUMPTEXT, Text_IlexForestSignpost1;
	bg_event 20, 29, BGEVENT_ITEM + ETHER, EVENT_ILEX_FOREST_HIDDEN_ETHER ;ok
	bg_event 24, 16, BGEVENT_ITEM + SUPER_POTION, EVENT_ILEX_FOREST_HIDDEN_SUPER_POTION;ok
	bg_event  3, 19, BGEVENT_ITEM + FULL_HEAL, EVENT_ILEX_FOREST_HIDDEN_FULL_HEAL;
	bg_event 20,  9, BGEVENT_JUMPTEXT, Text_IlexForestMossRock;
	bg_event  2, 31, BGEVENT_ITEM + SILVER_LEAF, EVENT_ILEX_FOREST_HIDDEN_SILVER_LEAF_1
	bg_event 15, 17, BGEVENT_ITEM + SILVER_LEAF, EVENT_ILEX_FOREST_HIDDEN_SILVER_LEAF_2 
	bg_event 10, 24, BGEVENT_READ, IlexForestShrineScript
	bg_event 11,  5, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ILEX_FOREST
	bg_event 12,  5, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ILEX_FOREST



	def_object_events 
	object_event  9, 26, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IlexForestKurtScript, EVENT_ILEX_SHRINE_CELEBI 
	object_event 11, 27, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EngineerCamdenScript, EVENT_LOGGERS_ILEX_FOREST 
	object_event 10, 26, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GSBallScript, EVENT_LOGGERS_ILEX_FOREST
	pokemon_event  9, 27, NATU, -1, -1, PAL_NPC_RED, IlexForestShuckleText, EVENT_LOGGERS_ILEX_FOREST
	pokemon_event 10, 27, SCIZOR, -1, -1, PAL_NPC_RED, IlexForestScizorText, EVENT_LOGGERS_ILEX_FOREST
	object_event 10, 21, SPRITE_CELEBI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IlexForestCelebiScript, EVENT_KURTS_HOUSE_KURT_0
	object_event  4, 26, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IlexForestRivalScript, EVENT_ILEX_FOREST_RIVAL
	object_event 25, 24, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IlexHealerScript, -1
	object_event  5, 35, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBug_catcherWade, -1 
	object_event 13, 36, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerYoungsterJoey, -1 
	object_event 19, 25, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBug_catcherArnie, -1 
	object_event 29, 31, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerYoungsterMikey, -1 ; -
	object_event 25, 19, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerPicnickerLiz, -1 ; 
	object_event 29, 11, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerEngineerSmith, EVENT_LOGGERS_ILEX_FOREST
	object_event 15, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerOfficerMKeith, EVENT_LOGGERS_ILEX_FOREST 
	itemball_event 22, 34, REVIVE, 1, EVENT_ILEX_FOREST_REVIVE ;ok
	tmhmball_event 13, 14, TM_SAFEGUARD, EVENT_ILEX_FOREST_ANTIDOTE
	itemball_event 19, 16, SUPER_POTION, 1, EVENT_ILEX_FOREST_MULCH;OK
	fruittree_event 10, 14, FRUITTREE_ILEX_FOREST, SHORE_FOAM, PAL_NPC_BLUE;OK
	object_event 3, 8, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, IlexOfficer2InvestigationText, EVENT_SANDRA_WARPED
	


	object_const_def
	const ILEX_FOREST_KURT
	const ILEX_FOREST_CAMDEN ;ENGINEER
	const ILEX_GS_BALL
	const ILEX_SHUCKLE
	const ILEX_SCIZOR 
	const ILEX_CELEBI
	const ILEX_RIVAL

Callback_IlexForest_Kurt:
	checkevent EVENT_LOGGERS_ILEX_FOREST
	iffalse .Skip
	moveobject ILEX_FOREST_KURT, 10, 25
	turnobject ILEX_FOREST_KURT, DOWN
.Skip
	endcallback


IlexForestKurtScript:
	faceplayer
	opentext
	writetext RuinsOfAlphText
	waitbutton
	closetext
	end
	
Text_IlexForestMossRock:
	text "The rock is cover-"
	line "ed in moss."

	para "It feels pleasant-"
	line "ly cool."
	done

Text_IlexForestSignpost0:
	text "Ilex Forest is"
	line "so overgrown with"

	para "trees that you"
	line "can't see the sky."

	para "Please watch out"
	line "for items that may"
	cont "have been dropped."
	done

Text_IlexForestSignpost1:
	text "Report any susp-"
	line "icious activity"
	para "to Goldenrod"
	line "police or to"
	
	para "Silph Forestry,"
	line "on behalf of"
	para "Violet City Gym"
	line "Leader Falkner." 
	done

Text_IlexForestShrine:
	text "Ilex Forest"
	line "Shrine…"

	para "It's in honor of"
	line "the forest's"
	cont "protector…"
	done

GenericTrainerBug_catcherWade:
	generictrainer BUG_CATCHER, WADE1, EVENT_BEAT_BUG_CATCHER_WADE, Bug_catcherWadeSeenText, Bug_catcherWadeBeatenText

	text "If I find a"
	line "Tinymushroom,"
	para "could I grow"
	line "it to a Paras?"
	done

Bug_catcherWadeSeenText:
	text "Bug #mon"
	line "are so cool!"
	
	para "I love finding"
	line "new ones in the"
	cont "forest!"
	done

Bug_catcherWadeBeatenText:
	text "You'll be sorry"
	line "when they evolve!"
	done

GenericTrainerYoungsterJoey:
	generictrainer YOUNGSTER, JOEY1, EVENT_BEAT_YOUNGSTER_JOEY, YoungsterJoeySeenText, YoungsterJoeyBeatenText

	text "If I ever need"
	line "money, Pay Day"
	cont "comes in handy."
	done
	
YoungsterJoeySeenText:
	text "Isn't this"
	line "#mon cute?"
	done

YoungsterJoeyBeatenText:
	text "Yours is cute"
	line "and strong."
	done

GenericTrainerBug_catcherArnie:
	generictrainer BUG_CATCHER, ARNIE1, EVENT_BEAT_BUG_CATCHER_ARNIE, Bug_catcherArnieSeenText, Bug_catcherArnieBeatenText ;this seems to keep calling someone else... 

	text "My Yanma likes"
	line "it when we watch"
	cont "dragon movies."
	done

Bug_catcherArnieSeenText:
	text "How will forest"
	line "#mon survive"
	para "if all the trees"
	line "are logged?"
	done

Bug_catcherArnieBeatenText:
	text "Lost my buzz."
	done

GenericTrainerYoungsterMikey:
	generictrainer YOUNGSTER, MIKEY, EVENT_BEAT_YOUNGSTER_MIKEY, YoungsterMikeySeenText, YoungsterMikeyBeatenText
	text "I always carry"
	line "antidotes when"
	cont "training Ekans."
	done
	
YoungsterMikeySeenText:
	text "I found these"
	line "#mon while"
	cont "camping!"
	done

YoungsterMikeyBeatenText:
	text "Maybe they're"
	line "no good."
	done
	
GenericTrainerPicnickerLiz:
	generictrainer PICNICKER, LIZ1, EVENT_BEAT_PICNICKER_LIZ, PicnickerLizSeenText, PicnickerLizBeatenText
	text "There used to be"
	line "way more campsites"
	para "before Silph sta-"
	line "rted logging."
	done
	
	PicnickerLizSeenText:
	text "When camping in"
	line "the forest, you"
	para "need to put out"
	line "your fire!"
	done
	
	PicnickerLizBeatenText:
	text "Doused!"
	done
	
GenericTrainerEngineerSmith:
	generictrainer ENGINEER, SMITH, EVENT_BEAT_ENGINEER_SMITH, EngineerSmithSeenText, EngineerSmithBeatenText	
	text "I thought it"
	line "would make a"
	cont "Magneton..."
	done
	
	EngineerSmithSeenText:
	text "Do you know about"
	line "the Steel type?"
	done
	
	EngineerSmithBeatenText:
	text "I thought it"
	line "would make a"
	cont "Magneton..."
	done
	
GenericTrainerOfficerMKeith:	
	generictrainer OFFICERM, KEITH, EVENT_BEAT_OFFICERM_KEITH, OfficerMKeithSeenText, OfficerMKeithBeatenText	
	text "Stay out of"
	line "trouble."
	done
	
	OfficerMKeithSeenText:
	text "Halt! Do you have"
	line "a permit to be"
	cont "here?"
	done
	
	OfficerMKeithBeatenText:
	text "There's been a"
	line "lot of vandalism"
	para "here. Let me know"
	line "if you see"
	cont "anything."
	done
	
IlexHealerScript:
	faceplayer
	opentext
	writetext WantToHeal
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
	writetext IlexHealedPokemon
	waitbutton
	closetext
	end

	
IlexForestKurtEngineerScript: 
	disappear ILEX_SHUCKLE
	disappear ILEX_SCIZOR
	applymovement ILEX_FOREST_KURT, KurtMovesAfterBattle
	applymovement ILEX_FOREST_CAMDEN, CamdenMovesAfterBattle
	applymovement PLAYER, PlayerMovesBelowKurtMovement 
	showemote EMOTE_SHOCK, ILEX_FOREST_KURT, 60
	opentext
	writetext KurtText1 
	waitbutton
	closetext
	applymovement ILEX_FOREST_CAMDEN, CamdenMoves1
	opentext
	writetext CamdenText1
	promptbutton
	writetext KurtText2
	waitbutton
	closetext
	disappear ILEX_GS_BALL
	applymovement ILEX_FOREST_CAMDEN, CamdenMoves2
	opentext
	writetext CamdenText2
	waitbutton
	closetext
	clearevent EVENT_LOGGERS_ILEX_FOREST
	winlosstext CamdenWinText, 0
	setlasttalked ILEX_FOREST_CAMDEN
	loadtrainer ENGINEER, CAMDEN
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
;	special DeleteSavedMusic
;	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext CamdenLeavingText
	waitbutton
	verbosegiveitem ABILITYPATCH
	closetext
	applymovement ILEX_FOREST_CAMDEN, CamdenExitMovement
	disappear ILEX_FOREST_CAMDEN
	applymovement ILEX_FOREST_KURT, KurtShowsShrineMovement
	applymovement PLAYER, PlayerMovesToShrine
	turnobject ILEX_FOREST_KURT, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext KurtExplainsGSBallText
	waitbutton
	showemote EMOTE_SHOCK, ILEX_FOREST_KURT, 60
	writetext KurtExplainsGSBallText2
	waitbutton
	closetext
	setevent EVENT_LOGGERS_ILEX_FOREST
	setscene $0 ;won't get set for the time travel until ruins of alph is done
	waitsfx
	playmapmusic
	end	

KurtMovesAfterBattle:
	turn_head_right
	step_end
	
CamdenMovesAfterBattle:
	step_up
	turn_head_left
	step_end

PlayerMovesBelowKurtMovement:
	step_right
	step_down
	step_right
	turn_head_right
	step_end
	
KurtText1:
	text_high
    text " Kurt: "
	next
	text_start 
	text "This place is"
	line "sacred!"
	
	para "You nearly broke"
	line "this artifact!"
	done

	
CamdenMoves1:
	step_down
	turn_head_left
	step_end
	
CamdenText1:
	text_high
    text " Camden: "
	next
	text_start 
	text "We need this lum-"
	line "ber for the Vio-"
	cont "let tower!"
	done

KurtText2:
	text_high
    text " Kurt: "
	next
	text_start 
	text "Your tech is an"
	line "abomination!"
	
	para "Azalea has always"
	line "gotten by without"
	para "it. Look at what"
	line "you almost broke!"
	done

	
CamdenMoves2:
	step_left
	step_end
	
CamdenText2:
	text_high
    text " Camden: "
	next
	text_start 

	text "Progress is"
	line "natural, as I"
	cont "I naturally"
	cont "beat you."
	
	para "Oh? You have some"
	line "reinforcements?"
	done


CamdenWinText:
	text "Impressive to"
	line "beat my steel"
	cont "type."
	done

CamdenLeavingText:
	text_high
    text " Camden: "
	next
	text_start 
	
	text "We will be back"
	line "later. Progress"
	cont "isn't all bad."
	
	para "Take one of my"
	line "abilitypatches,"
	para "see if your mind"
	line "changes."
	done

CamdenExitMovement:
	step_up
	step_up
	step_left
	step_left
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

KurtShowsShrineMovement:
	step_right
	step_up
	step_end
	
PlayerMovesToShrine:
	step_up
	step_up
	step_end

	
KurtExplainsGSBallText:
	text_high
    text " Kurt: "
	next
	text_start 
	text "When did progress"
	line "at all costs bec-"
	para "come Johto's"
	line "religion?"

	para "Just look, they"
	line "nearly destroyed"
	cont "this artifact."
		
	para "I wish we could"
	line "go back in time"
	para "to keep Johto"
	line "from modernizing…"
	done

	
KurtExplainsGSBallText2:
	text_high
    text " Kurt: "
	next
	text_start 
	text "<PLAYER>!"
	line "This is the GS"
	cont "Ball!"

	para "With the right"
	line "inscription, we"
	cont "can call Celebi,"
	
	para "then we can go"
	line "back in time to"
	para "stop Johto from"
	line "modernizing!"
	
	para "The proper words"
	line "are in the Unown"
	cont "Report, which you"
	para "can get at the"
	line "Ruins of Alph."
	
	para "Can you go there"
	line "and get a copy?"
	done

WantToHeal:
	text "Did you battle"
	line "my kids? Let me"
	cont "heal your #mon."
	done

IlexHealedPokemon:
	text "Your #mon"
	line "were healed!"
	done

EngineerCamdenScript: ;shouldn't be able to access this
	done
	
GSBallScript: ;shouldn't be able to access this
	done
	
GSBallText: ;shouldn't be able to access this
	text "Object Event"
	done

IlexForestShuckleText: ; shouldn't be able to access this
	text "Object Event"
	done
	
IlexForestScizorText:
	text "Object Event"
	done ; shouldn't be able to access this

IlexForestCelebiEventScript:
	applymovement PLAYER, PlayerMovesToShrine2
	turnobject ILEX_FOREST_KURT, LEFT
	opentext
	writetext GotTheUnownReport
	promptbutton
	turnobject ILEX_FOREST_KURT, UP
	writetext InsertingGSBallText
	waitbutton
	closetext ; start to appear celebi 
	special Special_FadeOutMusic
	pause 60
	appear ILEX_RIVAL
	applymovement ILEX_RIVAL, IlexRivalWalksToShrine
	turnobject PLAYER, DOWN
	turnobject ILEX_FOREST_KURT, DOWN
	showemote EMOTE_QUESTION, ILEX_RIVAL, 60
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext IlexRivalWhatDoing
	waitbutton
	closetext
	applymovement ILEX_FOREST_KURT, KurtMovesRival
	opentext
	writetext KurtStayOutOfThis
	waitbutton
	closetext
	showemote EMOTE_SHOCK, ILEX_RIVAL, 60	
	applymovement ILEX_RIVAL, RivalWalksToYou
	turnobject PLAYER, LEFT
	opentext
	writetext RivalRespondsToKurt
	waitbutton
	closetext
	setevent EVENT_ILEX_FOREST_RIVAL
	checkevent EVENT_GOT_OSHAWOTT
	iftrue .Oshawott
	checkevent EVENT_GOT_ROWLET
	iftrue .Rowlet
	winlosstext IlexForestWinText, IlexForestLossText
	setlasttalked ILEX_RIVAL
	loadtrainer RIVAL1, RIVAL1_6 ; 
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Oshawott:
	winlosstext IlexForestWinText, IlexForestLossText
	setlasttalked ILEX_RIVAL
	loadtrainer RIVAL1, RIVAL1_4
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Rowlet:
	winlosstext IlexForestWinText, IlexForestLossText
	setlasttalked ILEX_RIVAL
	loadtrainer RIVAL1, RIVAL1_5
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	setscene $0 ; need to put it here?
	special DeleteSavedMusic
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext RivalLeavesHumiliated
	waitbutton
	closetext
	applymovement ILEX_RIVAL, IlexRivalLeavesMovement
	disappear ILEX_RIVAL
	waitsfx
	playmapmusic
	turnobject ILEX_FOREST_KURT, DOWN
	opentext
	writetext IlexKurtBackToIt
	promptbutton
	closetext
	turnobject ILEX_FOREST_KURT, UP
	turnobject PLAYER, RIGHT
	appear ILEX_CELEBI
	applymovement ILEX_CELEBI, IlexCelebiMovement
	pause 60
	showemote EMOTE_SHOCK, ILEX_FOREST_KURT, 60
	opentext
	writetext WhatIsNaturalText
	waitbutton
	closetext
	setevent EVENT_SUMMONED_CELEBI_IN_ILEX
	setevent EVENT_ILEX_SHRINE_CELEBI
	setevent EVENT_TAMMY_HOLLYS_HOLT
	opentext
	writetext YesTimeTravelText0
	waitbutton
	closetext
	disappear ILEX_CELEBI
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp HOLLYS_HOLT, 10, 26
	end

IlexForestShrineScript:
	checkevent EVENT_SUMMONED_CELEBI_IN_ILEX
	iffalse .BeautifulShrine
	opentext
	writetext AskToTimeTravelText
	yesorno
	iffalse_jumpopenedtext NoTimeTravelText
	writetext YesTimeTravelText
	waitbutton
	closetext
	special Special_CelebiShrineEvent
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp HOLLYS_HOLT, 10, 25
	end

.BeautifulShrine:
	jumpthistext

	text "A beautiful"
	line "shrine built 20"
	cont "years ago to honor"
	cont "Celebi."
	done

AskToTimeTravelText:
	text "Travel back"
	line "in time?"
	done

NoTimeTravelText:
	text "More to do in"
	line "the present." 
	done
	
YesTimeTravelText:
	text "Time to go!"
	done

RuinsOfAlphText:
	text "The GS Ball needs"
	line "an inscription"
	para "of ancient wri-"
	line "ting. I need a"
	para "sample from the"
	line "Ruins of Alph."
	done

GotTheUnownReport:
	text_high
    text " Kurt: "
	next
	text_start 
	text "Ah, <PLAYER>!"
	line "Great work."
	
	para "Let's ask Celebi"
	line "to take us back"
	para "in time to keep"
	line "Johto from "
	cont "modernizing."
	
	para "I'll inscribe"
	line "the words…"
	done

	
InsertingGSBallText:
	text_high
    text " Kurt: "
	next
	text_start 
	text "It goes on the"
	line "stage just so..."
	done

IlexCelebiMovement:
	step_down
	step_down
	step_down
	step_end ;should end right on the shrine

IlexRivalWalksToShrine:
	step_right
	step_right
	step_right
	step_right
	step_end


WhatIsNaturalText:
	text_high
    text " Celebi: "
	next
	text_start 
	text "An unnatural inv-"
	line "ention destroys"
	cont "the forest."
	
	para "If you decide"
	line "to help me, it"
	para "will take you"
	line "to unexpected"
	cont "places."	
	done

YesTimeTravelText0:
	text "Go, hero!"
	done

IlexForestCelebiScript:
	end

IlexForestRivalScript:
	end
	
PlayerMovesToShrine2:
	step_right
	step_up
	step_right
	step_end	

IlexRivalWhatDoing:
	text_high
    text " <RIVAL>: "
	next
	text_start 
	text "Hey, what are"
	line "you doing?"
	done

KurtMovesRival:
	step_down
	turn_head_left
	step_end

KurtStayOutOfThis:
	text_high
    text " Kurt: "
	next
	text_start 
	text "Stay out of this."
	
	para "We're following"
	line "Celebi, stopping"
	para "the unnatural"
	line "technologies!"
	done

	
RivalRespondsToKurt:
	text_high
    text " <RIVAL>: "
	next
	text_start 
	text "Preposterous!"
	line "Celebi looked at"
	para "me! And I have an"
	line "actual plan."
	cont "I'll show you!"
	done


RivalWalksToYou:
	step_up
	turn_head_right
	step_end

IlexForestWinText:
	text "I need better"
	line "training..."
	done

IlexForestLossText:
	text "Proves you just"
	line "can't adapt."
	done

RivalLeavesHumiliated:
	text_high
    text " <RIVAL>: "
	next
	text_start 
	text "Hmph."
	
	para "You beat me now,"
	line "but I'm only"
	cont "getting better."
	done

	
IlexRivalLeavesMovement:
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

IlexKurtBackToIt:
	text_high
    text " Kurt: "
	next
	text_start 
	text "Back to it, then."
	
	para "Celebi!"
	line "Are you there?"
	done

IlexOfficer2InvestigationText:
	text "Sorry. Can't"
	line "let you past."
	
	para "We need to keep"
	line "up security."
	
	para "There's some"
	line "noise about a"
	para "troublesome group"
	line "in Goldenrod."
	done
