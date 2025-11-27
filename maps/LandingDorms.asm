LandingDorms_MapScriptHeader: 

	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  4,  7, TRADERS_LANDING, 3
	warp_event  5,  7, TRADERS_LANDING, 3


	def_coord_events



	def_bg_events
	bg_event  10,  2, BGEVENT_READ, TradersLandingDormsBed
	bg_event  10,  3, BGEVENT_READ, TradersLandingDormsBed
	bg_event  12,  2, BGEVENT_READ, TradersLandingDormsBed
	bg_event  12,  3, BGEVENT_READ, TradersLandingDormsBed


	def_object_events
	object_event 10, 4, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LandingDormsKurtScript, EVENT_LANDING_TIME_TRAVELED
	object_event 2, 3, SPRITE_NOMAD_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, LandingDormsNPC1Text, -1
	object_event 2, 4, SPRITE_NOMAD_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, LandingDormsNPC2Text, -1
	object_event 7, 6, SPRITE_NOMAD_M, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, LandingDormsNPC3Text, -1
	object_event  4, 4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LandingDormsBarbeauJournalScript, -1
	object_event   9, 4, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, NATU, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NatuScriptLandingDorms, -1


NatuScriptLandingDorms:
	blackoutmod TRADERS_LANDING
	opentext
	writetext Landing_NatuText_1
	promptbutton
	special PokemonCenterPC
	endtext
	end

Landing_NatuText_1:
	text "It's Kurt's Natu!"
	line "It can teleport"
	para "to the present to"
	line "manage the party."

	para "It also sets the"
	line "waypoint here."
	done


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
	cont "summer,"
	
	para "and older members"
	line "would stay back"
	para "to avoid the hard"
	line "journey."
	
	para "Then, when winter"
	line "monsoons arrived,"
	para "we surfed to the"
	line "cliffs here,"
	
	para "bringing an ocean"
	line "harvest to share"
	cont "with them."
	done

LandingDormsNPC3Text:
	text "Don't try to use"
	line "a map to find"
	para "your way in the"
	line "whirlpools."
	
	para "Our histories are"
	line "full of fools who"
	para "tried to do so,"
	line "and were lost"
	cont "at sea!"
	done
	

TradersLandingDormsBed:
	blackoutmod TRADERS_LANDING
	showtext TradersLandingBedText1

	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic

	showtext TradersLandingBedText2
	end

TradersLandingBedText1:
	text "A comfy bed!"
	line "Time to sleep…"
	done

TradersLandingBedText2:
	text "Ah, refreshed and"
	line "restored!"


	para "Waypoint set to"
	line "Trader's Landing."
	done


LandingDormsKurtScript:
	blackoutmod TRADERS_LANDING
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
	waitbutton
	closetext
	end

KurtTLDormsText:
	text "<PLAYER>, these"
	line "dorms are a good"
	cont "place to rest."
	
	para "We should find a"
	line "way to bring"
	para "Lugia from our"
	line "time backwards,"
	para "so it causes a"
	line "storm, preventing"
	cont "the shipment!"
	
	para "Oh! I found some"
	line "neat #mon in"
	para "the wild areas"
	line "around here."

	para "Want to battle?"
	done
	
KurTLDormsText2:
	text "We must stop that"
	line "General Kensey!"
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
