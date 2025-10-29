VioletPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, VIOLET_CITY, 5
	warp_event  6,  7, VIOLET_CITY, 5

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalFalknerScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  9,  4, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletPokeCenter1FGameboyKidText, -1
	object_event  2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletPokeCenter1FGentlemanText, -1
	object_event  9,  6, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IlexExcelsiorV6Script, -1



PokemonJournalFalknerScript:
	setflag ENGINE_READ_FALKNER_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "Leader Falkner!"

	para "People say that"
	line "Falkner reveres"
	cont "his father, who"

	para "was a ground-"
	line "type specialist."
	done

VioletPokeCenter1FGameboyKidText:
	text "My ground-type"
	line "#mon love"
	cont "playing in the"
	cont "mud."
	done

VioletPokeCenter1FGentlemanText:
	text "Lots of junk"
	line "has been found"
	cont "in the muck."
	para "You should check"
	line "for yourself."
	done


IlexExcelsiorV6Script:
	opentext
	writetext WeirdTextVioletCenter
	closetext
	unowntypeface
	showtext IlexExcelsiorV6Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

WeirdTextVioletCenter:
	text "Hm? What's this"
	line "weird pamphlet?"
	done

IlexExcelsiorV6Text:
	text "Ilex Excelsior"
	
	para "If the tree rings"
	line "will you answer"
	
	para "Sixth Edition"

	para "Falkner tower"
	line "clouds views"
	done