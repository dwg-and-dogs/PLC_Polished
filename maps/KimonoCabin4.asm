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


	def_bg_events ; todo: add all the new events
	bg_event 0,  0, BGEVENT_UP, Switch00Script; blue done FLOWERS
	bg_event 2,  0, BGEVENT_UP, Switch10Script ; red  done  FLOWERS 
	bg_event 4,  0, BGEVENT_UP, Switch20Script ; brown  
	bg_event 6,  0, BGEVENT_JUMPTEXT, SwitchSetText ; set to green 
	
	bg_event 0,  2, BGEVENT_UP, Switch01Script ; green  FLOWERS
	bg_event 2,  2, BGEVENT_JUMPTEXT, SwitchSetText ; set in stone to brown FLOWERS
	bg_event 4,  2, BGEVENT_UP, Switch21Script ; red 
	bg_event 6,  2, BGEVENT_UP, Switch31Script ; blue 
	
	bg_event 0,  4, BGEVENT_UP, Switch02Script ; brown 
	bg_event 2,  4, BGEVENT_UP, Switch12Script ; blue 
	bg_event 4,  4, BGEVENT_JUMPTEXT, SwitchSetText ; set in stone to green FLOWERS
	bg_event 6,  4, BGEVENT_JUMPTEXT, SwitchSetText ; set in stone to red FLOWERS
	
	bg_event 0,  6, BGEVENT_UP, Switch03Script ; red 
	bg_event 2,  6, BGEVENT_UP, Switch13Script ; green 
	bg_event 4,  6, BGEVENT_UP, Switch23Script ; blue FLOWERS
	bg_event 6,  6, BGEVENT_UP, Switch33Script ; brown FLOWERS

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

Switch10Script: ; red 
	opentext
	writetext ChooseAStoneColorText
	promptbutton
	loadmenu StoneColorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RedStone10
	ifequal 2, .BrownStone10
	ifequal 3, .GreenStone10
	ifequal 4, .BlueStone10
	jumptext NoChangeToStoneText

.RedStone10:
	changeblock 2, 0, $86
	setevent EVENT_KC4_10
	waitbutton
	closetext
	end

.BrownStone10:
	changeblock 2, 0, $5A
	clearevent EVENT_KC4_10
	waitbutton
	closetext
	end

.GreenStone10:
	changeblock 2, 0, $87
	clearevent EVENT_KC4_10
	waitbutton
	closetext
	end

.BlueStone10:
	changeblock 2, 0, $59
	clearevent EVENT_KC4_10
	waitbutton
	closetext
	end


Switch20Script: ; brown 
	opentext
	writetext ChooseAStoneColorText
	promptbutton
	loadmenu StoneColorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RedStone20
	ifequal 2, .BrownStone20
	ifequal 3, .GreenStone20
	ifequal 4, .BlueStone20
	jumptext NoChangeToStoneText

.RedStone20:
	changeblock 4, 0, $51
	clearevent EVENT_KC4_20
	waitbutton
	closetext
	end

.BrownStone20:
	changeblock 4, 0, $56
	setevent EVENT_KC4_20
	waitbutton
	closetext
	end

.GreenStone20:
	changeblock 4, 0, $52
	clearevent EVENT_KC4_20
	waitbutton
	closetext
	end

.BlueStone20:
	changeblock 4, 0, $55
	clearevent EVENT_KC4_20
	waitbutton
	closetext
	end

Switch01Script: ; green
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
	changeblock 0, 2, $86
	clearevent EVENT_KC4_01
	waitbutton
	closetext
	end

.BrownStone01:
	changeblock 0, 2, $5A
	clearevent EVENT_KC4_01
	waitbutton
	closetext
	end

.GreenStone01:
	changeblock 0, 2, $87
	setevent EVENT_KC4_01
	waitbutton
	closetext
	end

.BlueStone01:
	changeblock 0, 2, $59
	clearevent EVENT_KC4_01
	waitbutton
	closetext
	end

Switch21Script: ; red
	opentext
	writetext ChooseAStoneColorText
	promptbutton
	loadmenu StoneColorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RedStone21
	ifequal 2, .BrownStone21
	ifequal 3, .GreenStone21
	ifequal 4, .BlueStone21
	jumptext NoChangeToStoneText

.RedStone21:
	changeblock 4, 2, $51
	setevent EVENT_KC4_21
	waitbutton
	closetext
	end

.BrownStone21:
	changeblock 4, 2, $56
	clearevent EVENT_KC4_21
	waitbutton
	closetext
	end

.GreenStone21:
	changeblock 4, 2, $52
	clearevent EVENT_KC4_21
	waitbutton
	closetext
	end

.BlueStone21:
	changeblock 4, 2, $55
	clearevent EVENT_KC4_21
	waitbutton
	closetext
	end

Switch31Script: ; blue
	opentext
	writetext ChooseAStoneColorText
	promptbutton
	loadmenu StoneColorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RedStone31
	ifequal 2, .BrownStone31
	ifequal 3, .GreenStone31
	ifequal 4, .BlueStone31
	jumptext NoChangeToStoneText

.RedStone31:
	changeblock 6, 2, $51
	clearevent EVENT_KC4_31
	waitbutton
	closetext
	end

.BrownStone31:
	changeblock 6, 2, $56
	clearevent EVENT_KC4_31
	waitbutton
	closetext
	end

.GreenStone31:
	changeblock 6, 2, $52
	clearevent EVENT_KC4_31
	waitbutton
	closetext
	end

.BlueStone31:
	changeblock 6, 2, $55
	setevent EVENT_KC4_31
	waitbutton
	closetext
	end

Switch02Script: ; brown
	opentext
	writetext ChooseAStoneColorText
	promptbutton
	loadmenu StoneColorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RedStone02
	ifequal 2, .BrownStone02
	ifequal 3, .GreenStone02
	ifequal 4, .BlueStone02
	jumptext NoChangeToStoneText

.RedStone02:
	changeblock 0, 4, $51
	clearevent EVENT_KC4_02
	waitbutton
	closetext
	end

.BrownStone02:
	changeblock 0, 4, $56
	setevent EVENT_KC4_02
	waitbutton
	closetext
	end

.GreenStone02:
	changeblock 0, 4, $52
	clearevent EVENT_KC4_02
	waitbutton
	closetext
	end

.BlueStone02:
	changeblock 0, 4, $55
	clearevent EVENT_KC4_02
	waitbutton
	closetext
	end

Switch12Script: ; blue
	opentext
	writetext ChooseAStoneColorText
	promptbutton
	loadmenu StoneColorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RedStone12
	ifequal 2, .BrownStone12
	ifequal 3, .GreenStone12
	ifequal 4, .BlueStone12
	jumptext NoChangeToStoneText

.RedStone12:
	changeblock 2, 4, $51
	clearevent EVENT_KC4_12
	waitbutton
	closetext
	end

.BrownStone12:
	changeblock 2, 4, $56
	clearevent EVENT_KC4_12
	waitbutton
	closetext
	end

.GreenStone12:
	changeblock 2, 4, $52
	clearevent EVENT_KC4_12
	waitbutton
	closetext
	end

.BlueStone12:
	changeblock 2, 4, $55
	setevent EVENT_KC4_12
	waitbutton
	closetext
	end

Switch03Script: ; red
	opentext
	writetext ChooseAStoneColorText
	promptbutton
	loadmenu StoneColorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RedStone03
	ifequal 2, .BrownStone03
	ifequal 3, .GreenStone03
	ifequal 4, .BlueStone03
	jumptext NoChangeToStoneText

.RedStone03:
	changeblock 0, 6, $51
	setevent EVENT_KC4_03
	waitbutton
	closetext
	end

.BrownStone03:
	changeblock 0, 6, $56
	clearevent EVENT_KC4_03
	waitbutton
	closetext
	end

.GreenStone03:
	changeblock 0, 6, $52
	clearevent EVENT_KC4_03
	waitbutton
	closetext
	end

.BlueStone03:
	changeblock 0, 6, $55
	clearevent EVENT_KC4_03
	waitbutton
	closetext
	end

Switch13Script: ; green
	opentext
	writetext ChooseAStoneColorText
	promptbutton
	loadmenu StoneColorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RedStone13
	ifequal 2, .BrownStone13
	ifequal 3, .GreenStone13
	ifequal 4, .BlueStone13
	jumptext NoChangeToStoneText

.RedStone13:
	changeblock 2, 6, $51
	clearevent EVENT_KC4_13
	waitbutton
	closetext
	end

.BrownStone13:
	changeblock 2, 6, $56
	clearevent EVENT_KC4_13
	waitbutton
	closetext
	end

.GreenStone13:
	changeblock 2, 6, $52
	setevent EVENT_KC4_13
	waitbutton
	closetext
	end

.BlueStone13:
	changeblock 2, 6, $55
	clearevent EVENT_KC4_13
	waitbutton
	closetext
	end

Switch23Script: ; blue
	opentext
	writetext ChooseAStoneColorText
	promptbutton
	loadmenu StoneColorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RedStone23
	ifequal 2, .BrownStone23
	ifequal 3, .GreenStone23
	ifequal 4, .BlueStone23
	jumptext NoChangeToStoneText

.RedStone23:
	changeblock 4, 6, $86
	clearevent EVENT_KC4_23
	waitbutton
	closetext
	end

.BrownStone23:
	changeblock 4, 6, $5A
	clearevent EVENT_KC4_23
	waitbutton
	closetext
	end

.GreenStone23:
	changeblock 4, 6, $87
	clearevent EVENT_KC4_23
	waitbutton
	closetext
	end

.BlueStone23:
	changeblock 4, 6, $59
	setevent EVENT_KC4_23
	waitbutton
	closetext
	end
	
Switch33Script: ; brown
	opentext
	writetext ChooseAStoneColorText
	promptbutton
	loadmenu StoneColorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RedStone33
	ifequal 2, .BrownStone33
	ifequal 3, .GreenStone33
	ifequal 4, .BlueStone33
	jumptext NoChangeToStoneText

.RedStone33:
	changeblock 6, 6, $86
	clearevent EVENT_KC4_33
	waitbutton
	closetext
	end

.BrownStone33:
	changeblock 6, 6, $5A
	setevent EVENT_KC4_33
	waitbutton
	closetext
	end

.GreenStone33:
	changeblock 6, 6, $87
	clearevent EVENT_KC4_33
	waitbutton
	closetext
	end

.BlueStone33:
	changeblock 6, 6, $59
	clearevent EVENT_KC4_33
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
	checkevent EVENT_KIMONO_CABIN_4_GAVE_BUB_BALL
	iftrue_jumpopenedtext GoCatchThatLaprasText
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
	checkevent EVENT_KC4_10
	iffalse_jumpopenedtext SudokuNotSolvedText
	checkevent EVENT_KC4_20
	iffalse_jumpopenedtext SudokuNotSolvedText
	
	checkevent EVENT_KC4_01
	iffalse_jumpopenedtext SudokuNotSolvedText
	checkevent EVENT_KC4_21
	iffalse_jumpopenedtext SudokuNotSolvedText
	checkevent EVENT_KC4_31
	iffalse_jumpopenedtext SudokuNotSolvedText

	checkevent EVENT_KC4_02
	iffalse_jumpopenedtext SudokuNotSolvedText
	checkevent EVENT_KC4_12
	iffalse_jumpopenedtext SudokuNotSolvedText
	checkevent EVENT_KC4_03
	iffalse_jumpopenedtext SudokuNotSolvedText
	checkevent EVENT_KC4_13
	iffalse_jumpopenedtext SudokuNotSolvedText
	checkevent EVENT_KC4_23
	iffalse_jumpopenedtext SudokuNotSolvedText
	checkevent EVENT_KC4_33
	iffalse_jumpopenedtext SudokuNotSolvedText	
	; sudoku puzzle solved from here 
	; if solved, then 
	opentext
	writetext TheGardenLooksBeautifulText
	waitbutton
	writetext Kimono4OddSouvenirText
	waitbutton
	verbosegiveitem ODD_SOUVENIR
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
	turnobject KIMONO_CABIN_4_GRANNY, RIGHT
	writetext LaprasIsHereText2
	waitbutton
	verbosegiveitem BUB_BALL, 1
	closetext
	setevent EVENT_KIMONO_CABIN_4_GAVE_BUB_BALL
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
	done
	
LaprasIsHereText:
	text "Oh, a Lapras!"
	done

LaprasIsHereText2:
	text "You're a trainer,"
	line "Can you use this?"
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
	