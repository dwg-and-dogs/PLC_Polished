GauldenrodDorms_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  7, GAULDENROD, 1
	warp_event  5,  7, GAULDENROD, 1

	def_coord_events

	def_bg_events
	bg_event  0,  2, BGEVENT_READ, GauldenrodDormsBed
	bg_event  0,  3, BGEVENT_READ, GauldenrodDormsBed
	bg_event  0,  4, BGEVENT_READ, GauldenrodDormsBed
	bg_event  0,  5, BGEVENT_READ, GauldenrodDormsBed
	bg_event  2,  4, BGEVENT_READ, GauldenrodDormsBed
	bg_event  2,  5, BGEVENT_READ, GauldenrodDormsBed

	def_object_events
	object_event 1, 1, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GauldenrodDormsKurtScript, EVENT_BEAT_BOBESH_STADIUM
	object_event 12, 3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, GauldenrodDormsNPC1Text, -1
	object_event 12, 4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, GauldenrodDormsNPC2Text, -1
	object_event 3, 3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, GauldenrodDormsNPC3Text, -1

	object_const_def

GauldenrodDormsNPC1Text:
	text "I wish the protest"
	line "wouldn't be so"
	cont "violent."

	para "When they were"
	line "blocking the gate,"
	cont "I saw a Flareon"
	cont "brought out!"
	done

GauldenrodDormsNPC2Text:
	text "I still remember"
	line "the lessons I"
	para "learned on my"
	line "ritual. It's"
	para "too bad that the"
	line "brigaders have"
	para "blocked us from"
	line "carrying it on."
	done

GauldenrodDormsNPC3Text:
	text "Here, take a rest."
	
	para "The fighting on"
	line "both sides wears"
	cont "me out."
	done

GauldenrodDormsBed:
	showtext GauldenrodBedText1
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special Special_FadeInQuickly
	showtext GauldenrodBedText2
	end

GauldenrodBedText1:
	text "A comfy bed!"
	line "Time to sleep…"
	done

GauldenrodBedText2:
	text "Ah, refreshed and"
	line "restored!"
	done



GauldenrodDormsKurtScript: ; will this work?....
	faceplayer
	opentext
	writetext KurtGauldenrodDormsText
	yesorno
	iffalse .GauldenrodKurtPC
	winlosstext GauldenrodKurtBattleText, GauldenrodKurtBattleText
	loadtrainer KURT, 2 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext GauldenrodKurtBattleText2

.GauldenrodKurtPC
	writetext KurtGauldenrodDormsText2
	promptbutton
	special PokemonCenterPC ; per engine/events/std_scripts.asm this is how it should be done. 
	endtext
	end

KurtGauldenrodDormsText:
	text "<PLAYER>. We need"
	line "to get to Olivine,"
	cont "which means we"
	cont "will have to pass"
	cont "through Ecruteak."

	para "We need to find a"
	line "way to get to"
	cont "Ecruteak."

	para "Maybe we can pass"
	line "through whatever"
	cont "used to be at the"
	cont "National Park?"

	para "I can run back to"
	line "our time for a PC"
	cont "if you need."
	
	para "Oh! I found some"
	line "neat #mon in"
	para "the wild areas"
	line "around here."

	para "Want to battle?"
	done

GauldenrodKurtBattleText:
	text "You're getting to"
	line "be so strong!"
	done

GauldenrodKurtBattleText2:
	text "Just let me know"
	line "what you need."
	done

KurtGauldenrodDormsText2:
	text "Just let me know"
	line "what you need."
	done
