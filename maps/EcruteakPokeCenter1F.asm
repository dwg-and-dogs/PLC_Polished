EcruteakPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, ECRUTEAK_CITY, 6
	warp_event  6,  7, ECRUTEAK_CITY, 6

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalMortyScript ; ok 

	def_object_events
	pc_nurse_event  5, 1
	object_event 11,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EcruteakPokeCenter1FPokefanMScript, -1
	object_event  8,  1, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakPokeCenter1FGymGuyText, -1

	object_event 2,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptext, EcruteakPokeCenter1fPokefan2Text, -1
	object_event 2,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, EcruteakPokeCenter1fElderText, -1
	object_event  9,  6, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IlexExcelsiorV1Script, -1


	object_const_def


PokemonJournalMortyScript:
	setflag ENGINE_READ_MORTY_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "Leader Morty!"

	para "Recently un-"
	line "earthed paint-"
	cont "ings show that"
	
	para "he has a close"
	line "resemblance to"
	cont "former Consuls"
	cont "of Johto."
	done

EcruteakPokeCenter1FPokefanMScript:
	jumpthistextfaceplayer

	text "The Kimono Girls"
	line "are putting on a"
	cont "very immersive"
	cont "show these days!"
	done



EcruteakPokeCenter1FGymGuyText:
	text "I hear there's a"
	line "truly powerful"
	cont "#mon at the"
	para "Lake of Rage,"
	line "ever since Silph"
	cont "abandoned their"
	cont "project."
	done
	
EcruteakPokeCenter1fPokefan2Text:
	text "Give it a rest!"
	
	para "People want this:"
	line "entertainment and"
	cont "excitement."
	
	para "It's called ada-"
	line "pting to the"
	cont "times."
	done

EcruteakPokeCenter1fElderText:
	text "Adapting? Or"
	line "abandoning?"
	
	para "It's a thin"
	line "line!"
	done


IlexExcelsiorV1Script:
	opentext
	writetext WeirdTextEcruteakCenter
	closetext
	unowntypeface
	showtext IlexExcelsiorV1Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

WeirdTextEcruteakCenter:
	text "Hm? What's this"
	line "weird pamphlet?"
	done

IlexExcelsiorV1Text:
	text "Ilex Excelsior"
	
	para "When the tree"
	line "rings, will"
	cont "you answer"
	
	para "First Edition"

	para "If we lose the"
	line "theatre we lose"
	cont "our history"
	done
