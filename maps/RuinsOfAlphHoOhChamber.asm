RuinsOfAlphHoOhChamber_MapScriptHeader: ; heatran 
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsOfAlphHoOhChamberHiddenDoorsCallback

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 1
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 1
	warp_event  4,  0, RUINS_OF_ALPH_HO_OH_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  5,  3, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  3,  2, BGEVENT_UP, MapRuinsofAlphHoOhChamberSignpost2Script
	bg_event  4,  2, BGEVENT_UP, MapRuinsofAlphHoOhChamberSignpost3Script

	def_object_events


RuinsOfAlphHoOhChamberHiddenDoorsCallback:
	checkevent EVENT_SOLVED_HO_OH_PUZZLE
	iftrue .WallOpen
	changeblock 4, 0, $25
.WallOpen:
	endcallback


MapRuinsofAlphHoOhChamberSignpost2Script:
	checkevent EVENT_SOLVED_HO_OH_PUZZLE
	iftrue .HeatranPuzzleComplete
	refreshscreen
	setval $3
	special Special_UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_SOLVED_HO_OH_PUZZLE
	playsound SFX_STRENGTH
	earthquake 30
	waitsfx
	showemote EMOTE_SHOCK, PLAYER, 60
	changeblock 4, 0, $25
	reloadmappart
	end

.HeatranPuzzleComplete:
	refreshscreen
	paintingpic HEATRAN_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Heatran panel!"
	done

MapRuinsofAlphHoOhChamberSignpost3Script:
	unowntypeface
	showtext RuinsOfAlphHoOhChamberDescriptionText
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

RuinsOfAlphHoOhChamberDescriptionText:
	text "If unleashed from"
	line "volcanic cradle"
	
	para "It will melt all"
	line "to a blank slate"
	done
