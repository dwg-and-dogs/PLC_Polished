WhirlIslandNE_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3, 13, ROUTE_41, 2
	warp_event 17,  3, WHIRL_ISLAND_1F, 2


	def_coord_events

	def_bg_events

	def_object_events
;	object_event   14,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, NATU, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NatuScriptWINE, EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_LUGIA
	object_event 15, 3, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhirlIslandsKurtScript, EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_LUGIA ; revise event and set the 
	itemball_event 11, 11, ULTRA_BALL, 1, EVENT_WHIRL_ISLAND_NE_ULTRA_BALL

WhirlIslandsKurtScript:
	faceplayer
	opentext
	writetext KurtWhirlHealText
	waitbutton
	closetext
	
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic

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


NatuScriptWINE:
	opentext
	writetext WINE_NatuText_1
	promptbutton
	special PokemonCenterPC
	endtext
	end

WINE_NatuText_1:
	text "It's Kurt's Natu!"
	line "It can teleport"
	para "to a computer to"
	line "manange #mon."
	done
