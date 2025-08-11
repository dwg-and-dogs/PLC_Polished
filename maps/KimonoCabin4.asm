KimonoCabin4_MapScriptHeader: ;REVISE THE TEXT 
	def_scene_scripts
	; solution:
	; blue		red		brown 		green
	; green		brown 	red			blue
	; brown 	blue	green		red
	; red		green	blue		brown 

	def_callbacks


	def_warp_events
	warp_event  6, 11, KIMONO_CABIN, 1
	warp_event  7, 11, KIMONO_CABIN, 1

	def_coord_events



	def_bg_events
	bg_event 0,  0, BGEVENT_READ, Switch00Script; blue done 
	bg_event 2,  0, BGEVENT_READ, Switch01Script ; red  done 
	bg_event 4,  0, BGEVENT_READ, Switch02Script ; brown 
	bg_event 6,  0, BGEVENT_JUMPTEXT, SwitchSetText ; set to green 
	
	bg_event 0,  2, BGEVENT_READ, Switch10Script ; green 
	bg_event 2,  2, BGEVENT_JUMPTEXT, SwitchSetText ; set in stone to brown 
	bg_event 4,  2, BGEVENT_READ, Switch12Script ; red 
	bg_event 6,  2, BGEVENT_READ, Switch13Script ; blue 
	
	bg_event 0,  4, BGEVENT_READ, Switch20Script ; brown 
	bg_event 2,  4, BGEVENT_READ, Switch21Script ; blue 
	bg_event 4,  4, BGEVENT_JUMPTEXT, SwitchSetText ; set in stone 
	bg_event 6,  4, BGEVENT_JUMPTEXT, SwitchSetText ; set in stone 
	
	bg_event 0,  6, BGEVENT_READ, Switch30Script ; red 
	bg_event 2,  6, BGEVENT_READ, Switch31Script ; green 
	bg_event 4,  6, BGEVENT_READ, Switch32Script ; blue 
	bg_event 6,  6, BGEVENT_READ, Switch33Script ; brown 
	


	def_object_events
	object_event  5, 9, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED,  OBJECTTYPE_SCRIPT, 0, KimonoCabin44Script, -1
	object_event  1, 8, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, LAPRAS, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, KimonoCabin4Lapras, EVENT_KIMONO_4_LAPRAS
	itemball_event 11, 11, SHINY_STONE, 1, EVENT_KIMONO_CABIN_SHINY_STONE 

	object_const_def
	const KIMONO_CABIN_4_GRANNY
	const KIMONO_CABIN_4_LAPRAS

SwitchSetText:
	text "This one is"
	line "set in stone."
	done

Switch00Script:
	opentext
	writetext ChooseAStoneColorText
	promptbutton
	loadmenu StoneColorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RedStone00
	ifequal 2, .BrownStone00
	ifequal 3, .GreenStone00
	ifequal 4, .BlueStone00
	jumptext NoChangeToStoneText

.RedStone00:
	changeblock 0, 0, $86
	clearevent EVENT_KC4_00
	waitbutton
	closetext
	end

.BrownStone00:
	changeblock 0, 0, $5A
	clearevent EVENT_KC4_00
	waitbutton
	closetext
	end

.GreenStone00:
	changeblock 0, 0, $87
	clearevent EVENT_KC4_00
	waitbutton
	closetext
	end

.BlueStone00:
	changeblock 0, 0, $59
	setevent EVENT_KC4_00 ; correct 
	waitbutton
	closetext
	end

Switch01Script: ; red 
	opentext
	writetext ChooseAStoneColorText
	promptbutton
	loadmenu StoneColorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RedStone01
	ifequal 2, .BrownStone01
	ifequal 3, .GreenStone01
	ifequal 4, .BlueStone01
	jumptext NoChangeToStoneText

.RedStone01:
	changeblock 2, 0, $86
	setevent EVENT_KC4_01
	waitbutton
	closetext
	end

.BrownStone01:
	changeblock 2, 0, $5A
	clearevent EVENT_KC4_01
	waitbutton
	closetext
	end

.GreenStone01:
	changeblock 2, 0, $87
	clearevent EVENT_KC4_01
	waitbutton
	closetext
	end

.BlueStone01:
	changeblock 2, 0, $59
	clearevent EVENT_KC4_01
	waitbutton
	closetext
	end














; other texts 

StoneColorMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 15, TEXTBOX_Y - 1
	dw MenuData
	db 1 ; default option

MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "RED@"
	db "BROWN@"
	db "GREEN@"
	db "BLUE@"
	db "CANCEL@"

ChooseAStoneColorText:	
	text "Which color?"
	done

KimonoCabin4Lapras:
	faceplayer
	cry LAPRAS
	pause 15
	loadwildmon LAPRAS, 30
	startbattle
	disappear KIMONO_CABIN_4_LAPRAS
	setevent EVENT_KIMONO_4_LAPRAS
	setevent EVENT_KIMONO_CABIN_4_LAPRAS_BATTLE
	reloadmapafterbattle
	end

KimonoCabin44Script:
	faceplayer
	opentext
	checkevent EVENT_KIMONO_CABIN_4_LAPRAS_BATTLE
	iftrue_jumpopenedtext WhatABeautifulSpecimenThatWasText
	checkevent EVENT_KIMONO_CABIN_SHINY_STONE
	iftrue .CatchLapras
	checkevent EVENT_EXPLAINED_SUDOKU
	iftrue .CheckSudokuSolved
	writetext ExplainSudokuText
	waitbutton
	setevent EVENT_EXPLAINED_SUDOKU
	closetext
	end

	; fallthru 
.CheckSudokuSolved: ; should give you a bub ball 
	checkevent EVENT_KC4_00
	iffalse_jumpopenedtext SudokuNotSolvedText
	; sudoku puzzle solved from here 
	; if solved, then 
	writetext TheGardenLooksBeautifulText
	waitbutton
	closetext
	turnobject KIMONO_CABIN_4_GRANNY, LEFT
	showemote EMOTE_SHOCK, KIMONO_CABIN_4_GRANNY, 30 
.CatchLapras:
	checkevent EVENT_KIMONO_CABIN_4_GAVE_BUB_BALL
	iftrue_jumpopenedtext GoCatchThatLaprasText
	appear KIMONO_CABIN_4_LAPRAS
	opentext
	writetext LaprasIsHereText
	waitbutton
	verbosegiveitem BUB_BALL, 1
	writetext Kimono4OddSouvenirText
	waitbutton
	verbosegiveitem ODD_SOUVENIR
	setevent EVENT_KIMONO_CABIN_4_GAVE_BUB_BALL
	closetext
	end


ExplainSudokuText:
	text "Shiji: This will"
	line "be a marvel, like"
	cont "the ones of my"
	cont "youth!"
	
	para "#mon will come"
	line "far and wide."
	
	para "Oh, but I don't"
	line "have the strength"
	cont "I used to."
	
	para "The method:"
	
	para "Each column, row"
	line "and 2x2 plot "
	cont "needs one stone"
	cont "of each color."
	done

SudokuNotSolvedText:
	text "Shiji: It isn't"
	line "up to snuff."

	para "One of each color"
	line "per row, column,"
	cont "and 2x2 plot."
	
	para "Try again, the "
	line "next generations"
	cont "are counting on"
	cont "you to learn!"
	done
	
TheGardenLooksBeautifulText:
	text "Shiji: Heavens!"
	line "It's gorgeous."

	para "Here, take this"
	line "stone as thanks."
	done
	
LaprasIsHereText:
	text "Oh, a Lapras!"
	line "You're a trainer,"
	cont "Can you use this?"
	done

Kimono4OddSouvenirText:
	text "Oh, and I should"
	line "give you this as"
	cont "thanks. It was"
	cont "given to me by"
	cont "a distant friend."
	done

WhatABeautifulSpecimenThatWasText:
	text "Not many #mon"
	line "are as graceful"
	cont "as Lapras!"
	done

GoCatchThatLaprasText:
	text "What's the holdup?"
	line "That Lapras won't"
	cont "be here forever!"
	done

NoChangeToStoneText:
	text "No change."
	done
	