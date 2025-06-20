AzaleaTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, AzaleaTownFlypointCallback


	def_warp_events ; good
	warp_event 17,  5, AZALEA_POKECENTER_1F, 1
	warp_event 21, 13, CHARCOAL_KILN, 1
	warp_event 21,  5, AZALEA_MART, 2
	warp_event  9,  5, KURTS_HOUSE, 1
	warp_event 10, 15, AZALEA_GYM, 1
	warp_event 31,  7, SLOWPOKE_WELL_ENTRANCE, 1
	warp_event  2, 10, ILEX_FOREST_AZALEA_GATE, 3
	warp_event  2, 11, ILEX_FOREST_AZALEA_GATE, 4
	warp_event 14,  0, TINDER_GARDEN, 1
	warp_event 15,  0, TINDER_GARDEN, 1

	def_coord_events
	coord_event  5, 10, 0, Azalea_PokefanStopsYouTrigger1
	coord_event  5, 11, 0, Azalea_PokefanStopsYouTrigger2
	coord_event 20, 10, 0, Azalea_GrampsStopsYouTrigger1
	coord_event 20, 11, 0, Azalea_GrampsStopsYouTrigger2

	def_bg_events
	bg_event 22,  8, BGEVENT_JUMPTEXT, AzaleaTownSignText
	bg_event 10,  9, BGEVENT_JUMPTEXT, KurtsHouseSignText
	bg_event 14, 15, BGEVENT_JUMPTEXT, AzaleaGymSignText
	bg_event 29,  8, BGEVENT_JUMPTEXT, SlowpokeWellSignText
	bg_event 19, 13, BGEVENT_JUMPTEXT, CharcoalKilnSignText
	bg_event  3,  9, BGEVENT_JUMPTEXT, AzaleaTownIlexForestSignText
	bg_event 31,  6, BGEVENT_ITEM + FULL_HEAL, EVENT_AZALEA_TOWN_HIDDEN_FULL_HEAL

	def_object_events
	object_event 18, 10, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, 			OBJECTTYPE_SCRIPT, 0, AzaleaTownGrampsScript, -1
	object_event  7, 10, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_BLUE, 		OBJECTTYPE_SCRIPT, 0, AzaleaTownPokefanFScript, -1
; others 
	object_event 26,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 			PAL_NPC_BLUE, 		OBJECTTYPE_SCRIPT, 0, PokemonMemoriesNPCScript, -1
	object_event 12, 16, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, 0, 						OBJECTTYPE_SCRIPT, 0, AzaleaTownMatronScript, -1
	object_event 13,  8, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, 						OBJECTTYPE_SCRIPT, 0, KurtAZScript, EVENT_CHARCOAL_TALKED
	object_event 13, 11, SPRITE_CAMPER, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, 0, 							OBJECTTYPE_SCRIPT, 0, AzaleaTownYoungsterScript, -1
; others 
	object_event  8, 17, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, SLOWPOKE, -1, -1, PAL_NPC_RED, 		OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, -1
	object_event 29,  9, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, SLOWPOKE, -1, -1, PAL_NPC_RED, 		OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, -1
	object_event 15, 15, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, SLOWPOKE, -1, -1, PAL_NPC_RED, 		OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, -1
	fruittree_event  8,  2, FRUITTREE_AZALEA_TOWN, WHT_APRICORN, PAL_NPC_SILVER


	object_const_def
	const AZALEATOWN_GRAMPS
	const AZALEATOWN_POKEFAN_F


AzaleaTownFlypointCallback:
	setflag ENGINE_FLYPOINT_AZALEA
	endcallback

Azalea_PokefanStopsYouTrigger1: ;todo how do these people know when it's time to let you do it?... 
	playmusic MUSIC_MOM
	turnobject AZALEATOWN_POKEFAN_F, LEFT
	showtext Text_WaitPlayer
	turnobject PLAYER, RIGHT
	applymovement AZALEATOWN_POKEFAN_F, Movement_PokefanFRunsToYou1_AT
	showtext Text_WhatDoYouThinkYoureDoing
	follow AZALEATOWN_POKEFAN_F, PLAYER
	applymovement AZALEATOWN_POKEFAN_F, Movement_PokefanFBringsYouBack1_AT
	stopfollow
	showtext Text_ItsDangerousToGoAlone
	special RestartMapMusic
	end

Azalea_PokefanStopsYouTrigger2:
	playmusic MUSIC_MOM
	turnobject AZALEATOWN_POKEFAN_F, LEFT
	showtext Text_WaitPlayer
	turnobject PLAYER, RIGHT
	applymovement AZALEATOWN_POKEFAN_F, Movement_PokefanFRunsToYou2_AT
	showtext Text_WhatDoYouThinkYoureDoing
	follow AZALEATOWN_POKEFAN_F, PLAYER
	applymovement AZALEATOWN_POKEFAN_F, Movement_PokefanFBringsYouBack2_AT
	stopfollow
	showtext Text_ItsDangerousToGoAlone
	special RestartMapMusic
	end

Azalea_GrampsStopsYouTrigger1:
	playmusic MUSIC_MOM
	turnobject AZALEATOWN_GRAMPS, RIGHT
	showtext Text_WaitPlayer
	turnobject PLAYER, LEFT
	applymovement AZALEATOWN_GRAMPS, Movement_GrampsRunsToYou1_AT
	showtext Text_WhatDoYouThinkYoureDoing
	follow AZALEATOWN_GRAMPS, PLAYER
	applymovement AZALEATOWN_GRAMPS, Movement_GrampsBringsYouBack1_AT
	stopfollow
	showtext Text_ItsDangerousToGoAlone
	special RestartMapMusic
	end
	
Azalea_GrampsStopsYouTrigger2:
	playmusic MUSIC_MOM
	turnobject AZALEATOWN_GRAMPS, RIGHT
	showtext Text_WaitPlayer
	turnobject PLAYER, LEFT
	applymovement AZALEATOWN_GRAMPS, Movement_GrampsRunsToYou2_AT
	showtext Text_WhatDoYouThinkYoureDoing
	follow AZALEATOWN_GRAMPS, PLAYER
	applymovement AZALEATOWN_GRAMPS, Movement_GrampsBringsYouBack2_AT
	stopfollow
	showtext Text_ItsDangerousToGoAlone
	special RestartMapMusic
	end

AzaleaTownSignText:
	text "Azalea Town"
	line "Where People and"

	para "#mon Live in"
	line "Happy Harmony"
	done

KurtsHouseSignText:
	text "Kurt's House"
	done

AzaleaGymSignText:
	text "Azalea Town"
	line "#mon Gym"
	cont "Leader: Bugsy"

	para "The Walking"
	line "Bug #mon"
	cont "Encyclopedia"
	done

SlowpokeWellSignText:
	text "Slowpoke Well"

	para "Records show that"
	line "a Slowpoke's yawn"

	para "ended a drought"
	line "400 years ago."
	done

CharcoalKilnSignText:
	text "Charcoal Kiln"
	done

AzaleaTownIlexForestSignText:
	text "Ilex Forest"

	para "Enter through the"
	line "gate."
	done

AzaleaTownGrampsScript:
	checkevent EVENT_GOT_A_POKEMON
	iftrue_jumptextfaceplayer .Text2
	jumpthistextfaceplayer

	text "<PLAYER>, you"
	line "have a ceremony"
	cont "today."
	
	para "At mine, we had"
	line "so many people."
	
	para "I hope you get"
	line "a good showing."
	done

.Text2:
	text "Slowpoke well"
	line "is so deep."

	para "I wonder if it"
	line "connects to"
	cont "Union Cave?"
	done

KurtAZScript:
	opentext
	jumpthisopenedtext
	
	text "Follow this path"
	line "when you have"
	para "talked to the"
	line "Charcoal family."
	done

AzaleaTownPokefanFScript:
	checkevent EVENT_GOT_A_POKEMON
	iftrue_jumptextfaceplayer .Text3
	jumpthistextfaceplayer

	text "Good luck at"
	line "your ceremony!"
	done
	
.Text3:
	text "The legend of"
	line "Slowpoke Well?"
	
	para "There was a"
	line "deep drought."
	
	para "Azaleans dug"
	line "for water. A"
	para "Slowpoke crawled"
	line "out of the hole,"
	para "yawned, and a"
	line "rain started for"
	cont "thirty days!"
	done


AzaleaTownYoungsterScript:
	checkevent EVENT_GOT_A_POKEMON
	iftrue_jumptextfaceplayer .Text4
	jumpthistextfaceplayer

	text "I'm surprised"
	line "<RIVAL> is doing"
	para "the ceremony. He"
	line "doesn't seem to"
	para "get along with"
	line "Kurt."
	done

.Text4:
	text "If I had my own"
	line "#mon, I would"
	cont "go exploring."
	
	para "I've never even"
	line "been to Slowpoke"
	cont "Well or Route 33."
	done

AzaleaTownMatronScript:
	checkevent EVENT_BEAT_BUGSY
	iftrue_jumptextfaceplayer .BugsyIsHappyText
	jumpthistextfaceplayer
	
	text "Bugsy has been"
	line "so down. No one"
	para "is interested in"
	line "his research."
	done
	
.BugsyIsHappyText
	text "Bugsy has made"
	line "some amazing new"
	cont "discovery!"
	
	para "He is back to"
	line "feeling like"
	cont "himself again."
	done

AzaleaTownSlowpokeScript:
	opentext
	writethistext
		text "A robotic foun-"
		line "tain sculpture"
		para "of a Slowpoke"
		line "yawning."
		
		para "But there's no"
		line "water, just some"
		cont "dusty leaves."
		done
	waitbutton
	endtext

Text_WaitPlayer:
	text "Wait, <PLAYER>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "Aren't you and"
	line "the charcoal boy"
	para "in a ceremony"
	line "today?"
	done

Movement_PokefanFRunsToYou1_AT:
	step_left
	step_end

Movement_PokefanFRunsToYou2_AT:
	step_left
	step_left
	turn_head_down
	step_end

Movement_PokefanFBringsYouBack2_AT:
	step_right
Movement_PokefanFBringsYouBack1_AT:
	step_right
	turn_head_left
	step_end 
	
Movement_GrampsRunsToYou1_AT:
	step_right
	step_end

Movement_GrampsRunsToYou2_AT:
	step_right
	step_right
	turn_head_down
	step_end

Movement_GrampsBringsYouBack2_AT:
	step_left
Movement_GrampsBringsYouBack1_AT:
	step_left
	turn_head_right
	step_end 

PokemonMemoriesNPCScript:
    faceplayer
    opentext
    checkevent EVENT_GOT_SILK_SCARF_FROM_MEMORIES_NPC
    iftrue .CheckPidgey
	writetext AzaleaUsedToBeATrainerText
    writetext AskForTeddiursaText
    promptbutton
    checkpoke TEDDIURSA
    iftrue .GiveSilkScarf
    writetext DontHaveTeddiursaText
    waitbutton
    closetext
    end

.GiveSilkScarf:
    writetext GiveSilkScarfText
    promptbutton
    verbosegiveitem SILK_SCARF
    iffalse .BagFull
    setevent EVENT_GOT_SILK_SCARF_FROM_MEMORIES_NPC
    sjump .CheckPidgey

.CheckPidgey:
    checkevent EVENT_GOT_SHARP_BEAK_FROM_MEMORIES_NPC
    iftrue .CheckEkans
    writetext AskForPidgeyText
    promptbutton
    checkpoke PIDGEY
    iftrue .GiveSharpBeak
    writetext DontHavePidgeyText
    waitbutton
    closetext
    end

.GiveSharpBeak:
    writetext GiveSharpBeakText
    promptbutton
    verbosegiveitem SHARP_BEAK
    iffalse .BagFull
    setevent EVENT_GOT_SHARP_BEAK_FROM_MEMORIES_NPC
    sjump .CheckEkans

.CheckEkans:
    checkevent EVENT_GOT_POISON_BARB_FROM_MEMORIES_NPC
    iftrue .AllDone
    writetext AskForEkansText
    promptbutton
    checkpoke EKANS
    iftrue .GivePoisonBarb
    writetext DontHaveEkansText
    waitbutton
    closetext
    end

.GivePoisonBarb:
    writetext GivePoisonBarbText
    promptbutton
    verbosegiveitem POISON_BARB
    iffalse .BagFull
    setevent EVENT_GOT_POISON_BARB_FROM_MEMORIES_NPC
    sjump .AllDone

.AllDone:
    writetext AllDoneText
    waitbutton
    closetext
    end

.BagFull:
    writetext BagFullText
    waitbutton
    closetext
    end

AzaleaUsedToBeATrainerText: ; works
	text "Ah, a trainer!"
	
	para "I used to be"
	line "one, just like"
	para "you. I still"
	line "have a lot of"
	para "items. If you"
	line "show me some of"
	para "my favorites,"
	line "I'll pass them"
	cont "down to you."
	done

AskForTeddiursaText:
    text "Can you show me"
    line "the little bear"
    para "#mon that only"
    line "drifts away from"
    para "its mother to"
    line "gather honey?"
    done

DontHaveTeddiursaText:
    text "Oh, you don't have"
    line "one? That's okay."
    para "Come back if you"
    line "find one!"
    done

GiveSilkScarfText:
    text "Oh, Teddiursa!"
    line "How adorable!"
    para "Here, take this"
    line "Silk Scarf!"
    done

AskForPidgeyText:
    text "Next, can you show"
    line "me the little bird"
    para "#mon that kicks"
    line "up dust?"
    done

DontHavePidgeyText:
    text "No? That's"
    line "alright"
    done

GiveSharpBeakText:
    text "Ah, Pidgey! It"
    line "brings back so"
    para "many memories!"
    line "Here's a Sharp"
    cont "Beak for you!"
    done

AskForEkansText:
    text "Lastly, can you"
    line "show me the"
    para "#mon whose name"
    line "is evoked by this"
    cont "phrase:"
    para "A man, a plan,"
    line "a canal, Panama!"
    done

DontHaveEkansText:
    text "No? It's a"
    line "tricky one! Come"
    para "back when you've"
    line "caught one!"
    done

GivePoisonBarbText:
    text "Ekans! You got it!"
    line "Quite the"
    para "palindrome, eh?"
    line "Here's a Poison"
    cont "Barb for you!"
    done

AllDoneText:
    text "Thank you for"
    line "indulging an old"
    para "trainer's"
    line "memories!"
    done

BagFullText:
    text "Oh! Your Bag is"
    line "full!"
    done
	