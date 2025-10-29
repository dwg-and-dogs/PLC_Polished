EcruteakCherishBallHouse_MapScriptHeader:
	def_scene_scripts
	scene_script EcruteakCherishBallTrigger 

	def_callbacks

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 16
	warp_event  4,  7, ECRUTEAK_CITY, 16

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_JUMPSTD, radio2

	def_object_events
	object_event  5,  4, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakGoldLeafScript, -1
	object_event  2,  3, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldLeafMotherText, -1


	object_const_def
	const ECRUTEAK_CHERISH_HOUSE_BOY

EcruteakCherishBallTrigger:
	sdefer .TradeQuest
	end
	
.TradeQuest:
	showemote EMOTE_HEART, ECRUTEAK_CHERISH_HOUSE_BOY, 30
	setscene $1
	end


GoldLeafMotherText: 
	text "If my son wasn't"
	line "so bashful, his"
	para "girlfriend could"
	line "be summering in"
	para "Kalos instead of"
	line "Olivine!"
	done



EcruteakGoldLeafScript:
	faceplayer
	opentext	
	checkevent EVENT_GOT_GOLD_LEAF
	iftrue_jumpopenedtext GiveGoldLeafText
	writetext NeedALiteBlueMailText
	waitbutton
	checkkeyitem LITEBLUEMAIL_K
	iffalse_jumpopenedtext NoLiteBlueMailText
	writetext Text_LiteBlueMailQuestion ;;
	yesorno
	iffalse_jumpopenedtext NoLiteBlueMailText
	takekeyitem LITEBLUEMAIL_K
	verbosegivekeyitem GOLD_LEAF_K
	setevent EVENT_GOT_GOLD_LEAF
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
	text "Willickers! That"
	line "Liteblue Mail is"
	cont "so ordinary! I"
	cont "must have it."
	
	para "I'll give you a"
	line "bit of Gold Leaf."
	done

GiveGoldLeafText:
	text "Careful with that"
	line "as it would be an"
	para "heirloom in your"
	line "family, I wager."
		
	para "Now to write her"
	line "a letter."
	done
