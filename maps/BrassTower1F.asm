BrassTower1F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 8, 2, BRASS_TOWER_12F, 1
	warp_event 7, 15, WESTERN_CAPITAL, 14
	warp_event 8, 15, WESTERN_CAPITAL, 14

	def_coord_events



	def_bg_events



	def_object_events
	object_event  5,  2, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, BrassTowerKurtJournalText, -1
	object_event 6, 2, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TowerKurtScript, -1 ; 
	object_event   7, 2, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, NATU, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NatuScriptBT, -1

	object_event 7, 13, SPRITE_AMOS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, BrassTowerAmosScript, -1 ; done
;	object_event  5,  13, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_WESTERN_CAPITAL_PREP, -1
	object_event 9, 13, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, BrassTowerHealScript, -1 ; done


NatuScriptBT:
	opentext
	writetext BT_NatuText_1
	promptbutton
	special PokemonCenterPC
	endtext
	end

BT_NatuText_1:
	text "It's Kurt's Natu!"
	line "It can teleport"
	para "to the present to"
	line "manage the party."
	done


BrassTowerAmosScript:
	faceplayer
	opentext
	writetext BrassTowerAmosText1
	waitbutton
	closetext
	end

BrassTowerAmosText1:
	text_high
    text " Amos: "
	next
	text_start
	text "Consul Urgaust"
	line "is on the top of"
	cont "the tower."
	
	para "Hurry! We mustn't"
	line "let him become"
	cont "an emperor!"
	done

BrassTowerHealScript: 
	faceplayer
	opentext
	writetext WantToHealBrassTower
	waitbutton
	closetext

	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic

	opentext
	writetext BrassHealedPokemon
	waitbutton
	closetext
	end

WantToHealBrassTower:
	text "Let me heal your"
	line "#mon."
	done

BrassHealedPokemon:
	text "All healed."
	done

TowerKurtScript: 
	faceplayer
	opentext
	writetext KurtTowerText2
	yesorno
	iffalse_jumpopenedtext BT1F_SomeOtherTimes
	winlosstext BT1F_KurtBattleText, BT1F_KurtBattleText
	loadtrainer KURT, 13
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext BT1F_SomeOtherTimes

KurtTowerText2:
	text "Let's finish what"
	line "we started."
	
	para "If we let the"
	line "Consul reign,"
	para "Johto will be"
	line "on a path to"
	cont "destruction."

	para "We need to get"
	line "to him before we"
	para "get caught in the"
	line "coming rainstorm."
	
	para "If you need to"
	line "train, we can"
	cont "battle."
	done

BT1F_SomeOtherTimes:
	text "Let's finish what"
	line "we started!"
	
	para "The future is"
	line "counting on us!"
	done

BT1F_KurtBattleText:
	text "We can battle as"
	line "many times as you"
	cont "want."
	done

BrassTowerKurtJournalText:
	text "Kurt's Journal"
	line "Brass Tower"
	
	para "In this city, I'm"
	line "reminded of the"
	cont "last time I was"
	cont "here..."
	
	para "..."
	
	para "Hm? He hasn't"
	line "finished it."
	done
