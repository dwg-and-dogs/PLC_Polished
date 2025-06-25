TinderGarden_MapScriptHeader: ;todo something weird happens when I stand to the left of the uppermost pokeball. also, at the end of the battle, the scene needs to be set to something else. 
	def_scene_scripts
	scene_script CelebiCeremonyIntroScript

	def_callbacks

	
	def_warp_events
	warp_event  4, 17, AZALEA_TOWN, 9
	warp_event  5, 17, AZALEA_TOWN, 10	
	warp_event 12,  0, RUINS_OF_ALPH_OUTSIDE, 9 
	warp_event 13,  0, RUINS_OF_ALPH_OUTSIDE, 10
	
	
	def_coord_events
	coord_event  4, 14, 1, TinderGardenTryToLeaveScript
	coord_event  5, 14, 1, TinderGardenTryToLeaveScript
	coord_event  4, 14, 3, TinderGardenRivalBattleScript1
	coord_event  5, 14, 3, TinderGardenRivalBattleScript2	;add text for the tree
	coord_event  3, 3, 4, TinderGardernWatchTheLoggersScript

	def_bg_events
	bg_event  4,  8, BGEVENT_JUMPTEXT, TGTreeText
	bg_event  4,  9, BGEVENT_JUMPTEXT, TGTreeText
	bg_event  5,  8, BGEVENT_JUMPTEXT, TGTreeText
	bg_event  5,  9, BGEVENT_JUMPTEXT, TGTreeText	
	bg_event  0, 16, BGEVENT_JUMPTEXT, LittleGiddingText
	
	def_object_events
	object_event  4, 10, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TGKurtScript, EVENT_KURT_HEARS_LOGGERS
	object_event  3, 10, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OakScript, EVENT_KURT_HEARS_LOGGERS
	object_event  5, 10, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CharcoalScript, EVENT_KURT_HEARS_LOGGERS
	object_event  5, 12, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RivalScript, EVENT_KURT_HEARS_LOGGERS
	object_event  8, 10, SPRITE_WEIRD_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CyndaquilPokeBallScript, EVENT_KURTS_HOUSE_KURT_0
	object_event  8, 11, SPRITE_WEIRD_TREE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OshawottPokeBallScript, EVENT_KURTS_HOUSE_KURT_0
	object_event  8, 12, SPRITE_WEIRD_TREE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RowletPokeBallScript, EVENT_KURTS_HOUSE_KURT_0
	object_event  4,  9, SPRITE_CELEBI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CelebiScript, EVENT_KURTS_HOUSE_KURT_0
	object_event  4, 11, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PryceScript, EVENT_TALKED_TO_PRYCE_TINDER_GARDEN 
;for the cutscene if you choose adrinna
	object_event  3, 0, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3, 1, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	pokemon_event  4, 3, CELEBI, -1, -1, PAL_NPC_GREEN, Celebi2Text, EVENT_TINDER_GARDEN_CELEBI_2


	object_const_def
	const TINDER_GARDEN_KURT
	const TINDER_GARDEN_OAK
	const TINDER_GARDEN_BLACK_BELT
	const TINDER_GARDEN_RIVAL
	const TINDER_GARDEN_POKE_BALL1
	const TINDER_GARDEN_POKE_BALL2
	const TINDER_GARDEN_POKE_BALL3	
	const TINDER_GARDEN_CELEBI
	const TINDER_GARDEN_PRYCE
	const TINDER_GARDEN_ENGINEER_1
	const TINDER_GARDEN_ENGINEER_2
	const TINDER_GARDEN_CELEBI_2

CelebiCeremonyIntroScript:
	sdefer .Script
	end
	
.Script:
	applymovement PLAYER, TGPlayerWalksToTreeMovement
	showemote EMOTE_SHOCK, PLAYER, 60
	opentext
	writetext KurtText_Intro
	waitbutton
	writetext KurtText_Intro_2
	waitbutton
	writetext KurtText_Intro_3
	waitbutton
	closetext
	applymovement TINDER_GARDEN_OAK, TGOakMovesToYouMovement
	opentext
	writetext OakText_Pokedex
	waitbutton
	playsound SFX_ITEM
	waitsfx
	writetext OakText_Balls
	getitemname POKE_BALL, $1
	callstd receiveitem
	giveitem POKE_BALL, 5
	itemnotify
	writetext CatchAll
	waitbutton
	setflag ENGINE_POKEDEX
	closetext
	applymovement TINDER_GARDEN_OAK, TGOakMovesToRivalMovement
	opentext
	writetext OakText_PokedexRival
	waitbutton
	playsound SFX_ITEM
	waitsfx
	closetext
	applymovement TINDER_GARDEN_OAK, TGOakMovesBackMovement
	opentext 
	writetext KurtLetsBegin
	waitbutton
	closetext
	turnobject TINDER_GARDEN_KURT, UP
	turnobject TINDER_GARDEN_BLACK_BELT, UP
	applymovement TINDER_GARDEN_OAK, TGOakBeginMovement 
	opentext
	writetext KurtLetsBegin2
	waitbutton
	closetext 
	pause 60
	appear TINDER_GARDEN_CELEBI
	showemote EMOTE_SHOCK, TINDER_GARDEN_KURT, 60
	applymovement TINDER_GARDEN_KURT, TGKurtMovesAway
	turnobject TINDER_GARDEN_BLACK_BELT, LEFT
	applymovement TINDER_GARDEN_CELEBI, TGCelebiMovesToYou
	opentext
	writetext CelebiHeroText
	promptbutton
	closetext
	disappear TINDER_GARDEN_CELEBI
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	appear TINDER_GARDEN_POKE_BALL1
	appear TINDER_GARDEN_POKE_BALL2	
	appear TINDER_GARDEN_POKE_BALL3	
	special Special_FadeInQuickly
	special RestartMapMusic
	applymovement TINDER_GARDEN_KURT, TGKurtMovesBeforeOak
	opentext
	writetext WasThatCelebiText 
	waitbutton
	closetext
	applymovement TINDER_GARDEN_OAK, TGOakChecksBalls 
	showemote EMOTE_SHOCK, TINDER_GARDEN_OAK, 60
	opentext
	writetext WasThatCelebiTextOak	
	waitbutton
	closetext
	applymovement TINDER_GARDEN_KURT, TGKurtChecksBalls 
	turnobject TINDER_GARDEN_BLACK_BELT, DOWN
	opentext
	writetext WasThatCelebiTextKurt
	waitbutton
	closetext
	setscene $1
	end

TGPlayerWalksToTreeMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end
	
TGOakMovesToYouMovement:
	step_down
	step_right
	turn_head_down
	step_end
	
TGOakMovesToRivalMovement:
	step_right
	turn_head_down
	step_end
	
TGOakMovesBackMovement:
	step_left
	step_left
	step_up
	turn_head_down
	step_end

KurtText_Intro:
	text_high
    text " Kurt: "
	next
	text_start 
	text "Kurt: Surprise!"
	line "Oak is here."
	
	para "Pryce couldn't"
	line "make it. I'm sure"
	cont "he'll come later."
	
	para "I see <RIVAL>"
	line "came without his"
	cont "clunky glassware."
	done

KurtText_Intro_2:
	text_high
    text " <RIVAL>: "
	next
	text_start 	
	text "Hey! My distiller"
	line "can save Azalea!"
	para "It harvests more"
	line "10x more oils -- "
	done

KurtText_Intro_3:
	text_high
    text " Kurt: "
	next
	text_start 
	text "Take a joke,"
	line "spaz!"
	done
	
OakText_Pokedex:
	text_high
    text " Oak: "
	next
	text_start 
	text "Now that you're"
	line "old enough, you"
	cont "should have this."
	
	para "It's a #dex!"
	done


OakText_Balls:
	text_high
    text " Oak: "
	next
	text_start 
	text "And you will"
	line "want these to"
	cont "fill it up."
	done

OakText_PokedexRival:
	text_high
    text " Oak: "
	next
	text_start 
	text "I brought one"
	line "for you as well."
	done

CatchAll:
	text_high
    text " Oak: "
	next
	text_start 
	text "Best of luck!"
	done
	
KurtLetsBegin:	
	text_high
    text " Kurt: "
	next
	text_start 
	text "Let's begin."
	done
	
KurtLetsBegin2:	
	text_high
    text " Kurt: "
	next
	text_start 
	text "Ilex, we honor"
	line "this tree."

	para "Yearly, its fruit"
	line "and leaves go red,"
	
	para "as if going down"
	line "in flames."
	
	para "They fall and en-"
	line "rich the soil,"

	para "So the next gene-"
	line "ration can rise"
	para "in an inheritance"
	
	line "of fallen leaves"
	para "like a phoenix"
	line "from the ashes."
	done

TGOakBeginMovement:
	step_up
	turn_head_right
	step_end

TinderGardenTryToLeaveScript:
	showtext TGWhereYouGoing
	applyonemovement PLAYER, step_up
	end

WasThatCelebiText:
	text_high
    text " Kurt: "
	next
	text_start 
	text "Was that..."
	line "Celebi?"
	
	para "And there are"
	line "3 #mon"
	cont "over there..."
	done

WasThatCelebiTextOak:
	text_high
    text " Oak: "
	next
	text_start 
	text "My #dex"
	line "doesn't recognize"
	cont "two of them."
	done

WasThatCelebiTextKurt:
	text_high
    text " Kurt: "
	next
	text_start
	text "Hold on, I"
	line "know these from"
	para "an old book."
	line "These three were"
	para "carried a hero"
	line "from Hisui."
	
	para "Kurt: Celebi"
	line "brought them for"
	para "us. You both"
	line "should pick one!"
	done

TGKurtMovesAway:
	step_down
	step_right
	turn_head_left
	step_end

TGCelebiMovesToYou:
	step_down
	step_down
	step_end

TGOakChecksBalls:
	step_down
	step_down
	step_right
	step_right
	step_right
	step_down
	step_right
	step_up
	turn_head_right
	step_up
	turn_head_right
	step_down
	step_left
	step_left
	step_left
	step_left
	step_up
	turn_head_down	
	step_end
	
TGKurtMovesBeforeOak:
	step_left
	step_up
	turn_head_down
	step_end

TGOakGoesBack:
	step_left
	step_left
	step_up
	step_left
	step_left
	step_left
	turn_head_right
	step_end

TGKurtChecksBalls:
	step_down
	step_right
	step_right
	step_right
	step_up
	turn_head_right
	step_down
	step_down
	turn_head_right
	step_up
	step_left
	step_left
	step_left
	step_up
	turn_head_down
	step_end

TGWhereYouGoing:
	text "Kurt: Wait! Where"
	line "are you going?"
	done

CyndaquilPokeBallScript: 
	checkevent EVENT_GOT_A_POKEMON
	iftrue_jumptext CelebiPokeBallText 
	refreshscreen
	pokepic CYNDAQUIL
	cry CYNDAQUIL
	waitbutton
	closepokepic
	opentext
	writetext TakeCyndaquilText
	yesorno
	iffalse_jumpopenedtext DidntChooseStarterText
	disappear TINDER_GARDEN_POKE_BALL1
	setevent EVENT_GOT_CYNDAQUIL 
	setevent EVENT_GOT_A_POKEMON
	writetext ChoseStarterText;;;
	promptbutton
	waitsfx
	givepoke CYNDAQUIL, NO_FORM, 5, ORAN_BERRY ; this only works when I have done something in the debug...
	writetext RivalChoosesStarterText;;;
	waitbutton
	closetext
	applymovement TINDER_GARDEN_RIVAL, RivalPicksOshawottMovement;;;
	pause 60
	disappear TINDER_GARDEN_POKE_BALL2
	opentext
	getmonname OSHAWOTT, STRING_BUFFER_3
	writetext RivalReceivedStarterText;;;
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	closetext
	applymovement TINDER_GARDEN_RIVAL, RivalAfterOshawottMovement
	opentext
	writetext KurtGreatJobText
	turnobject TINDER_GARDEN_KURT, RIGHT
	writetext KurtDontLoseItText
	waitbutton
	turnobject TINDER_GARDEN_KURT, DOWN
	closetext
	setevent EVENT_KURT_HEARS_LOGGERS
	setscene $3
	end
	
OshawottPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON
	iftrue_jumptext CelebiPokeBallText
	refreshscreen
	pokepic OSHAWOTT
	cry OSHAWOTT
	waitbutton
	closepokepic
	opentext
	writetext TakeOshawottText
	yesorno
	iffalse_jumpopenedtext DidntChooseStarterText
	disappear TINDER_GARDEN_POKE_BALL2
	setevent EVENT_GOT_OSHAWOTT
	setevent EVENT_GOT_A_POKEMON
	writetext ChoseStarterText
	promptbutton
	waitsfx
	givepoke OSHAWOTT, NO_FORM, 5, ORAN_BERRY
	writetext RivalChoosesStarterText
	waitbutton
	closetext
	applymovement TINDER_GARDEN_RIVAL, RivalPicksRowletMovement
	pause 60
	disappear TINDER_GARDEN_POKE_BALL3
	opentext
	getmonname ROWLET, STRING_BUFFER_3
	writetext RivalReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	closetext
	applymovement TINDER_GARDEN_RIVAL, RivalAfterRowletMovement
	opentext
	writetext KurtGreatJobText
	turnobject TINDER_GARDEN_KURT, RIGHT
	writetext KurtDontLoseItText
	turnobject TINDER_GARDEN_KURT, DOWN
	closetext
	setevent EVENT_KURT_HEARS_LOGGERS
	setscene $3
	end
	
RowletPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON
	iftrue_jumptext CelebiPokeBallText
	refreshscreen
	pokepic ROWLET
	cry ROWLET
	waitbutton
	closepokepic
	opentext
	writetext TakeRowletText
	yesorno
	iffalse_jumpopenedtext DidntChooseStarterText
	disappear TINDER_GARDEN_POKE_BALL3
	setevent EVENT_GOT_ROWLET
	setevent EVENT_GOT_A_POKEMON
	writetext ChoseStarterText
	promptbutton
	waitsfx
	givepoke ROWLET, NO_FORM, 5, ORAN_BERRY
	writetext RivalChoosesStarterText
	waitbutton
	closetext
	applymovement TINDER_GARDEN_RIVAL, RivalPicksCyndaquilMovement
	pause 60
	disappear TINDER_GARDEN_POKE_BALL1
	opentext
	getmonname CYNDAQUIL, STRING_BUFFER_3
	writetext RivalReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	closetext
	applymovement TINDER_GARDEN_RIVAL, RivalAfterCyndaquilMovement
	opentext
	writetext KurtGreatJobText
	turnobject TINDER_GARDEN_KURT, RIGHT
	writetext KurtDontLoseItText
	turnobject TINDER_GARDEN_KURT, DOWN
	closetext
	setevent EVENT_KURT_HEARS_LOGGERS
	setscene $3
	end
	
TakeCyndaquilText:	
	text_high
    text " Kurt: "
	next
	text_start
	text "So, you want"
	line "Cyndaquil, the"
	cont "fire #mon?"
	
	para "You know, that"
	line "was your dad's"
	cont "first #mon."
	done

TakeOshawottText:
	text_high
    text " Kurt: "
	next
	text_start
	text "So, you want"
	line "Oshawott, the"
	cont "water #mon?"
	done

TakeRowletText:
	text_high
    text " Kurt: "
	next
	text_start
	text "So, you want"
	line "Rowlet, the"
	cont "grass #mon?"
	done

DidntChooseStarterText:
	text_high
    text " Kurt: "
	next
	text_start
	text "Your partner is"
	line "important."
	done

ChoseStarterText:
	text_high
    text " Kurt: "
	next
	text_start
	text "That's a great"
	line "#mon!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line ""
	text_ram wStringBuffer3
	text "!"
	done

RivalChoosesStarterText:
	text "<RIVAL>: I'll"
	line "pick this one!"
	done

RivalReceivedStarterText:
	text "<RIVAL>"
    line "received"
	cont "" ;should fix the text here?
	text_ram wStringBuffer3
	text "!"
	done

KurtGreatJobText:
	text_high
    text " Kurt: "
	next
	text_start
	text "Wonderful! Now,"
	line "you both have"
	cont "great #mon."
	done

KurtDontLoseItText:
	text_high
    text " Kurt: "
	next
	text_start
	text "Let's hope that"
	line "he doesn't lose"
	cont "this one in the"
	cont "forest..."
	
	para "Now let's all"
	line "go rebuild the"
	cont "shrine!"
	done

RivalPicksRowletMovement:
	step_right
	step_right
	step_end

RivalPicksCyndaquilMovement:
	step_right
	step_up
	step_up
	step_right
	step_end

RivalPicksOshawottMovement:
	step_right
	step_up
	step_right
	step_end

RivalAfterCyndaquilMovement:
	step_left
	step_down
	step_down
	step_left
	turn_head_up
	step_end

RivalAfterRowletMovement:
	step_left
	step_left
	turn_head_up
	step_end	

RivalAfterOshawottMovement:
	step_left
	step_down
	step_left
	turn_head_up
	step_end

TinderGardenRivalBattleScript2:
	applymovement PLAYER, PlayerMovesForRivalBattle
TinderGardenRivalBattleScript1:
	turnobject PLAYER, UP
	turnobject TINDER_GARDEN_RIVAL, DOWN
	playmusic MUSIC_RIVAL_ENCOUNTER 
	applymovement TINDER_GARDEN_RIVAL, TGRivalBattleMove3 
	turnobject PLAYER, RIGHT
	opentext
	writetext TGRivalChallengeText
	waitbutton
	winlosstext TGRivalWinText, TGRivalLoseText
	setlasttalked TINDER_GARDEN_RIVAL ; needed?
	checkevent EVENT_GOT_OSHAWOTT
	iftrue .Oshawott
	checkevent EVENT_GOT_ROWLET
	iftrue .Rowlet
	loadtrainer RIVAL0, 3 ;should have oshawott
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	special DeleteSavedMusic
	playmusic MUSIC_RIVAL_AFTER 
	iftrue .AfterYourDefeat
	sjump .AfterVictorious

.Oshawott:
	loadtrainer RIVAL0, 1 ; should have rowlet
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	special DeleteSavedMusic
	playmusic MUSIC_LYRA_DEPARTURE_HGSS
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Rowlet:
	loadtrainer RIVAL0, 2 ; should have cyndaquil
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	special DeleteSavedMusic
	playmusic MUSIC_LYRA_DEPARTURE_HGSS
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.AfterVictorious:
	showtext TGRivalText_YouWon
	sjump .FinishRival

.AfterYourDefeat:
	showtext TGRivalText_YouLost
.FinishRival: 
	turnobject TINDER_GARDEN_RIVAL, LEFT
	opentext
	writetext TGRivalGoodbyeText
;	writetext TGKurtDismissesText
	promptbutton
	closetext
	applymovement TINDER_GARDEN_RIVAL, TGRivalLeavesMovement
	disappear TINDER_GARDEN_RIVAL
	pause 60
	earthquake 30
	playsound SFX_CUT 
	applymovement TINDER_GARDEN_KURT, KurtMovesForward
	showemote EMOTE_SHOCK, TINDER_GARDEN_KURT, 60
	opentext
	writetext KurtThinksTheyreCuttingTreesText
	promptbutton
	closetext
	applymovement TINDER_GARDEN_KURT, KurtLeavesInAHurryMovement
	disappear TINDER_GARDEN_KURT
	setscene $4 ; 
	setmapscene AZALEA_TOWN, $1 ;now the people shouldn't stop you
	setmapscene ILEX_FOREST, $1 ;ready for the fight at Ilex Forest
	clearevent EVENT_KURTS_HOUSE_NOTEBOOK
	clearevent EVENT_KILN_BOSS
	setevent EVENT_ILEX_FOREST_RIVAL
	playmapmusic
	end
	
TGRivalBattleMove3:
	step_down
	step_down
	turn_head_left
	step_end

CelebiPokeBallText:
	text "A gift from"
	line "Celebi."
	done

CelebiHeroText:
	text_high
    text " Celebi: "
	next
	text_start 
	text "Something unnat-"
	line "ural threatens"
	para "my forest!"
	line "Help!"
	done

OakScript:
	faceplayer
	opentext
	jumpopenedtext OakPokemonText

PryceScript:
	checkevent EVENT_GOT_RETURN_PRYCE
	iftrue_jumptextfaceplayer PryceWatchKurtPleaseText2
	faceplayer
	opentext
	writetext PrycePokemonText
	promptbutton
	verbosegivetmhm TM_RETURN
	writetext PryceWatchKurtPleaseText1
	waitbutton
	writetext PryceWatchKurtPleaseText3
	waitbutton 
	writetext PryceWatchKurtPleaseText4
	waitbutton
	closetext
	setevent EVENT_GOT_RETURN_PRYCE
	setevent EVENT_TALKED_TO_PRYCE_TINDER_GARDEN
	end

PryceWatchKurtPleaseText1:
	text_high
    text " Pryce: "
	next
	text_start
	text "<PLAYER>, please"
	line "look after Kurt."
	
	para "The world's"
	line "changing fast, so"
	cont "not everyone sees"
	para "eye-to-eye with"
	line "him - even those"
	cont "he's closest to."
	
	para "He took it hard"
	line "when your Dad"
	cont "moved away."
	done


PryceWatchKurtPleaseText3:
	text_high
    text " Pryce: "
	next
	text_start
	text "Kurt's always been"
	line "steadfast, but I"
	para "see a rigidity as"
	line "he wields tradit-"
	para "ion as a sword,"
	line "rather than the"
	para "bridge it should"
	line "be, <PLAYER>."
	done

PryceWatchKurtPleaseText4:
	text_high
    text " Pryce: "
	next
	text_start
	text "He's not entirely"
	line "wrong, mind you."
	
	para "Johto could use "
	line "more people who "
	para "care about their"
	line "community's leg-"
	cont "acy, not their"
	cont "own legacy."
	done


PrycePokemonText:
	text_high
    text " Pryce: "
	next
	text_start
	text "Oh, <PLAYER>!"
	line "Look at you now!"

	para "Forgive my"
	line "tardiness."

	para "Your very own"
	line "#mon partner!"

	para "This gift is for"
	line "you. This TM grows"
	cont "stronger with"
	cont "your bond!"
	done

PryceWatchKurtPleaseText2:
	text_high
    text " Pryce: "
	next
	text_start
	text "<PLAYER>, please"
	line "look out for Kurt"
	cont "for me, alright?"
	done

TGKurtScript:
	faceplayer
	opentext
	jumpopenedtext TGKurtFirstPokemonText

OakPokemonText:
	text "What strange"
	line "#mon. I"
	cont "haven't had a"
	cont "rush like that"
	cont "in years!"
	done


CharcoalScript:
	faceplayer
	opentext
	jumpopenedtext CharcoalCuttingText

CharcoalCuttingText:
	text "They've been"
	line "building this"
	para "shrine every 20"
	line "years for many"
	cont "generations."

	para "But now, it's"
	line "uncertain. The"
	para "forest is so"
	line "thin, we can't"
	cont "make Charcoal."
	
	para "How will we go"
	line "on?"
	done

TGKurtFirstPokemonText:
	text "Your first"
	line "#mon! So"
	cont "exciting."
	done

RivalScript:
	faceplayer
	opentext
	jumpopenedtext RivalIndependentText

RivalIndependentText:
	text_high
    text " <RIVAL>: "
	next
	text_start
	text "No one"
	para "appreciates my"
	line "ingenuity."
	done

TGRivalChallengeText:
	text_high
    text " <RIVAL>: "
	next
	text_start
	text "<PLAYER>, now"
	line "that we both"
	para "have #mon,"
	line "let's battle!"
	
	para "I'll show you,"
	line "your gramps, and"
	para "this whole town"
	line "that I'm capable!"
	done

TGRivalLoseText:
	text_high
    text " <RIVAL>: "
	next
	text_start
	text "Showed you."
	
	para "Oh, Kurt, I"
	line "heard that jab"
	cont "about losing this"
	cont "#mon."
	done

TGRivalWinText:
	text_high
    text " <RIVAL>: "
	next
	text_start
	text "I'm only going"
	line "to get stronger."
	
	para "Oh, Kurt, I"
	line "heard that jab"
	para "about losing this"
	line "#mon."
	done

TGRivalText_YouWon:
	text_high
    text " <RIVAL>: "
	next
	text_start
	text "I've been trea-"
	line "ted like I can't"
	cont "do anything."
	
	para "I'm going to"
	line "show you all!"
	done
	
TGRivalText_YouLost:
	text_high
    text " <RIVAL>: "
	next
	text_start
	text "This is just"
	line "the beginning."
	
	para "I know I can"
	line "reach my true"
	cont "power without"
	cont "you all hold-"
	cont "ing me back."
	done

TGRivalGoodbyeText:
	text_high
    text " <RIVAL>: "
	next
	text_start
	text "With my own"
	line "#mon, I'm"
	cont "leaving."
	
	para "My invention could"
	line "have saved us."
	
	para "Who put you in"
	line "charge, anyway?"
	done



PlayerMovesForRivalBattle:
	step_left
	turn_head_up
	step_end

TGRivalLeavesMovement:
	step_down
	step_down
	step_down
	step_end

KurtThinksTheyreCuttingTreesText:	
	text_high
    text " Kurt: "
	next
	text_start
	text "What's that?"
	
	para "Are they cutting"
	line "by the shrine?"

	para "That's against"
	line "the agreement!"
	
	para "<PLAYER>, we"
	line "need to stop them!"
	
	para "With a #mon,"
	line "you can catch"
	cont "more nearby."
	
	para "Hang on, Ilex!"
	line "I'm on my way!"
	done


KurtMovesForward:
	step_down
	step_down
	step_end

KurtLeavesInAHurryMovement:
	step_down
	step_right
	step_down
	step_down
	step_down
	step_down
	step_end

TGTreeText:
	text "A beautiful"
	line "blossoming "
	cont "tree. "
	
	para "Its aromatic"
	line "bark will att-"
	cont "ract #mon."
	done

CelebiScript:
	end
	
	
TinderGardernWatchTheLoggersScript:
;cf western capital scene 
	turnobject PLAYER, UP
	showemote EMOTE_QUESTION, TINDER_GARDEN_ENGINEER_1, 60
	showtext GardenEngineerText1
	pause 60
	showemote EMOTE_BOLT, TINDER_GARDEN_ENGINEER_2, 60
	showtext GardenEngineerText2		
	closetext
	turnobject TINDER_GARDEN_ENGINEER_1, RIGHT
	pause 60
	playsound SFX_CUT
	waitsfx
	changeblock 4, 0, $01 
	reloadmappart
	pause 60
	disappear TINDER_GARDEN_CELEBI_2
	pause 60
	turnobject TINDER_GARDEN_ENGINEER_1, DOWN
	pause 60
	showtext GardenEngineerText3
	turnobject TINDER_GARDEN_ENGINEER_2, UP
	showtext GardenEngineerText4
	pause 60
	closetext
	halloffame
	end
	
GardenEngineerText1:
	text "Is this the one?"
	line "I couldn't find"
	cont "any other blossom"
	cont "trees."
	done

	
GardenEngineerText2:
	text "Yup, it may be the"
	line "last one in"
	cont "Johto."
	done

	
Celebi2Text:
	text "..."
	done

GardenEngineerText3:
	text "What are we using"
	line "this for, anyway?"
	done

GardenEngineerText4:
	text "Hoenn wants the"
	line "them for an extr-"
	cont "avagant shrine."
	
	para "I'm glad Johto"
	line "doesn't have such"
	para "wasteful things"
	line "ever since that"
	para "kid toppled the"
	line "Consul some"
	cont "160 years ago."
	
	para "What was their"
	line "name again?"
	done


LittleGiddingText:
	text "We shalln't cease"
	line "from exploration,"
	
	para "And the end of"
	line "our exploring,"
	
	para "Will be to arrive"
	line "where we started,"
	
	para "And know it as if"
	line "for the 1st time."
	done
