GauldenrodStockroom_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, GAULDENROD, 2
	warp_event  4,  7, GAULDENROD, 2

	def_coord_events

	def_bg_events
	bg_event  0,  2, BGEVENT_READ, GSApricornBenchScript
	bg_event  1,  2, BGEVENT_READ, GSApricornBenchScript

	def_object_events
	object_event 2, 3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GauldenrodStockroomNPC1Script, -1
	object_event 5, 2, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GauldenrodStockroomNPC2Script, -1
	object_event 3, 5, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GauldenrodStockroomNPC3Script, -1
	object_event 7, 4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GauldenrodStockroomNPC4Script, -1
	object_event 1, 6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GauldenrodStockroomNPC5Script, -1

	object_const_def


GauldenrodStockroomNPC1Script:
	jumptextfaceplayer GauldenrodStockroomNPC1Text

GauldenrodStockroomNPC1Text:
	text "See that fence?"
	line "Long ago, I went"
	para "past it, through"
	line "the caves, and up"
	cont "on the mountain."
	done

GauldenrodStockroomNPC2Script:
	faceplayer
	checkevent EVENT_GOT_EXPERT_BELT
	iftrue .GotBelt
	opentext
	writetext GauldenrodStockroomNPC2Text1
	promptbutton
	checkpoke UNOWN
	iftrue .GiveItem
	closetext
	end

.GiveItem
	writetext GauldenrodStockroomNPC2Text2
	promptbutton
	verbosegiveitem EXPERT_BELT
	iffalse .BagFull
	setevent EVENT_GOT_EXPERT_BELT
	writetext GauldenrodStockroomNPC2Text3
	waitbutton
.BagFull:
	closetext
	end

.GotBelt
	opentext
	writetext GauldenrodStockroomNPC2Text3
	waitbutton
	closetext
	end

GauldenrodStockroomNPC2Text1:
	text "When I was your"
	line "age, I went on my"
	cont "quest."

	para "We tell the"
	line "children, bring"
	para "back something"
	line "'unown' to the"
	cont "village…"
	done

GauldenrodStockroomNPC2Text2:
	text "Ah, you've done a"
	line "quest? Here, take"
	cont "this item…"
	done

GauldenrodStockroomNPC2Text3:
	text "Congratulations on"
	line "your quest. What"
	para "will you do with"
	line "your gifts?"
	done

GauldenrodStockroomNPC3Script:
	jumptextfaceplayer GauldenrodStockroomNPC3Text

GauldenrodStockroomNPC3Text:
	text "It was a rite of"
	line "passage to go on"
	para "an adventure and"
	line "bring back"
	cont "knowledge."

	para "I got to a cave,"
	line "had a vision."
	done

GauldenrodStockroomNPC4Script:
	jumptextfaceplayer GauldenrodStockroomNPC4Text

GauldenrodStockroomNPC4Text:
	text "We used to have a"
	line "thriving craft"
	cont "guild."

	para "But the Consul"
	line "ships cheap items,"
	para "and the guild had"
	line "to close."
	done

GauldenrodStockroomNPC5Script:
	jumptextfaceplayer GauldenrodStockroomNPC5Text

GauldenrodStockroomNPC5Text:
	text "Not everyone came"
	line "back from the"
	cont "ritual."

	para "It was a dangerous"
	line "rite."
	done

GSApricornBenchScript:
	opentext
	writetext GSCheckForApricornsText
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
	jumpopenedtext GSThatsALetdownText

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
	writetext GSYouHaveAnApricornText
	promptbutton
	special Special_SelectApricornForKurt
	iffalse_jumpopenedtext GSThatsALetdownText
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
	writetext GSGetStartedText
	waitbutton
	closetext
	sjump .ApricornBenchScript2 ;Kurt1

.ThatTurnedOutGreat:
	jumpopenedtext GSTurnedOutGreatText

.GiveLevelBall:
	writetext GSJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar JEZE_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_RED_APRICORN
	sjump .ThatTurnedOutGreat

.GiveLureBall:
	writetext GSJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar BUB_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump .ThatTurnedOutGreat

.GiveMoonBall:
	writetext GSJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar DECI_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump .ThatTurnedOutGreat

.GiveFriendBall:
	writetext GSJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar HERB_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump .ThatTurnedOutGreat

.GiveFastBall:
	writetext GSJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar FAST_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump .ThatTurnedOutGreat

.GiveHeavyBall:
	writetext GSJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar GEODE, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump .ThatTurnedOutGreat

.GiveLoveBall:
	writetext GSJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar LOVE_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_PNK_APRICORN
	sjump .ThatTurnedOutGreat

GSGetStartedText:
	text "Time to work on"
	line "this."
	done

GSJustFinishedYourBallText:
	text "All done!"
	done

GSTurnedOutGreatText:
	text "Looks like a"
	line "good one!"
	done
	
GSThatsALetdownText:
	text "Too bad. Need"
	line "to find some!"
	done

GSYouHaveAnApricornText:
	text "Which one?"
	done

GSCheckForApricornsText:
	text "Any items"
	line "in the bag?"
	done
