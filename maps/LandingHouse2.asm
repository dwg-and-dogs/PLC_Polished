LandingHouse2_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  3,  7, TRADERS_LANDING, 6
	warp_event  4,  7, TRADERS_LANDING, 6


	def_coord_events


	def_bg_events


	def_object_events
	object_event  2,  4, SPRITE_NOMAD_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LandingHouse2AssaultVestScript, -1 
	object_event  6,  5, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, LandingHouse2CuteGirlText, -1


	

LandingHouse2CuteGirlText:
	text "I miss my auntie"
	line "and uncle."
	
	para "They snuck away."
	line "I wonder if they"
	cont "miss us?"
	done


LandingHouse2AssaultVestScript:
	checkevent EVENT_GOT_ASSAULT_VEST
	iftrue_jumptextfaceplayer GotAssaultVestText
	faceplayer
	opentext
	writetext GiveAssaultVestText
	promptbutton
	verbosegiveitem ASSAULT_VEST
	iffalse_endtext
	setevent EVENT_GOT_ASSAULT_VEST
	jumpthisopenedtext

	text "That's not a life"
	line "saving device."
	done

GotAssaultVestText:
	text "That's not a life"
	line "saving device."
	done


GiveAssaultVestText:
	text "Did you know the"
	line "Brigaders can't"
	cont "surf or swim?"
	
	para "They need to wear"
	line "life vests when"
	cont "near the water."
	
	para "But I'm sneaky."
	
	para "I do a little"
	line "switcheroo with"
	cont "one of mine."
	
	para "... Don't let 'em"
	line "keep you down."	
	done
