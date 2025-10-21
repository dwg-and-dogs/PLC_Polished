TimelessTapestry_MapScriptHeader: 
	def_scene_scripts
	scene_script TapestrySceneFinale ; may need to have something set this map scene earlier?

	def_callbacks
	callback MAPCALLBACK_NEWMAP, TimelessTapestryFlyPoint

	def_warp_events
	warp_event 3, 5, WHISPERS_TAPESTRY_GATE, 3
	warp_event 4, 38, HOLLYS_HOLT, 7
	warp_event 4, 39, HOLLYS_HOLT, 8
	

	def_coord_events
;	coord_event 9, 26, 0, TapestrySceneFinale


	def_bg_events
	bg_event 10,  9, BGEVENT_ITEM + MAX_ELIXIR, 	EVENT_HIDDEN_TAPESTRY_1
	bg_event  7, 15, BGEVENT_ITEM + BIG_NUGGET, 	EVENT_HIDDEN_TAPESTRY_2
	bg_event 4, 8, BGEVENT_JUMPTEXT, TT_SignText
	bg_event 4, 13, BGEVENT_JUMPTEXT, TT_ChamberText
	bg_event 16, 13, BGEVENT_JUMPTEXT, TT_ChamberText

	def_object_events
	; objects for the final cutscene 
	object_event 8, 26, SPRITE_SAMSARA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TAPESTRY_SAMSARA ;
	object_event 7, 26, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	; other objects 
	object_event 16, 15, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TapestryAmos, EVENT_SKIRMISH_STARTED
	pokemon_event 17, 15, BRONZONG, -1, -1, PAL_NPC_BLUE, TT_BronzongText, EVENT_TAPESTRY_BRONZONG
	; interactables  
	object_event  6,  8, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, TapestryVera, EVENT_KIMONOS_AT_TAPESTRY ; VERA
	object_event  9, 17, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TapestryPiper, EVENT_KIMONOS_AT_TAPESTRY ; piper 
	object_event 14, 19, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, TapestrySamaria, EVENT_KIMONOS_AT_TAPESTRY ; SAMARIA
	object_event 15, 19, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, TapestryShiji, EVENT_KIMONOS_AT_TAPESTRY
	object_event 10, 17, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, TapestryMorphea, EVENT_KIMONOS_AT_TAPESTRY
	; southern NPCs
	object_event 11, 39, SPRITE_AROMA_LADY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, TapestryText1, EVENT_BEAT_KANNA
	object_event  7, 38, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, TapestryText2, EVENT_BEAT_KANNA
	object_event 17, 40, SPRITE_SAGE, 		SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, TapestryText3, EVENT_BEAT_KANNA

	object_const_def
	const TAPESTRY_SAMSARA
	const TAPESTRY_AMOS
	const TAPESTRY_AMOS_2
	const TAPESTRY_BRONZONG

TimelessTapestryFlyPoint:
	setflag ENGINE_FLYPOINT_TIMELESS_TAPESTRY
	endcallback	

TT_SignText:
	text "Timeless Tapestry"
	para "A sanctum of"
	line "wisdom from Johto"
	cont "and beyond"
	done

TT_ChamberText:
	text "Rubble covers the"
	line "temple's opening."
	done

TapestryAmos:
	faceplayer
	checkevent EVENT_KIMONOS_AT_TAPESTRY
	opentext
	iftrue .NoKimonosText
	writetext TapestryAmosText1
.NoKimonosText:	
	writetext TapestryAmosText0
.pickup:
	waitbutton
	yesorno
	iffalse_jumptext TapestryAmosNoText
	showtext TapestryAmosYesText
	
	disappear TAPESTRY_BRONZONG
	setevent EVENT_TAPESTRY_BRONZONG
	pause 20
	readvar VAR_FACING
	ifnotequal RIGHT, .AmosLeavesLeft
	applyonemovement TAPESTRY_AMOS_2, step_up
	applyonemovement TAPESTRY_AMOS_2, step_left
.AmosLeavesLeft:
	applymovement TAPESTRY_AMOS_2, AmosLeavesLeftMovement
	disappear TAPESTRY_AMOS_2
	setevent EVENT_SKIRMISH_STARTED
	clearevent EVENT_CAPITAL_SKIRMISHER
	setmapscene WESTERN_CAPITAL, $1 ; DEBUG TECH 
	end

TT_BronzongText:
	text "Overtone: ♪"
	done

AmosLeavesLeftMovement:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
	

TapestryAmosText1:
	text_high
    text " Amos: "
	next
	text_start
	
	text "<PLAYER>, thank"
	line "you for your help"
	cont "at the mine."
	
	para "But my sources"
	line "say that Adrinna"
	para "plans to usurp"
	line "the Consul at his"
	cont "coronation."
	
	para "Even if she does"
	line "not, the Consul"
	para "plans to annex"
	line "all of Johto at"
	cont "the ceremony."
	
	para "Our traditions"
	line "will be replaced"
	para "to honor a new"
	line "emperor!"
	
	para "This is not the"
	line "way to repel the"
	cont "outsiders!"
	
	para "We must stop them"
	line "at all costs."
	
	para "Are you ready?"
	done


TapestryAmosText0:
	text_high
    text " Amos: "
	next
	text_start
	
	text "<PLAYER>, thank"
	line "you for your help"
	cont "at the mine."

	para "I thought that"
	line "the Kimono Girls"
	para "would be here,"
	
	para "but they must be"
	line "in the Holt."
	
	para "What's holding"
	line "them up?"
	
	para "My sources say"
	line "that Adrinna will"
	para "usurp Urgaust"
	line "at the ceremony."
	
	para "Even if she does"
	line "not, the Consul"
	para "plans to annex"
	line "all of Johto."
	
	para "Our traditions"
	line "will be replaced"
	para "to honor a new"
	line "emperor!"
	
	para "This is not the"
	line "way to repel the"
	cont "outsiders!"
	
	para "We must stop them"
	line "at all costs."
	
	para "Are you ready?"
	done


TapestryAmosYesText:
	text_high
    text " Amos: "
	next
	text_start
	text "Our ninjas will"
	line "open up a path to"
	cont "the Brass Tower."
	
	para "I will see you"
	line "inside."
	
	para "Make haste!"
	done

TapestryAmosNoText:
	text_high
    text " Amos: "
	next
	text_start
	text "Quickly prepare!"
	line "Urgaust will soon"
	para "declare himself"
	line "the Emperor!"
	done

TapestrySceneFinale: 
	;cf western capital scene ;
	checkevent EVENT_BEAT_MEJIMI
	iffalse .NoScene
	disappear PLAYER
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special Special_FadeInQuickly
	special HealParty
	showtext TapestryTextAmos
	pause 30
;	showemote EMOTE_HEART, TAPESTRY_SAMSARA, 10
	showtext TapestryTextSamsara		
	closetext
	turnobject TAPESTRY_SAMSARA, UP
	applyonemovement TAPESTRY_SAMSARA, step_up
	disappear TAPESTRY_SAMSARA
	pause 30
	warp TINDER_GARDEN_2, 4, 2 
	end

.NoScene: ; hm? 
	end

TapestryTextAmos:
	text_high
    text " Amos: " 
	next
	text_start
	text "The other elders"
	line "agree. We'll meet"
	
	para "every 20 years,"
	line "and if there is"
	
	para "no more need for"
	line "common defense"
	cont "against outsiders"
	
	para "we will dissolve"
	line "our union."
	
	para "Urgaust's generals"
	line "haven't been seen,"
	para "but I hear rumors"
	line "that one of each"
	para "of their #mon"
	line "still roam Johto,"
	para "reincarned by"
	line "Ho-Oh to remind"
	cont "us of that day."
	
	para "..."

	para "What will you "
	line "inscribe here?"
	done

	
TapestryTextSamsara:
	text_high
    text " Vespera: " 
	next
	text_start
	text "The events of the"
	line "Bell Tower."
	
	para "A time when we"
	line "rejected the idea"
	
	para "that anyone could"
	line "own tomorrow."
		
	para "A time when we"
	line "affirmed that"
	para "each generation"
	line "borrows from"
	cont "the future."
	
	para "Johto should know"
	line "about the ones"
	para "whose lives were"
	line "given to making a"
	cont "better future."
	done

TapestryVera:
	text "Vera: Finally, I"
	line "can play outside!"
	done

TapestryPiper:
	checkevent EVENT_TAPESTRY_CELEBI
	iftrue_jumptextfaceplayer PiperAfterText

	faceplayer
	opentext
	writetext SummonCelebiText
	yesorno
	iffalse_jumptext NoCelebiText
; from polished ilex forest 
	waitbutton
	closetext
	pause 20
	showemote EMOTE_SHOCK, PLAYER, 20
	special Special_FadeOutMusic
	turnobject PLAYER, DOWN
	pause 20
	special Special_CelebiShrineEvent
	loadwildmon CELEBI, 50
	startbattle
	reloadmapafterbattle
	pause 20
	setevent EVENT_TAPESTRY_CELEBI
	special CheckCaughtCelebi
	iffalse_jumptext PiperNoCatchCelebiText
	showtext PiperCaughtCelebiText
	end

PiperNoEeveeText:
	text "It's so odd being"
	line "back here!"
	
	para "It used to be a"
	line "bustling center,"
	
	para "but the temples"
	line "are empty."
	
	para "I learned how to"
	line "summon Celebi,"
	para "but you'll need"
	line "to convince my"
	para "great-grandma you"
	line "are worthy."
	
	para "Visit us in our"
	line "cabin in the Holt"
	cont "and ask her."
	done

SummonCelebiText:
	text "Piper: My great-"
	line "grandma taught me"
	para "how to summon"
	line "Celebi."
	
	para "She tells me that"
	line "you are worthy to"
	cont "commune with her."
	
	para "Shall we summon"
	line "Celebi together?"
	done


PiperNoCatchCelebiText:
	text "Oh, you didn't"
	line "catch Celebi."
	
	para "Don't worry-"
	line "we still believe"
	cont "in all of you!"
	done


NoCelebiText:
	text "Oh, I understand."
	done

PiperCaughtCelebiText:
	text "Oh! You did catch"
	line "Celebi! I knew"
	cont "you could."
	done

PiperAfterText:
	text "It's so odd being"
	line "back here!"
	
	para "It used to be a"
	line "bustling center,"
	
	para "but the temples"
	line "are empty."
	done
	
TapestryMorphea:
	faceplayer
	opentext
	checkevent EVENT_KIMONO_CABIN_EEVEE
	iffalse_jumptext MorpheaNoEeveeText
	checkevent EVENT_TAPESTRY_CELEBI
	iftrue_jumptext MorpheaAfterText
	jumpthistext 
	
	text "Morphea: Doesn't"
	line "my great grand-"
	para "daughter wear"
	line "the Kimono so"
	cont "elegantly?"
	done

MorpheaNoEeveeText:
	text "I've been having"
	line "such odd dreams."
	
	para "If you think you"
	line "can help, please"
	para "visit me back at"
	line "the cabin in the"
	cont "Holt."
	done

MorpheaAfterText:
	text "You've done it!"
	line "Celebi has joined"
	para "you! Now, Amos is"
	line "waiting: You must"
	cont "stop Urgaust!"
	done

TapestrySamaria:
	text "Samaria: Will our"
	line "plans be enough"
	cont "to stop Urgaust?"
	
	para "Maybe we should"
	line "have stayed away."
	done
	
TapestryShiji:
	text "Shiji: We heard"
	line "that it was time"
	para "to return to the"
	line "Capital."
	
	para "The templeas are"
	line "becoming a ruins"
	para "without proper"
	line "upkeep!"
	done

TapestryText1:
	text "I wish the Johto-"
	line "Hisui festival"
	para "could've gone on"
	line "longer."
	
	para "Consul Urgaust is"
	line "so uptight!"
	para "He's so worried"
	line "about outsiders"
	cont "at the port."
	done


TapestryText2:
	text "We brought along"
	line "special #mon"
	para "from Hisui for"
	line "Johto trainers to"
	cont "catch!"
	
	para "Oh, but you don't"
	line "look like you're"
	para "from Johto or"
	line "from Hisui?"
	done


TapestryText3:
	text "I spent weeks in"
	line "that cavern on my"
	para "panel, and the"
	line "Consul orders it"
	cont "closed!"
	
	para "How will anyone"
	line "learn of Celebi"
	para "if these temples"
	line "are closed?"
	done