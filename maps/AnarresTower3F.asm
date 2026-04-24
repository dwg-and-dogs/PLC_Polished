AnarresTower3F_MapScriptHeader:  
	def_scene_scripts


	def_callbacks 


	def_warp_events
	warp_event  7,  3, ANARRES_TOWER_2F, 3


	def_coord_events
	coord_event 4,  4, 0, AnarresTower3FStepRight
	coord_event 5,  4, 0, AnarresTower3FEvent

	def_bg_events


	def_object_events
	object_event  6,  6, SPRITE_HOLLIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AnarresTower3FSilasScript, -1
	object_event  7,  3, SPRITE_TAMMY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AnarresTower3FTammyScript, EVENT_TAMMY_ANARRES_TOWER
	object_event  5,  6, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AnarresTower3FAmosScript, EVENT_BEAT_HOLLIS

	object_const_def
	const ANARRES_TOWER_HOLLIS
	const ANARRES_TOWER_TAMMY
	const ANARRES_TOWER_AMOS

AnarresTower3FStepRight:
	applyonemovement PLAYER, step_right
AnarresTower3FEvent:	
	applyonemovement PLAYER, step_down
	turnobject ANARRES_TOWER_AMOS, UP
	opentext 
	writetext AmosSaysHelloText
	waitbutton
	closetext
	applymovement ANARRES_TOWER_AMOS, AmosWalksAwayMovement
	disappear ANARRES_TOWER_AMOS
	clearevent EVENT_BEAT_HOLLIS
	setevent EVENT_SAW_KLEAVOR
	pause 60
	appear ANARRES_TOWER_TAMMY
	applymovement ANARRES_TOWER_TAMMY, TammyMovesToSilas
	showemote EMOTE_SHOCK, ANARRES_TOWER_HOLLIS, 60
	turnobject ANARRES_TOWER_HOLLIS, LEFT
	opentext
	writetext SilasPastGuards
	waitbutton
	writetext TammyExplains
	waitbutton
	closetext
	applymovement ANARRES_TOWER_HOLLIS, SilasToYou
	turnobject PLAYER, RIGHT
	showtext SilasChallengesText
	setevent EVENT_TAMMY_ANARRES_TOWER
	winlosstext SilasBeatenText, 0
	; START 
	readdifficultymode
	ifequal DIFFICULTY_EASY, .easy
	ifequal DIFFICULTY_HARD, .hard
	loadtrainer HOLLIS, HOLLIS1_NORMAL
	sjump .startbattle
.easy:
	loadtrainer HOLLIS, HOLLIS1_EASY
	sjump .startbattle
.hard:
	loadtrainer HOLLIS, HOLLIS1_HARD
.startbattle:	
	; END
	startbattle
	reloadmapafterbattle
	applyonemovement ANARRES_TOWER_HOLLIS, step_down
	turnobject PLAYER, DOWN
	turnobject ANARRES_TOWER_HOLLIS, LEFT
	opentext
	showtext TammyText2
	turnobject ANARRES_TOWER_TAMMY, DOWN
	pause 5
	showtext TammyText3
	showemote EMOTE_SHOCK, ANARRES_TOWER_HOLLIS, 60
	showtext SilasAbuse
	pause 5
	showtext TammyText4
	turnobject ANARRES_TOWER_HOLLIS, RIGHT
	applyonemovement ANARRES_TOWER_HOLLIS, step_right
	showtext SilasHM
	showtext TammyThanks
	closetext
	applymovement ANARRES_TOWER_TAMMY, TammyWalksOutMovement
	disappear ANARRES_TOWER_TAMMY
	applyonemovement ANARRES_TOWER_HOLLIS, step_left
	applyonemovement ANARRES_TOWER_HOLLIS, step_left
	turnobject ANARRES_TOWER_HOLLIS, UP
	opentext
	writetext SilasCongratulates
	waitbutton
	verbosegivetmhm HM_CUT
	setevent EVENT_GOT_HM01_CUT
	setevent EVENT_BEAT_HOLLIS
	setflag ENGINE_BOULDERBADGE
	clearevent EVENT_TAMMY_HOLLYS_HOLT
	setevent EVENT_BEAT_BUG_CATCHER_WAYNE
	setevent EVENT_BEAT_BUG_CATCHER_KEN
	setevent EVENT_BEAT_BUG_CATCHER_AL
	setevent EVENT_BEAT_BUG_CATCHER_JOSH
	setevent EVENT_BEAT_BUG_CATCHER_DON
	setevent EVENT_BEAT_BUG_CATCHER_BENNY
	setscene $1
	jumpthisopenedtext

	text "You can use that"
	line "HM to clear trees"
	cont "in the forest."
	done

PlayerStepsToSilasMovement:
	step_left
	step_left
	step_down
	step_down
	step_end
	
PlayerStepsDownMovement:
	step_down
	step_end

TammyMovesToSilas:
	step_left
	step_left
	step_left
	step_down
	step_down
	step_down
	turn_head_right
	step_end

SilasPastGuards:
	text_high
    text " Silas: "
	next
	text_start
	text "How'd you two get"
	line "here? I'm done"
	cont "talking to you."
	para "My watch has kept"
	line "us safe so far."
	done

SilasChallengesText:
	text_high
    text " Silas: "
	next
	text_start
	
	text "No one else has"
	line "my experience!"

	para "I'm taking total"
	line "control!"
	
	para "<PLAYER>, I'll"
	line "start with you!"
	done


TammyExplains:
	text_high
    text " Ursula: "
	next
	text_start
	text "Silas, the Pineco"
	line "infestation needs"
	para "more than one"
	line "perspective to"
	cont "restore balance!"
	done


SilasToYou:
	step_up
	turn_head_left
	step_end

SilasBeatenText:
	text "Fine. I'll listen"
	line "for a moment."
	done

	
TammyText2:
	text_high
    text " Ursula: "
	next
	text_start
	text "You've managed"
	line "other conflicts"
	para "well, but this"
	line "is getting out"
	cont "of hand."
	done

TammyText3:
	text_high
    text " Ursula: "
	next
	text_start
	text "The Holt belongs"
	line "to all of us."

	para "My technique lets"
	line "everyone make a"
	cont "contribution."
	done


SilasAbuse:
	text_high
    text " Silas: "
	next
	text_start
	text "But what if"
	line "it's misused?"
	done
	
TammyText4:
	text_high
    text " Ursula: "
	next
	text_start
	text "We can review at"
	line "annual rituals!"
	done


SilasHM:
	text_high
    text " Silas: "
	next
	text_start
	text "I've been selfish"
	line "with my power."

	para "Hopefully, we can"
	line "balance the Holt"
	cont "with your help."
	
	para "Please teach"
	line "others your"
	cont "invention."
	done


TammyThanks:
	text_high
    text " Ursula: "
	next
	text_start
	text "Thank you! I'll"
	line "begin at once."
	done

TammyWalksOutMovement:
	step_up
	step_up
	step_up
	step_right
	step_right
	step_right
	step_end

SilasCongratulates:
	text_high
    text " Silas: "
	next
	text_start
	text "Congratulations"
	line "on your victory."

	para "It's been a long"
	line "time since I've"
	cont "faced defeat."

	para "Perhaps it's"
	line "time I learned"
	para "from others,"
	line "not just teach."

	para "I grant you the"
	line "Growth Badge."
	
	para "It symbolizes how"
	line "a tree grows, one"
	para "ring over another"
	line "towards the sky."

	para "Each ring has its"
	line "day in the sun…"
	para "Then it's time to"
	line "support the tree."

	para "Also, please,"
	line "accept this HM."
	
	para "Any #mon that"
	line "could learn it"
	para "can use it in"
	line "the field."
	done


AnarresTowerTammyScript:
	faceplayer
	jumpthisopenedtext

	text "Thanks for"
	line "your help!"
	done

TextSilasAfterBattle:
	text "You've opened"
	line "my eyes."

	para "I'd been too"
	line "selfish, holding"
	para "on to my power."
	line "I hope I haven't"
	para "lost the forest"
	line "for future"
	cont "generations."
	done

AnarresTower3FTammyScript:
	faceplayer
	opentext
	writetext .TammyAfterBattleText 
	waitbutton
	closetext
	end

.TammyAfterBattleText:
	text "Thanks for"
	line "your help!"
	done

AnarresTower3FAmosScript: 
	end

AmosWalksAwayMovement:
	step_left
	step_up
	step_up
	step_up
	step_right
	step_right
	step_right
	step_end

AmosSaysHelloText:
	text_high
    text " Amos: "
	next
	text_start
	text "A flunkie?"
	para "..."
	para "No, you're not one"
	line "of his guards."

	para "I'm Amos. I've"
	line "been trying to"
	para "get Silas to"
	line "take the Emperor's"
	cont "threat seriously."
	
	para "If the emperor"
	line "succeeds, Johto"
	para "will lose its "
	line "connections to"
	para "the outside world"
	line "and our history!"

	para "But Silas hides"
	line "up here, like a"
	para "cocoon, afraid of"
	line "a changing world."

	para "..."

	para "I won't give up"
	line "on him. I hope"
	cont "his ideas evolve."
	done


AnarresTower3FSilasScript:
	faceplayer
	opentext
	writetext TextSilasAfterBattle
	waitbutton
	closetext
	end

KleavorText:
	text "Kleavor:"
	line "Klava Klava!"
	end
