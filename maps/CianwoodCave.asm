CianwoodCave_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 5, 37, CIANWOOD_CITY, 4


	def_coord_events


	def_bg_events
	bg_event 4, 22, BGEVENT_ITEM + ELIXIR, EVENT_CIANWOODCAVE_HIDDEN_ETHER ;ok

	
	def_object_events
	itemball_event 3, 3, DRAGON_SCALE, 1, EVENT_CAVE_DRAGON_SCALE ; TOP OF THE CAVE
	tmhmball_event  9,  1, TM_DRAGON_PULSE, EVENT_DRAGON_PULSE ; ON ONE OF THE THINGS
	itemball_event 11, 21, REVIVE, 1, EVENT_CIANWOODCAVE_REVIVE
	itemball_event 11, 29, HYPER_POTION, 1, EVENT_CIANWOODCAVE_HYPER_POTION
	object_event  2, 17, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, ALAKAZAM, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodCaveScript, EVENT_FOUGHT_ALAKAZAM_VARIANT

	object_const_def
	const CIANWOOD_CAVE_ALAKAZAM

	smashrock_event  13, 5
	smashrock_event  15, 5
	smashrock_event  9, 13
	smashrock_event  11, 13
	smashrock_event  6, 16
	smashrock_event  17, 16

	strengthboulder_event 14, 9
	strengthboulder_event 6, 17
	strengthboulder_event 14, 5
	strengthboulder_event 6, 9
	strengthboulder_event 10, 9
	strengthboulder_event 17, 9
	strengthboulder_event 14, 13
	strengthboulder_event 6, 13
	strengthboulder_event 10, 17
	strengthboulder_event 17, 17
	strengthboulder_event 10, 13
	
	
CianwoodCaveScript:
	opentext
	writetext AlakazamTextCave
	waitbutton
	cry ALAKAZAM
	pause 60
	closetext
	setevent EVENT_FOUGHT_ALAKAZAM_VARIANT
	loadwildmon ALAKAZAM, 30
	startbattle
	disappear CIANWOOD_CAVE_ALAKAZAM
	reloadmapafterbattle
	end

AlakazamTextCave:
	text "..."
	done
