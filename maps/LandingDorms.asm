LandingDorms_MapScriptHeader: 

	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  4,  7, TRADERS_LANDING, 3
	warp_event  5,  7, TRADERS_LANDING, 3


	def_coord_events



	def_bg_events
	bg_event  0,  2, BGEVENT_READ, TradersLandingDormsBed
	bg_event  0,  3, BGEVENT_READ, TradersLandingDormsBed
	bg_event  0,  4, BGEVENT_READ, TradersLandingDormsBed
	bg_event  0,  5, BGEVENT_READ, TradersLandingDormsBed


	def_object_events
	object_event 1, 1, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LandingDormsKurtScript, EVENT_BEAT_KENSEY_PORT
	object_event 12, 3, SPRITE_NOMAD_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, LandingDormsNPC1Text, -1
	object_event 12, 4, SPRITE_NOMAD_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, LandingDormsNPC2Text, -1
	object_event 3, 3, SPRITE_NOMAD_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, LandingDormsNPC3Text, -1
	object_event  14, 4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LandingDormsBarbeauJournalScript, -1

	object_const_def



LandingDormsNPC1Text:
	text "Do you know the"
	line "legend of the"
	cont "whirl islands?"
	
	para "They can only"
	line "be navigated"
	cont "by your talents"
	cont "alone."
	done
	
LandingDormsNPC2Text:
	text "We navigated to"
	line "those sheltered"
	para "shores south of"
	line "the port every"
	cont "summer."
	
	para "Then, when winter"
	line "monsoons arrived,"
	para "we surfed to the"
	line "cliffs here."
	done

LandingDormsNPC3Text:
	text "Don't try to use"
	line "a map to find"
	para "your way in the"
	line "whirlpools."
	
	para "Our histories ar"
	line "full of fools who"
	para "tried to do so,"
	line "and were lost"
	cont "at sea!"
	done
	

TradersLandingDormsBed:
	showtext TradersLandingBedText1
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special Special_FadeInQuickly
	showtext TradersLandingBedText2
	end

TradersLandingBedText1:
	text "A comfy bed!"
	line "Time to sleep…"
	done

TradersLandingBedText2:
	text "Ah, refreshed and"
	line "restored!"
	done


LandingDormsKurtScript:
	faceplayer
	opentext
	writetext KurtTLDormsText
	yesorno
	iffalse .TLKurtPC
	winlosstext TLKurtBattleText, TLKurtBattleText
	loadtrainer KURT, KURT7
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext TLKurtBattleText2

.TLKurtPC
	writetext KurTLDormsText2
	promptbutton
	special PokemonCenterPC
	endtext
	end

KurtTLDormsText:
	text "<PLAYER>, these"
	line "dorms are a good"
	cont "place to rest."
	
	para "We should find a"
	line "way to bring"
	cont "Lugia from our"
	cont "time backwards,"
	para "so it causes a"
	line "storm, preventing"
	cont "the shipment!"
	
	para "Oh! I found some"
	line "neat #mon in"
	cont "the wild areas"
	cont "around here."

	para "Want to battle?"
	done
	
KurTLDormsText2:
	text "I can run back"
	line "to manage your"
	cont "party."
	done

TLKurtBattleText:
	text "Impressive!"
	done

TLKurtBattleText2:
	text "We can battle as"
	line "many times as"
	cont "you like."
	done

LandingDormsBarbeauJournalScript:
	italictypeface
	showtext BarbeauJournal
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

BarbeauJournal:
	text "Barbeau's Journal"
	
	para "The people grow"
	line "restless... Is"
	para "Amos' plan really"
	line "enough to repel"
	para "both barbarians"
	line "and the Consul?"
	done
