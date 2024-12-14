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
	bg_event  5,  7, BGEVENT_READ, StadiumAheadSign

	def_object_events
	object_event 13, 14, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, StadiumHotSpringsReceptionistScript, EVENT_TAUGHT_COUNTER
	object_event 11, 34, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader3, EVENT_BEAT_BOBESH_STADIUM
	object_event  8, 22, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader4, EVENT_BEAT_BOBESH_STADIUM
	object_event 11, 22, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader5, EVENT_BEAT_BOBESH_STADIUM

	itemball_event 16, 30, ROCKY_HELMET, 1, EVENT_SERENE_SPRINGS_ROCKY_HELMET ;ok
	itemball_event 3, 23, ELIXIR, 1, EVENT_SERENE_SPRINGS_ELIXIR ;ok


	object_const_def
	const STADIUMHOTSPRINGS_RECEPTIONIST


GenericTrainerBrigader3:
	generictrainer BRIGADER, 3, EVENT_BEAT_ROCKET_GRUNTM_3, Brigader3SeenText, Brigader3BeatenText

	text "I think I'd be a"
	line "pretty strong"
	cont "fighter in the"
	cont "stadium."
	done

Brigader3SeenText:
	text "Stop right there!"
	line "No one is allowed"
	cont "into the stadium"
	cont "at the moment!"
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
	cont "this area. I"
	cont "wonder if there's"
	cont "any under the"
	cont "stadium."
	done

Brigader5SeenText:
	text "I'll shock you if"
	line "you come any"
	cont "closer!"
	done

Brigader5BeatenText:
	text "Lost my potential."
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
	text "Oh, hello there!"
	line "Welcome to our"
	cont "glorious hot"
	cont "springs!"

	para "I'm the towel"
	line "manager. It's"
	cont "such a fun job!"
	done

ReceptionistOfferText:
	text "Say, you look like"
	line "someone who enjoys"
	cont "a good challenge!"

	para "How would you like"
	line "to learn the art"
	cont "of towel counting?"

	para "It's thrilling!"

	para "Every day is an"
	line "adventure in"
	cont "arithmetic, "
	cont "making sure I"
	cont "track down all"
	cont "the towels the"
	cont "brigaders used."

	para "I can teach your"
	line "#MON to Counter"
	cont "just like I do!"

	para "All I ask is a"
	line "Silver Leaf. It's"
	cont "a bargain!"
	done

ReceptionistAskTeachText:
	text "So, what do you"
	line "say? Want to join"
	cont "the exciting world"
	cont "of towel counting?"
	done

ReceptionistTaughtText:
	text "Yes! Yes! You've"
	line "made a wise"
	cont "choice!"

	para "Your #mon now"
	line "knows Counter!"

	para "Use it wisely,"
	line "count carefully,"
	cont "and maybe you can"
	cont "take over my j-"

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
	jumptext StadiumAheadSignText

StadiumAheadSignText:
	text "Stadium Grounds"
	done
