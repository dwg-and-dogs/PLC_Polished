LandingTavern_MapScriptHeader:
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 5, 7, TRADERS_LANDING, 4
	warp_event 4, 7, TRADERS_LANDING, 4


	def_coord_events


	def_bg_events


	def_object_events
	object_event 1, 5, SPRITE_NOMAD_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LandingTavernNomad1, -1
	object_event 2, 5, SPRITE_NOMAD_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LandingTavernNomad2, -1
	object_event 7, 2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, LandingTavernSailorText, EVENT_BEAT_KENSEY_PORT
	object_event 8, 2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, LandingTavernSailorText, EVENT_BEAT_KENSEY_PORT



LandingTavernNomad1:
	faceplayer
	opentext
	checkevent EVENT_BEAT_KENSEY_PORT
	iftrue_jumpopenedtext TavernGladThatsOverText
	jumpthisopenedtext
	
	text "I wish those bar-"
	line "barians would get"
	cont "out of here."
	
	para "This is supposed"
	line "to be a place"
	cont "for relaxing."
	done
	
TavernGladThatsOverText:
	text "Is it true?"
	line "Lugia perished in"
	cont "the sea?"
	
	para "How will we"
	line "find our way?"
	done
	
LandingTavernNomad2:
	faceplayer
	opentext
	checkevent EVENT_BEAT_KENSEY_PORT
	iftrue_jumpopenedtext TavernGladThatsOverText2
	jumpthisopenedtext
	
	text "Barbeau thinks"
	line "he can strong-"
	para "arm us into"
	line "helping guide the"
	para "barbarian ships"
	line "into port."
	
	para "Never!"
	done
	
TavernGladThatsOverText2:
	text "I'm working on a"
	line "new way to navi-"
	cont "gate."
	
	para "It's a metal arc,"
	line "lens, and mirror."
	para "I line up a star"
	line "with the horizon,"
	para "and then I know"
	line "my latitude!"
	done

LandingTavernSailorText:
	text "Where's our ship?"
	line "If it doesn't"
	para "make it to port"
	line "soon, another"
	para "will come after"
	line "it to see if Ken-"
	cont "sey reneged."
	done
