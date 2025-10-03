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
	blackoutmod LAKE_OF_RAGE
    showemote EMOTE_SHOCK, PLAYER, 15

    special Special_FadeOutMusic
    pause 15
	turnobject PLAYER, RIGHT
	turnobject LAKEOFRAGE_PRYCE, RIGHT
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
	special HealParty
	waitsfx
	blackoutmod TRANQUIL_TARN
	warp TRANQUIL_TARN, 12, 4
	end

LakeRivalBattleScript:
    playmusic MUSIC_RIVAL_ENCOUNTER
	setevent EVENT_LAKE_KURT
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
	cont "the balance!"
	
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
	blackoutmod TRANQUIL_TARN
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
	checkevent EVENT_GOT_TM01_DYNAMICPUNCH
	iftrue_jumptextfaceplayer WesleyDynamicPunchText
	faceplayer
	opentext
	writetext MeetWesleyText
	promptbutton
	writetext WesleyGivesGiftText
	promptbutton
	verbosegivetmhm TM_DYNAMICPUNCH ; 
	iffalse_endtext
	setevent EVENT_GOT_TM01_DYNAMICPUNCH
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

	text "Baked Alaska is"
	line "my favorite"
	cont "camping food."
	done

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

	text "Do you know the"
	line "compass arrows?"
	
	para "Never"
	line "Enter"
	cont "Spinarak"
	cont "Webs!"
	done	

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

	text "Make sure you've"
	line "got Ursaring"
	cont "spray."
	done
	
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

	text "You never know"
	line "what's hidden"
	cont "around you!"
	done

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

	text "The lake is so"
	line "tranquil, without"
	para "Gyarados thrash-"
	line "ing about."
	done

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

	text "The muddy bottom"
	line "of the lake is"
	cont "perfect for bugs!"
	done

.BeatenText6:
	text "The lakebed is a"
	line "perfect niche for"
	cont "Yanmega!"
	done

.SeenText6:
	text "Have you seen any"
	line "yanma evolution?"
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


LakeOfRageKimonoGirlScript: 
	faceplayer
	; Store the original DVs in temporary memory locations
	readmem wPartyMon1DVs+0     ; Reads value into hScriptVar
	writemem wOriginalDV1       ; Writes hScriptVar to wOriginalDV1
	readmem wPartyMon1DVs+1     ; Reads value into hScriptVar
	writemem wOriginalDV2       ; Writes hScriptVar to wOriginalDV1
	readmem wPartyMon1DVs+2     ; Reads value into hScriptVar
	writemem wOriginalDV3       ; Writes hScriptVar to wOriginalDV1
	opentext
	checkevent EVENT_SET_DVS_6
	iftrue_jumptext LakeOfRageGreatnessLiesWithinText 
	writetext LakeOfRageWhatPotentialText
	promptbutton
	loadmenu .PhysicalOrSpecialMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .PhysicalDVSettingMenus
	ifequal 2, .SpecialDVSettingMenus
	ifequal 3, .MaximumDVSetting
	jumptext LakeOfRageDV_Setting_CancelText 

.NoChange:
	jumptext LakeOfRageDV_Setting_CancelText

.EggChange:
	jumptext LakeOfRageDV_Setting_EggText

.PhysicalOrSpecialMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 9, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 10 
	dw .PhysicalOrSpecialMenuData
	db 1 ; default option

.PhysicalDVsMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
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
	menu_coords 13, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw .SpecialMenuData
	db 1 ; default option

.SpecialMenuData:
	db STATICMENU_CURSOR | STATICMENU_WRAP
	db 8 ; items
	db "FIR@"
	db "WTR@"
	db "GRS@"
	db "ELE@"
	db "PSY@"
	db "ICE@"
	db "DGN@"
	db "DRK@"

.MaximumDVSetting:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	writetext GaveMaximumDVsText_LakeOfRage
	waitbutton
	closetext
	; Show the pokemon with new DVs
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText
	yesorno
	iffalse .UndoChanges
	; Player confirms - make it permanent
	setevent EVENT_SET_DVS_6
	writetext DVChangeConfirmedText
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

.GiveFightingDVs:	; todo: Make all of the other .Give__DVs: follow this format. Keep the original values after loadmem. FOr instance, flying should still have ff, ef, ee
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ee
; begin section to copy throughout 
	opentext
	writetext GaveDVsText_LakeOfRage_Fighting ; make new writetxt for ..._Flying, _Dark, etc 
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges
; end 

.GiveFlyingDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_LakeOfRage_Flying
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GivePoisonDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_LakeOfRage_Poison
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGroundDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ee
	opentext
	writetext GaveDVsText_LakeOfRage_Ground
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveRockDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_LakeOfRage_Rock
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveBugDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_LakeOfRage_Bug
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGhostDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_LakeOfRage_Ghost
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveSteelDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $fe
	opentext
	writetext GaveDVsText_LakeOfRage_Steel
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveFireDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_LakeOfRage_Fire
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveWaterDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_LakeOfRage_Water
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveGrassDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_LakeOfRage_Grass
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveElectricDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ef
	opentext
	writetext GaveDVsText_LakeOfRage_Electric
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GivePsychicDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_LakeOfRage_Psychic
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveIceDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $fe
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_LakeOfRage_Ice
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveDragonDVs:
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ef
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_LakeOfRage_Dragon
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.GiveDarkDVs:
	loadmem wPartyMon1DVs+0, $fe
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	opentext
	writetext GaveDVsText_LakeOfRage_Dark
	waitbutton
	closetext
	; Show the pokemon with new DVs/palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wPartyMon1Species  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	waitbutton
	closepokepic
	opentext
	writetext ConfirmDVChangeText_LakeOfRage
	yesorno
	iffalse .UndoChanges
	sjump .ConfirmChanges

.ConfirmChanges:
	setevent EVENT_SET_DVS_6
	writetext DVChangeConfirmedText_LakeOfRage
	waitbutton
	closetext
	end

.UndoChanges:
;	writetext DebugStoringText
;	waitbutton
	; Store the original DVs in temporary memory locations
	readmem wOriginalDV1       ; Writes hScriptVar to wOriginalDV1
	writemem wPartyMon1DVs+0     ; Reads value into hScriptVar
	readmem wOriginalDV2       ; Writes hScriptVar to wOriginalDV1
	writemem wPartyMon1DVs+1     ; Reads value into hScriptVar
	readmem wOriginalDV3       ; Writes hScriptVar to wOriginalDV1
	writemem wPartyMon1DVs+2     ; Reads value into hScriptVar
	writetext DVChangeUndoneText_LakeOfRage
	waitbutton
	closetext
	end

GaveMaximumDVsText_LakeOfRage:
	text "Intrinsic power"
	line "maximized!"
	done

GaveDVsText_LakeOfRage:
	text "DVs are set"
	done


GaveDVsText_LakeOfRage_Fighting:
	text "Maximized DVs for"
	line "HP Fighting!"
	done

GaveDVsText_LakeOfRage_Flying:
	text "Maximized DVs for"
	line "HP Flying!"
	done

GaveDVsText_LakeOfRage_Poison:
	text "Maximized DVs for"
	line "HP Poison!"
	done

GaveDVsText_LakeOfRage_Ground:
	text "Maximized DVs for"
	line "HP Ground!"
	done

GaveDVsText_LakeOfRage_Rock:
	text "Maximized DVs for"
	line "HP Rock!"
	done

GaveDVsText_LakeOfRage_Bug:
	text "Maximized DVs for"
	line "HP Bug!"
	done

GaveDVsText_LakeOfRage_Ghost:
	text "Maximized DVs for"
	line "HP Ghost!"
	done

GaveDVsText_LakeOfRage_Steel:
	text "Maximized DVs for"
	line "HP Steel!"
	done

GaveDVsText_LakeOfRage_Fire:
	text "Maximized DVs for"
	line "HP Fire!"
	done

GaveDVsText_LakeOfRage_Water:
	text "Maximized DVs for"
	line "HP Water!"
	done

GaveDVsText_LakeOfRage_Grass:
	text "Maximized DVs for"
	line "HP Grass!"
	done

GaveDVsText_LakeOfRage_Electric:
	text "Maximized DVs for"
	line "HP Electric!"
	done

GaveDVsText_LakeOfRage_Psychic:
	text "Maximized DVs for"
	line "HP Psychic!"
	done

GaveDVsText_LakeOfRage_Ice:
	text "Maximized DVs for"
	line "HP Ice!"
	done

GaveDVsText_LakeOfRage_Dragon:
	text "Maximized DVs for"
	line "HP Dragon!"
	done

GaveDVsText_LakeOfRage_Dark:
	text "Maximized DVs for"
	line "HP Dark!"
	done

ConfirmDVChangeText_LakeOfRage:
	text "This is how your"
	line "#mon will"
	cont "appear."
	
	para "Do you wish to"
	line "make this change"
	cont "permanent?"
	done

DVChangeConfirmedText_LakeOfRage:
	text "The transformation"
	line "is complete!"
	
	para "Your #mon has"
	line "unlocked its true"
	cont "potential!"
	done

DVChangeUndoneText_LakeOfRage:
	text "Your #mon has"
	line "returned to its"
	cont "original form."
	
	para "The potential"
	line "remains dormant"
	cont "for now."
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

LakeOfRageDV_Setting_EggText:
	text "That's only an"
	line "egg! Give it time"
	cont "to grow."
	done


LakeOfRageWhatPotentialText:
	text "So the legends"
	line "were true..."
	
	para "Another structure"
	line "did exist."
	
	para "You never know"
	line "what you may find"
	para "when you dig in"
	line "the muck."
	
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

LakeKurtScript:
	faceplayer
	opentext
	writetext LakeKurtText2
	waitbutton
	closetext
	end
	
LakeKurtText2:
	text "Let's ask Pryce"
	line "to pray to Celebi"
	cont "here at the lake."
	
	para "We can go back to"
	line "stop Adrinna and"
	cont "Urgaust's mine!"
	done
