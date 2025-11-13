SereneSprings_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9, 35, GAULDENROD_SERENE_SPRINGS_GATE, 3
	warp_event 10, 35, GAULDENROD_SERENE_SPRINGS_GATE, 4
	warp_event  7,  1, STADIUM_GROUNDS, 3
	warp_event  8,  1, STADIUM_GROUNDS, 4

	def_coord_events

	def_bg_events
	bg_event  5,  7, BGEVENT_JUMPTEXT, StadiumAheadSign
	bg_event  12, 34, BGEVENT_JUMPTEXT, SereneSpringsSign
	bg_event  18, 33, BGEVENT_ITEM + PP_UP, EVENT_SPRINGS_HIDDEN_1

	def_object_events
	; road blocks 
	object_event 13, 14, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, StadiumHotSpringsReceptionistScript, -1
	object_event  9, 7, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader3, EVENT_BEAT_BOBESH_STADIUM
	object_event  8, 22, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader4, EVENT_BEAT_BOBESH_STADIUM
	object_event 11, 22, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader5, EVENT_BEAT_BOBESH_STADIUM
	object_event 9, 31, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BrigaderScript, EVENT_GAULDENROD_TUNNELERS
	object_event 10,31, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BrigaderScript, EVENT_GAULDENROD_TUNNELERS
	
	itemball_event 16, 30, ROCKY_HELMET, 1, EVENT_SERENE_SPRINGS_ROCKY_HELMET ;ok
	itemball_event 2, 29, ELIXIR, 1, EVENT_SERENE_SPRINGS_ELIXIR ;ok
	

BrigaderScript:
	jumptextfaceplayer GauldenrodBrigaderText
	
GauldenrodBrigaderText:
	text "Stay out of"
	line "trouble."
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
	para "into the stadium"
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
	text "The stadium isn't"
	line "open! Turn back!"
	done

Brigader4BeatenText:
	text "I wish I could"
	line "stop you…"
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
	line "adventure in"
	cont "arithmetic,"
	
	para "making sure I"
	line "track down all"
	para "the towels the"
	line "brigaders used."

	para "I can teach your"
	line "#mon to Counter"
	cont "just like I do!"

	para "All I ask is a"
	line "Silver Leaf."
	done

ReceptionistAskTeachText:
	text "So, what do you"
	line "say? Want to join"
	para "the exciting world"
	line "of towel counting?"
	done

ReceptionistTaughtText:
	text "You made a wise"
	line "choice!"

	para "Use it wisely,"
	line "count carefully,"
	para "and maybe you can"
	line "take over my j-"

	para "I mean, enjoy your"
	line "new skill!"
	done

ReceptionistNoPaymentText:
	text "Oh... you don't"
	line "have a Silver"
	cont "Leaf?"

	para "That's... that's"
	line "fine. I'll just"
	cont "keep counting."

	para "One, two, three..."

	para "WHERE DID THEY ALL"
	line "GO?!"
	done

ReceptionistRefusedText:
	text "You... you don't"
	line "want to learn the"
	cont "joy of counting?"

	para "Fine. FINE!"

	para "I'll just keep"
	line "doing this myself."

	para "Forever."

	para "And ever."

	para "...and ever."
	done

StadiumAheadSign:
	text "Stadium Grounds"
	line "Ahead"
	
	para "Brought to you by"
	line "Consul Urgaust!"
	done

SereneSpringsSign:
	text "Serene Springs"
	
	para "Take a dip and"
	line "let your worries"
	cont "melt away"
	done
