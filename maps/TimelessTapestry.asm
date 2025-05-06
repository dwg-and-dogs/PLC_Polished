TimelessTapestry_MapScriptHeader: 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_NEWMAP, TimelessTapestryFlyPoint

	def_warp_events
	warp_event 3, 5, WHISPERS_TAPESTRY_GATE, 2


	def_coord_events
	coord_event 9, 26, 0, TapestrySceneFinale


	def_bg_events



	def_object_events
	object_event 8, 26, SPRITE_SAMSARA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TAPESTRY_SAMSARA ; 
	object_event 7, 26, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	; player at 9, 29 
; ADD THE CHARACTERS FROM THE CABIN 
	object_event 10, 14, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, TapestryVera, -1 ; VERA 
	object_event 15, 15, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TapestryPiper, -1 ; PIPER, former beauty 
	object_event 12, 22, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, TapestrySamaria, -1 ; SAMARIA
	object_event 13, 22, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, TapestryShiji, -1
	object_event 16, 15, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, TapestryMorphea, -1
	object_event 13, 21, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TapestryAmos, -1


	object_const_def
	const TAPESTRY_SAMSARA
	const TAPESTRY_AMOS


TimelessTapestryFlyPoint:
	setflag ENGINE_FLYPOINT_TIMELESS_TAPESTRY
	endcallback	

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


TapestrySceneFinale: ; if you helped all the kimono girls then piper gets to come with too 
	;cf western capital scene ; TODO REVISE 
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
	warp TINDER_GARDEN_2, 10, 4 
	end

TapestryTextAmos:
	text "The other elders"
	line "agree. We'll meet"
	
	para "every 20 years,"
	line "and if there is"
	
	para "no more need for"
	line "common defense,"
	
	para "dissolve our"
	line "union."
	
	para "..."

	para "What will you "
	cont "inscribe here?"
	done
	
TapestryTextSamsara:
	text "The events of the"
	line "Burned Tower."
	
	para "A time when we"
	line "rejected the idea"
	
	para "that anyone could"
	line "own tomorrow,"
		
	para "that each genera-"
	line "tion is just a"
	cont "caretaker."
	
	para "Johto should know"
	line "about the ones"
	para "who sacrificed it"
	line "all for them."
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

SummonCelebiText:
	text "Piper: My great-"
	line "grandma taught me"
	cont "how to summon"
	
	para "Celebi. Amos told"
	line "me you are a very"
	cont "strong trainer-"
	
	para "Shall we summon"
	line "Celebi?"
	done

PiperNoCatchCelebiText:
	text "Oh, you didn't"
	line "catch it."
	
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
	text "Piper: These Kim-"
	line "onos... Their "
	cont "threads tell a"
	cont "story."

	para "I'm ready for the"
	line "responsibility."
	done
	
TapestryMorphea:
	text "Morphea: Doesn't"
	line "my great grand-"
	cont "daughter wear"
	cont "the Kimono so"
	cont "elegantly?"
	done

TapestrySamaria:
	text "Samaria: Will our"
	line "plans be enough"
	cont "to stop the emp-"
	cont "eror?"
	
	para "Maybe we should"
	line "have stayed away."
	done
	
TapestryShiji:
	text "Shiji: We heard"
	line "that it was time"
	cont "to return to the"
	cont "Capital."
	
	para "The temples are"
	line "still under cons-"
	cont "truction."
	done