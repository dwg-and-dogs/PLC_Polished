WesternCapitalStockroom_MapScriptHeader: ;	def_scene_scripts
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, WESTERN_CAPITAL, 6
	warp_event  4,  7, WESTERN_CAPITAL, 6

	def_coord_events

	def_bg_events
	bg_event  0,  2, BGEVENT_READ, WCApricornBenchScript

	def_object_events
	object_event 2, 3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, WesternCapitalStockroomNPC1Text, -1 
	object_event 5, 2, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, WesternCapitalStockroomNPC2Text, -1
	object_event 4, 5, SPRITE_BRIGADER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_COMMAND, trade, NPC_TRADE_EMY, -1 ; 
	object_event  9,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_WESTERN_CAPITAL, -1
;	object_event  9,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_TM,  MART_WESTERN_CAPITAL_2, -1 ; unused 


WesternCapitalStockroomNPC1Text:
	text "The presence of"
	line "the outsiders at"
	para "the port corrupts"
	line "us with fear."
	
	para "The Consul is"
	line "the only one who"
	cont "stays true!"	
	done

WesternCapitalStockroomNPC2Text:
	text "Even the most"
	line "stoic soldier"
	cont "appreciates cute"
	cont "#mon."
	done


WCApricornBenchScript:
	opentext
	writetext WCCheckForApricornsText
	promptbutton
.ApricornBenchScript2:
	opentext
	checkevent EVENT_GAVE_KURT_RED_APRICORN
	iftrue .GiveLevelBall
	checkevent EVENT_GAVE_KURT_BLU_APRICORN
	iftrue .GiveLureBall
	checkevent EVENT_GAVE_KURT_YLW_APRICORN
	iftrue .GiveMoonBall
	checkevent EVENT_GAVE_KURT_GRN_APRICORN
	iftrue .GiveFriendBall
	checkevent EVENT_GAVE_KURT_WHT_APRICORN
	iftrue .GiveFastBall
	checkevent EVENT_GAVE_KURT_BLK_APRICORN
	iftrue .GiveHeavyBall
	checkevent EVENT_GAVE_KURT_PNK_APRICORN
	iftrue .GiveLoveBall
	callasm .CheckHaveAnyApricorns
	iftrue .AskApricorn
	jumpopenedtext ASThatsALetdownText

.CheckHaveAnyApricorns:
	xor a
	ld hl, wApricorns
	or [hl]
rept NUM_APRICORNS - 1
	inc hl
	or [hl]
endr
	ldh [hScriptVar], a
	ret

.AskApricorn:
	writetext WCYouHaveAnApricornText
	promptbutton
	special Special_SelectApricornForKurt
	iffalse_jumpopenedtext WCThatsALetdownText
	ifequal SHORE_FOAM, .Blu
	ifequal FIXED_CHARGE, .Ylw
	ifequal TOUGH_LEAVES, .Grn
	ifequal WHT_APRICORN, .Wht
	ifequal HOLLOW_ROCK, .Blk
	ifequal PNK_APRICORN, .Pnk
;.Red yes this should be commented out
	setevent EVENT_GAVE_KURT_RED_APRICORN
	sjump .GaveKurtApricorns

.Blu:
	setevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump .GaveKurtApricorns

.Ylw:
	setevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump .GaveKurtApricorns

.Grn:
	setevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump .GaveKurtApricorns

.Wht:
	setevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump .GaveKurtApricorns

.Blk:
	setevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump .GaveKurtApricorns

.Pnk:
	setevent EVENT_GAVE_KURT_PNK_APRICORN
.GaveKurtApricorns:
	writetext WCGetStartedText
	waitbutton
	closetext
	sjump .ApricornBenchScript2 ;Kurt1

.ThatTurnedOutGreat:
	jumpopenedtext WCTurnedOutGreatText

.GiveLevelBall:
	writetext WCJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar JEZE_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_RED_APRICORN
	sjump .ThatTurnedOutGreat

.GiveLureBall:
	writetext WCJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar BUB_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump .ThatTurnedOutGreat

.GiveMoonBall:
	writetext WCJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar DECI_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump .ThatTurnedOutGreat

.GiveFriendBall:
	writetext WCJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar HERB_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump .ThatTurnedOutGreat

.GiveFastBall:
	writetext WCJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar FAST_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump .ThatTurnedOutGreat

.GiveHeavyBall:
	writetext WCJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar GEODE, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump .ThatTurnedOutGreat

.GiveLoveBall:
	writetext WCJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar LOVE_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_PNK_APRICORN
	sjump .ThatTurnedOutGreat

WCGetStartedText:
	text "Time to work on"
	line "this."
	done

WCJustFinishedYourBallText:
	text "All done!"
	done

WCTurnedOutGreatText:
	text "Looks like a"
	line "good one!"
	done
	
WCThatsALetdownText:
	text "Too bad. Need"
	line "to find some!"
	done

WCYouHaveAnApricornText:
	text "Which one?"
	done

WCCheckForApricornsText:
	text "Any items"
	line "in the bag?"
	done
