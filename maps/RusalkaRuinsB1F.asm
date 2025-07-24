RusalkaRuinsB1F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  1, 12, PHANTOM_FJORD, 2
	warp_event  26, 6, RUSALKA_RUINS_1F, 1
	warp_event  0, 4, RUSALKA_RUINS_1F, 2
	warp_event  26, 3, RUSALKA_RUINS_1F, 1 ; hole drop FOR MOST  
	warp_event  3, 10, RUSALKA_RUINS_1F, 1 ; hole drop FOR CAPTAIN 
	warp_event  8, 2, RUSALKA_RUINS_1F, 1 ; hole drop FOR DARK CABIN   	


	def_coord_events


	def_bg_events
	bg_event  5,  7, BGEVENT_ITEM + X_ATTACK, EVENT_RUSALKA_B1F_X_ATTACK 
	bg_event 27, 13, BGEVENT_ITEM + X_SPEED, EVENT_RUSALKA_B1F_X_SPEED




	def_object_events
	object_event  1,  10, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CaptainsLog01, -1
	object_event  8,  10, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CaptainsLog02, -1
	object_event  13,  6, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CaptainsLog03, -1
	object_event  20,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CaptainsLog04, -1
	object_event  4,  2, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CaptainsLog08, -1	




CaptainsLog01:
	italictypeface
	showtext CaptainsLog01Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

CaptainsLog01Text:
	text "Captain's Log 1"
	line "March 01"
	
	para "Another trophy"
	line "for my case!"
	
	para "The battle was"
	line "decisive for"
	cont "our 108 souls."
	
	para "The locals"
	line "surrendered with"
	cont "surprising grace."

	para "Their chief's"
	line "wife insisted"
	para "on accompanying"
	line "us to port,"
	para "bearing some"
	line "sort of stone"
	cont "as tribute."
	done

CaptainsLog02:
	italictypeface
	showtext CaptainsLog02Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

CaptainsLog02Text:
	text "Captain's Log 2"
	line "March 16"
	
	para "More Pidgey mail"
	line "cluttering my"
	cont "desk."
	
	para "Eleanor writes"
	line "faithfully."
	
	para "I'll read them"
	line "when we've"
	para "properly secured"
	line "our territory."
	
	para "That stone..."
	line "there's something"
	cont "regal about it."
	
	para "Had crew take"
	line "shifts standing"
	cont "guard all night."
	
	para "Can't risk"
	line "anyone getting"
	para "ideas about my"
	line "collection."
	done

CaptainsLog03:
	italictypeface
	showtext CaptainsLog03Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

CaptainsLog03Text:
	text "Captain's Log 3"
	line "April 09"
	
	para "Long voyage"
	line "called for a"
	cont "story."
	
	para "I regaled them"
	line "with one of my"
	para "best, the time"
	line "I sacrificed"
	para "the life boats"
	line "to get enough"
	para "speed to catch"
	line "a shiny Swanna."
	
	para "Also, found a"
	line "few of my crew"
	para "stealing - sent"
	line "them below deck"
	cont "in the cells!"
	done

CaptainsLog04:
	italictypeface
	showtext CaptainsLog04Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

CaptainsLog04Text:
	text "Captain's Log 4"
	line "April 12"
	
	para "Even more mail"
	line "for the pile."
	
	para "She's using a"
	line "Togepi stamp"
	cont "for each one."
	
	para "I plan to read"
	line "it once I finish"
	para "investigating"
	line "the faint green"
	para "glow emanating"
	line "from the stone."
	
	para "It began to"
	line "glow last night."
	
	para "Incidentally,"
	line "the four crew"
	para "locked up have"
	line "disappeared."
	done

CaptainsLog08:
	italictypeface
	showtext CaptainsLog08Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

CaptainsLog08Text:
	text "Captain's Log 8"
	line "June 05"
	
	para "Finally read the"
	line "mail from Ellie."
	
	para "I shall be a"
	line "father!"
	
	para "I have dallied"
	line "around these"
	para "islands too"
	line "long thinking"
	cont "about riches."
	
	para "The life within"
	line "you is what I"
	cont "want to hold."
	
	para "I'll set a course"
	line "once I admire the"
	cont "gemstone again."
	done
