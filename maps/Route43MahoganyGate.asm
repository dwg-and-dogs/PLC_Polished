Route43MahoganyGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  0, ROUTE_43, 1
	warp_event  5,  0, ROUTE_43, 2
	warp_event  4,  7, MAHOGANY_TOWN, 5
	warp_event  5,  7, MAHOGANY_TOWN, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route43MahoganyGateOfficer, -1
	object_event  4,  3,  SPRITE_JUGGLER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SantosScript, -1
	object_event  6,  2, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, LakeOfRageEngineerText, -1
	object_event  2, 5, SPRITE_CYNTHIA, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CynthiaScript, -1  

Route43MahoganyGateOfficer:
	jumpthistextfaceplayer

	text "The Lake is only"
	line "visited by hard-"
	cont "core backpackers."
	done


LakeOfRageEngineerText:
	text "I can't bear to"
	line "leave this place!"
	
	para "Why didn't I tell"
	line "Silph their plan"
	cont "wouldn't work?"
	done


SantosScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_SUCKER_PUNCH_INTRO
	iftrue ROUTE42GATE_TutorSuckerPunchScript
	writetext Text_SuckerPunchIntro
	waitbutton
	setevent EVENT_LISTENED_TO_SUCKER_PUNCH_INTRO
ROUTE42GATE_TutorSuckerPunchScript:
	writetext Text_ROUTE42GATE_TutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval SUCKER_PUNCH
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_ROUTE42GATE_TutorRefused ;; 

.TeachMove
	jumpopenedtext Text_ROUTE42GATE_TutorTaught ;;
	
Text_SuckerPunchIntro:
	text "Hey. I'm Santos."
		
	para "I don't let the"
	line "future scare me."
	
	para "With my Sucker"
	line "Punch, I can have"
	cont "the element of"
	cont "surprise."	
	done
	
Text_ROUTE42GATE_TutorQuestion:
	text "If you want to"
	line "take control, I"
	cont "can teach your"
	para "#mon the move"
	line "Sucker Punch."
	done

Text_ROUTE42GATE_TutorRefused:
	text "Stay vigilant."
	done

Text_ROUTE42GATE_TutorTaught:
	text "There. Now you"
	line "can set the pace"
	cont "of battles."
	done

CynthiaScript:
    faceplayer
    opentext
	checkevent EVENT_BEAT_CYNTHIA
	iftrue_jumptext BeatCynthiaText
	checkevent EVENT_FOUGHT_FERALIGATR_VARIANT
	iftrue .BattleCynthia
    checkevent EVENT_GOT_CHARM_FROM_CYNTHIA
    iftrue .Explain
    writetext CynthiaHiText
    waitbutton
    countseencaught
    readvar VAR_DEXCAUGHT
    ifgreater 99, .HereYouGo ; greater than 24, which means 25 or more
.UhOh
    jumpopenedtext CynthiaUhOhText
.HereYouGo
    writetext CynthiaHereYouGoText
    waitbutton
    verbosegivekeyitem ADAMANT_ORB 
    iffalse .NoRoom
    writetext CynthiaCrystalText
    playsound SFX_ITEM
    waitsfx
;    itemnotify
    setevent EVENT_GOT_CHARM_FROM_CYNTHIA
.Explain
    jumpopenedtext CynthiaExplainText
.NoRoom
    jumpopenedtext CynthiaNoRoomText
.BattleCynthia:
	writetext CynthiaPreBattleText
	yesorno
	iffalse_jumptext CynthiaPreBattleText_DisAgree
	writetext CynthiaPreBattleText_Agree
	waitbutton
	blackoutmod MAHOGANY_TOWN
	winlosstext CynthiaWinLossText, 0
	; start 
	readdifficultymode
	ifequal DIFFICULTY_EASY, .easy
	ifequal DIFFICULTY_HARD, .hard
	loadtrainer CYNTHIA, 2
	sjump .startbattle
.easy:
	loadtrainer CYNTHIA, 1
	sjump .startbattle
.hard:
	loadtrainer CYNTHIA, 3
.startbattle:
	; end 
	startbattle
	reloadmapafterbattle	
	setevent EVENT_BEAT_CYNTHIA
	opentext
	writetext BeatCynthiaText
	waitbutton
	closetext
	end
	
CynthiaPreBattleText:
	text "So you have seen"
	line "it? My theories"
	cont "were correct?..."

	para "..."
	
	para "Incredible! Its"
	line "ancestor was the"
	para "apex predator in"
	line "a great swamp!"
	
	para "It must have been"
	line "treated like a"
	para "legendary #mon"
	line "in its day."

	para "You must be a"
	line "skilled trainer."
	
	para "Would you like to"
	line "battle?"
	done

CynthiaPreBattleText_Agree:
	text "I'm warning you-"
	line "I don't go easy"
	cont "on challengers!"
	done

CynthiaPreBattleText_DisAgree:
	text "Some other time."
	done

CynthiaHiText:
	text_high
    text " Cynthia: "
	next
	text_start
	
    text "Hello. Have you"
	line "come here to see"
	para "the history rising"
	line "from the muddy"
	cont "Lake bottom too?"
	
	para "I'm a visitor from"
	line "Sinnoh. I've been"
	para "trying to track"
	line "down a fossil of"
	para "a Johto #mon,"
	line "Feraligatr."
	
	para "If you're serious"
	line "about #mon,"
	
	para "I'll give you an"
	line "item so we can"
	cont "collaborate."	
    done

CynthiaUhOhText:
	text_high
    text " Cynthia: "
	next
	text_start
	
    text "Let's see…"
    line "Uh-oh! You've only"

    para "caught "
    text_decimal hScriptVar, 1, 3
    text " kinds"
    line "of #mon."

    para "If you're serious"
	line "about unearthing"
	cont "the mysteries,"
	cont "please come back"
	
	para "when you've caught"
	line "100 #mon."
    done

CynthiaHereYouGoText:
	text_high
    text " Cynthia: "
	next
	text_start
	
    text "Let's see…"
    line "Yes! You've"

    para "caught "
    text_decimal hScriptVar, 1, 3
    text " kinds"
    line "of #mon."

    para "Please, accept"
	line "this item."
    done

CynthiaCrystalText:
	text_high
    text " Cynthia: "
	next
	text_start
	
    text "That orb makes"
	line "mysteries lost to"
	cont "time become"
	cont "unraveled."
	
	para "I hope it's a"
	line "help to you."
    done

CynthiaExplainText:
	text_high
    text " Cynthia: "
	next
	text_start

    text "Fossils of the"
	line "Feraligatr"
	line "ancestor must be"
	para "buried at the"
	line "Lake. They may be"
	para "buried under a"
	line "few hundred years"
	cont "of silt, though."
    done

CynthiaNoRoomText:
    text "No room?"
	line "How?"
    done

BeatCynthiaText:
	text_high
    text " Cynthia: "
	next
	text_start

	text "I wonder if there"
	line "are any connec-"
	cont "tions between the"
	para "legendary #mon"
	line "of Johto and the"
	para "legendary #mon"
	line "of Sinnoh."
	
	para "There must be:"
	line "Unown are found"
	cont "on both regions!"
	done

CynthiaWinLossText:
	text "You are skilled"
	line "in exploration"
	cont "and battling."
	done