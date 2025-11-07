RusalkaRuinsCaptain_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  3, 10, RUSALKA_RUINS_1F, 3


	def_coord_events



	def_bg_events



	def_object_events
	object_event  4,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, SPIRITOMB, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CaptainSpiritomb, EVENT_RUSALKA_SPIRITOMB
	object_event  5,  5, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CaptainsLog10, -1
	object_event 3, 3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_COMMAND, jumptext, DeadCaptainText, -1

	object_const_def
	const CAPTAIN_SPIRITOMB

CaptainSpiritomb:
	pause 15
	loadwildmon SPIRITOMB, 35
	startbattle
	disappear CAPTAIN_SPIRITOMB
	setevent EVENT_RUSALKA_SPIRITOMB
	reloadmapafterbattle
	end

DeadCaptainText:
	text "It's the captain."
	line "He looks as cold"
	cont "as ice..."
	done


CaptainsLog10:
	italictypeface
	showtext CaptainsLog10Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

CaptainsLog10Text:
	text "Captain's Log 10"

	para "The stone glows"
	line "brighter with"
	cont "each breath."
	
	para "The bats screech"
	line "a eulogy for"
	para "the crew I"
	line "sacrificed."
	
	para "How fitting to"
	line "die surrounded"
	para "by my precious"
	line "trophies, each"
	para "one a moment I"
	line "chose wrong."
	
	para "Eleanor's last"
	line "letter sits"
	cont "before me."
	
	para "A child."
	para "A child I'll"
	line "never meet."
	
	para "But let me give"
	line "a confession:"
	
	para "I would have"
	line "barely known you."
	
	para "I'd be hunting"
	line "for my own"
	para "gemstones and"
	line "missing your"
	para "milestones just"
	line "like I did to"
	cont "your mother."
	
	para "Perhaps it's"
	line "better for you"
	cont "this way."
	done
	