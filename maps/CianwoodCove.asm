CianwoodCove_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events


	def_coord_events


	def_bg_events
	bg_event 10, 13, BGEVENT_READ, CianwoodCovetimeTravelScript 


	def_object_events
	object_event 11, 18, SPRITE_KURT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCoveKurtScript, EVENT_BEAT_KENSEY_PORT
	object_event   10, 18, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, NATU, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NatuScriptCianwoodCove, -1
	itemball_event 11, 21, PETAYA_BERRY, 3, EVENT_CIANWOODCOVE_BERRY_1
	itemball_event 11, 26, LIECHI_BERRY, 3, EVENT_CIANWOODCOVE_BERRY_2
	fruittree_event 16, 29, FRUITTREE_CIANWOOD_COVE, SHORE_FOAM, PAL_NPC_GREEN ;OK



CianwoodCoveKurtScript:
	blackoutmod CIANWOOD_COVE
	faceplayer
	opentext
	writetext KurtExplainsTheStormText
	waitbutton
	closetext
	end
	
KurtExplainsTheStormText:
	text "So this is Cian-"
	line "wood long ago."
	
	para "I'm commanding"
	line "Lugia to summon"
	cont "a monsoon."
	
	para "Surely it will"
	line "wreck any boats"
	para "holding steel for"
	line "the Consul."
	
	para "Come, <PLAYER>."
	line "We must use this"
	para "#mon's power"
	line "for good, even"
	para "though it might"
	line "not understand."
	done


NatuScriptCianwoodCove:
	blackoutmod CIANWOOD_COVE
	opentext
	writetext Cianwood_NatuText_1
	promptbutton
	special PokemonCenterPC
	endtext
	end

Cianwood_NatuText_1:
	text "It's Kurt's Natu!"
	line "It can teleport"
	para "to the present to"
	line "manage the party."

	para "It also sets the"
	line "waypoint here."
	done


CianwoodCovetimeTravelScript:
	opentext
	writetext CCAskToTimeTravelText
	yesorno
	iffalse_jumpopenedtext CCNoTimeTravelText
	writetext CCYesTimeTravelText
	waitbutton
	closetext

	refreshscreen
	paintingpic LUGIA_PAINTING
	waitbutton
	closepokepic

	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx	
	blackoutmod CIANWOOD_CITY
	warp CIANWOOD_CITY, 14, 20	
	end

CCAskToTimeTravelText:
	text "Travel back to"
	line "modern Cianwood?"
	done

CCNoTimeTravelText:
	text "Some other time."
	done

CCYesTimeTravelText:
	text "Time to go."
	done
