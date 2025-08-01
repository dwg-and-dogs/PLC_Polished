SinjohStockroom_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  3,  7, SINJOH_CROSSROADS, 2
	warp_event  4,  7, SINJOH_CROSSROADS, 2


	def_coord_events



	def_bg_events
	bg_event  0,  2, BGEVENT_READ, SCApricornBenchScript


	def_object_events
	object_event 5,  4, SPRITE_FIREBREATHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SinjohLeftoversScript, EVENT_BEAT_KANNA
	pokemon_event  6, 4, SNORLAX, -1, -1, PAL_NPC_RED, SnorlaxText, EVENT_BEAT_KANNA
	; need to update 
	object_event  9,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_SINJOH_CROSSROADS, EVENT_BEAT_KANNA

	object_event 2, 3, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, SinjohStockroomNPC1Text, EVENT_BEAT_KANNA
	object_event 5, 2, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, SinjohStockroomNPC2Text, EVENT_BEAT_KANNA

SinjohStockroomNPC1Text:
	text "I've never been"
	line "so far from home."
	done

SinjohStockroomNPC2Text:
	text "We used to have"
	line "gather in peace"
	cont "with Johto-"
	
	para "Now the Consul"
	line "sends soldiers?"
	done


SinjohLeftoversScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_LEFTOVERS
	iftrue .AlreadyGaveLeftovers
	writetext LeftiesIntroText
	promptbutton
	verbosegiveitem LEFTOVERS
	setevent EVENT_GOT_LEFTOVERS
	writetext LeftiesAfterText
	waitbutton
	closetext
	end

.AlreadyGaveLeftovers:
	writetext LeftiesAfterText
	waitbutton
	closetext
	end


LeftiesIntroText:
	text "I get hungry in"
	line "the middle of"
	cont "long battles."
	
	para "Instead of leav-"
	line "ing for a snack,"
	
	para "I make sure to"
	line "have Leftovers"
	cont "around."

	para "Here, I have some"
	line "to share."
	done

LeftiesAfterText:
	text "Those leftovers"
	line "will sustain you"
	cont "for long battles."
	done

SnorlaxText:
	text "Snorlax lulls,"
	line "blissed out in a"
	cont "food coma."
	done
	
SCApricornBenchScript:
	opentext
	writetext SCCheckForApricornsText
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
	writetext SCYouHaveAnApricornText
	promptbutton
	special Special_SelectApricornForKurt
	iffalse_jumpopenedtext SCThatsALetdownText
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
	writetext SCGetStartedText
	waitbutton
	closetext
	sjump .ApricornBenchScript2 ;Kurt1

.ThatTurnedOutGreat:
	jumpopenedtext SCTurnedOutGreatText

.GiveLevelBall:
	writetext SCJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar JEZE_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_RED_APRICORN
	sjump .ThatTurnedOutGreat

.GiveLureBall:
	writetext SCJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar BUB_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump .ThatTurnedOutGreat

.GiveMoonBall:
	writetext SCJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar DECI_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump .ThatTurnedOutGreat

.GiveFriendBall:
	writetext SCJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar HERB_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump .ThatTurnedOutGreat

.GiveFastBall:
	writetext SCJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar FAST_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump .ThatTurnedOutGreat

.GiveHeavyBall:
	writetext SCJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar GEODE, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump .ThatTurnedOutGreat

.GiveLoveBall:
	writetext SCJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar LOVE_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_PNK_APRICORN
	sjump .ThatTurnedOutGreat

SCGetStartedText:
	text "Time to work on"
	line "this."
	done

SCJustFinishedYourBallText:
	text "All done!"
	done

SCTurnedOutGreatText:
	text "Looks like a"
	line "good one!"
	done
	
SCThatsALetdownText:
	text "Too bad. Need"
	line "to find some!"
	done

SCYouHaveAnApricornText:
	text "Which one?"
	done

SCCheckForApricornsText:
	text "Any items"
	line "in the bag?"
	done
