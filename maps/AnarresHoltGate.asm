AnarresHoltGate_MapScriptHeader:
	def_scene_scripts
	scene_script AnarresHoltGateHollisScene

	def_callbacks

	def_warp_events
	warp_event 7, 2, ANARRES_TOWN, 1
	warp_event 7, 3, ANARRES_TOWN, 2
	warp_event 0, 2, HOLLYS_HOLT, 1
	warp_event 0, 3, HOLLYS_HOLT, 2

	def_coord_events


	def_bg_events

	def_object_events
	object_event 3, 2, SPRITE_TAMMY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AnarresHoltGateTammyScript, EVENT_ANARRES_HOLT_GATE
	object_event 4, 2, SPRITE_HOLLIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AnarresHoltGateHollisScript, EVENT_ANARRES_HOLT_GATE
	object_event 3, 6, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AnarresHoltGateNPCScript, -1

	object_const_def
	const ANARRESHOLTGATE_TAMMY
	const ANARRESHOLTGATE_HOLLIS

AnarresHoltGateHollisScene:
	opentext
	writetext TammyDialogue1
	waitbutton
	writetext HollisDialogue1
	waitbutton
	writetext TammyDialogue2
	waitbutton
	writetext HollisDialogue2
	waitbutton
	closetext
	applymovement ANARRESHOLTGATE_HOLLIS, HollisExitMovement
	playsound SFX_EXIT_BUILDING
	waitsfx
	disappear ANARRESHOLTGATE_HOLLIS
	applymovement ANARRESHOLTGATE_TAMMY, TammyExitMovement
	playsound SFX_EXIT_BUILDING
	waitsfx
	disappear ANARRESHOLTGATE_TAMMY
	setevent EVENT_ANARRES_HOLT_GATE
	setscene $1
	end

HollisTurnDown:
	turn_head_down
	step_end

HollisExitMovement:
	step_right
	step_right
	step_end

TammyDialogue1:
	text_high
    text " Ursula: "
	next
	text_start
	text "The pineco are an"
	line "infestation! The"
	para "predators from"
	line "the north aren't"
	para "here, for some"
	line "reason. The Holt"
	cont "is unbalanced!"
	done

HollisDialogue1:
	text_high
    text " Hollis: "
	next
	text_start
	text "Of course I see."
	line "The forest is"
	para "too sensitive!"
	line "We can't afford"
	para "any mistakes."
	line "That means your"
	para "invention, by"
	line "the way."
	done


TammyDialogue2:
	text_high
    text " Ursula: "
	next
	text_start
	text "The mistake is"
	line "not adapting!"

	para "You're human,"
	line "like everyone"
	cont "else."
	done


HollisDialogue2:
	text_high
    text " Hollis: "
	next
	text_start
	text "Such disrespect!"
	done

AnarresHoltGateTammyScript:
	end

AnarresHoltGateHollisScript:
	end


TammyExitMovement:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end
	
	
AnarresHoltGateNPCScript:
    faceplayer
    opentext
    checkevent EVENT_GOT_MYSTIC_WATER_ANARRES
    iftrue .AlreadyGotItem
    writetext AnarresHoltGateNPCText
    promptbutton
    verbosegiveitem MYSTIC_WATER
    iffalse .BagFull
    setevent EVENT_GOT_MYSTIC_WATER_ANARRES
    writetext AnarresHoltGateNPCAfterText
    waitbutton
    closetext
    end

.AlreadyGotItem:
    writetext AnarresHoltGateNPCRepeatText
    waitbutton
    closetext
    end

.BagFull:
    writetext AnarresHoltGateNPCBagFullText
    waitbutton
    closetext
    end

AnarresHoltGateNPCText:
    text "The Hisuians had"
	line "such mystical"
	cont "#mon!"
    para "I saw a wooden"
	line "Voltorb!"
    para "Oh! Speaking of"
    line "mystical things,"
    cont "take this!"
    done

AnarresHoltGateNPCAfterText:
    text "That Mystic Water"
    line "will power up"
    cont "Water-type moves."
    done

AnarresHoltGateNPCRepeatText:
    text "I hope that Mystic"
    line "Water helps you"
    cont "on your journey!"
    done

AnarresHoltGateNPCBagFullText:
    text "Oh! Your Bag is"
    line "full."
    done
