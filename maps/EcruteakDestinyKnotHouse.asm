EcruteakDestinyKnotHouse_MapScriptHeader: ; herbalist, part of trade quest 
	def_scene_scripts
	scene_script EcruteakDestinyKnotTrigger 

	def_callbacks

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 17
	warp_event  4,  7, ECRUTEAK_CITY, 17

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_JUMPSTD, radio2

	def_object_events
	object_event  5,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakBlueMailScript, -1
	object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, HerbalistWifeText, -1

	object_const_def
	const ECRUTEAK_DESTINY_HOUSE_SAGE

EcruteakDestinyKnotTrigger:
	sdefer .TradeQuestScript
	end
	
.TradeQuestScript:
	showemote EMOTE_HEART, ECRUTEAK_DESTINY_HOUSE_SAGE, 30
	setscene $1
	end



HerbalistWifeText:
	text "My husband's tea"
	line "is popular with"
	cont "young lovers."
	
	para "They want to see"
	line "if they will end"
	cont "up together."
	done

EcruteakBlueMailScript:
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
	checkevent EVENT_GAVE_LITEBLUEMAIL
	iftrue_jumpopenedtext TextReadingTheTeaLeaves2
	writetext NeedABigMushroomText
	waitbutton
	checkkeyitem BIG_MUSHROOM_K
	iffalse_jumpopenedtext NoBigMushroom
	writetext Text_BigMushroomQuestion ;;
	yesorno
	iffalse_jumpopenedtext NoBigMushroom
	writetext TextReadingTheTeaLeaves
	waitbutton
	takekeyitem BIG_MUSHROOM_K
	verbosegivekeyitem LITEBLUEMAIL_K
	setevent EVENT_GAVE_LITEBLUEMAIL
	jumpopenedtext TextReadingTheTeaLeaves2


NeedABigMushroomText:
	text "Have you come to"
	line "have your fortune"
	para "told? I can read"
	line "your tea leaves."

	para "The only thing I"
	line "need is a Big"
	cont "Mushroom."
	done

NoBigMushroom:
	text "Oh, you don't have"
	line "one? Please come"
	cont "back."
	done

Text_BigMushroomQuestion:
	text "Oh! That's a BIG"
	line "Mushroom! I can"
	para "show you your"
	line "future, if you"
	cont "let me brew it."
	done

TextReadingTheTeaLeaves:
	text "Hot water, Toe of"
	line "Politoed, Big"
	cont "Mushroom..."
	
	para "The broth is now"
	line "a lite blue..."
		
	para "Dunk the papers"
	line "in the broth..."

	para "Oh? It's blank."
	done

TextReadingTheTeaLeaves2:
	text "The spirits have"
	line "spoken! Your"
	para "future is"
	line "undecided!"
	
	para "My Liteblue Mail"
	line "is perfect if you"
	para "aren't sure what"
	line "the future holds."
	done
