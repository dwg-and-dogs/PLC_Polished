Route36_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 22,  8, ROUTE_36_NATIONAL_PARK_GATE, 3
	warp_event 22,  9, ROUTE_36_NATIONAL_PARK_GATE, 4
	warp_event 51, 13, ROUTE_36_RUINS_OF_ALPH_GATE, 1
	warp_event 52, 13, ROUTE_36_RUINS_OF_ALPH_GATE, 2


	def_coord_events


	def_bg_events
	bg_event 33,  1, BGEVENT_JUMPTEXT, Route36TrainerTips2Text
	bg_event 49, 11, BGEVENT_JUMPTEXT, RuinsOfAlphNorthSignText
	bg_event 54,  8, BGEVENT_JUMPTEXT, Route36SignText
	bg_event 25,  7, BGEVENT_JUMPTEXT, Route36TrainerTips1Text
	bg_event 22,  3, BGEVENT_READ, Route36TreeScript
	bg_event 23,  3, BGEVENT_READ, Route36TreeScript

	
	def_object_events
	object_event  39,  9, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, BRONZONG, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route36BronzongScript, EVENT_ROUTE_36_BRONZONG
	object_event 50,  8, SPRITE_HIKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ArthurScript, -1
	fruittree_event 25,  4, FRUITTREE_ROUTE_36, WHT_APRICORN, PAL_NPC_SILVER ; USED TO BE A BERRY TREE
	object_event 36, 13, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36KurtScript, EVENT_GOT_BASEMENT_KEY
	object_event 24,  7, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36MatronScript, -1
	object_event 39, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route36Scientist1Text, EVENT_BEAT_FALKNER
	object_event 40,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route36Scientist2Text, EVENT_BEAT_FALKNER
	object_event 31, 13, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSchoolboyRoute36, -1 ; ALAN1
	object_event 34,  6, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerFirebreatherRoute36, -1 ; BURT
	object_event 23, 14, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPicnickerRoute36, EVENT_BEAT_PICNICKER_GINA ; GINA1
	object_event 27, 14, 	SPRITE_FIREBREATHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 	0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ROUTE36_SeismicTossMT, -1 ;

	object_const_def
	const ROUTE_36_BRONZONG


Route36KurtScript:
	faceplayer
	opentext
	writetext Route36KurtText
	yesorno
	iffalse_jumpopenedtext Route36KurtText2
	winlosstext Route36KurtBattleText, Route36KurtBattleText
	loadtrainer KURT, 3
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext Route36KurtText2

Route36MatronScript:
	faceplayer
	opentext
	writetext Route36MatronAskHealText
	yesorno
	iffalse .Refused
	writetext Route36MatronHealText
	waitbutton
	closetext

	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	
	opentext
	writetext Route36MatronHealedText
	waitbutton
	closetext
	end

.Refused:
	writetext Route36MatronRefusedText
	waitbutton
	closetext
	end

GenericTrainerSchoolboyRoute36:
	generictrainer SCHOOLBOY, ALAN1, EVENT_BEAT_SCHOOLBOY_ALAN, Route36SchoolboySeenText, Route36SchoolboyBeatenText

	text "You should pay"
	line "attention to"
	cont "abilities."
	done

GenericTrainerFirebreatherRoute36:
	generictrainer FIREBREATHER, BURT, EVENT_BEAT_FIREBREATHER_BURT, Route36FirebreatherSeenText, Route36FirebreatherBeatenText

	text "I make my anti-"
	line "dotes from poison"
	cont "#mon."
	para "It's a great exam-"
	line "ple of Yin and"
	cont "Yang."
	done

GenericTrainerPicnickerRoute36:
	generictrainer PICNICKER, GINA1, EVENT_BEAT_PICNICKER_GINA, Route36PicnickerSeenText, Route36PicnickerBeatenText

	text "What to do?"
	
	para "Go back and heal,"
	line "or wait for my"
	cont "boyfriend?"
	
	para "He was so ex-"
	line "cited to make"
	cont "s'mores tonight."
	done

Route36KurtText:
	text "<PLAYER>: Drat!"
	line "The route is "
	para "blocked."
	line "We have to find"
	cont "another way."
	
	para "I know some folks"
	line "in the city that"
	cont "could help."
	
	para "Oh, I have some"
	line "#mon from"
	cont "around here."
	
	para "Want to battle?"
	done

Route36KurtText2:
	text "Let's go into"
	line "Goldenrod to get"
	cont "a way around."
	done

Route36KurtBattleText:
	text "Your #mon"
	line "are so bonded"
	cont "to you."
	done


Route36BronzongScript:
	cry BRONZONG
	pause 15
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon BRONZONG, 30
	startbattle
	ifequal $1, .Continue
	disappear ROUTE_36_BRONZONG
.Continue:
	reloadmapafterbattle
	end


Route36MatronAskHealText:
	text "You look tired"
	line "from playing at"
	para "the National Park."
	line "Would you like me"
	para "to heal your"
	line "#mon?"
	done

Route36MatronHealText:
	text "OK, I'll take care"
	line "of your #mon."
	done

Route36MatronHealedText:
	text "There you go! Your"
	line "#mon are fully"
	cont "healed."
	done

Route36MatronRefusedText:
	text "OK. Please take"
	line "care!"
	done

Route36Scientist1Text:
Route36Scientist2Text:
	text "We're trying to"
	line "get this #mon"
	cont "out of the dirt,"
	cont "but it's so big…"
	done

Route36SchoolboySeenText:
	text "I've got a brand"
	line "new strategy!"
	done

Route36SchoolboyBeatenText:
	text "Overcome…"
	done

Route36FirebreatherSeenText:
	text "My poison types"
	line "will corrode you!"
	done

Route36FirebreatherBeatenText:
	text "Now I'm not"
	line "feeling so good…"
	done

Route36PicnickerSeenText:
	text "I found some good"
	line "kindling for a"
	cont "fire!"
	
	para "I can battle you"
	line "while I wait for"
	cont "my boyfriend."
	done

Route36PicnickerBeatenText:
	text "Oh no, now I've"
	line "got to go back"
	cont "and heal..."
	
	para "I hope Roland"
	line "doesn't get"
	para "confused and"
	line "go back home."
	done

ArthurScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM48_ROCK_SLIDE
	iftrue .AlreadyGotStone
	checkevent EVENT_MET_ARTHUR_OF_THURSDAY
	iftrue .MetArthur
	writetext MeetArthurText
	promptbutton
	setevent EVENT_MET_ARTHUR_OF_THURSDAY
.MetArthur:
	writetext ArthurGivesGiftText
	promptbutton
	verbosegivetmhm TM_ROCK_SLIDE
	iffalse .BagFull
	setevent EVENT_GOT_TM48_ROCK_SLIDE
	jumpopenedtext ArthurGaveGiftText

.AlreadyGotStone:
	writetext ArthurThursdayText
	waitbutton
.BagFull:
	endtext

MeetArthurText:
	text "Arthur: Who are"
	line "you?"

	para "I'm Arthur of"
	line "Thursday."
	
	para "The ruins are all"
	line "collapsed in a"
	cont "big rock pile!"
	done

ArthurGivesGiftText:
	text "It was just like"
	line "my favorite TM:"
	cont "Rock Slide!"
	done

ArthurGaveGiftText:
	text "That technique"
	line "may cause the foe"
	cont "to flinch."
	done

ArthurThursdayText:
	text "That TM is great"
	line "against Flying or"
	cont "Fire-types."
	done

Route36SignText:
	text "Route 36"
	done

RuinsOfAlphNorthSignText:
	text "Ruins of Alph"
	line "North Entrance"
	done

Route36TrainerTips1Text:
	text "Trainer Tips"

	para "#mon stats"
	line "vary--even within"
	cont "the same species."
	done

Route36TrainerTips2Text:
	text "Trainer Tips"

	para "Use Dig to return"
	line "to the entrance of"
	cont "any place."
	done


Route36TreeScript:
	opentext
	writetext AskToTimeTravelTextRoute36
	yesorno
	iffalse_jumpopenedtext NoTimeTravelTextRoute36
	writetext YesTimeTravelTextRoute36
	waitbutton
	closetext
	special Special_CelebiShrineEvent
	special FadeOutPalettes
	waitsfx
	warp STADIUM_GROUNDS, 47, 28
	end
	
AskToTimeTravelTextRoute36:
	text "Travel back"
	line "in time?"
	done

NoTimeTravelTextRoute36:
	text "More to do in"
	line "the present." 
	done
	
YesTimeTravelTextRoute36:
	text "Time to go!"
	done

VioletImmigrantTextRoute36:
	text "Entrance into"
	line "Violet City is"
	para "limited due to"
	line "the drought."
	done

ROUTE36_SeismicTossMT:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_SEISMIC_TOSS_INTRO
	iftrue ROUTE36_TutorSeismicTossScript
	writetext Text_SeismicTossIntro
	waitbutton
	setevent EVENT_LISTENED_TO_SEISMIC_TOSS_INTRO
ROUTE36_TutorSeismicTossScript:
	writetext Text_ROUTE36_TutorSeismicToss ;;
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_ROUTE36_TutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval SEISMIC_TOSS
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_ROUTE36_TutorRefused ;; 

.NoSilverLeaf
	jumpopenedtext Text_ROUTE36_TutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_ROUTE36_TutorTaught ;;
	
Text_SeismicTossIntro:
	text "(Humming tune to"
	line "'Hakuna Matata')"

	para "Seismica-Tossa,"
	line "What a wonderful"
	cont "move!"
	
	para "Seismica-Tossa,"
	line "When you can"
	cont "not phaze!"
	
	para "It means no wo-"
	line "rries for the"
	para "defense of your"
	line "foes,"
	
	para "It's a defense-"
	line "proof, "
	para "Move I'll teach"
	line "to you,"
	
	para "Seismica-Tossa!"
	done
	
Text_ROUTE36_TutorSeismicToss:
	text "Seismic Toss. "
	line "If you're worried"
	para "about your foe's"
	line "defenses,"
	
	para "This move will"
	line "strike right"
	cont "through them!"
	done
	
Text_ROUTE36_TutorQuestion:
	text "I'll tutor you,"
	line "for a Silver"
	cont "Leaf."
	done

Text_ROUTE36_TutorNoSilverLeaf:
	text "Come back with"
	line "a Silver Leaf."
	done
	
Text_ROUTE36_TutorRefused:
	text "No worries."
	done

Text_ROUTE36_TutorTaught:
	text "It means no wo-"
	line "rries for the"
	para "defense of your"
	line "foes,"
	
	para "It's a defense-"
	line "proof, "
	para "Move I'll teach"
	line "to you,"
	
	para "Seismic-Tossa!"
	done
