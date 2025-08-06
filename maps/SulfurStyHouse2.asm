SulfurStyHouse2_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  3,  7, SULFUR_STY, 2
	warp_event  4,  7, SULFUR_STY, 2


	def_coord_events


	def_bg_events


	def_object_events
	object_event  5,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, jumptextfaceplayer, SulfurStyHouse2Script, -1
	pokemon_event 8,  4, TAUROS, -1, -1, PAL_NPC_BROWN, TaurosGigaText, -1


SulfurStyHouse2Script: 
	checkevent EVENT_GOT_TM_GIGA_IMPACT
	iftrue_jumptextfaceplayer GotGigaImpactText
	faceplayer
	opentext
	writetext GiveGigaImpactText
	promptbutton
	verbosegivetmhm TM_GIGA_IMPACT
	setevent EVENT_GOT_TM_GIGA_IMPACT
	jumpthisopenedtext

GotGigaImpactText:
	text "Giga Impact:"
	line "work hard, then"
	cont "recharge."
	done
	
GiveGigaImpactText:
	text "Work smarter,"
	line "not harder."
	
	para "With the TM I"
	line "invented, I can"
	cont "do the job of two"
	cont "moves in 1 turn!"
	done
	
TaurosGigaText:
	text "Aroo! Aroo!"
	para "It's ready to go!"
	done
	