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
	checkevent EVENT_WALL_OPENED_IN_AERODACTYL_CHAMBER
	iftrue .WallOpen
	changeblock 4, 0, $24
.WallOpen:
	endcallback


MapRuinsofAlphAerodactylChamberSignpost2Script:
	checkevent EVENT_SOLVED_AERODACTYL_PUZZLE
	iftrue_jumptext PuzzleSolvedText
	refreshscreen
	setval $2
	special Special_UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_SOLVED_AERODACTYL_PUZZLE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 4, 0, $25
	reloadmappart
	pause 30
	playsound SFX_STRENGTH
	waitsfx
	pause 20
	end
	
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
