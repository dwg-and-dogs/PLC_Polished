Route35_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 13, 31, ROUTE_35_GOLDENROD_GATE, 1
	warp_event 14, 31, ROUTE_35_GOLDENROD_GATE, 2
	warp_event  7,  5, ROUTE_35_NATIONAL_PARK_GATE, 3


	def_coord_events

	def_bg_events
	bg_event  5,  7, BGEVENT_JUMPTEXT, Route35SignText
	bg_event 15, 29, BGEVENT_JUMPTEXT, Route35SignText
	bg_event  4, 12, BGEVENT_ITEM + NUGGET, EVENT_ROUTE_35_HIDDEN_NUGGET

	def_object_events
	object_event  8, 19, SPRITE_CAMPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerCamperIvan, -1;
	object_event 12, 20, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerCooltrainerMNick, -1;
	object_event 11, 20, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerCooltrainerFGwen, -1;
	object_event 14, 26, SPRITE_PICNICKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerPicnickerKim, -1
	object_event 18, 29, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBreederTheresa, -1
	object_event  6, 10, SPRITE_FIREBREATHER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerFirebreatherWalt, -1
	object_event  9, 10, SPRITE_JUGGLER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerJugglerIrwin, -1
	fruittree_event  10, 27, FRUITTREE_ROUTE_35, SHORE_FOAM, PAL_NPC_BLUE
	tmhmball_event 11, 11, TM_DRAIN_PUNCH, EVENT_GOT_TM_DRAIN_PUNCH
	object_event	 4,	11, 	SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_DOWN, 	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ROUTE35_BodySlamMT, -1 ;	

GenericTrainerCamperIvan:
	generictrainer CAMPER, IVAN, EVENT_BEAT_CAMPER_IVAN, CamperIvanSeenText, CamperIvanBeatenText

	text "Oh cool, a fellow"
	line "Azalean!"
	para "I moved here to"
	line "Goldenrod. It's"
	para "hard to be away"
	line "from my family,"
	cont "though."
	done

CamperIvanSeenText:
	text "Oh hey, a fellow"
	line "Azalean!"
	done

CamperIvanBeatenText:
	text "You're as strong"
	line "as Bugsy."
	done

GenericTrainerCooltrainerMNick:
	generictrainer COOLTRAINERM, NICK, EVENT_BEAT_COOLTRAINERM_NICK, CooltrainerMCalSeenText, CooltrainerMCalBeatenText

	text "It's not really a"
	line "mystery why"
	para "Whitney got a"
	line "radio channel."
	para "She claims to"
	line "stick up for cute"
	para "#mon, but she's"
	line "just as menacing"
	cont "as Petrel."
	done

CooltrainerMCalSeenText:
	text "Are your #mon"
	line "cute or tough?"
	done

CooltrainerMCalBeatenText:
	text "Cute and tough!"
	done

GenericTrainerCooltrainerFGwen:
	generictrainer COOLTRAINERF, GWEN, EVENT_BEAT_COOLTRAINERF_GWEN, CooltrainerFGwenSeenText, CooltrainerFGwenBeatenText

	text "I'm training to be"
	line "as strong as"
	cont "Whitney."
	done

CooltrainerFGwenSeenText:
	text "Hustle!"
	done

CooltrainerFGwenBeatenText:
	text "Bustle…"
	done

GenericTrainerPicnickerKim:
	generictrainer CAMPER, ROLAND, EVENT_BEAT_CAMPER_ROLAND, RolandSeenText, RolandBeatenText

	text "Now, I have to"
	line "run back to the "
	para "#center"
	line "and it'll be too"
	para "late to make any"
	line "s'mores..."
	done

RolandSeenText:
	text "Excuse me, have"
	line "you seen my"
	cont "girlfriend Gina?"
	
	para "We're making"
	line "s'mores tonight."
	done

RolandBeatenText:
	text "Thanks a lot."
	
	para "Now, I have to"
	line "run back to the "
	cont "#center"
	cont "and it'll be too"
	cont "late..."
	done

GenericTrainerBreederTheresa:
	generictrainer BREEDER, THERESA, EVENT_BEAT_BREEDER_THERESA, BreederTheresaSeenText, BreederTheresaBeatenText

	text "I love reading"
	line "about adventures"
	para "outside. I wish I"
	line "could go on an"
	cont "adventure."
	done

BreederTheresaSeenText:
	text "Oh, the great"
	line "outdoors!"
	done

BreederTheresaBeatenText:
	text "Now I'm not"
	line "feeling so good…"
	done

GenericTrainerFirebreatherWalt:
	generictrainer FIREBREATHER, WALT, EVENT_BEAT_FIREBREATHER_WALT, FirebreatherWaltSeenText, FirebreatherWaltBeatenText

	text "Museum maps show"
	line "there was a hot"
	para "spring here. It"
	line "must have dried"
	cont "a long time ago."
	done

FirebreatherWaltSeenText:
	text "Did you know there"
	line "used to be a"
	cont "spring here?"
	done

FirebreatherWaltBeatenText:
	text "I'm all dry!"
	done

TrainerJugglerIrwin:
	generictrainer JUGGLER, IRWIN1, EVENT_BEAT_JUGGLER_IRWIN, JugglerIrwin1SeenText, JugglerIrwin1BeatenText

JugglerIrwinAfterBattleText:
	text "They're saying"
	line "that a new"
	para "technique is"
	line "going to bring"
	cont "rain."
	done

JugglerIrwin1SeenText:
	text "Have you heard"
	line "what they found"
	cont "in the ruins?"
	done

JugglerIrwin1BeatenText:
	text "I wish I could"
	line "have seen it."
	done


Route35SignText:
	text "Route 35"
	done
	
ROUTE35_BodySlamMT:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_BODY_SLAM_INTRO
	iftrue ROUTE35_TutorBodySlamScript
	writetext Text_BodySlamIntro
	waitbutton
	setevent EVENT_LISTENED_TO_BODY_SLAM_INTRO
ROUTE35_TutorBodySlamScript:
	writetext Text_ROUTE35_TutorBodySlam ;;
	waitbutton
	writetext Text_ROUTE35_TutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval BODY_SLAM
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_ROUTE35_TutorRefused ;; 

.TeachMove
	jumpopenedtext Text_ROUTE35_TutorTaught ;;
	
Text_BodySlamIntro:
	text "Tuscany: Hi!"
	line "I'm Tuscany of"
	cont "Tuesday."
		
	para "Have you come"
	line "to escape the"
	para "bustle of"
	line "Goldenrod?"
	
	para "My technique will"
	line "leave your mind"
	cont "and body still."
	
	para "It's a smother-"
	line "ing BODY SLAM!"
	done
	

Text_ROUTE35_TutorBodySlam:
	text "My special relax-"
	line "ation technique"
	para "can be learned"
	line "by some #mon,"
	para "if you want your"
	line "worries cocooned"
	para "where they can't"
	line "bother you."
	done

Text_ROUTE35_TutorQuestion:
	text "Would you like"
	line "me to teach it"
	cont "to a #mon?"
	done

Text_ROUTE35_TutorRefused:
	text "Just come find"
	line "me when life"
	para "is moving too"
	line "fast!"
	done

Text_ROUTE35_TutorTaught:
	text "There! Now you"
	line "have the power"
	para "to Body Slam"
	line "your problems!"
	done
	