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
	para "you see cute"
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
	
	para "but the Slowking"
	line "OMLAS does all"
	cont "those things now."
	
	para "I hope I can do"
	line "something, so I"
	cont "can move out."
	done


OlivineLightBallScript:
	faceplayer
	opentext	
	writetext NeedAGoldLeafText
	waitbutton
	checkitem GOLD_LEAF
	iffalse_jumpopenedtext NoGoldLeafText
	writetext Text_GoldLeafMailQuestion ;;
	yesorno
	iffalse_jumpopenedtext NoGoldLeafText
	takeitem GOLD_LEAF
	verbosegiveitem LIGHT_BALL, 2
	setscene $1
	iffalse_endtext
	jumpopenedtext GiveLightBallText 

NeedAGoldLeafText:
	text "I need to impress"
	line "my boyfriend's"
	para "family."
	line "They're so gaudy!"
	done

NoGoldLeafText:
	text "How will I make"
	line "my letters shine?"
	done

Text_GoldLeafMailQuestion:
	text "Oh, Gold Leaf!"
	line "What an idea!"
	
	para "I'll give you my"
	line "best beach toy,"
	
	para "2 Light Balls to"
	line "play volleyball"
	cont "with!"
	done

GiveLightBallText:
	text "Those are sure"
	line "to attract people"
	para "and #mon"
	line "at the beach!"
	done
