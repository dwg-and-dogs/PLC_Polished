LakeOfRage_MapScriptHeader:
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_NEWMAP, LakeOfRageFlyPoint
	callback MAPCALLBACK_TILES, LakeOfRageTreeCut


	def_warp_events
	warp_event  7,  3, LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, 1 ; pryce's cabin 
	warp_event 27, 31, LAKE_OF_RAGE_MAGIKARP_HOUSE, 1
	warp_event  6, 14, HIDDEN_TREE_GROTTO, 1

	def_coord_events
	coord_event 16, 18, 0, LakeHursalunaScript
	coord_event 18, 4, 1, LakeRivalScript

	def_bg_events
	bg_event 21, 27, BGEVENT_JUMPTEXT, LakeOfRageSignText
	bg_event  9,  4, BGEVENT_JUMPTEXT, LakeOfRageSignPryceText
	bg_event 35,  2, BGEVENT_ITEM + ULTRA_BALL, EVENT_LAKE_OF_RAGE_HIDDEN_RARE_CANDY
	bg_event 10, 13, BGEVENT_ITEM + MAX_POTION, EVENT_LAKE_OF_RAGE_HIDDEN_MAX_POTION
	bg_event 11, 28, BGEVENT_ITEM + FULL_RESTORE, EVENT_LAKE_OF_RAGE_HIDDEN_FULL_RESTORE
	bg_event  6, 13, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_LAKE_OF_RAGE
	bg_event  7, 13, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_LAKE_OF_RAGE

	def_object_events
	object_event 17, 4, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT,0, LakePryceScript, -1 ;
	object_event 13, 6, SPRITE_KURT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeKurtScript, EVENT_LAKE_KURT
	object_event 24, 5, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LAKE_RIVAL  
;HURSALUNA
	object_event  16,  13, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, URSALUNA, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LAKE_HURSALUNA
;trainers
	object_event  4,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WesleyScript, -1
	pokemon_event 3,  4, GIRAFARIG, -1, -1, PAL_NPC_BROWN, WesleyMeowthText, -1
	object_event  5, 23, SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSightseerMBlaise, -1
	object_event  3, 14, SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSightseerMGareth, -1
	object_event  23, 29, SPRITE_PICNICKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSightseerFKamila, -1
	object_event  28, 26, SPRITE_PICNICKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSightseerFNoelle, -1
	object_event  18, 30,  SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerPokemaniacCalvin, -1
	object_event  33, 22,  SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerPokemaniacShane, -1
	object_event 2, 30, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LakeOfRageKimonoGirlScript, EVENT_SET_DVS_6
	object_event 7, 27, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, LakeOfRageScientistText, -1
;itemballs
	itemball_event  7,  10, ELIXIR, 1, EVENT_LAKE_OF_RAGE_ELIXIR
	itemball_event 38,  14, ULTRA_BALL, 1, EVENT_LAKE_OF_RAGE_MAX_REVIVE
	tmhmball_event 31, 3, TM_WILD_CHARGE, EVENT_GOT_TM_WILD_CHARGE 
	fruittree_event 32, 10, FRUITTREE_LAKE_OF_RAGE, TOUGH_LEAVES, PAL_NPC_GREEN

	object_const_def
	const LAKEOFRAGE_PRYCE
	const LAKEOFRAGE_KURT
	const LAKEOFRAGE_RIVAL 
	const LAKEOFRAGE_HURSALUNA

LakeOfRageFlyPoint:
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	endcallback

LakeOfRageTreeCut:
	checkevent EVENT_EXTENT_TREE
	iffalse .Done ; needs to block if we are not cut the tree 
	changeblock 4, 30, $65
.Done:
	endcallback

LakeHursalunaScript:
	appear LAKEOFRAGE_HURSALUNA
	turnobject PLAYER, UP
	earthquake 30
	applymovement LAKEOFRAGE_HURSALUNA, LakeHursalunaApproachesMovement
	earthquake 20
	cry URSARING
	pause 20
	showemote PLAYER, EMOTE_SHOCK, 20
	pause 20
	applymovement LAKEOFRAGE_HURSALUNA, LakeHursalunaApproachesMovement2
	earthquake 20	
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon URSALUNA, 45
	startbattle
	disappear LAKEOFRAGE_HURSALUNA
	reloadmapafterbattle
	setevent EVENT_LAKE_HURSALUNA
	setscene $1
	end
	
LakeKurtScript:
	;todo
	end

LakeHursalunaApproachesMovement:
	fix_facing
	fast_jump_step_down
	step_end

LakeHursalunaApproachesMovement2:
	fix_facing
	fast_jump_step_down
	step_end

LakeOfRageSignText:
	text "Silph Springs"
	
	para "Formerly known as"
	line "Lake of Rage"
	done

LakeOfRageSignPryceText:
	text "Pryce's Cabin"
	done

LakeRivalScript:
    showemote EMOTE_SHOCK, PLAYER, 15
    special Special_FadeOutMusic
    pause 15
	turnobject PLAYER, RIGHT
    appear LAKEOFRAGE_RIVAL
 	applymovement LAKEOFRAGE_RIVAL, LakeRivalToPlayer
	showtext LakeRivalText1
	appear LAKEOFRAGE_KURT
 	applymovement LAKEOFRAGE_KURT, LakeKurtToPlayer
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext LakeKurtText1
	waitbutton
	turnobject LAKEOFRAGE_RIVAL, DOWN
	writetext LakeRivalText2
	waitbutton
	writetext LakeRivalText2_2
	waitbutton
	writetext LakeRivalText2_3
	waitbutton
	turnobject LAKEOFRAGE_RIVAL, LEFT
	showemote EMOTE_BOLT, LAKEOFRAGE_RIVAL, 30
    scall LakeRivalBattleScript 
    applymovement LAKEOFRAGE_RIVAL, LakeRivalWalksAway
    setscene $2
    setevent EVENT_FOUGHT_LAKE_RIVAL
	disappear LAKEOFRAGE_RIVAL
    waitsfx
    playmapmusic
	turnobject PLAYER, LEFT
	applyonemovement LAKEOFRAGE_KURT, step_right
	applyonemovement LAKEOFRAGE_KURT, step_up
	turnobject LAKEOFRAGE_KURT, LEFT
	turnobject LAKEOFRAGE_PRYCE, RIGHT
	showemote EMOTE_QUESTION, LAKEOFRAGE_KURT, 30
	opentext
	writetext LakeKurtAfterRivalText
	waitbutton
	writetext LakePryceAfterRivalText
	waitbutton
	writetext LakeKurtAfterRivalText_2
	waitbutton
	writetext LakeShrineQuestion
	yesorno
	iffalse_jumptext LakeNoText
	waitbutton
	writetext LakePryceAfterRivalText_2
	waitbutton
	special Special_CelebiShrineEvent
	special FadeOutPalettes
	waitsfx
	warp TRANQUIL_TARN, 12, 4
	end

LakeRivalBattleScript:
    playmusic MUSIC_RIVAL_ENCOUNTER
    setevent EVENT_LAKE_RIVAL
    checkevent EVENT_GOT_OSHAWOTT
    iftrue .Oshawott
    checkevent EVENT_GOT_ROWLET
    iftrue .Rowlet
    winlosstext LakeRivalWinText, 0
    setlasttalked LAKEOFRAGE_RIVAL
    loadtrainer RIVAL1, 12 
    startbattle
    dontrestartmapmusic
    reloadmapafterbattle
    sjump .FinishRivalBattle

.Oshawott:
    winlosstext LakeRivalWinText, 0
    setlasttalked LAKEOFRAGE_RIVAL
    loadtrainer RIVAL1, 10 
    startbattle
    dontrestartmapmusic
    reloadmapafterbattle
    sjump .FinishRivalBattle

.Rowlet:
    winlosstext LakeRivalWinText, 0
    setlasttalked LAKEOFRAGE_RIVAL
    loadtrainer RIVAL1, 11 
    startbattle
    dontrestartmapmusic
    reloadmapafterbattle
    sjump .FinishRivalBattle

.FinishRivalBattle:
    special DeleteSavedMusic
    playmusic MUSIC_RIVAL_AFTER
    jumptext LakeRivalAfterText

LakeRivalText1:
	text_high
    text " <RIVAL>: "
	next
	text_start
	text "What're you"
	line "doing here?"
	done
	
LakeKurtText1:
	text_high
    text " Kurt: "
	next
	text_start
	text "Here to destroy"
	line "something else?"
	done

LakeRivalText2:
	text_high
    text " <RIVAL>: "
	next
	text_start
	text "No, just getting"
	line "material for my"
	cont "distiller."
	
	para "I had to leave"
	line "Olivine. I could"
	para "not bear to see"
	line "Silph any more."
	done

LakeRivalText2_2: 
	text_high
    text " Kurt: "
	next
	text_start
	text "Aha! So, you see"
	line "inventions upset"
	cont "the balance! You"
	
	para "You ought to"
	line "head home."
	done

LakeRivalText2_3:
	text_high
    text " <RIVAL>: "
	next
	text_start
	text "You're the one"
	line "who is upsetting"
	cont "balance!"
	
	para "Your adherence to"
	line "tradition is like"
	
	para "a Pineco infest-"
	line "ation, unaware"
	
	para "that their insti-"
	line "ncts kill their"
	cont "own habitat."
	
	para "We are part of"
	line "nature. Our niche"
	para "is to be reflect-"
	line "ive stewards."
	
	para "I'll show you how"
	line "strong I am with-"
	cont "out you!"
	done

LakeRivalWinText:
	text "I'm done living in"
	line "your shadow."
	done

LakeRivalAfterText:
	text_high
    text " <RIVAL>: "
	next
	text_start
	text "You're only gett-"
	line "ing weaker, like"
	
	para "the shrine that"
	line "fades every 20"
	cont "years. Unlike a"
	
	para "Pineco hiding in"
	line "a shell, "
	para "Or you hiding in"
	line "righteousness,"
	
	para "Or Silph hiding"
	line "behind fake"
	cont "altruism,"
	
	para "I can see my eff-"
	line "ect. I walked aw-"
	para "ay when it wasn't"
	line "working."
	
	para "<PLAYER>, when"
	line "will you?"
	done

LakeKurtAfterRivalText:
	text_high
    text " Kurt: "
	next
	text_start

	text "Is what he said"
	line "true? Isn't trad-"
	cont "ition repeating"
	cont "the past?"
	done

LakePryceAfterRivalText:
	text_high
    text " Pryce: "
	next
	text_start	
	
	text "Nature goes in"
	line "cycles. This area"
	cont "is rarely static."
	
	para "It was once a"
	line "tarn: the extent"
	cont "of a glacier."

	para "Ahead of me, a"
	line "chasm dug by a"
	cont "glacier long ago."
	
	para "Then a Gyarados"
	line "rampage shaped"
	para "the area into a"
	line "lake."
	
	para "Surely the years"
	line "after weren't easy"
	para "as people sought"
	line "balance with the"
	cont "new system."
	
	para "Now, Silph has"
	line "drained the lake."
	para "Ironically, the"
	line "future they crea-"
	cont "ted gives us a"
	para "glimpse into the"
	line "past in the mud."

	para "Now, it's up to"
	line "the Mahogany Gym"
	para "to find a new"
	line "balance here."
	
	para "That's our role"
	line "as stewards."
	done

LakeKurtAfterRivalText_2:  
	text_high
    text " Kurt: "
	next
	text_start

	text "Maybe. But! I"
	line "still think I can"
	para "save Johto from"
	line "modernizing infl-"
	cont "uences."
	
	para "Please, Pryce."
	line "You said you'd"
	cont "pray."
	done
	
LakePryceAfterRivalText_2:
	text_high
    text " Pryce: "
	next
	text_start
	
	text "Very well. It's"
	line "been so long!"
	
	para "How does it go?"
	
	para "The flow of time"
	line "shapes us,"
	
	para "As a downpour or"
	line "a sprinkle,"
	
	para "Don't panic,"
	line "have prudence!"

	para "So we can choose"
	line "our wrinkles."
	done
	


LakeRivalToPlayer:
	step_left
	step_left
	step_left
	step_up
	step_left
	step_left
	step_end

LakeKurtToPlayer:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_up
	step_end

LakeRivalWalksAway:
	step_right
	step_right
	step_down
	step_right
	step_right	
	step_right
	step_end


LakePryceScript: 
	opentext
	writetext LakeShrineQuestion
	yesorno
	iffalse_jumptext LakeNoText
	showtext LakePrayerText
	special Special_CelebiShrineEvent
	special FadeOutPalettes
	waitsfx
	warp TRANQUIL_TARN, 12, 4
	end

LakePryceReactsText:
	text "You and <RIVAL>"
	line "have different"
	para "ideas of what the"
	line "future should be."
	
	para "I wish that it'd"
	line "been possible to"
	cont "fold him in."
	
	para "He was chosen by"
	line "Celebi too, Kurt."
	done

LakeShrineQuestion:
	text_high
    text " Pryce: "
	next
	text_start
	text "<PLAYER>,"
	line "would you like to"
	cont "pray to Celebi"
	cont "with me?"
	done

LakeNoText:
	text "Some other time."
	done

LakePrayerText:
	text "The flow of time"
	line "shapes us,"
	
	para "As a downpour or"
	line "a sprinkle,"
	
	para "Don't panic,"
	line "have prudence!"

	para "So we can choose"
	line "our wrinkles."
	done

WesleyScript:
	checkevent EVENT_GOT_BLACK_BELT_FROM_WESLEY
	iftrue_jumptextfaceplayer WesleyDynamicPunchText
	faceplayer
	opentext
	writetext MeetWesleyText
	promptbutton
	writetext WesleyGivesGiftText
	promptbutton
	verbosegivetmhm TM_DYNAMICPUNCH ; 
	iffalse_endtext
	setevent EVENT_GOT_BLACK_BELT_FROM_WESLEY
	jumpopenedtext WesleyDynamicPunchText


MeetWesleyText:
	text "I am Wesley"
	line "Wednesday."

	para "Wednesday is the"
	line "exact middle of"
	cont "the week."
	
	para "A day for the"
	line "uncertainties of"
	cont "the universe to"
	
	para "collapse into one"
	line "of two states."
	done

WesleyGivesGiftText:
	text "That's why I love"
	line "this technique."
	
	para "Dynamicpunch: it"
	line "will hit or miss,"
	
	para "But you won't"
	line "know which until"
	cont "you use it!"
	
	para "Exactly like the"
	line "famous experiment"
	cont "with the Meowth-"
	
	para "Oh, nevermind."
	done

WesleyDynamicPunchText:
	text "That move has a"
	line "lot of momentum"
	
	para "but the position"
	line "is unknown."	
	done

WesleyMeowthText:
	text "Girafarig:"
	line "Rafar!"
	done

GenericTrainerSightseerFKamila:
	generictrainer SIGHTSEERF, KAMILA, EVENT_BEAT_SIGHTSEERF_KAMILA, .SeenText1, .BeatenText1

.BeatenText1:
	text "My #mon keep"
	line "my food cold"
	cont "or warm it up."
	
	para "So I can carry"
	line "whatever I like!"	
	done

.SeenText1:
	text "Want to know my"
	line "secret to carry"
	cont "less gear?"
	done

GenericTrainerSightseerFNoelle:
	generictrainer SIGHTSEERF, NOELLE, EVENT_BEAT_SIGHTSEERF_NOELLE, .SeenText2, .BeatenText2

.BeatenText2:
	text "You can find your"
	line "own way!"
	done

.SeenText2:
	text "Do you have a"
	line "map?"
	done
	
GenericTrainerSightseerMBlaise:
	generictrainer SIGHTSEERM, BLAISE, EVENT_BEAT_SIGHTSEERM_BLAISE, .SeenText3, .BeatenText3

.BeatenText3:
	text "You've got some"
	line "power!"
	done

.SeenText3:
	text "It's so nice to"
	line "unplug with a big"
	cont "hike."
	done

GenericTrainerSightseerMGareth:
	generictrainer SIGHTSEERM, GARETH, EVENT_BEAT_SIGHTSEERM_GARETH, .SeenText4, .BeatenText4

.BeatenText4:
	text "You never know"
	line "what's hidden"
	cont "around you."
	done

.SeenText4:
	text "This quarry is"
	line "even wilder than"
	cont "I expected!"
	done

GenericTrainerPokemaniacCalvin:
	generictrainer POKEMANIAC, CALVIN, EVENT_BEAT_POKEMANIAC_CALVIN, .SeenText5, .BeatenText5

.BeatenText5:
	text "I wonder how the"
	line "draining of the"
	cont "Lake will be"
	cont "remembered."
	done

.SeenText5:
	text "Before Silph, the"
	line "Lake had Gyarados"
	cont "but now there's"
	para "so many rare"
	line "#mon!"
	done


GenericTrainerPokemaniacShane:
	generictrainer POKEMANIAC, SHANE, EVENT_BEAT_POKEMANIAC_SHANE, .SeenText6, .BeatenText6

.BeatenText6:
	text "The lakebed is a"
	line "perfect niche for"
	cont "Yanmega!"
	done

.SeenText6:
	text "Have you seen any"
	line "yanma evolution?"
	done


LakeOfRageKimonoGirlScript: 
	faceplayer
	opentext
	checkevent EVENT_SET_DVS_6
	iftrue_jumptext LakeOfRageGreatnessLiesWithinText 
	opentext
	writetext LakeOfRageWhatPotentialText
	promptbutton
	loadmenu .PhysicalOrSpecialMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .PhysicalDVSettingMenus
	ifequal 2, .SpecialDVSettingMenus
	ifequal 3, .MaximumDVSetting
	jumptext LakeOfRageDV_Setting_CancelText 

.MaximumDVSetting:
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	writetext GaveMaximumDVsText
	waitbutton
	closetext
	end

.PhysicalDVSettingMenus:	
	loadmenu .PhysicalDVsMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GiveFightingDVs
	ifequal 2, .GiveFlyingDVs
	ifequal 3, .GivePoisonDVs
	ifequal 4, .GiveGroundDVs
	ifequal 5, .GiveRockDVs
	ifequal 6, .GiveBugDVs
	ifequal 7, .GiveGhostDVs
	ifequal 8, .GiveSteelDVs
	jumptext LakeOfRageDV_Setting_CancelText 

.SpecialDVSettingMenus:	
	loadmenu .SpecialDVsMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GiveFireDVs
	ifequal 2, .GiveWaterDVs
	ifequal 3, .GiveGrassDVs
	ifequal 4, .GiveElectricDVs
	ifequal 5, .GivePsychicDVs
	ifequal 6, .GiveIceDVs
	ifequal 7, .GiveDragonDVs
	ifequal 8, .GiveDarkDVs
	jumptext LakeOfRageDV_Setting_CancelText

.GiveFightingDVs:; 	db $ff, $ee, $ee
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ee
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GiveFlyingDVs: ; DVS_HP_FLYING   EQUS "$ff, $fe, $ee"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ee
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GivePoisonDVs: ; DVS_HP_POISON   EQUS "$ff, $ef, $ee"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ee
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GiveGroundDVs: ; DVS_HP_GROUND   EQUS "$ff, $ff, $ee"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ee
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GiveRockDVs: ; DVS_HP_ROCK     EQUS "$ff, $ee, $fe"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $fe
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GiveBugDVs: ; DVS_HP_BUG      EQUS "$ff, $fe, $fe"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $fe
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GiveGhostDVs: ; DVS_HP_GHOST    EQUS "$ff, $ef, $fe"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $fe
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GiveSteelDVs: ;DVS_HP_STEEL    EQUS "$ff, $ff, $fe"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $fe
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GiveFireDVs: ; EQUS "$ff, $ee, $ef"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ef
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GiveWaterDVs:;DVS_HP_WATER    EQUS "$ff, $fe, $ef"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ef
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GiveGrassDVs:;DVS_HP_GRASS    EQUS "$ff, $ef, $ef"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ef
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GiveElectricDVs:;DVS_HP_ELECTRIC EQUS "$ff, $ff, $ef"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ef
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GivePsychicDVs:;DVS_HP_PSYCHIC  EQUS "$ff, $ee, $ff"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ff
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GiveIceDVs:;DVS_HP_ICE      EQUS "$ff, $fe, $ff"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ff
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GiveDragonDVs:;DVS_HP_DRAGON   EQUS "$ff, $ef, $ff"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ff
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.GiveDarkDVs:;DVS_HP_DARK     EQUS "$fe, $ff, $ff"
	setevent EVENT_SET_DVS_6
	loadmem wPartyMon1DVs+0, $fe
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	writetext LakeOfRageGaveDVsText
	waitbutton
	closetext
	end

.PhysicalOrSpecialMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 9, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 10 
	dw .PhysicalOrSpecialMenuData
	db 1 ; default option

.PhysicalDVsMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1 
;	menu_coords 0, 0, 15, TEXTBOX_Y - 1 ; alternate syntax
	dw .PhysicalMenuData
	db 1 ; default option

.PhysicalOrSpecialMenuData:
	db STATICMENU_CURSOR | STATICMENU_WRAP
	db 3 ; items
	db "Physical@"
	db "Special@"
	db "Maximum@"
	db "Cancel@"

.PhysicalMenuData:
	db STATICMENU_CURSOR | STATICMENU_WRAP
	db 8 ; items
	db "FGT@"
	db "FLY@"
	db "PSN@"
	db "GND@"
	db "RCK@"
	db "BUG@"
	db "GHT@"
	db "STL@"
	
.SpecialDVsMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1  ;todo proper size 
	dw .SpecialMenuData
	db 1 ; default option

.SpecialMenuData:
	db STATICMENU_CURSOR | STATICMENU_WRAP ; flags
	db 8 ; items
	db "FIR@"
	db "WTR@"
	db "GRS@"
	db "ELE@"
	db "PSY@"
	db "ICE@"
	db "DGN@"
	db "DRK@"

LakeOfRageWhatPotentialText:
	text "So the legends"
	line "were true..."
	
	para "Another structure"
	line "did exist."
	
	para "You never know"
	line "what you may find"
	para "when you dig aro-"
	line "und in the muck."
	
	para "#mon can do"
	line "the same - each"
	para "one contains"
	line "multitudes."
	
	para "What potential"
	line "would you like to"
	para "express within"
	line "the first #mon"
	cont "in your party?"
	
	para "Reorganize your"
	line "party, if you"
	cont "need to."
	done

LakeOfRageGaveMaximumDVsText:
	text "Intrinsic power"
	line "maximized!"
	done

LakeOfRageGaveDVsText:
	text "Your #mon is"
	line "now expressing"
	para "that part of its"
	line "lineage."
	done

LakeOfRageDV_Setting_CancelText:
	text "Greatness lies"
	line "within - if you"
	para "have the courage"
	line "to show it!"
	done

LakeOfRageGreatnessLiesWithinText:  
	text "Greatness lies"
	line "within!"
	done	

LakeOfRageScientistText:
	text "The best time to"
	line "plant a tree is"
	cont "20 years ago."
	
	para "The next best is"
	line "right now."
	
	para "Just think, all"
	line "of these trees"
	para "were tiny little"
	line "saplings just a"
	cont "generation ago!"
	done
