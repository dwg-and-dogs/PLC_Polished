SinjohEldersHouse_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 4, 7, SINJOH_CROSSROADS, 3
	warp_event 3, 7, SINJOH_CROSSROADS, 3


	def_coord_events


	def_bg_events


	def_object_events
	object_event  6,  3, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, jumptextfaceplayer, SinjohElderBulkUpScript, EVENT_BEAT_KANNA
	object_event  5,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, SinjohElderNPCText, EVENT_BEAT_KANNA


SinjohElderBulkUpScript: 
	checkevent EVENT_GOT_TM_BULK_UP
	iftrue_jumptextfaceplayer GotBulkUp
	faceplayer
	opentext
	writetext GiveBulkUpText
	promptbutton
	verbosegivetmhm TM_BULK_UP
	setevent EVENT_GOT_TM_BULK_UP
	jumpthisopenedtext

GotBulkUp:
	text "Bulk Up gets you"
	line "buff in one turn!"
	done
	
GiveBulkUpText:
	text "The Hisui Elder"
	line "Kanna says that"
	para "she gets her str-"
	line "ength from cold"
	cont "plunges."
	
	para "Ha! If only they"
	line "knew about this"
	cont "technique."
	done

SinjohElderNPCText:
	text "Strength comes"
	line "with discipline!"
	done
