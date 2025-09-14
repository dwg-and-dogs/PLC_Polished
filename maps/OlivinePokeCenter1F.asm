OlivinePokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, OLIVINE_CITY, 1
	warp_event  6,  7, OLIVINE_CITY, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalJasmineScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  2,  6, SPRITE_MATRON, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumpstd, happinesschecknpc, -1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivinePokeCenter1FFisherText, -1
	object_event 11,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivinePokeCenter1FTeacherText, -1
	object_event  8, 5, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IlexExcelsiorV2Script, -1
	object_event  8, 4, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtOlivineScript, EVENT_BEAT_CHUCK ;


	object_const_def


PokemonJournalJasmineScript:
	setflag ENGINE_READ_JASMINE_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "Leader Chuck!"

	para "Despite losing"
	line "his home to a"
	cont "tsunami, Chuck"
	
	para "remains hopeful"
	line "that the next"
	para "disaster can be"
	line "averted."
	done

OlivinePokeCenter1FFisherText:
	text "The desal plant"
	line "took my favorite"
	cont "fishing spot."	
	done

OlivinePokeCenter1FTeacherText:
	text "Chuck's project"
	line "is called OMLAS."
	
	para "It stands for:"
	para "OMniscient"
	line "Liberated"
	cont "Augmented"
	cont "Slowking."	
	done

IlexExcelsiorV2Script:
	opentext
	writetext WeirdTextOlivineCenter
	closetext
	unowntypeface
	showtext IlexExcelsiorV2Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

WeirdTextOlivineCenter:
	text "Hm? What's this"
	line "weird pamphlet?"
	done

IlexExcelsiorV2Text:
	text "Ilex Excelsior"
	
	para "If the tree rings"
	line "will you answer"
	
	para "Second Edition"

	para "The Desal Plant"
	line "corrodes minds"
	done
	
KurtOlivineScript:
	faceplayer
	opentext
	writetext KurtOlivineText
	yesorno
	iffalse_jumpopenedtext KurtOlivineText3
	winlosstext OlivineKurtBattleText, OlivineKurtBattleText
	loadtrainer KURT, KURT8
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext OlivineKurtBattleText2

KurtOlivineText:
	text "<PLAYER>! Nothing"
	line "good can come of"
	cont "Chuck's project."
	
	para "Another example"
	line "of Silph tech"
	cont "run amok."
	
	para "It's putting the"
	line "whole town out of"
	cont "work, and using"
	cont "a ton of water"
	cont "and energy."
	
	para "It seems like a"
	line "few citizens"
	cont "agree, as the"
	cont "Desal Plant was"
	cont "sabotaged."
	
	para "Now's a chance"
	line "to strike, and"
	cont "take it offline!"
	
	para "Want to battle"
	line "to train a bit?"
	done
	
KurtOlivineText3:
	text "Some other time."
	done

OlivineKurtBattleText:
	text "What a battle!"
	done

OlivineKurtBattleText2:
	text "We can battle as"
	line "many times as"
	cont "you like."
	done
