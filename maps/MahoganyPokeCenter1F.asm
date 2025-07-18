MahoganyPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, MAHOGANY_TOWN, 4
	warp_event  6,  7, MAHOGANY_TOWN, 4

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalPryceScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  1,  3, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyPokeCenter1FYoungsterText, -1
	object_event  10,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyPokeCenter1FCooltrainerfText, -1
	object_event 3, 3, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyPokeCenter1FMatronText, -1
	object_event  9,  6, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IlexExcelsiorV7Script, -1

PokemonJournalPryceScript:
	setflag ENGINE_READ_PRYCE_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "Leader Pryce!"

	para "Pryce is said to"
	line "medidate north of"
	cont "the Lake of Rage,"
	
	para "In a hidden cabin"
	line "only few know of."
	done


MahoganyPokeCenter1FYoungsterText:
	text "I want to explore"
	line "the Lake, but my"
	cont "dad says that the"
	
	para "#mon there"
	line "are too strong."
	done

MahoganyPokeCenter1FCooltrainerfText:
	text "Be careful if you"
	line "go to the Lake."
	
	para "The gate clerks"
	line "tell me not eve-"
	cont "ryone comes back."	
	done

MahoganyPokeCenter1FMatronText:
	text "Silph abandoned"
	line "the Lake after it"
	cont "drained."
	
	para "Wild #mon"
	line "are taking over."
	done

IlexExcelsiorV7Script:
	opentext
	writetext WeirdTextMahoganyCenter
	closetext
	unowntypeface
	showtext IlexExcelsiorV7Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

WeirdTextMahoganyCenter:
	text "Hm? What's this"
	line "weird pamphlet?"
	done

IlexExcelsiorV7Text:
	text "Ilex Excelsior"
	
	para "When the tree"
	line "rings, will"
	cont "you answer"
	
	para "Seventh Edition"

	para "starting over"
	line "when filled "
	cont "with rage"
	done