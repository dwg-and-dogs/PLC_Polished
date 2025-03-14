SulfurSty_MapScriptHeader: ;	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 9, 17, SULFUR_STY_HOUSE_1, 1
	warp_event 51,17, SULFUR_STY_HOUSE_2, 1
	warp_event 34, 7, CLASTS_CRADLE_3F, 1


	def_coord_events



	def_bg_events



	def_object_events
; brigaders fighting ninjas
; ninjas with heracross or ursaring, brigaders with primeape or electabuzz or scizor


	tmhmball_event 21, 8, TM_FOCUS_BLAST, EVENT_GOT_TM_FOCUS_BLAST

	object_event  46,  25, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, Ninja1Text, EVENT_BEAT_ADRINNA_MINE ; LIKE THE GAMEBOY BOYS, FACING YOU THEN BACK
	pokemon_event 47, 25, CROBAT, -1, -1, PAL_NPC_BLUE, StyCrobatText, -1
	object_event  49, 25, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, Brigader1Text, EVENT_BEAT_ADRINNA_MINE ; LIKE THE GAMEBOY BOYS, FACING YOU THEN BACK
	pokemon_event 48, 25, RHYPERIOR, -1, -1, PAL_NPC_BROWN, StyRhydonText, -1
	
	object_event  24, 23, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, Ninja2Text, EVENT_BEAT_ADRINNA_MINE ; LIKE THE GAMEBOY BOYS, FACING YOU THEN BACK
	pokemon_event 25, 23, SNEASLER, -1, -1, PAL_NPC_BLUE, StySneaslerText, -1
	object_event  27, 23, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, Brigader2Text, EVENT_BEAT_ADRINNA_MINE ; LIKE THE GAMEBOY BOYS, FACING YOU THEN BACK
	pokemon_event 26, 23, MACHAMP, -1, -1, PAL_NPC_BROWN, StyMachampText, -1

	object_event  22,  6, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, Ninja3Text, EVENT_BEAT_ADRINNA_MINE ; LIKE THE GAMEBOY BOYS, FACING YOU THEN BACK
	pokemon_event 23, 6, GRANBULL, -1, -1, PAL_NPC_RED, StyGranbullText, -1
	object_event  25,  6, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, Brigader3Text, EVENT_BEAT_ADRINNA_MINE ; LIKE THE GAMEBOY BOYS, FACING YOU THEN BACK
	pokemon_event 24, 6, MAGNETON, -1, -1, PAL_NPC_BROWN, StyMagnetonText, -1

	object_event  35, 19, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBrigader12, EVENT_BEAT_ADRINNA_MINE ; ground
	object_event  37, 16, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBrigader13, EVENT_BEAT_ADRINNA_MINE ; fighting 
	object_event  22, 13, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBrigader14, EVENT_BEAT_ADRINNA_MINE ; flying 

	tmhmball_event 10, 7, TM_STONE_EDGE, EVENT_GOT_TM_STONE_EDGE 


	object_const_def


GenericTrainerBrigader12:
	generictrainer BRIGADER, 12, EVENT_BEAT_ROCKET_GRUNTM_12, Brigader12SeenText, Brigader12BeatenText

Brigader12BeatenText:
	text "Crushed!"
	done

Brigader12SeenText:
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
	text "Beep, spark"
	done
