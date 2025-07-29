EerieHamletDorms_MapScriptHeader: 

	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 3, 9, EERIE_HAMLET, 4


	def_coord_events



	def_bg_events
	bg_event  0,  2, BGEVENT_READ, HamletDormsBed
	bg_event  0,  3, BGEVENT_READ, HamletDormsBed
	bg_event  0,  4, BGEVENT_READ, HamletDormsBed
	bg_event  0,  5, BGEVENT_READ, HamletDormsBed

	def_object_events
	object_event 1, 1, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HamletDormsKurtScript, EVENT_BEAT_AMOS ; event_talked_to_kurt_cc
	object_event 6,  6, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EerieDormsSleepTalkScript, -1 
	object_event 13, 3, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, HamletDormsNPC1Text, -1
	pokemon_event  12, 3, SNEASEL, -1, -1, PAL_NPC_RED, SneaselText, -1
	object_event 5, 3, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, HamletDormsNPC2Text, -1
	object_event 3, 3, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, HamletDormsNPC3Text, -1


HamletDormsNPC1Text:
	text "Ever since the"
	line "Consul started"
	cont "occupying cities,"
	
	para "trainers have"
	line "been fleeing from"
	cont "all over Johto."
	done

HamletDormsNPC2Text:
	text "What will become"
	line "of the tarn?"
	done

HamletDormsNPC3Text:
	text "Adrinna's workers"
	line "don't really like"
	cont "to spend time in"
	cont "our Hamlet."
	
	para "I hope that it"
	line "stays that way."
	done

SneaselText:
	text "Snaasy!"
	done

HamletDormsBed:
	showtext HamletBedText1
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special Special_FadeInQuickly
	showtext HamletBedText2
	end

HamletBedText1:
	text "A comfy bed!"
	line "Time to sleep…"
	done

HamletBedText2:
	text "Ah, refreshed and"
	line "restored!"
	done


EerieDormsSleepTalkScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_SLEEP_TALK_INTRO
	iftrue EerieDormsTutorSleepTalkScript
	writetext Text_SleepTalkIntro
	waitbutton
	setevent EVENT_LISTENED_TO_SLEEP_TALK_INTRO
EerieDormsTutorSleepTalkScript:
	writetext Text_EerieDormsTutorSleepTalk ;;
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_EerieDormsTutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval SLEEP_TALK
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_EerieDormsTutorRefused ;; 

.NoSilverLeaf
	jumpopenedtext Text_EerieDormsTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_EerieDormsTutorTaught ;;
	
Text_SleepTalkIntro: 
	text "I'm the resident"
	line "sleep expert."
	
	para "While we sleep,"
	line "our deepest fears"
	para "and desires speak"
	line "through our sub-"
	cont "conscious."
	done

Text_EerieDormsTutorSleepTalk:
	text "I can teach you"
	line "to listen to your"
	para "#mon's Sleep"
	line "Talk, for a"
	cont "Silver Leaf."
	done

Text_EerieDormsTutorNoSilverLeaf:
	text "You don't have"
	line "a Silver Leaf."
	done

Text_EerieDormsTutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "to Sleep Talk?"
	done

Text_EerieDormsTutorRefused:
	text "Don't let the"
	line "bed bugs bite."
	done

Text_EerieDormsTutorTaught:
	text "Come see me if"
	line "you need another"
	cont "tutor."
	done

HamletDormsKurtScript:
	faceplayer
	opentext
	writetext KurtEHDormsText
	yesorno
	iffalse .WCKurtPC
	winlosstext EHKurtBattleText, EHKurtBattleText
	loadtrainer KURT, KURT11 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext EHKurtBattleText2

.WCKurtPC
	writetext KurEHDormsText2
	promptbutton
	special PokemonCenterPC 
	endtext
	end

KurtEHDormsText:
	text "<PLAYER>, these"
	line "dorms are a good"
	cont "place to rest."
	
	para "I know it didn't"
	line "go well with the"
	cont "Hisui Elder."
	
	para "But I believe "
	line "Johto can still"
	para "save its tradit-"
	line "ions from being"
	cont "wiped away!"
	done
	
KurEHDormsText2:
	text "I can run back"
	line "to manage your"
	cont "party."
	done

EHKurtBattleText:
	text "So impressive!"
	done

EHKurtBattleText2:
	text "We can battle as"
	line "many times as"
	cont "you like."
	done
