SereneSprings_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9, 35, GAULDENROD_SERENE_SPRINGS_GATE, 3
	warp_event 10, 35, GAULDENROD_SERENE_SPRINGS_GATE, 4
	warp_event  7,  1, STADIUM_GROUNDS, 3
	warp_event  8,  1, STADIUM_GROUNDS, 4
	warp_event  19, 16, SERENE_SPRINGS_CAVERN, 1 ; warp back

	def_coord_events

	def_bg_events
	bg_event  5,  7, BGEVENT_JUMPTEXT, StadiumAheadSign
	bg_event  12, 34, BGEVENT_JUMPTEXT, SereneSpringsSign
	bg_event  18, 33, BGEVENT_ITEM + PP_UP, EVENT_SPRINGS_HIDDEN_1
	bg_event 16, 15, BGEVENT_READ, SereneSpringsSlugmaDigScript

	def_object_events
	; road blocks 
	object_event 13,  4, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, StadiumHotSpringsReceptionistScript, -1
	object_event  9, 7, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader3, EVENT_BEAT_BOBESH_STADIUM
	object_event  8, 22, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader4, EVENT_BEAT_BOBESH_STADIUM
	object_event 11, 22, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader5, EVENT_BEAT_BOBESH_STADIUM
	object_event 9, 31, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, BrigaderScript, EVENT_GAULDENROD_TUNNELERS
	object_event 10,31, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, BrigaderScript, EVENT_GAULDENROD_TUNNELERS
	
	itemball_event 16, 30, ROCKY_HELMET, 1, EVENT_SERENE_SPRINGS_ROCKY_HELMET ;ok
	itemball_event 2, 29, ELIXIR, 1, EVENT_SERENE_SPRINGS_ELIXIR ;ok
	

BrigaderScript:
	jumptextfaceplayer GauldenrodBrigaderText
	
GauldenrodBrigaderText:
	text "Stay out of"
	line "trouble!"
	
	para "especially avoid"
	line "the troublemakers"
	cont "who gather in the"
	cont "tunnels."
	done

GenericTrainerBrigader3:
	generictrainer BRIGADER, 3, EVENT_BEAT_ROCKET_GRUNTM_3, Brigader3SeenText, Brigader3BeatenText

	text "I think I'd be a"
	line "pretty strong"
	para "fighter in the"
	line "stadium."
	done

Brigader3SeenText:
	text "Stop right there!"
	line "No one is allowed"
	para "into the Stadium"
	line "at the moment!"
	done

Brigader3BeatenText:
	text "You'd make a good"
	line "candidate at the"
	cont "arena."
	done

GenericTrainerBrigader4:
	generictrainer BRIGADER, 4, EVENT_BEAT_ROCKET_GRUNTM_4, Brigader4SeenText, Brigader4BeatenText

	text "My boss will be"
	line "so mad at me."
	done

Brigader4SeenText:
	text "The Stadium isn't"
	line "open! Turn back!"
	done

Brigader4BeatenText:
	text "I wish I could"
	line "stop you."
	done

GenericTrainerBrigader5:
	generictrainer BRIGADER, 5, EVENT_BEAT_ROCKET_GRUNTM_5, Brigader5SeenText, Brigader5BeatenText

	text "There's a lot of"
	line "hot springs in"
	cont "this area."
	done

Brigader5SeenText:
	text "I'll shock you if"
	line "you come any"
	cont "closer!"
	done

Brigader5BeatenText:
	text "I lost my"
	line "potential."
	done


StadiumHotSpringsReceptionistScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_COUNTER_INTRO
	iftrue .AlreadyIntroduced
	writetext ReceptionistIntroText
	waitbutton
	setevent EVENT_LISTENED_TO_COUNTER_INTRO
.AlreadyIntroduced
	writetext ReceptionistOfferText
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoPayment
	writetext ReceptionistAskTeachText
	yesorno
	iffalse .Refused
	setval COUNTER
	writetext ClearText
	special Special_MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Refused

.TeachMove
	takeitem SILVER_LEAF
	writetext ReceptionistTaughtText
	waitbutton
	closetext
	end

.NoPayment
	writetext ReceptionistNoPaymentText
	waitbutton
	closetext
	end

.Refused
	writetext ReceptionistRefusedText
	waitbutton
	closetext
	end

ReceptionistIntroText:
	text "Welcome to the"
	line "Serene Springs!"

	para "I'm the towel"
	line "manager."
	done

ReceptionistOfferText:
	text "Say, you look like"
	line "someone who enjoys"
	cont "a good challenge!"

	para "Would you like to"
	line "learn the art of"
	cont "counting towels?"

	para "It's thrilling!"

	para "Every day is an"
	line "adventure,"
	
	para "making sure I"
	line "track down all"
	para "the towels the"
	line "Brigaders used."

	para "I can teach your"
	line "#mon to Counter"
	cont "just like I do!"

	para "All I ask is a"
	line "Silver Leaf."
	done

ReceptionistAskTeachText:
	text "So, what do you"
	line "say?"
	done

ReceptionistTaughtText:
	text "You made a wise"
	line "choice!"

	para "Use it wisely,"
	line "count carefully,"
	para "and maybe you can"
	line "take over my j-"

	para "I mean, enjoy the"
	line "new skill!"
	done

ReceptionistNoPaymentText:
	text "Oh, you don't"
	line "have a Silver"
	cont "Leaf?"
	done

ReceptionistRefusedText:
	text "You- you don't"
	line "want to learn the"
	cont "joy of counting?"

	para "Fine. FINE!"

	para "I'll just keep"
	line "doing this myself."

	para "Forever."

	para "And ever."
	done

StadiumAheadSign:
	text "Stadium Grounds"
	line "Ahead"
	
	para "Brought to you by"
	line "Emperor Vesper!"
	done

SereneSpringsSign:
	text "Serene Springs"
	
	para "Take a dip and"
	line "let your worries"
	cont "melt away"
	done

SereneSpringsSlugmaDigScript:
	opentext
	writetext SS_DigScript_Text1
	waitbutton
	closetext
	
	unowntypeface
	showtext WeirdSoftSpotText_Unown
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	opentext

	checkmove DIG
	iffalse_jumptext SS_DigScript_Text2
	writetext SS_DigScript_Text3
	waitbutton
	yesorno
	iffalse_jumptext SS_DigScript_Text2
	writethistext 
		text "Who wouldn't?"
		done
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp SERENE_SPRINGS_CAVERN, 10, 10
	end

SS_DigScript_Text1:
	text "It's a soft spot"
	line "in the wall."
	
	para "A #mon with"
	line "Dig could easily"
	cont "break through."
	
	para "A petroglyph"
	line "on the wall says:"
	done

WeirdSoftSpotText_Unown:
	text "The slag shell"
	line "feeds the springs"
	done

SS_DigScript_Text2:
	text "There's a thick"
	line "sulfur stench!"
	done

SS_DigScript_Text3:
	text "Dig down below?"
	done

