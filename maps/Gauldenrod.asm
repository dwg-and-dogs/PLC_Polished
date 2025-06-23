Gauldenrod_MapScriptHeader: 
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, GauldenrodFlyPoint
	callback MAPCALLBACK_TILES, Gauldenrod_Saddle_AccessCallback

	def_warp_events
	warp_event 18, 27, GAULDENROD_DORMS, 1
	warp_event 27, 13, GAULDENROD_STOCKROOM, 1
	warp_event 28, 7, GAULDENROD_GUILD, 1
	warp_event  9, 31, GAULDENROD_HOUSE, 1  ; TRADE QUEST
	warp_event 11, 25, GAULDENROD_UNDERGROUND_SOUTH, 1
	warp_event 13,  7, GAULDENROD_UNDERGROUND_NORTH, 1
	warp_event 23, 3, GAULDENROD_SERENE_SPRINGS_GATE, 1
	warp_event 24, 3, GAULDENROD_SERENE_SPRINGS_GATE, 2
	warp_event  9, 15, GAULDENROD_TOWER_1F, 1
	warp_event 40, 11, SHIMMER_SADDLE, 1

	def_coord_events
	coord_event 22, 35, 0, GauldenrodBobeshScene
	coord_event 23, 35, 0, GauldenrodBobeshScene
	coord_event 24, 35, 0, GauldenrodBobeshScene
	coord_event 25, 35, 0, GauldenrodBobeshScene
	
	def_bg_events
	bg_event 15, 15, BGEVENT_READ, GauldenrodTowerSign
	bg_event 26, 16, BGEVENT_READ, GauldenrodCitySign
	bg_event 28, 22, BGEVENT_READ, GauldenrodBazaarSign
	bg_event 21, 31, BGEVENT_READ, AmosWantedSign
	bg_event 32,  6, BGEVENT_READ, GauldenrodGuildSign
	bg_event 16,  6, BGEVENT_READ, GauldenrodTunnelSign
	bg_event 22, 22, BGEVENT_READ, GauldenrodNoFishingSign
	; HIDDEN ITEMS: LANSAT AND GANLON BERRIES
	bg_event  7, 9, BGEVENT_ITEM + LANSAT_BERRY, EVENT_GAULDENROD_HIDDEN_1
	bg_event 15, 26, BGEVENT_ITEM + GANLON_BERRY, EVENT_GAULDENROD_HIDDEN_2


	def_object_events
	; cutscene 
	object_event  23, 27, SPRITE_BOBESH, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0,  OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GAULDENROD_BOBESH
	pokemon_event 24, 29, FLAREON, -1, -1, PAL_NPC_RED, ObjectEvent, EVENT_GAULDENROD_FLAREON
	object_event  23, 30, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE,  OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GAULDENROD_BRIGADER_CINDY
	object_event  24, 30, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GAULDENROD_BRIGADER_CINDY
	; marts etc 
	object_event 34, 20, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GauldenrodHisuiTraderScript, EVENT_GAULDENROD_CIVILIANS
	mart_clerk_event  27, 25, MARTTYPE_STANDARD, MART_GAULDENROD_1	
	mart_clerk_event  27, 20, MARTTYPE_STANDARD, MART_GAULDENROD_2	
	object_event  34,  24, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_TM, MART_GAULDENROD_3, EVENT_GAULDENROD_CIVILIANS
	; roadblocks 
	object_event 23, 4, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BrigaderScript, EVENT_GAULDENROD_TUNNELERS
	object_event 24, 4, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BrigaderScript, EVENT_GAULDENROD_TUNNELERS
	; npcs 
	object_event 31, 24, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, 			OBJECTTYPE_SCRIPT, 0, GauldenrodNPC1Script, EVENT_GAULDENROD_CIVILIANS
	object_event 23, 6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, 			OBJECTTYPE_SCRIPT, 0, GauldenrodNPC2Script, EVENT_GAULDENROD_CIVILIANS
	object_event 32, 15, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, 				OBJECTTYPE_SCRIPT, 0, GauldenrodNPC3Script, EVENT_GAULDENROD_CIVILIANS
	object_event 17,  9, SPRITE_MATRON, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, 				OBJECTTYPE_SCRIPT, 0, GauldenrodNPC4Script, EVENT_GAULDENROD_CIVILIANS
	object_event 23, 12, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, 				OBJECTTYPE_SCRIPT, 0, GauldenrodNPC5Script, EVENT_GAULDENROD_CIVILIANS
	object_event 13,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_RED, 		OBJECTTYPE_SCRIPT, 0, GauldenrodNPC6Script, EVENT_GAULDENROD_CIVILIANS
	object_event 19, 17, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN,	OBJECTTYPE_SCRIPT, 0, GauldenrodNPC7Script, EVENT_GAULDENROD_CIVILIANS
	object_event 12, 17, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, 				OBJECTTYPE_SCRIPT, 0, GauldenrodNPC8Script, EVENT_GAULDENROD_CIVILIANS
	; quest 
	object_event 14, 13, SPRITE_ELDER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, 				OBJECTTYPE_SCRIPT, 0, GauldenrodNPC9Script, EVENT_GAULDENROD_ELDER ; initialized until after bobesh defeated 
	fruittree_event  36, 7, FRUITTREE_GAULDENROD, RADIANT_OPAL, PAL_NPC_RED



	object_const_def
	const GAULDENROD_BOBESH
	const GAULDENROD_OCTILLERY
	const GAULDENROD_MATRON
	const GAULDENROD_BRIGADER

GauldenrodFlyPoint:
	setflag ENGINE_FLYPOINT_GAULDENROD
	endcallback
	
Gauldenrod_Saddle_AccessCallback:
	checkevent EVENT_GRAMPS_SADDLE
	iffalse .Done 
	changeblock 36, 10, $44 ; fence is opened 
.Done:
	endcallback

GauldenrodNPC1Script:
	checkevent EVENT_BEAT_BOBESH_STADIUM
	iftrue_jumptextfaceplayer .Text1
	jumpthistextfaceplayer

	text "Have you tried"
	line "the new #-"
	cont "balls?"
	
	para "They're so much"
	line "more convenient"
	cont "than apricorns."
	done

.Text1: 
	text "It's too bad that"
	line "the Stadium is"
	cont "flooded."
	
	para "Maybe there'll be"
	line "sporting there"
	cont "again one day."
	done 


GauldenrodNPC2Script:
	checkevent EVENT_BEAT_BOBESH_STADIUM
	iftrue_jumptextfaceplayer .Text2
	jumpthistextfaceplayer

	text "If you need some"
	line "food, they offer"
	cont "it at the stadium."
	done

.Text2: 
	text "I'm going to take"
	line "a dip at the"
	cont "hot springs!"
	done 

GauldenrodNPC3Script:
	checkevent EVENT_BEAT_BOBESH_STADIUM
	iftrue_jumptextfaceplayer .Text3
	jumpthistextfaceplayer

	text "There's cool stuff"
	line "at the bazaar!"
	
	para "Apparently from"
	line "the Trader's"
	cont "Landing."
	done

.Text3: 
	text "Without Bobesh,"
	line "will the bazaar"
	cont "close?"
	done 
	
GauldenrodNPC4Script:
	checkevent EVENT_BEAT_BOBESH_STADIUM
	iftrue_jumptextfaceplayer .Text4
	jumpthistextfaceplayer

	text "I used to resent"
	line "the Consul taking"
	para "over, but the"
	line "stadium is cool."
	done

.Text4: 
	text "I've seen some"
	line "weird stuff on"
	para "the mountain. No"
	line "way am I going"
	cont "to do my quest."
	done 

GauldenrodNPC5Script:
	checkevent EVENT_BEAT_BOBESH_STADIUM
	iftrue_jumptextfaceplayer .Text5
	jumpthistextfaceplayer

	text "Our ritual is put"
	line "on hold due to"
	cont "the Brigaders."
	
	para "I didn't really"
	line "want to carry an"
	para "old lady up the"
	line "mountain, though,"
	cont "so I'm happy."
	done

.Text5: 
	text "I hope I get to"
	line "do my ritual."
	
	para "It could be the"
	line "last time I get"
	para "to spend quality"
	line "time with my"
	cont "grandma."
	done 
	

GauldenrodNPC6Script:
	jumptextfaceplayer GauldenrodNPC6Text

GauldenrodNPC6Text:
	text "I stay away from"
	line "the stadium. It"
	para "gets people so"
	line "riled up."
	done

GauldenrodNPC7Script:
	jumptextfaceplayer GauldenrodNPC7Text

GauldenrodNPC7Text:
	text "I always forget my"
	line "worries watching"
	para "some battles at"
	line "the stadium."
	done

GauldenrodNPC8Script:
	jumptextfaceplayer GauldenrodNPC8Text

GauldenrodNPC8Text:
	text "The Tower has work"
	line "for all sorts of"
	para "people. After my"
	line "dad broke his leg,"
	para "they gave him a"
	line "job cleaning"
	cont "statues."
	done

GauldenrodTowerSign:
	jumptext GauldenrodTowerSignText

GauldenrodTowerSignText:
	text "Gauldenrod Tower:"
	line "Reaching for the"
	cont "Sky"
	done

GauldenrodCitySign:
	refreshscreen
	trainerpic BOBESH
	waitbutton
	closepokepic
	jumpthistext

	text "Gauldenrod City"
	line "Overseen by"
	cont "General Bobesh"
	done

GauldenrodBazaarSign:
	jumptext GauldenrodBazaarSignText

GauldenrodBazaarSignText:
	text "Gauldenrod Bazaar"
	done

AmosWantedSign:
	refreshscreen
	trainerpic AMOS
	waitbutton
	closepokepic
	jumpthistext

	text "WANTED: This man"
	line "is wanted for"
	para "crimes against"
	line "the Consul!"

	para "Known alias:"
	line "Amos."
	done

GauldenrodGuildSign:
	jumptext GauldenrodGuildSignText
	
GauldenrodGuildSignText:
	text "Gauldenrod Guild"
	line "What's old is"
	cont "new again"
	done

BrigaderScript:
	jumptextfaceplayer GauldenrodBrigaderText
	
GauldenrodBrigaderText:
	text "Stay out of"
	line "trouble."
	done

GauldenrodTunnelSign:
	jumptext GauldenrodTunnelSignText
	
GauldenrodTunnelSignText:
	text "Just a humble"
	line "abode, nothing"
	cont "to see here."
	done
	
GauldenrodNoFishingSign:
	jumptext GauldenrodNoFishingSignText
	
GauldenrodNoFishingSignText:
	text "Posted: No"
	line "Fishing!"
	done
	
GauldenrodHisuiTraderScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_GAULDENROD_POKEMON
	iftrue .AlreadyGotPokemon
	writetext GauldenrodHisuiTraderText
	promptbutton
	loadmenu .HisuiPokemonMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GiveLuxio
	ifequal 2, .GiveRoselia
	ifequal 3, .GiveStaravia
	ifequal 4, .GiveVespiquen
	jumptext GauldenrodHisuiTraderNoThanksText

.AlreadyGotPokemon
	writetext GauldenrodHisuiTraderRememberText
	waitbutton
	closetext
	end

.GiveLuxio:
	givepoke LUXIO, 20
	iffalse .PartyFull
	setevent EVENT_GOT_GAULDENROD_POKEMON
	writetext GauldenrodHisuiTraderLuxioText
	waitbutton
	closetext
	end

.GiveRoselia:
	givepoke ROSELIA, 20
	iffalse .PartyFull
	setevent EVENT_GOT_GAULDENROD_POKEMON
	writetext GauldenrodHisuiTraderRoseliaText
	waitbutton
	closetext
	end

.GiveStaravia:
	givepoke STARAVIA, 20
	iffalse .PartyFull
	setevent EVENT_GOT_GAULDENROD_POKEMON
	writetext GauldenrodHisuiTraderStaraviaText
	waitbutton
	closetext
	end

.GiveVespiquen:
	givepoke VESPIQUEN, 20
	iffalse .PartyFull
	setevent EVENT_GOT_GAULDENROD_POKEMON
	writetext GauldenrodHisuiTraderVespiquenText
	waitbutton
	closetext
	end


.PartyFull:
	writetext GauldenrodHisuiTraderPartyFullText
	waitbutton
	closetext
	end

.HisuiPokemonMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "LUXIO@"
	db "ROSELIA@"
	db "STARAVIA@"
	db "VESPIQUEN@"
	db "CANCEL@"

GauldenrodHisuiTraderRememberText:
	text "Hey, I remember"
	line "you. How is that"
	cont "#mon?"

	para "Oh, by the way,"
	line "if you see a red-"
	cont "white #mon,"
	
	para "Just stay clear,"
	line "OK?"
	done

GauldenrodHisuiTraderText:
	text "Hello! Rare"
	line "#mon! Gifts"
	para "from Hisui. Which"
	line "would you like?"
	done

GauldenrodHisuiTraderLuxioText:
	text "Ah, Luxio!"
	line "Its static dis-"
	para "charge can light"
	line "up the dark!"
	done

GauldenrodHisuiTraderRoseliaText:
	text "Roselia, lovely!"
	line "It'll be a thorn"
	para "in your foe's"
	line "side!"
	done

GauldenrodHisuiTraderStaraviaText:
	text "Staravia, excel-"
	line "lent! One of the"
	cont "bravest birds!"
	done
	
GauldenrodHisuiTraderVespiquenText:
	text "Oh, Vespiquen!"
	line "There's a buzz"
	cont "about its honey!"
	done

GauldenrodHisuiTraderPartyFullText:
	text "Oh! Your party is"
	line "full."
	done

GauldenrodHisuiTraderNoThanksText:
	text "No problem! Come"
	line "back if you cha-"
	cont "nge your mind!"
	done

GauldenrodBobeshScene:
	applyonemovement PLAYER, step_up
	applyonemovement PLAYER, step_up
	applyonemovement PLAYER, step_up	
	pause 10

    showemote GAULDENROD_BRIGADER, EMOTE_BOLT, 10
    showtext BrigaderText1
    showtext CindyText1

	special Special_FadeOutMusic
	pause 30
	playmusic MUSIC_ELITE_FOUR_BATTLE_BW

    appear GAULDENROD_BOBESH
    applymovement GAULDENROD_BOBESH, BobeshWalksDown
	appear GAULDENROD_OCTILLERY
    showemote EMOTE_SHOCK, GAULDENROD_BOBESH, 10
    showtext BobeshText1
    showtext BrigaderText2
    showtext CindyText2
    applymovement GAULDENROD_BOBESH, BobeshMovesToCindy
    turnobject GAULDENROD_MATRON, LEFT
    showtext BobeshText2
    showtext CindyText3
    showtext BobeshText3
    turnobject GAULDENROD_MATRON, DOWN
    showtext CindyText4
    showtext BobeshText4
	setevent EVENT_GAULDENROD_BOBESH
	setevent EVENT_GAULDENROD_FLAREON
	setevent EVENT_GAULDENROD_BRIGADER_CINDY
	clearevent EVENT_GAULDENROD_CIVILIANS
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear GAULDENROD_BOBESH
    disappear GAULDENROD_MATRON
    disappear GAULDENROD_BRIGADER
	disappear GAULDENROD_OCTILLERY ; FLAREON 
	pause 30
	special Special_FadeInQuickly
	special RestartMapMusic
	setscene $1
    end

BrigaderText1:
    text "Brigader: Where"
    line "is he?"
    done

CindyText1:
    text "Matron: I told"
	line "you, I don't know!"
    done

BobeshText1:
	text_high
    text " Bobesh: "
	next
	text_start

    text "Order! What's"
	line "going on?"
    done

BrigaderText2:
	text_high
    text " Brigader: "
	next
	text_start
    text "She harbors the"
	line "anarchist Amos!"
    done

CindyText2:
	text_high
    text " Matron: "
	next
	text_start
    text "No! He's lying!"
    done

BobeshText2:
	text_high
    text " Bobesh: "
	next
	text_start
    text "Such claims!"
	para "Say, your husband"
	line "works by the"
	para "tower, madam?"
	line "How is he?"
    done

CindyText3:
	text_high
    text " Matron: "
	next
	text_start
    text "He has enough"
	line "energy to garden"
	cont "by the tower."

	para "It's the only"
	line "place to teach"
	para "botany to newer"
	line "generations,"
	para "now that you've"
	line "put an end to"
	cont "our ritual."
    done


BobeshText3:
	text_high
    text " Bobesh: "
	next
	text_start
	
    text "Madam. Brigaders"
	line "heard Amos at the"
	para "tower. We know he"
	line "didn't report it."
	
	para "Speaks volumes,"
	line "don't you think?"
	
	para "Listen! Johto is"
	line "facing a threat"
	para "from outsiders."
	line "We can't allow"
	para "these factional"
	line "rituals."
    done

CindyText4:
	text_high
    text " Matron: "
	next
	text_start
    text "No! It's how we"
	line "enshrine our"
	para "values. It's a"
	line "rebirth, honoring"
	cont "Ho-Oh!"
	done

BobeshText4:
	text_high
    text " Bobesh: "
	next
	text_start
	
    text "Brigader! Take"
	line "her away to the"
	cont "stadium."
	
	para "I've heard"
	line "enough."
    done

PlayerMovesToWatchScene:
    step_up
    step_up
    step_end

BobeshWalksDown:
    step_down
    step_down
    step_end

BobeshMovesToCindy:
    step_left
    step_down
	turn_head_right
    step_end

BrigaderTakesCindy:
    step_up
    step_up
    step_up
    step_up
    step_up
    step_up
    step_end

CindyTakenAway:
    step_up
    step_up
    step_up
    step_up
    step_up
    step_up
    step_end
	
BobeshWalksAway:
    step_up
    step_up
    step_up
    step_up
    step_up
    step_up
	step_end
	
GauldenrodNPC9Script:
	faceplayer
	checkevent EVENT_BEAT_SAMSARA
	iffalse_jumptext GauldenrodElderNoSurf
	showtext GauldenrodElderQuestText
	yesorno
	iffalse_jumptext GauldenrodElderQuestNo
	showtext GauldenrodElderThanks
	setevent EVENT_GRAMPS_SADDLE 
	warp SHIMMER_SADDLE, 7, 33
	end

GauldenrodElderQuestText:
	text "Please, help me!"
	line "I escaped the"
	cont "Stadium, but I"
	
	para "can't find her."
	line "They say that she"
	cont "was taken to the"
	cont "Stadium,"
	
	para "But my old eyes"
	line "still see her in"
	cont "the mountains, "
	
	para "and hear her bec-"
	line "kon me from the"
	cont "hills."
	
	para "I was next to do"
	line "the ritual, but"
	cont "the youngsters"
	para "are too scared,"
	line "ever since the"
	cont "Brigaders told "
	para "some ghost stor-"
	line "ies. Will you"
	cont "help me?"
	done
	
GauldenrodElderQuestNo:
	text "Oh, I can't even"
	line "pull weeds, I'm"
	cont "too torn up!"
	done

GauldenrodElderThanks:
	text "Thank you! I know"
	line "a secret way up"
	cont "to the top..."
	done

GauldenrodElderNoSurf:
	text "Please, won't you"
	line "help me? I can't"
	cont "find my wife..."
	
	para "Oh, you don't"
	line "have surf? I need"
	cont "someone who can"
	cont "navigate water."
	done
