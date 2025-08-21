TimelessTapestry_MapScriptHeader: 
	def_scene_scripts
	scene_script TapestrySceneFinale ; may need to have something set this map scene earlier?

	def_callbacks
	callback MAPCALLBACK_NEWMAP, TimelessTapestryFlyPoint

	def_warp_events
	warp_event 3, 5, WHISPERS_TAPESTRY_GATE, 3


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
	; player at 9, 29 
	; interactables  
	object_event  6,  8, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, TapestryVera, -1 ; VERA
	object_event  9, 17, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TapestryPiper, -1 ; PIPER, former beauty
	object_event 12, 20, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, TapestrySamaria, -1 ; SAMARIA
	object_event 13, 20, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, TapestryShiji, -1
	object_event 10, 17, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, TapestryMorphea, -1
	object_event 16, 15, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TapestryAmos, -1
	pokemon_event 17, 15, BRONZONG, -1, -1, PAL_NPC_BLUE, TT_BronzongText, -1

	object_const_def
	const TAPESTRY_SAMSARA
	const TAPESTRY_AMOS

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
	opentext
	writetext TapestryAmosText1
	waitbutton
	yesorno
	iffalse_jumptext TapestryAmosNoText
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp BRASS_TOWER_1F, 7, 14
	end

TT_BronzongText:
	text "Overtone: ♪"
	done

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
	
	para "Brigaders guard"
	line "the Bell tower,"
	para "but my #mon"
	line "can teleport us."
	
	para "Are you ready?"
	done

TapestryAmosNoText:
	text "Go quick! There's"
	line "not much time!"
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
	pause 10
	showemote EMOTE_HEART, TAPESTRY_SAMSARA, 10
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
	checkevent EVENT_KIMONO_CABIN_EEVEE
	iffalse_jumptextfaceplayer PiperNoEeveeText
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
