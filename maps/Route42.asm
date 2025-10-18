Route42_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route42CavernCallback

	def_warp_events
	warp_event  0,  8, ROUTE_42_ECRUTEAK_GATE, 3
	warp_event  0,  9, ROUTE_42_ECRUTEAK_GATE, 4
	warp_event 46, 7, ENTEIS_CAVERN, 1
; entei's cavern 


	def_coord_events


	def_bg_events
;	bg_event  8, 12, BGEVENT_JUMPTEXT, Route42Sign1Text
	bg_event  7,  7, BGEVENT_JUMPTEXT, MtMortarSign1Text
	bg_event 45,  9, BGEVENT_JUMPTEXT, MtMortarSign2Text
	bg_event 54,  8, BGEVENT_JUMPTEXT, Route42Sign2Text
	bg_event 16, 11, BGEVENT_ITEM + MAX_POTION, EVENT_ROUTE_42_HIDDEN_MAX_POTION
;entei's cavern if you have the pumice harp 
	bg_event 46,  7, BGEVENT_READ, PumiceHarpEntrance
	bg_event 26,  5, BGEVENT_READ, MissingMachinePartScript
	bg_event 10,  5, BGEVENT_READ, Route42TimeTravelScript

	def_object_events
	object_event  47,  8, SPRITE_EUSINE, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42EusineScript, EVENT_EUSINE_ROUTE_42
	object_event  26,  10, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route42CharcoalKilnBossText, -1
	object_event  29,  9, SPRITE_FARFETCH_D, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42FarfetchdScript, -1
	object_event  13,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerFisherArnold, -1; husbands that fish together
	object_event  13,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerFisherKyle, -1	;
	object_event  52,   9, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerAromaLadyHeather, -1	;
	object_event  53,   9, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerAromaLadyHolly, -1;
	object_event 10, 12, SPRITE_CAMPER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerCamperDean, -1	;
	object_event  44,  10, SPRITE_CAMPER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerCamperSid, -1 ;

	object_event  27,  8, SPRITE_CHEMISTRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 	PAL_NPC_BROWN, 	OBJECTTYPE_COMMAND, jumptext, ChemistryText, -1
	object_event  28,  8, SPRITE_CHEMISTRY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 	PAL_NPC_RED, 	OBJECTTYPE_COMMAND, jumptext, ChemistryText, -1

	itemball_event  7, 10, ULTRA_BALL, 1, EVENT_ROUTE_42_ULTRA_BALL
	itemball_event 12, 15, HYPER_POTION, 1, EVENT_ROUTE_42_SUPER_POTION
;	tmhmball_event 10, 2, TM_SCALD, EVENT_GOT_TM_SCALD 
	fruittree_event 25, 5, FRUITTREE_ROUTE_42, HOLLOW_ROCK, PAL_NPC_BLUE

	object_const_def
	const ROUTE_42_EUSINE

Route42CavernCallback:
	checkevent EVENT_OPENED_CAVERN
	iffalse .Closed
	changeblock 46, 6, $0F
.Closed:
	endcallback

MissingMachinePartScript:
	checkevent EVENT_GOT_MACHINE_PART
	iftrue_jumptext Route42_FoundMachinePartText
	showemote EMOTE_SHOCK, PLAYER, 30
	opentext
	writetext Route42_MachinePartText
	waitbutton
	verbosegivekeyitem MACHINE_PART
	waitbutton
	writetext Route42_MachinePartText_2
	waitbutton
	closetext
	setevent EVENT_GOT_MACHINE_PART
	end

Route42_FoundMachinePartText:
	text "It's the opening"
	line "where the Desal"
	para "Plant's machine"
	line "part was stashed."
	done

Route42_MachinePartText:
	text "It looks like the"
	line "missing part for"
	cont "the Desal Plant!"
	
	para "It's still in good"
	line "condition."
	
	para "It was removed by"
	line "someone very fa-"
	cont "miliar with it."
	done
	
Route42_MachinePartText_2:
	text "Best keep this"
	line "hidden, in case"
	cont "Chuck changes"
	cont "his mind."
	done

PumiceHarpEntrance:
	checkevent EVENT_OPENED_CAVERN
	iftrue .NoHarp
	opentext
	writetext PumiceHarpEntranceText1
	waitbutton
	checkkeyitem PUMICE_HARP
	iffalse .NoHarp
	writetext PumiceHarpEntranceText2
	yesorno
	iffalse .NoHarp
	closetext
	playsound SFX_SING ; sfx_harp
	waitsfx
	setevent EVENT_OPENED_CAVERN
	playsound SFX_EGG_BOMB ; sfx_rock_slide?
	waitsfx
	changeblock 46, 6, $0F
	turnobject ROUTE_42_EUSINE, LEFT
	showemote EMOTE_SHOCK, ROUTE_42_EUSINE, 30
	opentext
	writetext PumiceHarpEntranceText3
	waitbutton
	closetext
	applyonemovement PLAYER, step_up
	disappear PLAYER 
	warpfacing UP, ENTEIS_CAVERN, 11, 17
.NoHarp:
	closetext
	end

PumiceHarpEntranceText1:
	text "The obsidian wall"
	line "wobbles."

	para "It looks like it"
	line "could shatter!"
	done

PumiceHarpEntranceText2:
	text "The harp in your"
	line "pack resonates - "
	para "Strum the string?"
	done

PumiceHarpEntranceText3:
	text_high
    text " Eusine: "
	next
	text_start
	
	text "It crumbles!"
	line "You must enter"
	cont "the cavern!"
	done

Route42EusineScript:
	checkevent EVENT_FOUGHT_ENTEI
	iftrue .FoughtEntei
	checkevent EVENT_OPENED_CAVERN
	iftrue .GoFightEntei
	checkevent EVENT_ROUTE_42_EUSINE_INTRO
	iftrue .SkipIntro
	faceplayer
	showtext Route42EusineIntroText
	turnobject ROUTE_42_EUSINE, UP	
.SkipIntro:	

	jumpthistext

	text_high
    text " Eusine: "
	next
	text_start

	text "Do do do doooo..."
	line "Re re re ree..."
	
	para "Mi mi mi meee..."
	line "La la la laaaa..."
	
	para "What is the right"
	line "frequency?"
	done
	
.GoFightEntei:
	jumptextfaceplayer EusineSeeEnteiText
	
.FoughtEntei:
	setevent EVENT_EUSINE_ROUTE_42
	jumptextfaceplayer EusineFoughtEnteiText

Route42EusineIntroText:
	text_high
    text " Eusine: "
	next
	text_start

	text "<PLAYER>, do you"
	line "see the markings"
	cont "on the mountain?"
	
	para "Seismic activity"
	line "inside Mt Mortar"
	
	para "is weakening this"
	line "part of the wall."
	
	para "I think I hear"
	line "Entei roaring on"
	cont "the other side!"
	
	para "If you played the"
	line "right frequency,"
	
	para "it may shatter"
	line "the wall!"	
	done

EusineSeeEnteiText:
	text "What's the holdup?"
	line "Entei's in there!"
	done
	
EusineFoughtEnteiText:
	text "You fought Entei?"
	line "What was it like?"
	
	para "..."
	
	para "Magnificent!"
	line "There is beauty"
	cont "in the sublime!"
	done

Route42FarfetchdScript:
	faceplayer
	showcrytext .Text, FARFETCH_D
	end

.Text:
	text "Farfetch'd: Kwaa!"
	done


Route42CharcoalKilnBossText:
	text "<PLAYER> - Have"
	line "you seen <RIVAL>?"
	
	para "I haven't seen"
	line "him in weeks."
	
	para "Our Farfetch'd"
	line "tracked to here."
	
	para "He started an"
	line "apricorn orchard"
	para "to supply"
	line "his distiller..."
	
	para "Where is he now?"
	line "I wish I had been"
	cont "more supportive."

	para "I just want to"
	line "know he's OK."
	done

GenericTrainerFisherKyle:
	generictrainer FISHER, KYLE, EVENT_BEAT_FISHER_KYLE, .SeenText2, .BeatenText2

	text "I've been itching"
	line "to try this new"
	cont "lure out."
	done

.BeatenText2:
	text "Gotta re-cast"
	line "my pole, now."
	done

.SeenText2:
	text "Whoa! You're"
	line "right in my line!"
	done
	
GenericTrainerFisherArnold:
	generictrainer FISHER, ARNOLD, EVENT_BEAT_FISHER_ARNOLD, .SeenText1, .BeatenText1

	text "Mountain lakes"
	line "are the only"
	para "places left in"
	line "Johto to fish,"
	cont "I think."
	done

.BeatenText1:
	text "Now I'm back to"
	line "fishing."
	done

.SeenText1:
	text "Hey, we traveled"
	line "from New Bark"
	cont "to fish here!"
	done

GenericTrainerAromaLadyHeather:
	generictrainer AROMA_LADY, HEATHER, EVENT_BEAT_AROMA_LADY_HEATHER, .SeenText3, .BeatenText3

	text "Our visa to enter"
	line "Western Johto is"
	para "only good for a"
	line "few days."
	
	para "I hope my husband"
	line "catches something"
	cont "worthwhile."
	done

.BeatenText3:
	text "I feel the winds"
	line "of a new beginn-"
	cont "ing blow!"
	done

.SeenText3:
	text "The mountain air"
	line "is so fresh!"
	done
	

GenericTrainerAromaLadyHolly:
	generictrainer AROMA_LADY, HOLLY, EVENT_BEAT_AROMA_LADY_HOLLY, .SeenText4, .BeatenText4

	text "There's been dark"
	line "clouds looming on"
	cont "Mt Silver above"
	cont "New Bark."
	
	para "Somehow, they"
	line "won't let out"
	cont "any rain."
	done

.BeatenText4:
	text "It's so good to"
	line "get some sun."
	done

.SeenText4:
	text "My husband's the"
	line "battler, but sure"
	cont "I'll go for it!"
	done

GenericTrainerCamperDean:
	generictrainer CAMPER, DEAN, EVENT_BEAT_CAMPER_DEAN, .SeenText5, .BeatenText5

	text "The best hiking"
	line "is on Mt. Silver."
	
	para "But Blackthorn"
	line "won't let anyone"
	para "into their water"
	line "district, so I"
	para "have to make do"
	line "with Mt Mortar."
	done

.BeatenText5:
	text "At least I can"
	line "make s'mores any-"
	cont "where I want."
	done

.SeenText5:
	text "I packed my bags"
	line "and now I hear Mt"
	cont "Mortar is all"
	cont "sealed up?"
	done

GenericTrainerCamperSid:
	generictrainer CAMPER, SID, EVENT_BEAT_CAMPER_SID, .SeenText6, .BeatenText6
	
	text "This is better"
	line "camping than in"
	para "National Park, "
	line "at least."
	done
	
.BeatenText6:
	text "Seems like there"
	line "is nowhere to"
	cont "camp anymore."
	done

.SeenText6:
	text "My big brother"
	line "said he went up"
	para "to the drained"
	line "lake of Rage, but"
	para "the officer said"
	line "it's closed?"
	
	para "But I trained for"
	line "an adventure!"
	done

Route42OfficerText:
	text "Sorry, you can't"
	line "come this way."

	para "There's been an"
	line "avalanche on"
	cont "Mt.Mortar."

	para "We're still clear-"
	line "ing the rubble."
	done

Route42Sign1Text:
	text "Route 42"

	para "Ecruteak City -"
	line "Mahogany Town"
	done

MtMortarSign1Text:
	text "Mt.Mortar"

	para "Closed due to"
	line "landslides"
	done

MtMortarSign2Text:
	text "Mt.Mortar"

	para "Closed due to"
	line "landslides"
	done

Route42Sign2Text:
	text "Route 42"

	para "Ecruteak City -"
	line "Mahogany Town"
	done

ChemistryText:
	text "A complicated set"
	line "of beakers,"
	
	para "haphazardly"
	line "assembled by"
	cont "<RIVAL>."
	
	para "Smells good,"
	line "though!"
	done


Route42TimeTravelScript: 
	opentext
	checkevent EVENT_BEAT_ADRINNA_MINE
	iffalse_jumptext Route42NoTimeTravelYetText
	writetext Route42AskToTimeTravelText
	yesorno
	iffalse_jumpopenedtext Route42NoTimeTravelText
	writetext Route42YesTimeTravelText
	waitbutton
	closetext
	special Special_CelebiShrineEvent
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx	
	warp SULFUR_STY,  14, 18
	end

Route42NoTimeTravelYetText:
	text "An impression on"
	line "the mountain,"
	
	para "apparently carved"
	line "with intention."
	
	para "Who could have"
	line "made it?"
	done

Route42AskToTimeTravelText:
	text "It's a petroglyph"
	line "of Celebi!"
	
	para "Call to travel"
	line "back in time?"
	done

Route42NoTimeTravelText:
	text "Some other time."
	done

Route42YesTimeTravelText:
	text "Time to go."
	done
