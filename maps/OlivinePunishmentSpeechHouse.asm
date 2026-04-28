OlivinePunishmentSpeechHouse_MapScriptHeader:
	def_scene_scripts
	scene_script OlivineHouseTrigger 


	def_callbacks

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 4
	warp_event  3,  7, OLIVINE_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineLightBallScript, -1
	object_event  1,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN,  OBJECTTYPE_SCRIPT, 0, VoltSwitchScript, -1
	object_event  5,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivinePunishmentSpeechHouseDaughterText, -1


	object_const_def
	const OLIVINE_HOUSE_LASS

OlivineHouseTrigger:
	sdefer .TradeQuest
	end
	
.TradeQuest:
	showemote EMOTE_HEART, OLIVINE_HOUSE_LASS, 30
	setscene $1
	end



VoltSwitchScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_VOLT_SWITCH
	iftrue_jumpopenedtext GaveVoltSwitchText
	writetext GiveVoltSwitchText
	promptbutton
	verbosegivetmhm TM_VOLT_SWITCH
	writetext GaveVoltSwitchText
	waitbutton
	closetext
	setevent EVENT_GOT_VOLT_SWITCH
	end

GiveVoltSwitchText:
	text "Kids grow up so"
	line "fast. One day,"
	para "they're cute"
	line "little girls. The"
	cont "next, they're"
	cont "all grown."
	
	para "Reminds me of my"
	line "favorite TM -"
	cont "Volt Switch."
	done

GaveVoltSwitchText:
	text "Your opponent"
	line "won't know what's"
	cont "in front of them"
	cont "with Volt Switch!"
	done


OlivinePunishmentSpeechHouseDaughterText:
	text "I keep trying to"
	line "find an entry-"
	cont "level position,"
	
	para "but the OMLAS"
	line "Slowking does all"
	cont "those things now."
	
	para "I hope I can do"
	line "something, so I"
	cont "can move out."
	done


OlivineLightBallScript:
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
	checkevent EVENT_GOT_PEARL_OLIVINE
	iftrue_jumpopenedtext GiveLightBallText
	writetext NeedAGoldLeafText
	waitbutton
	checkkeyitem GOLD_LEAF_K
	iffalse_jumpopenedtext NoGoldLeafText
	writetext Text_GoldLeafMailQuestion ;;
	yesorno
	iffalse_jumpopenedtext NoGoldLeafText
	takekeyitem GOLD_LEAF_K
	verbosegivekeyitem PEARL_K
	setevent EVENT_GOT_PEARL_OLIVINE
	jumpopenedtext GiveLightBallText 

NeedAGoldLeafText: ; todo revise 
	text "I need to impress"
	line "my boyfriend's"
	para "family. But all I"
	line "have is this"
	cont "single Pearl!"
	
	para "What could I ever"
	line "make with just"
	cont "one pearl?"
	
	para "I need something"
	line "glittering!"
	done

NoGoldLeafText:
	text "How will I make"
	line "my letters shine?"
	done

Text_GoldLeafMailQuestion:
	text "Oh, Gold Leaf!"
	line "What an idea!"
	
	para "Would you trade"
	line "it for a Pearl?"
	done

GiveLightBallText:
	text "That pearl is so"
	line "precious, it'd"
	para "be best on an"
	line "earring."
	
	para "I think someone"
	line "in town used to"
	cont "make jewelry like"
	cont "that actually!"
	done
