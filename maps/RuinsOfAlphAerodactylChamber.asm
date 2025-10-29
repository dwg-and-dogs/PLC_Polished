RuinsOfAlphAerodactylChamber_MapScriptHeader:
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES, RuinsOfAlphAerodactylChamberHiddenDoorsCallback

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 4
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 4
	warp_event  4,  0, RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  5,  3, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  3,  2, BGEVENT_UP, MapRuinsofAlphAerodactylChamberSignpost2Script
	bg_event  4,  2, BGEVENT_UP, MapRuinsofAlphAerodactylChamberSignpost3Script


	def_object_events



RuinsOfAlphAerodactylChamberHiddenDoorsCallback:
	checkevent EVENT_SOLVED_AERODACTYL_PUZZLE
	iftrue .WallOpen
	changeblock 4, 0, $24
.WallOpen:
	endcallback

MapRuinsofAlphAerodactylChamberSignpost3Script:
	unowntypeface
	showtext RuinsOfAlphAerodactylChamberDescriptionText ; lugia
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

RuinsOfAlphAerodactylChamberDescriptionText:
	text "It flies in"
	line "moonlight"
	
	para "guided by"
	line "instinct."
	done


MapRuinsofAlphAerodactylChamberSignpost2Script:
	checkevent EVENT_SOLVED_AERODACTYL_PUZZLE
	iftrue .LugiaPuzzleComplete
	refreshscreen
	setval $2
	special Special_UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_SOLVED_AERODACTYL_PUZZLE
	playsound SFX_STRENGTH
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 60
	changeblock 4, 0, $25 ; open the door to the item room
	reloadmappart
	end

.LugiaPuzzleComplete:
	refreshscreen
	paintingpic LUGIA_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Lugia panel!"
	done
	