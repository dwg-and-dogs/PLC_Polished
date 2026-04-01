WesternCapital_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 17, 11, EMPERORS_GARDEN, 1
	warp_event 18, 11, EMPERORS_GARDEN, 2
	warp_event 9, 27, WESTERN_CAPITAL_CEMETERY, 1
	warp_event 23, 17, WESTERN_CAPITAL_DANCE_THEATRE, 1
	warp_event 21, 25, WESTERN_CAPITAL_DORMS, 1
	warp_event 27, 23, WESTERN_CAPITAL_STOCKROOM, 1
	warp_event  4, 26, CAPITAL_CULL_GATE, 3
	warp_event  4, 27, CAPITAL_CULL_GATE, 4
	warp_event 35, 5, TIN_TOWER_OLD_1F, 1
	warp_event 9, 31, STADIUM_CAPITAL_GATE, 3
	warp_event 10, 31, STADIUM_CAPITAL_GATE, 4
	warp_event 35, 26, STY_CAPITAL_GATE, 3
	warp_event 35, 27, STY_CAPITAL_GATE, 4
	warp_event 5, 5, BRASS_TOWER_1F, 2

	def_coord_events


	def_bg_events
	bg_event 7, 7, BGEVENT_JUMPTEXT, WCBrassTowerText
	bg_event 37, 7, BGEVENT_JUMPTEXT, WCTinTowerText
	bg_event 15, 11, BGEVENT_JUMPTEXT, WCGardenText
	bg_event 21, 17, BGEVENT_JUMPTEXT, WCDanceText
	bg_event 21, 11, BGEVENT_JUMPTEXT, WCGloryToMejimiText
	bg_event 17, 23, BGEVENT_JUMPTEXT, WCSignText
	bg_event 19, 19, BGEVENT_READ, WC_AmosWantedSign
	bg_event  6, 28, BGEVENT_JUMPTEXT, WC_ToStadiumSign
	; hidden items 
	bg_event  14, 14, BGEVENT_ITEM + PP_UP, EVENT_WC_HIDDEN_1
	bg_event  29, 27, BGEVENT_ITEM + SILVER_LEAF, EVENT_WC_HIDDEN_2

	def_object_events
; civilians
	object_event 16, 16, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, 	OBJECTTYPE_SCRIPT, 0, WesternCapitalNPC1Text, EVENT_WESTERN_CAPITAL_CIVILIAN
	object_event 36, 7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, 	OBJECTTYPE_COMMAND, jumptextfaceplayer, WesternCapitalHisuiText1, EVENT_BEAT_ADRINNA_MINE
	object_event 27, 18, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, 	OBJECTTYPE_COMMAND, jumptextfaceplayer, WesternCapitalNPC2Text, EVENT_WESTERN_CAPITAL_CIVILIAN
	object_event 16, 21, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, 		OBJECTTYPE_SCRIPT, 0, WesternCapitalNPC3Text, EVENT_WESTERN_CAPITAL_CIVILIAN
	object_event 18, 26, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, 	OBJECTTYPE_SCRIPT, 0, WesternCapitalNPC4Text, EVENT_WESTERN_CAPITAL_CIVILIAN
	object_event 9, 17, SPRITE_GRANNY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, 	OBJECTTYPE_SCRIPT, 0, WesternCapitalNPC5Text, EVENT_WESTERN_CAPITAL_CIVILIAN
	object_event 5, 6, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, WCBrigaderText, EVENT_SKIRMISH_STARTED
	object_event 17, 33, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, WCBrigaderTextTT, EVENT_BEAT_ADRINNA_MINE
	object_event 18, 33, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, WCBrigaderTextTT, EVENT_BEAT_ADRINNA_MINE
	object_event 34, 19, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, WesternCapitalFishingGuruScript, EVENT_GOT_OLD_ROD
	fruittree_event 6, 6, FRUITTREE_WESTERN_CAPITAL, FIXED_CHARGE, PAL_NPC_RED
; SKIRMISH 
	object_event  5, 9, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, WCNinjaSkirmishText, EVENT_CAPITAL_SKIRMISHER ; LIKE THE GAMEBOY BOYS, FACING YOU THEN BACK
	pokemon_event 4, 9, XATU, -1, -1, PAL_NPC_GREEN, SkirmishNinjaMonText, EVENT_CAPITAL_SKIRMISHER
	object_event  4, 7, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, WCBrigaderSkirmishText, EVENT_CAPITAL_SKIRMISHER ; LIKE THE GAMEBOY BOYS, FACING YOU THEN BACK
	pokemon_event 4, 8, DONPHAN, -1, -1, PAL_NPC_BROWN, SkirmishBrigaderMonText, EVENT_CAPITAL_SKIRMISHER
	




WesternCapitalNPC1Text:
	faceplayer
	checkevent EVENT_BEAT_ADRINNA_MINE
	iftrue_jumptext WesternCapitalNPC1Text_2

	jumpthistext
	text "We couldn't have"
	line "built the East"
	cont "Tower without"
	
	para "help from the"
	line "Hisuians."
	done


WesternCapitalNPC1Text_2:
	text "Why didn't the"
	line "Hisuians stay for"
	cont "the coronation?"
	done

WesternCapitalHisuiText1:
	text "My blessing will"
	line "attract #mon"
	para "to protect the"
	line "tower."
	done

WesternCapitalNPC2Text:
	text "The towers are"
	line "so tall!"
	
	para "Hail Emperor"
	line "Vesper!"
	done

WesternCapitalNPC3Text:
	faceplayer
	checkevent EVENT_BEAT_ADRINNA_MINE
	iftrue_jumptext WesternCapitalNPC3Text_2

	jumpthistext
	text "The metal in our"
	line "towers lets them"
	para "stand taller than"
	line "others in Johto."
	done

WesternCapitalNPC3Text_2:
	text "Glory to Emperor"
	line "Vesper! He will"
	cont "protect Johto!"
	done

WesternCapitalNPC4Text:
	faceplayer
	checkevent EVENT_BEAT_ADRINNA_MINE
	iftrue_jumptext WesternCapitalNPC4Text_2

	jumpthistext
	text "The outsiders at"
	line "Trader's Landing"
	para "claim to have"
	line "towers even taller"
	cont "than these!"
	done

WesternCapitalNPC4Text_2:
	text "Something weird"
	line "is going on."
	
	para "Andrea's briga-"
	line "ders aren't here"
	cont "for some reason."
	done

WesternCapitalNPC5Text:
	faceplayer
	checkevent EVENT_BEAT_ADRINNA_MINE
	iftrue_jumptext WesternCapitalNPC5Text_2

	jumpthistext
	text "The moat protects"
	line "us in case of an"
	cont "ambush by the"
	cont "outsiders."
	done

WesternCapitalNPC5Text_2:
	text "My bones ache."
	line "There must be a"
	cont "storm coming."
	done

WCBrigaderText:
	faceplayer
	checkevent EVENT_BEAT_ADRINNA_MINE
	iftrue_jumptext WCBrigaderText_2

	jumpthistext
	text "Off-limits until"
	line "the tower is"
	cont "blessed."
	done
	

WCBrigaderTextTT:
	faceplayer
	checkevent EVENT_BEAT_ADRINNA_MINE
	iftrue_jumptext WCBrigaderText_2

	jumpthistext
	text "The temples are"
	line "off-limits. The"
	para "Emperor will be"
	line "renovating them."
	done

WCBrigaderText_2:
	text "The tower is off-"
	line "limits! Glory to"
	cont "the Emperor!"
	done

WCBrassTowerText:
	text "Brass Tower"
	line "Devoted to"
	cont "Emperor Vesper"
	done

WCTinTowerText:
	text "Tin Tower"
	line "Protected by"
	cont "spirits"
	done

WCGardenText:
	text "Royal Garden"
	line "Home to refined"
	cont "#mon"
	done
	
WCDanceText:
	text "Kimono Theatre"
	line "A neverending"
	cont "tapestry"
	done

WCGloryToMejimiText:
	text "Welcome the new"
	line "age - Glory to"
	cont "Emperor Vesper!"
	done
	
WCSignText:
	text "Western Capital"
	line "Protected by"
	cont "Chronicler Sybil!"
	done
	
WC_AmosWantedSign:
	refreshscreen
	trainerpic AMOS
	waitbutton
	closepokepic
	jumpthistext

	text "WANTED: This man"
	line "is wanted for"
	para "crimes against"
	line "the Emperor."

	para "If you see him,"
	line "please notify a"
	cont "brigader!"

	para "Known alias:"
	line "Amos."
	done

WC_ToStadiumSign:
	text "South: To Stadium"

	para "West: To Trader's"
	line "Landing"
	done

SkirmishNinjaMonText:
	text "Xatu: Kazaa!"
	done
	
SkirmishBrigaderMonText:
	text "Donphan: Naphaa!"
	done

WCNinjaSkirmishText:
	text "Xatu - Roost!"
	done

WCBrigaderSkirmishText:
	text "Donphan - use"
	line "ice shard!"
	done

WesternCapitalFishingGuruScript:
	checkevent EVENT_GOT_OLD_ROD
	iftrue_jumptextfaceplayer .DoneText
	faceplayer
	opentext
	writetext .IntroText
	promptbutton
	verbosegivekeyitem OLD_ROD
	writetext .AfterText
	waitbutton
	closetext
	setevent EVENT_GOT_OLD_ROD
	end


.IntroText:
	text "Outsiders?"
	line "Brigaders?"
	
	para "I just put that"
	line "behind me when I"
	cont "go fishing."
	
	para "Take this,"
	line "I insist."
	done



.AfterText:
	text "When you're not"
	line "sure how to get"
	para "out of a problem,"
	line "just toss a line"
	para "and let the solu-"
	line "tion come to you."
	done


.DoneText:
	text "Every morning's a"
	line "good morning if"
	cont "I'm fishing."
	done
	