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
	object_event  6,  6, SPRITE_HOLLIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AnarresTower3FHollisScript, -1
	object_event  7,  3, SPRITE_TAMMY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AnarresTower3FTammyScript, EVENT_BEAT_TAMMY
	object_event  5,  6, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AnarresTower3FAmosScript, EVENT_BEAT_HOLLIS
	pokemon_event  14, 19, KLEAVOR, -1, -1, PAL_NPC_RED, KleavorText, EVENT_BEAT_SANDRA

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
	clearevent EVENT_BEAT_HOLLIS ; this flag randomly gets set somehow. This is a workaround, i think 
	setscene $1
	setevent EVENT_SAW_KLEAVOR
	pause 60
	appear ANARRES_TOWER_TAMMY
	applymovement ANARRES_TOWER_TAMMY, TammyMovesToHollis
	showemote EMOTE_SHOCK, ANARRES_TOWER_HOLLIS, 60
	turnobject ANARRES_TOWER_HOLLIS, LEFT
	opentext
	writetext HollisPastGuards
	waitbutton
	showemote EMOTE_SAD, ANARRES_TOWER_TAMMY, 60
	writetext TammyExplains
	waitbutton
	closetext
	applymovement ANARRES_TOWER_HOLLIS, HollisToYou
	turnobject PLAYER, RIGHT
	showtext HollisChallengesText
	winlosstext HollisBeatenText, 0
	loadtrainer HOLLIS, 1 ; WILL THIS FIND?
	startbattle
	reloadmapafterbattle ; is tammy still around? 
	opentext
	showemote EMOTE_HEART, ANARRES_TOWER_TAMMY, 60
	applyonemovement ANARRES_TOWER_HOLLIS, step_down
	turnobject PLAYER, DOWN
	turnobject ANARRES_TOWER_HOLLIS, LEFT
	showtext TammyText2
;	waitbutton
	showemote EMOTE_QUESTION, ANARRES_TOWER_HOLLIS, 60
;	showtext HollisHmm
;	waitbutton
	turnobject ANARRES_TOWER_TAMMY, DOWN
	pause 5
	showemote EMOTE_HAPPY, ANARRES_TOWER_TAMMY, 60
	showtext TammyText3
;	waitbutton
	showemote EMOTE_SHOCK, ANARRES_TOWER_HOLLIS, 60
	showtext HollisAbuse
	pause 5
	showtext TammyText4
	turnobject ANARRES_TOWER_HOLLIS, RIGHT
	applyonemovement ANARRES_TOWER_HOLLIS, step_right
	showtext HollisHM
	showemote EMOTE_HAPPY, ANARRES_TOWER_TAMMY, 60
	showtext TammyThanks
	closetext
	applymovement ANARRES_TOWER_TAMMY, TammyWalksOutMovement
	disappear ANARRES_TOWER_TAMMY
	applyonemovement ANARRES_TOWER_HOLLIS, step_left
	applyonemovement ANARRES_TOWER_HOLLIS, step_left
	turnobject ANARRES_TOWER_HOLLIS, UP
	opentext
	writetext HollisCongratulates
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

	text "You can use"
	line "that HM to clear"
	cont "trees in the"
	cont "forest."
	done

PlayerStepsToHollisMovement:
	step_left
	step_left
	step_down
	step_down
	step_end
	
PlayerStepsDownMovement:
	step_down
	step_end

TammyMovesToHollis:
	step_left
	step_left
	step_left
	step_down
	step_down
	step_down
	turn_head_right
	step_end

HollisPastGuards:
	text_high
    text " Hollis: "
	next
	text_start
	text "How'd you two get"
	line "here? We're done"
	cont "talking."
	para "My watch has kept"
	line "us safe so far."
	done

HollisChallengesText:
	text_high
    text " Hollis: "
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
	text "Listen! The Pine-"
	line "co infestation"
	para "requires more"
	line "than one perspe-"
	cont "ctive to restore"
	cont "balance!"
	done


HollisToYou:
	step_up
	turn_head_left
	step_end

HollisBeatenText:
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


;HollisHmm:
;	text_high
;    text " HOllis: "
;	next
;	text_start
;	text "HOLLIS: I..."
;	line "I'm listening."
;	done

TammyText3:
	text_high
    text " Ursula: "
	next
	text_start
	text "The forest binds"
	line "us all."

	para "My technique lets"
	line "everyone be a"
	cont "guardian."
	done


HollisAbuse:
	text_high
    text " Hollis: "
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
	text "We will review"
	line "at yearly"
	para "rituals that you"
	line "could lead."
	done


HollisHM:
	text_high
    text " Hollis: "
	next
	text_start
	text "I've been selfish"
	line "with my power."

	para "Hopefully, we can"
	line "balance the Holt"
	cont "with your help."
	
	para "Please, teach"
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

HollisCongratulates:
	text_high
    text " Hollis: "
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
	line "Growth badge."
	
	para "It symbolizes how"
	line "a tree grows, one"
	para "ring over another"
	line "towards the sky."

	para "Each ring has its"
	line "day in the sun… "
	para "but then it's time"
	line "to support the"
	cont "trunk."

	para "Also, please,"
	line "accept this HM."
	done


AnarresTowerTammyScript:
	faceplayer
	jumpthisopenedtext

	text "Thanks for"
	line "your help!"
	done

TextHollisAfterBattle:
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

AnarresTower3FAmosScript: ; shouldn't be able to talk to him. 
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

	para "Oh, you're not--"
	line "Never mind."

	para "I'm Amos. I've"
	line "been trying to"
	para "get Hollis to"
	line "take the Consul's"
	cont "threat seriously."

	para "But he's stuck in"
	line "his tower like a"
	para "cocoon, afraid of"
	line "a changing world."

	para "..."

	para "I won't give up"
	line "on him. I hope"
	cont "his ideas evolve."
	done


AnarresTower3FHollisScript:
	faceplayer
	opentext
	writetext TextHollisAfterBattle
	waitbutton
	closetext
	end

KleavorText:
	text "Kleavor:"
	line "Klava Klava!"
	end
