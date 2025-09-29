Route34_MapScriptHeader:
	def_scene_scripts

	def_callbacks
;	callback MAPCALLBACK_OBJECTS, Route34EggCheckCallback

	def_warp_events
	warp_event 13, 37, ROUTE_34_ILEX_FOREST_GATE, 1
	warp_event 14, 37, ROUTE_34_ILEX_FOREST_GATE, 2
	warp_event 11, 14, DAYCARE, 1
	warp_event 11, 15, DAYCARE, 2
	warp_event 13, 15, DAYCARE, 3

	def_coord_events


	def_bg_events
	bg_event 12,  6, BGEVENT_JUMPTEXT, Route34SignText
	bg_event 13, 33, BGEVENT_JUMPTEXT, Route34TrainerTipsText
	bg_event 10, 13, BGEVENT_JUMPTEXT, DayCareSignText
	bg_event  8, 32, BGEVENT_ITEM + RARE_CANDY, EVENT_ROUTE_34_HIDDEN_RARE_CANDY
	bg_event 17, 19, BGEVENT_ITEM + SUPER_POTION, EVENT_ROUTE_34_HIDDEN_SUPER_POTION

	def_object_events
	object_event 11, 20, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route34RichBoyIrvingScript, -1 ; done
;	object_event 10, 15, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Outside, EVENT_DAYCARE_MAN_ON_ROUTE_34
	object_event 13,  7, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerCamperTodd1, -1;
	object_event 15, 32, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBreederJulie, -1;
	object_event 10, 26, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPicnickerErin, -1 ; ERIN
	object_event 16, 36, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericOfficerfMaraScript, -1;
	object_event 18, 28, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPokefanmBrandon, -1;
	object_event 11, 48, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrainerCooltrainerfIrene, -1
	object_event  3, 48, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfJenn, -1
	object_event  6, 51, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerfKate, -1
	itemball_event  7, 30, NUGGET, 1, EVENT_ROUTE_34_NUGGET
;	object_event 14, 18, SPRITE_DAYCARE_MON_1, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareMon1Script, EVENT_DAYCARE_MON_1
;	object_event 17, 19, SPRITE_DAYCARE_MON_2, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareMon2Script, EVENT_DAYCARE_MON_2
	object_event  6,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route34ShoreFoamScript, -1 ; apricorn trader 

	object_const_def
	const ROUTE34_RICH_BOY
	const ROUTE34_GRAMPS

Route34EggCheckCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .PutDayCareManOutside
	checkscene
	iftrue .PutDayCareManOutside
	clearevent EVENT_DAYCARE_MAN_IN_DAYCARE
	setevent EVENT_DAYCARE_MAN_ON_ROUTE_34
	sjump .CheckMon1

.PutDayCareManOutside:
	setevent EVENT_DAYCARE_MAN_IN_DAYCARE
	clearevent EVENT_DAYCARE_MAN_ON_ROUTE_34
	sjump .CheckMon1

.CheckMon1:
	checkflag ENGINE_DAY_CARE_MAN_HAS_MON
	iffalse .HideMon1
	clearevent EVENT_DAYCARE_MON_1
	sjump .CheckMon2

.HideMon1:
	setevent EVENT_DAYCARE_MON_1
	sjump .CheckMon2

.CheckMon2:
	checkflag ENGINE_DAY_CARE_LADY_HAS_MON
	iffalse .HideMon2
	clearevent EVENT_DAYCARE_MON_2
	endcallback

.HideMon2:
	setevent EVENT_DAYCARE_MON_2
	endcallback

DayCareManScript_Outside:
	faceplayer
	opentext
	special Special_DayCareManOutside
	waitbutton
	closetext
	ifequal $1, .end_fail
	clearflag ENGINE_DAY_CARE_MAN_HAS_EGG
	setevent EVENT_BRED_AN_EGG
	readvar VAR_FACING
	ifequal LEFT, .walk_around_player
	applyonemovement ROUTE34_GRAMPS, slow_step_right
	playsound SFX_ENTER_DOOR
	disappear ROUTE34_GRAMPS
.end_fail
	end

.walk_around_player
	applymovement ROUTE34_GRAMPS, Route34MovementData_DayCareManWalksBackInside_WalkAroundPlayer
	playsound SFX_ENTER_DOOR
	disappear ROUTE34_GRAMPS
	end

DayCareMon1Script:
	opentext
	special Special_DayCareMon1
	endtext

DayCareMon2Script:
	opentext
	special Special_DayCareMon2
	endtext

Route34RichBoyIrvingScript:
	checkevent EVENT_GOT_BIG_NUGGET_FROM_ROUTE_34_LEADER
	iftrue_jumptextfaceplayer .AfterText2
	faceplayer
	opentext
	writetext .QuestionText
	yesorno
	iffalse_jumpopenedtext .RefusedText
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked ROUTE34_RICH_BOY
	loadtrainer RICH_BOY, IRVING
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_RICH_BOY_IRVING
.Beaten:
	opentext
	writetext .AfterText1
	promptbutton
	verbosegiveitem BIG_NUGGET
	iffalse_endtext
	setevent EVENT_GOT_BIG_NUGGET_FROM_ROUTE_34_LEADER
	jumpthisopenedtext

.AfterText2:
	text "There are some"
	line "things that money"
	cont "can't buy."
	done

.QuestionText:
	text "I don't need to"
	line "gamble for Coins."

	para "I'm rich, so I"
	line "bought my #-"
	cont "mon with cash!"

	para "They're strong"
	line "enough that we"
	cont "beat Azalea's Gym!"

	para "Are you ready to"
	line "fight my top-shelf"
	cont "team?"
	done

.RefusedText:
	text "Not so desperate"
	line "for prize money"
	cont "after all?"
	done

.SeenText:
	text "I'm a cut above"
	line "the commoners"
	cont "you beat here!"
	done

.BeatenText:
	text "No! My money"
	line "wasn't enough…"
	done

.AfterText1:
	text "You've clearly"
	line "earned this item."

	para "Sell it and go on"
	line "a shopping spree,"

	para "or keep it as a"
	line "memento of our"
	cont "battle."
	done

TrainerCooltrainerfIrene:
	trainer COOLTRAINERF, IRENE, EVENT_BEAT_COOLTRAINERF_IRENE, CooltrainerfIreneSeenText, CooltrainerfIreneBeatenText, 0, .Script

.Script:
	endifjustbattled
	checkevent EVENT_GOT_POWER_HERB_FROM_KATE
	iftrue_jumptext CooltrainerfIreneAfterText2
	jumpthistext

	text "Irene: My sister"
	line "Kate will get you"
	cont "for this!"
	done

TrainerCooltrainerfJenn:
	trainer COOLTRAINERF, JENN, EVENT_BEAT_COOLTRAINERF_JENN, CooltrainerfJennSeenText, CooltrainerfJennBeatenText, 0, .Script

.Script:
	endifjustbattled
	checkevent EVENT_GOT_POWER_HERB_FROM_KATE
	iftrue_jumptext CooltrainerfJennAfterText2
	jumpthistext

	text "Jenn: Don't get"
	line "cocky! My sister"
	cont "Kate is tough!"
	done

TrainerCooltrainerfKate:
	trainer COOLTRAINERF, KATE, EVENT_BEAT_COOLTRAINERF_KATE, CooltrainerfKateSeenText, CooltrainerfKateBeatenText, 0, .Script

.Script:
	endifjustbattled
	checkevent EVENT_GOT_POWER_HERB_FROM_KATE
	iftrue_jumptext CooltrainerfKateAfterText
	opentext
	writetext CooltrainerfKateOfferPowerHerbText
	promptbutton
	verbosegiveitem POWER_HERB
	iffalse_endtext
	setevent EVENT_GOT_POWER_HERB_FROM_KATE
	jumpthisopenedtext

CooltrainerfKateAfterText:
	text "Kate: I'm sorry we"
	line "jumped you."

	para "We never expected"
	line "anyone to find us"

	para "here. You sure"
	line "startled us."
	done

Route34MovementData_DayCareManWalksBackInside_WalkAroundPlayer:
	slow_step_up
	slow_step_right
	step_end


CooltrainerfIreneSeenText:
	text "Irene: Kyaaah!"
	line "Someone found us!"
	done

CooltrainerfIreneBeatenText:
	text "Irene: Ohhh!"
	line "Too strong!"
	done

CooltrainerfIreneAfterText2:
	text "Irene: Isn't this"
	line "beach great?"

	para "It's our secret"
	line "little getaway!"
	done

CooltrainerfJennSeenText:
	text "Jenn: You can't"
	line "beat Irene and go"
	cont "unpunished!"
	done

CooltrainerfJennBeatenText:
	text "Jenn: So sorry,"
	line "Irene! Sis!"
	done

CooltrainerfJennAfterText2:
	text "Jenn: Sunlight"
	line "makes your body"
	cont "stronger."
	done

CooltrainerfKateSeenText:
	text "Kate: You sure"
	line "were mean to my"
	cont "little sisters!"
	done

CooltrainerfKateBeatenText:
	text "Kate: No! I can't"
	line "believe I lost."
	done

CooltrainerfKateOfferPowerHerbText:
	text "Kate: You're too"
	line "strong. I didn't"
	cont "stand a chance."

	para "Here. You deserve"
	line "this."
	done

Route34SignText:
	text "Route 34"

	para "Goldenrod City -"
	line "Azalea Town"
	done

Route34TrainerTipsText:
	text "Trainer Tips"

	para "Berry trees grow"
	line "new Berries"
	cont "every day."
	done

DayCareSignText:
	text "Day-Care"

	para "Let Us Raise Your"
	line "#mon For You!"
	done


GenericTrainerCamperTodd1:
    generictrainer CAMPER, TODD1, EVENT_BEAT_CAMPER_TODD, CamperTodd1SeenText, CamperTodd1BeatenText

    text "Maybe I should"
    line "camp closer to"
    cont "Goldenrod. It's"
    cont "noisy, but safer."
    done

CamperTodd1SeenText:
    text "I came to enjoy"
    line "nature, but all I"
    cont "hear is loggers!"
    done

CamperTodd1BeatenText:
    text "Defeated amidst"
    line "all this noise!"
    done

GenericTrainerBreederJulie:
    generictrainer BREEDER, JULIE, EVENT_BEAT_BREEDER_JULIE, BreederJulieSeenText, BreederJulieBeatenText

    text "Even if the"
	line "Ilex Forest"
	cont "is cleared, I"
	cont "still have hope"
	cont "for the future."
    done

BreederJulieSeenText:
    text "How are you"
	line "raising your"
	cont "#mon?"
    done

BreederJulieBeatenText:
    text "My #mon seem"
    line "stressed."
    done

GenericTrainerPicnickerErin:
    generictrainer PICNICKER, ERIN1, EVENT_BEAT_PICNICKER_ERIN, PicnickerGina1SeenText, PicnickerGina1BeatenText

    text "I guess I'll go"
    line "shopping instead."
    cont "So much for"
    cont "nature..."
    done

PicnickerGina1SeenText:
    text "I wanted a nice"
	line "picnic in the"
	cont "forest."
	
	para "I'll have to ba-"
	line "ttle you instead!"
    done

PicnickerGina1BeatenText:
    text "I guess I'll go"
    line "shopping instead."
    cont "So much for"
    cont "nature..."
    done

GenericOfficerfMaraScript:
    generictrainer OFFICERF, MARA, EVENT_BEAT_OFFICERF_MARA, OfficerfMaraSeenText, OfficerfMaraBeatenText

    text "Stay out of"
	line "mischief!"
    done

OfficerfMaraSeenText:
    text "Hey! Were you"
	line "poking around in"
	cont "the forest?"
    done

OfficerfMaraBeatenText:
    text "Just forget what"
    line "you saw, OK?"
    done

GenericTrainerPokefanmBrandon:
    generictrainer POKEFANM, BRANDON, EVENT_BEAT_POKEFANM_BRANDON, PokefanmBrandonSeenText, PokefanmBrandonBeatenText

    text "Something fishy is"
    line "going on between"
    cont "here and Azalea."
    done

PokefanmBrandonSeenText:
    text "Whitney's show is"
    line "odd, but these"
    cont "forest noises..."
    done

PokefanmBrandonBeatenText:
    text "Suspicious indeed!"
    done


Route34ShoreFoamScript:
	faceplayer
	opentext
	writetext PearlForShoreFoamText ;;
	waitbutton
	checkitem BIG_PEARL
	iffalse .NoBigPearl
	writetext PearlForShoreFoamQuestionText ;;
	yesorno
	iffalse .NoBigPearl
	takeitem BIG_PEARL
	giveapricorn SHORE_FOAM, 5 ; ez mode
	jumpopenedtext PearlForShoreFoamEndText ;;

.NoBigPearl
	jumpopenedtext NoPearlForShoreFoamText ;;

PearlForShoreFoamText:
	text "I've made an ama-"
	line "zing discovery."
	
	para "The shore foam"
	line "around here is"
	cont "high in aquatic"
	
	para "protein, which"
	line "allows it to be"
	cont "whipped into a"
	
	para "sturdy structure,"
	line "due to the energy"
	cont "imparted on it"
	cont "by the waves."
	
	para "It's just like"
	line "homemade whipped"
	cont "cream!"	
	done

PearlForShoreFoamQuestionText:
	text "I've collected a"
	line "few samples, if"
	cont "you want some."
	
	para "All I ask is a"
	line "Big Pearl."
	done

PearlForShoreFoamEndText:
	text "<PLAYER> got 5"
	line "SHORE FOAM."
	
	para "Science is ever-"
	line "ywhere, if you"
	cont "look closely!"
	done

NoPearlForShoreFoamText:
	text "You can find big"
	line "pearls just by "
	cont "fishing anywhere."
	done
