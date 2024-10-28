ValeriesHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 12
	warp_event  4,  7, ECRUTEAK_CITY, 12

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_JUMPSTD, radio2

	def_object_events
	object_event  2,  3, SPRITE_VALERIE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, jumptextfaceplayer,  ValeriesHouseVCurseScript, EVENT_VALERIE_ECRUTEAK_CITY
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, ValeriesHouseRedFairyBookText, -1

	object_const_def
	const VALERIESHOUSE_VALERIE


ValeriesHouseVCurseScript: ;todo from here 
	checkevent EVENT_GOT_TM_CURSE
	iftrue_jumptextfaceplayer Valerie_GotCurse
	faceplayer
	opentext
	writetext ValerieCurseText
	promptbutton
	verbosegivetmhm TM_CURSE
	setevent EVENT_GOT_TM_CURSE
	jumpthisopenedtext

Valerie_GotCurse:
	text "It's Curse."

	para "You don't know"
	line "how its power"
	cont "will affect you."
	done
	
	
ValerieCurseText:
	text "Do you know the"
	line "legend of our"
	cont "emperor, 160"
	cont "years ago?"

	para "He took the throne"
	line "at a young age,"
	cont "and the power"
	cont "corrupted him."

	para "You might even say"
	line "it was a Curse."

	para "He gave something"
	line "up in exchange"
	cont "for becoming"
	cont "stronger."

	para "Would you do the"
	line "same?"
	done
	
ValeriesHouseRedFairyBookText:
	text "Just beneath the"
	line "Tin Tower lies an"
	cont "engineering marvel"
	cont "that has perplexed"
	cont "civil engineers."

	para "Seismic imaging"
	line "has unveiled an"
	cont "intricate network"
	cont "of metallic"
	cont "filaments inter-"
	cont "twined with its"
	cont "foundation -"

	para "A sophisticated"
	line "lightning protect-"
	cont "ion system."

	para "While such"
	line "features are well-"
	cont "documented in"
	cont "ancient temples"
	cont "of Sinnoh..."

	para "Their presence in"
	line "Johto is unique"
	cont "to this site."
	done
