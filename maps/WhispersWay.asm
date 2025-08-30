WhispersWay_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 9, 35, WHISPERS_TAPESTRY_GATE, 1
	warp_event 10, 35, WHISPERS_TAPESTRY_GATE, 2

	def_coord_events



	def_bg_events
	bg_event 2, 7, BGEVENT_ITEM + FULL_RESTORE, EVENT_WISHERS_HIDDEN_FULL_RESTORE
	bg_event 17, 5, BGEVENT_ITEM + PETAYA_BERRY, EVENT_WISHERS_HIDDEN_BERRY_1
	bg_event 17, 27, BGEVENT_ITEM + SALAC_BERRY, EVENT_WISHERS_HIDDEN_BERRY_2
	bg_event  3, 24, BGEVENT_ITEM + BIG_NUGGET, EVENT_WISHERS_HIDDEN_BIG_NUGGET
	bg_event 17, 30, BGEVENT_ITEM + MAX_REVIVE, EVENT_WISHERS_HIDDEN_MAX_REVIVE

	def_object_events
	object_event 9, 18, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhispersKurtScript, EVENT_SKIRMISH_STARTED 
	object_event   10, 18, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, NATU, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NatuScriptWW, EVENT_SKIRMISH_STARTED




WhispersKurtScript: 
	faceplayer
	opentext
	writetext KurtWWText
	yesorno
	iffalse_jumpopenedtext WW_SomeOtherTimes
	winlosstext WWKurtBattleText, WWKurtBattleText
	loadtrainer KURT, 12
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext WWKurtBattleText2

KurtWWText:
	text "This path is so"
	line "beautiful!"
	
	para "We are getting"
	line "close to taking"
	cont "down Urgaust."
	
	para "Amos is South of"
	line "here. We should"
	para "make our final"
	line "preparations,"
	para "because the path"
	line "to Urgaust up the"
	para "Bell Tower may be"
	line "long and arduous."
	
	para "But it's worth it"
	line "because once we"
	para "confront him, we"
	line "can stop him from"
	para "setting Johto on"
	line "a path away from"
	cont "its traditions."
	
	para "Want to battle,"
	line "a quick spar?"
	done
	
WWKurtBattleText:
	text "You've grown so"
	line "much!"	
	done

WWKurtBattleText2:
	text "We can battle as"
	line "many times as"
	cont "you like."
	done
	
WW_SomeOtherTimes:
	text "Some other time."
	done


NatuScriptWW:
	opentext
	writetext WW_NatuText_1
	promptbutton
	special PokemonCenterPC
	endtext
	end

WW_NatuText_1:
	text "It's Kurt's Natu!"
	line "It can teleport"
	para "to the present to"
	line "manage the party."
	done
