MahoganyRedGyaradosSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, MAHOGANY_TOWN, 2
	warp_event  3,  7, MAHOGANY_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyRedGyaradosSpeechHouseBlackBeltScript, -1
	object_event  6,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyRedGyaradosSpeechHouseTeacherText, -1

MahoganyRedGyaradosSpeechHouseBlackBeltScript:
	checkevent EVENT_GOT_TM_SCALD
	iftrue_jumptextfaceplayer GotScaldText
	faceplayer
	opentext
	writetext GiveScaldText
	promptbutton
	verbosegivetmhm TM_SCALD
	setevent EVENT_GOT_TM_SCALD
	jumpthisopenedtext

	text "Not everyone has"
	line "the guts to drink"
	cont "such a hot drink."
	done

GotScaldText:
	text "Not everyone has"
	line "the guts to drink"
	cont "such a hot drink."
	done
	
GiveScaldText:
	text "How do I get in"
	line "tip-top shape"
	cont "before I spar?"
	
	para "I have a scalding"
	line "cup of tea!"
	done

MahoganyRedGyaradosSpeechHouseTeacherText:
	text "Even when it gets"
	line "cold I prefer a"
	cont "nice cold brew."
	done
