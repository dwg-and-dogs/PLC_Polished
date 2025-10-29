LakeOfRageHiddenPowerHouse_MapScriptHeader: ; pryce's cabin 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 1
	warp_event  3,  7, LAKE_OF_RAGE, 1


	def_coord_events


	def_bg_events
	bg_event  5,  1, BGEVENT_JUMPSTD, radio2
	bg_event  6,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf


	def_object_events
	object_event  4,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BasculegionBlessingScript, -1
	object_event  4,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PryceCabinText2, -1
	object_event  3,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PryceCabinText1, -1

BasculegionBlessingScript:
	opentext
	writetext ReadBasculegionTextQuestion
	yesorno
	iffalse_jumpopenedtext NoReadBasculegionText
	closetext
	italictypeface
	showtext BasculegionBlessingText
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end	

NoReadBasculegionText:
	text "Some other time."
	done
	
ReadBasculegionTextQuestion:
	text "It's a big pile"
	line "of handwritten"
	cont "papers. Read?"
	done
	
BasculegionBlessingText:
	text "To <PLAYER>."
	line "From Pryce."
	
	para "Did you know:"
	line "Basculin used to"
	para "swim all the way"
	line "upstream to this"
	para "Lake, many many"
	line "years ago?"

	para "Winter winds"
	line "remind us to be"
	cont "like Basculin."
	
	para "In spring, they"
	line "awake tethered to"
	cont "riverbeds,"
	para "wrapped in silt"
	line "and sticks."
	
	para "They unwrap to"
	line "find mysterious"
	para "salty scales and"
	line "ravaged fins."

	para "Then in summer,"
	line "to the ocean with"
	para "its dangers and"
	line "opportunities."
	
	para "In fall, instinct"
	line "compels them to"
	para "fight the current"
	line "and climb falls"
	para "to that familiar"
	line "riverbed."
	
	para "In the icy river"
	line "they wrap their"
	cont "eggs like gifts,"
	
	para "and lay down for"
	line "a final rest."
	
	para "They will never"
	line "see their gifts"
	para "received by the"
	line "next generations."
	
	para "They must hope an"
	line "inheritance of an"
	para "orderly nest and"
	line "proof of scaled"
	para "waterfalls will"
	line "reassure the"
	para "young ones of"
	line "their magnificent"
	cont "capability."
	done

PryceCabinText2:
	opentext
	writetext ItsALetterText
	waitbutton
	closetext
	italictypeface
	showtext PryceCabinText2Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

PryceCabinText1:
	opentext
	writetext ItsALetterText
	waitbutton
	closetext
	italictypeface
	showtext PryceCabinText1Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

ItsALetterText:
	text "It's a letter on"
	line "an envelope."
	done

PryceCabinText1Text:
	text "To Pryce"
	line "From Kurt"
	
	para "How much longer"
	line "can I do this?"
	
	para "I feel like an"
	line "old Granbull that"
	
	para "doesn't see or"
	line "hear things right"
	cont "anymore,"
	
	para "Barking at noth-"
	line "ing and getting"
	cont "told to shut it"
	cont "and go away."
	done

PryceCabinText2Text:
	text "To Kurt"
	line "From Pryce"
	
	para "I'm sorry that so"
	line "few Azaleans came"
	cont "to the ceremony."
	
	para "And I hear you"
	line "are more agitated"
	cont "every day."
	
	para "Please, remember"
	line "that you shape"
	cont "<PLAYER>."
	
	para "You can't shape"
	line "the whole world."
	done
	