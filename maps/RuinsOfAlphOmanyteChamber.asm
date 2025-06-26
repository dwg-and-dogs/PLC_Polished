RuinsOfAlphOmanyteChamber_MapScriptHeader: ; bronzong puzzle
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES, RuinsofAlphOmanyteChamberHiddenDoorsCallback

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 3
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 3
	warp_event  4,  0, RUINS_OF_ALPH_OMANYTE_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  5,  3, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  3,  2, BGEVENT_UP, MapRuinsofAlphOmanyteChamberSignpost2Script
	bg_event  4,  2, BGEVENT_UP, MapRuinsofAlphOmanyteChamberSignpost3Script


	def_object_events


RuinsofAlphOmanyteChamberHiddenDoorsCallback:
	checkevent EVENT_SOLVED_OMANYTE_PUZZLE
	iftrue .WallOpen
	changeblock 4, 0, $24
.WallOpen:
	endcallback


MapRuinsofAlphOmanyteChamberSignpost2Script:
	checkevent EVENT_SOLVED_OMANYTE_PUZZLE
	iftrue .BronzongPuzzleComplete
	refreshscreen
	setval $1
	special Special_UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_SOLVED_OMANYTE_PUZZLE
	playsound SFX_STRENGTH
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 60
	changeblock 4, 0, $25 ; open the door to the item room
	reloadmappart
	end

.BronzongPuzzleComplete:
	refreshscreen
	paintingpic LUGIA_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Bronzong panel!"
	done
	
MapRuinsofAlphOmanyteChamberSignpost3Script:
	unowntypeface
	showtext RuinsOfAlphOmanyteChamberDescriptionText
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

RuinsOfAlphOmanyteChamberDescriptionText:
	text "Its tones"
	line "resonate with"
	
	para "incipient"
	line "raindrops."
	done
