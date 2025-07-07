WesternCapitalDorms_MapScriptHeader: ;	def_scene_scripts
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  7, WESTERN_CAPITAL, 5
	warp_event  5,  7, WESTERN_CAPITAL, 5

	def_coord_events

	def_bg_events
	bg_event  0,  2, BGEVENT_READ, WesternCapitalDormsBed
	bg_event  0,  3, BGEVENT_READ, WesternCapitalDormsBed
	bg_event  0,  4, BGEVENT_READ, WesternCapitalDormsBed
	bg_event  0,  5, BGEVENT_READ, WesternCapitalDormsBed

	def_object_events
	object_event 1, 1, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WesternCapitalDormsKurtScript, EVENT_LANDING_SCENE_1_KENSEY
	object_event 12, 3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, trade, NPC_TRADE_TIM, -1 ; 
	object_event 13, 3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, WesternCapitalDormsNPC1Text, -1
	object_event 5, 3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, WesternCapitalDormsNPC2Text, -1
	object_event 3, 3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, WesternCapitalDormsNPC3Text, -1

	object_const_def

WesternCapitalDormsNPC1Text:
	text "My husband and I"
	line "used to raise"
	cont "strong #mon,"
	
	para "but now we need"
	line "one who's a bit"
	cont "simpler."
	done

WesternCapitalDormsNPC2Text:
	text "If we use the"
	line "outsider methods,"
	para "our culture will"
	line "be lost!"
	done

WesternCapitalDormsNPC3Text:
	text "I hope that the"
	line "outsiders leave"
	cont "the port soon."
	done

WesternCapitalDormsBed:
	showtext WesternCapitalBedText1
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special Special_FadeInQuickly
	showtext WesternCapitalBedText2
	end

WesternCapitalBedText1:
	text "A comfy bed!"
	line "Time to sleep…"
	done

WesternCapitalBedText2:
	text "Ah, refreshed and"
	line "restored!"
	done

WesternCapitalDormsKurtScript:
	faceplayer
	opentext
	writetext KurtWCDormsText
	yesorno
	iffalse .WCKurtPC
	winlosstext WCKurtBattleText, WCKurtBattleText
	loadtrainer KURT, KURT6
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext WCKurtBattleText2

.WCKurtPC
	writetext KurWCDormsText2
	promptbutton
	special PokemonCenterPC
	endtext
	end

KurtWCDormsText:
	text "<PLAYER>, these"
	line "dorms are a good"
	cont "place to rest."
	
	para "We still need to"
	line "find a way to"
	cont "the port."
	
	para "Maybe someone in"
	line "one of the towers"
	para "can help us get"
	line "across the moat?"
	
	para "I can run back to"
	line "our time for a PC"
	cont "if you need."
	
	para "Oh! I found some"
	line "neat #mon in"
	cont "the wild areas"
	cont "around here."

	para "Want to battle?"
	done
	
KurWCDormsText2:
	text "I can run back"
	line "to manage your"
	cont "party."
	done

WCKurtBattleText:
	text "How Regal!"
	done

WCKurtBattleText2:
	text "We can battle as"
	line "many times as"
	cont "you like."
	done
