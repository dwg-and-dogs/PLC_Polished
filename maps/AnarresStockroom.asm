AnarresStockroom_MapScriptHeader:
	def_scene_scripts


	def_callbacks


	def_warp_events 
	warp_event  3,  7, ANARRES_TOWN, 7
	warp_event  4,  7, ANARRES_TOWN, 7

	def_coord_events


	def_bg_events 
	bg_event  10,  2, BGEVENT_READ, ASApricornBenchScript ; this is really inefficient, maybe clean up some time 

	def_object_events 
	mart_clerk_event  2,  3, MARTTYPE_STANDARD, MART_ANARRES
	object_event  2,  5, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, jumptextfaceplayer, AnarresStockroomNPC1Script, -1
	object_event  5,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AnarresStockroomNPC2Text, -1
	object_event  7,  2, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, AnarresStockroomNPC3Text, -1


	object_const_def
	const ANARRES_STOCKROOM_BERRY_GRAMPS


AnarresStockroomNPC1Script:
	checkevent EVENT_GOT_ANARRES_BERRY
	iftrue_jumptextfaceplayer GiveAnarresBerryText
	faceplayer
	opentext	
	writetext AnarresBerryGiftText
	promptbutton
	verbosegiveitem SITRUS_BERRY
	iffalse_endtext
	setevent EVENT_GOT_ANARRES_BERRY 
	jumpopenedtext GiveAnarresBerryText 

AnarresBerryGiftText: 
	text "Our ceremonies"
	line "remind us that"
	para "it's natural to"
	line "change. A season"
	para "for Sitrus Berry"
	line "Jam, a season to"
	para "gather honey."
	line "Hey, I'm hungry!"
	cont "Share a berry?"
	done
	
GiveAnarresBerryText:
	text "Different"
	line "berries are good"
	para "for different"
	line "environments!"
	done

AnarresStockroomNPC2Text:
	text "We nearly hunted"
	line "Farfetch'd to"
	para "extinction in"
	line "Johto, but there"
	para "are still some"
	line "left."
	done

AnarresStockroomNPC3Text:
	text "Why does Hollis"
	line "train bugs?"
	
	para "To remind us that"
	line "nature isn't just"
	para "cute Pikachus,"
	line "but also scary"
	cont "Ariados."
	done

ASApricornBenchScript:
	opentext
	writetext ASCheckForApricornsText
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
	writetext ASYouHaveAnApricornText
	promptbutton
	special Special_SelectApricornForKurt
	iffalse_jumpopenedtext ASThatsALetdownText
	ifequal SHORE_FOAM, .Blu
	ifequal FIXED_CHARGE, .Ylw
	ifequal TOUGH_LEAVES, .Grn
	ifequal WHT_APRICORN, .Wht
	ifequal HOLLOW_ROCK, .Blk
	ifequal PNK_APRICORN, .Pnk
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
	writetext ASGetStartedText
	waitbutton
	closetext
	sjump .ApricornBenchScript2

.ThatTurnedOutGreat:
	jumpopenedtext ASTurnedOutGreatText

.GiveLevelBall:
	writetext ASJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar JEZE_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_RED_APRICORN
	sjump .ThatTurnedOutGreat

.GiveLureBall:
	writetext ASJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar BUB_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump .ThatTurnedOutGreat

.GiveMoonBall:
	writetext ASJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar DECI_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump .ThatTurnedOutGreat

.GiveFriendBall:
	writetext ASJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar HERB_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump .ThatTurnedOutGreat

.GiveFastBall:
	writetext ASJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar FAST_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump .ThatTurnedOutGreat

.GiveHeavyBall:
	writetext ASJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar GEODE, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump .ThatTurnedOutGreat

.GiveLoveBall:
	writetext ASJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar LOVE_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_PNK_APRICORN
	sjump .ThatTurnedOutGreat

ASGetStartedText:
	text "Time to work on"
	line "this."
	done

ASJustFinishedYourBallText:
	text "All done!"
	done

ASTurnedOutGreatText:
	text "Looks like a"
	line "good one!"
	done
	
ASThatsALetdownText:
	text "Too bad. Need"
	line "to find some!"
	done

ASYouHaveAnApricornText:
	text "Which one?"
	done

ASCheckForApricornsText:
	text "Any items"
	line "in the bag?"
	done
