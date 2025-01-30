EcruteakCherishBallHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 16
	warp_event  4,  7, ECRUTEAK_CITY, 16

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_JUMPSTD, radio2

	def_object_events
	object_event  2,  3, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldLeafMotherText, -1
	object_event  5,  4, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakGoldLeafScript, -1



GoldLeafMotherText: 
	text "Why does my son"
	line "insist on being"
	cont "so... pedestrian"
	cont "about our status?"

	para "That charming girl"
	line "of his could be"
	cont "summering in"
	cont "Kalos instead of"
	cont "withering in"
	cont "Olivine."
	done

EcruteakGoldLeafScript:
	faceplayer
	opentext	
	writetext NeedALiteBlueMailText
	waitbutton
	checkitem LITEBLUEMAIL
	iffalse_jumpopenedtext NoLiteBlueMailText
	writetext Text_LiteBlueMailQuestion ;;
	yesorno
	iffalse_jumpopenedtext NoLiteBlueMailText
	takeitem LITEBLUEMAIL
	verbosegiveitem GOLD_LEAF
	iffalse_endtext
	jumpopenedtext GiveGoldLeafText 

NeedALiteBlueMailText:
	text "I simply cannot"
	line "express my love"
	cont "on Gold Leaf!"

	para "How is my beloved"
	line "to know I'm more"
	cont "than my money?"
	done

NoLiteBlueMailText:
	text "If you find some"
	line "plain stationary,"
	cont "come see me."
	done

Text_LiteBlueMailQuestion:
	text "Willickers! Is"
	line "that LiteBlue-"
	cont "Mail? How"
	cont "ordinary! I simply"
	cont "must have it."
	done

GiveGoldLeafText:
	text "Careful with that"
	line "as it would be an"
	cont "heirloom in your"
	cont "family, I wager."
	
	
	para "Now to write her"
	line "a letter."
	done
