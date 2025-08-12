VioletCatacombs_MapScriptHeader:
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES, CatacombsCallBackTiles
	callback MAPCALLBACK_STONETABLE, CatacombsBoulders


	def_warp_events
	warp_event 3, 27, VIOLET_CITY, 10
	warp_event 6, 9, VIOLET_CATACOMBS, 3 ; HOLE DROP 
	warp_event 3, 26, VIOLET_CATACOMBS, 2 ; DROP TO HERE 

	
	def_coord_events


	def_bg_events

	def_object_events
	strengthboulder_event  15, 19, EVENT_CATACOMBS_BOULDER_2
	object_event  4,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, NOCTOWL, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CatacombsNoctowl, EVENT_CATACOMBS_NOCTOWL
	object_event  6, 21, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, UNOWN, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, VioletCatacombsPuzzleScript, EVENT_SOLVED_CATACOMBS_PUZZLE
	
	object_const_def
	const CATACOMBS_BOULDER_2
	const CATACOMBS_NOCTOWL
	const CATACOMBS_UNOWN

CatacombsBoulders:
	usestonetable .BoulderTable
	endcallback

.BoulderTable:
	stonetable 2, CATACOMBS_BOULDER_2, .Disappear2
	db -1 ; end

.Disappear2:
	disappear CATACOMBS_BOULDER_2
	pause 30
	changeblock 6, 8, $68
;	reloadmappart
;	pause 30
	playsound SFX_STRENGTH
	earthquake 60
	jumpthistext

	text "The boulder fell"
	line "through!"
	done

CatacombsCallBackTiles:
	checkevent EVENT_SOLVED_CATACOMBS_PUZZLE
	iffalse .Done
	changeblock  8, 22, $0D
	checkevent EVENT_CATACOMBS_BOULDER_2
	iffalse .Done
	changeblock 6, 8, $68
.Done:
	endcallback
	
VioletCatacombsPuzzleScript:
	refreshscreen
	setval $0
	special Special_SlidingPuzzle
	closetext
	iftrue .PuzzleComplete
	showtext NotSolvedText
	end
	
.PuzzleComplete:
	setevent EVENT_SOLVED_CATACOMBS_PUZZLE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock  8, 22, $0D
	reloadmappart
	pause 30
	playsound SFX_FORESIGHT
	waitsfx
	pause 20
	disappear CATACOMBS_UNOWN
	end

NotSolvedText:
	text "Who would make"
	line "such a thing?"
	done

CatacombsNoctowl:	; eventually, crypt noctowl 
	opentext
	writetext NoctowlText
	cry NOCTOWL
	pause 15
	closetext
	loadwildmon NOCTOWL, 25
	startbattle
	disappear CATACOMBS_NOCTOWL
	setevent EVENT_CATACOMBS_NOCTOWL
	reloadmapafterbattle
	end
	
NoctowlText:
	text "Knock Knock!"
	done
