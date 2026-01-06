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
	checkevent EVENT_GOT_MINT_LEAF
	iftrue .GotMintLeaf
	setmapscene AZALEA_POKECENTER_1F, $0 
.GotMintLeaf:
	checkevent EVENT_GAVE_TINYMUSHROOM
	iftrue .GotTinyMushroom
	setmapscene ANARRES_HOUSE, $0
.GotTinyMushroom: 
	checkevent EVENT_GOT_LEMONADE_FROM_LADY
	iftrue .GotLemonade
	setmapscene GAULDENROD_HOUSE, $0
.GotLemonade:
	checkevent EVENT_TRADED_BRICK_PIECE
	iftrue .GotBrick
	setmapscene NATIONAL_PARK, $0
.GotBrick:
	checkevent EVENT_TRADED_RAGECANDYBAR
	iftrue .GotRagecandybar
	setmapscene GOLDENROD_MUSEUM_2F, $0
.GotRagecandybar:
	checkevent EVENT_GAVE_BIG_MUSHROOM
	iftrue .GotMushroom
	setmapscene VIOLET_NICKNAME_SPEECH_HOUSE, $0
.GotMushroom:
	checkevent EVENT_GAVE_LITEBLUEMAIL
	iftrue .GotBlueMail
	setmapscene ECRUTEAK_DESTINY_KNOT_HOUSE, $0
.GotBlueMail:
	checkevent EVENT_GOT_GOLD_LEAF
	iftrue .GotGoldLeaf
	setmapscene ECRUTEAK_CHERISH_BALL_HOUSE, $0
.GotGoldLeaf:
	checkevent EVENT_GOT_PEARL_OLIVINE
	iftrue .GotPearl
	setmapscene OLIVINE_PUNISHMENT_SPEECH_HOUSE, $0
.GotPearl:
	checkevent EVENT_GOT_SURF_MAIL
	iftrue .GotSurfMail
	setmapscene OLIVINE_CAFE, $0
.GotSurfMail:
	checkevent EVENT_GOT_OLD_AMBER
	iftrue .GotOldAmber
	setmapscene MAHOGANY_TOWN, $0
.GotOldAmber:
	checkevent EVENT_GOT_SWEET_HONEY
	iftrue .GotHoney
	setmapscene EERIE_HAMLET, $0
.GotHoney:
	checkevent EVENT_GAVE_MASTER_BALL
	iftrue .DoneWithChecks
	setmapscene GAULDENROD_GUILD, $0
.DoneWithChecks:
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
