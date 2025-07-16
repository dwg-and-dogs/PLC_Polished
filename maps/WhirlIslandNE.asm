WhirlIslandNE_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3, 13, ROUTE_41, 2
	warp_event 17,  3, WHIRL_ISLAND_1F, 2


	def_coord_events

	def_bg_events

	def_object_events
	object_event 15, 3, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhirlIslandsKurtScript, EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_LUGIA ; revise event and set the 
	itemball_event 11, 11, ULTRA_BALL, 1, EVENT_WHIRL_ISLAND_NE_ULTRA_BALL

WhirlIslandsKurtScript:
	faceplayer
	opentext
	writetext KurtWhirlHealText
	waitbutton
	playmusic MUSIC_HEAL
	special HealParty
	special SaveMusic	
	writetext KurtWhirlPCText
	promptbutton
	special PokemonCenterPC
	endtext
	end

KurtWhirlHealText:
	text "Lugia is at the"
	line "bottom of these"
	cont "islands."
	
	para "I can hear her"
	line "mighty cry!"
	
	para "It sounds like"
	line "she's singing just"
	cont "for me."
	
	para "Here, let me heal"
	line "your #mon."
	done


KurtWhirlPCText:
	text "Oh, I can run to"
	line "a PC to manage"
	cont "your #mon."
	
	para "Just let me know"
	line "what you need."
	done
