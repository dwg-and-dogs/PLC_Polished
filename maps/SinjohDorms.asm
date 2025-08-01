SinjohDorms_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  4,  7, SINJOH_CROSSROADS, 1
	warp_event  5,  7, SINJOH_CROSSROADS, 1


	def_coord_events



	def_bg_events
	bg_event  10,  2, BGEVENT_READ, SinjohDormsBed
	bg_event  10,  3, BGEVENT_READ, SinjohDormsBed
	bg_event  12,  2, BGEVENT_READ, SinjohDormsBed
	bg_event  12,  3, BGEVENT_READ, SinjohDormsBed

	def_object_events
	object_event 10, 4, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SinjohDormsKurtScript, EVENT_BEAT_KANNA

	object_event 2, 3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, SinjohDormsNPC1Text, EVENT_BEAT_KANNA
	pokemon_event  1, 3, CHIKORITA, -1, -1, PAL_NPC_GREEN, ChikoritaText, EVENT_BEAT_KANNA
	object_event 5, 4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, SinjohDormsNPC2Text, EVENT_BEAT_KANNA
	object_event 7, 5, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, SinjohDormsNPC3Text, EVENT_BEAT_KANNA


SinjohDormsNPC1Text:
	text "I love visiting"
	line "Johto. #mon"
	cont "here are so cute!"
	done

ChikoritaText:
	text "Chika!"
	done

SinjohDormsNPC2Text:
	text "General Adrinna"
	line "wants us to join"
	cont "his army."
	
	para "But I think he's"
	line "a power-hungry"
	cont "narcissist."
	done

SinjohDormsNPC3Text:
	text "Of course we feel"
	line "bad for Johto -"
	
	para "but we Hisuians"
	line "don't see much"
	cont "daylight between"
	
	para "Consul Urgaust"
	line "and the outsiders"
	cont "at your port."
	done

SinjohDormsBed:
	showtext SinjohBedText1
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special Special_FadeInQuickly
	showtext SinjohBedText2
	end

SinjohBedText1:
	text "A comfy bed!"
	line "Time to sleep…"
	done

SinjohBedText2:
	text "Ah, refreshed and"
	line "restored!"
	done

SinjohDormsKurtScript:
	faceplayer
	opentext
	writetext KurtSCDormsText
	yesorno
	iffalse .WCKurtPC
	winlosstext SCKurtBattleText, SCKurtBattleText
	loadtrainer KURT, KURT10 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext SCKurtBattleText2

.WCKurtPC
	writetext KurSCDormsText2
	promptbutton
	special PokemonCenterPC
	endtext
	end

KurtSCDormsText:
	text "<PLAYER>, these"
	line "dorms are a good"
	cont "place to rest."
	
	para "It's surreal to"
	line "be at the site"
	para "where Johto and"
	line "Hisui communed!"
	
	para "We need to find a"
	line "way to get to the"
	para "mine and shut it"
	line "down for good."
	
	para "The Hisuian Elder"
	line "in the Glacier"
	para "might be able to"
	line "help us."	
	
	para "Oh, I found some"
	line "#mon nearby."
	cont "Want to battle?"
	done
	
KurSCDormsText2:
	text "I can run back"
	line "to manage your"
	cont "party."
	done

SCKurtBattleText:
	text "So impressive!"
	done

SCKurtBattleText2:
	text "We can battle as"
	line "many times as"
	cont "you like."
	done
