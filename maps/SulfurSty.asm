SulfurSty_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 9, 17, SULFUR_STY_HOUSE_1, 1
	warp_event 51,17, SULFUR_STY_HOUSE_2, 1
	warp_event 34, 7, CLASTS_CRADLE_3F, 1
	warp_event 4, 22, STY_CAPITAL_GATE, 1
	warp_event 4, 23, STY_CAPITAL_GATE, 2

	def_coord_events


	def_bg_events
	bg_event 17, 11, BGEVENT_ITEM + MAX_ELIXIR, 	EVENT_HIDDEN_STY_1 
	bg_event 40,  6, BGEVENT_ITEM + REVIVAL_HERB, 	EVENT_HIDDEN_STY_2
	bg_event 44, 10, BGEVENT_ITEM + BIG_NUGGET, 	EVENT_HIDDEN_STY_3 
	bg_event 46, 11, BGEVENT_ITEM + MAX_ELIXIR, 	EVENT_HIDDEN_STY_4
	bg_event 45, 25, BGEVENT_JUMPTEXT, StySignText
	bg_event 14, 17, SulfurStyTimeTravelScript

	def_object_events
	; set 1
	object_event  46,  25, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, Ninja1Text, EVENT_BEAT_ADRINNA_MINE ; LIKE THE GAMEBOY BOYS, FACING YOU THEN BACK
	pokemon_event 47, 25, CROBAT, -1, -1, PAL_NPC_BLUE, StyCrobatText, EVENT_BEAT_ADRINNA_MINE
	object_event  49, 25, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, Brigader1Text, EVENT_BEAT_ADRINNA_MINE ; LIKE THE GAMEBOY BOYS, FACING YOU THEN BACK
	pokemon_event 48, 25, RHYDON, -1, -1, PAL_NPC_BROWN, StyRhydonText, EVENT_BEAT_ADRINNA_MINE
	; set
	object_event  24, 23, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, Ninja2Text, EVENT_BEAT_ADRINNA_MINE ; LIKE THE GAMEBOY BOYS, FACING YOU THEN BACK
	pokemon_event 25, 23, SNEASLER, -1, -1, PAL_NPC_BLUE, StySneaslerText, EVENT_BEAT_ADRINNA_MINE
	object_event  27, 23, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, Brigader2Text, EVENT_BEAT_ADRINNA_MINE ; LIKE THE GAMEBOY BOYS, FACING YOU THEN BACK
	pokemon_event 26, 23, MACHAMP, -1, -1, PAL_NPC_BROWN, StyMachampText, EVENT_BEAT_ADRINNA_MINE
	; set 
	object_event  22,  6, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, Ninja3Text, EVENT_BEAT_ADRINNA_MINE ; LIKE THE GAMEBOY BOYS, FACING YOU THEN BACK
	pokemon_event 23, 6, GRANBULL, -1, -1, PAL_NPC_RED, StyGranbullText, EVENT_BEAT_ADRINNA_MINE
	object_event  25,  6, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, Brigader3Text, EVENT_BEAT_ADRINNA_MINE ; LIKE THE GAMEBOY BOYS, FACING YOU THEN BACK
	pokemon_event 24, 6, MAGNETON, -1, -1, PAL_NPC_BROWN, StyMagnetonText, EVENT_BEAT_ADRINNA_MINE

	object_event  35, 19, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBrigader21, EVENT_BEAT_ADRINNA_MINE ; ground
	object_event  37, 16, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBrigader13, EVENT_BEAT_ADRINNA_MINE ; fighting 
	object_event  22, 13, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBrigader14, EVENT_BEAT_ADRINNA_MINE ; flying 

	object_event 14, 18, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_UP, 	0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrigaderRoadblock3Text, EVENT_BEAT_ADRINNA_MINE ; fighting 	
	; roadblocks 
	object_event  8, 22, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, BrigaderRoadblock1Text, EVENT_BEAT_AMOS 
	object_event  8, 23, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_UP, 	0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, BrigaderRoadblock2Text, EVENT_BEAT_AMOS ; fighting 	
	
	tmhmball_event 10, 7, TM_STONE_EDGE, EVENT_GOT_TM_STONE_EDGE 
	tmhmball_event 21, 8, TM_FOCUS_BLAST, EVENT_GOT_TM_FOCUS_BLAST

	object_const_def

SulfurStyTimeTravelScript: ; TODO 
	opentext
	checkevent EVENT_BEAT_ADRINNA_MINE
	iffalse_jumptext SulfurStyNoTimeTravelYetText
	writetext SulfurStyAskToTimeTravelText
	yesorno
	iffalse_jumpopenedtext SulfurStyNoTimeTravelText
	writetext SulfurStyYesTimeTravelText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp ROUTE_42, 10, 6
	end

SulfurStyNoTimeTravelYetText:
	text "An impression on"
	line "the mountain,"
	
	para "apparently carved"
	line "with intention."
	
	para "Who could have"
	line "made it?"
	done

SulfurStyAskToTimeTravelText:
	text "It's a petroglyph"
	line "of Celebi!"
	
	para "Call to travel"
	line "forward in time?"
	done

SulfurStyNoTimeTravelText:
	text "Some other time."
	done

SulfurStyYesTimeTravelText:
	text "Time to go."
	done

StySignText:
	text "The Sulfur Sty"
	line "Beneath the"
	cont "Clast's Cradle"
	done

BrigaderRoadblock3Text:
	text "Even if we lose,"
	line "our symbols will"
	cont "persist!"
	done

GenericTrainerBrigader21:
	generictrainer BRIGADER, 21, EVENT_BEAT_ROCKET_GRUNTM_12, Brigader12SeenText, Brigader12BeatenText

Brigader21BeatenText:
	text "Crushed!"
	done

Brigader21SeenText:
	text "We'll ground you"
	line "down!"
	done


GenericTrainerBrigader13:
	generictrainer BRIGADER, 13, EVENT_BEAT_ROCKET_GRUNTM_13, Brigader13SeenText, Brigader13BeatenText

Brigader13BeatenText:
	text "I was beaten"
	line "back..."
	done

Brigader13SeenText:
	text "You'll never get"
	line "to the mine!"
	done

GenericTrainerBrigader14:
	generictrainer BRIGADER, 14, EVENT_BEAT_ROCKET_GRUNTM_14, Brigader14SeenText, Brigader14BeatenText

Brigader14BeatenText:
	text "Wings clipped!"
	done

Brigader14SeenText:
	text "I'll swoop in to"
	line "knock you down!"
	done

Ninja1Text:
	text "Crobat, use"
	line "Giga Drain!"
	done
	
StyCrobatText:
	text "Crooo!"
	done
	
Brigader1Text:
	text "Rhydon, Rock"
	line "Slide!"
	done

StyRhydonText:
	text "Donn!"
	done

Ninja2Text:
	text "Sneasler, use"
	line "Poison Jab!"
	done

StySneaslerText:
	text "Snasu Snasu!"
	done

Brigader2Text:
	text "Machamp, use"
	line "Facade!"
	done

StyMachampText:
	text "Macha!"
	done

Ninja3Text:
	text "Granbull, use"
	line "Brick Break!"
	done

StyGranbullText:
	text "Grrr...!"
	done

Brigader3Text:
	text "Magneton, use"
	line "Flash Cannon!"
	done

StyMagnetonText:
	text "<Beep, spark>"
	done

BrigaderRoadblock1Text:
	text "I'm telling you,"
	line "I've seen it!"
	
	para "At the bottom of"
	line "the mine shaft!"
	
	para "Just beneath the"
	line "surface is a sea"
	cont "of molten rock!"
	done

BrigaderRoadblock2Text:
	text "That's impossible!"
	line "If land sits on a"
	cont "flowing liquid,"
	
	para "then our islands"
	line "and continents"
	para "would move like a"
	line "lake's lilypad!"
	done
