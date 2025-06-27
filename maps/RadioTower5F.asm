RadioTower5F_MapScriptHeader: 
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 12, 0, RADIO_TOWER_4F, 1
	warp_event 17, 6, GOLDENROD_MAGNET_TRAIN_STATION, 3

	def_coord_events


	def_bg_events


	def_object_events
    object_event  9,  2, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtRadioTower5FScript, EVENT_RADIO_TOWER_KURT2 ; should be disappeared
    object_event 11,  7, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhitneyScriptRadioTower5F, EVENT_BEAT_WHITNEY


	object_const_def
    const RADIOTOWER_KURT
    const RADIOTOWER_WHITNEY


WhitneyScriptRadioTower5F:
	checkevent EVENT_BEAT_WHITNEY
	iftrue_jumptextfaceplayer WhitneyAfterBattleText
    faceplayer
    opentext
    writetext WhitneyIntroText
    promptbutton
	closetext
    appear RADIOTOWER_KURT
    applymovement RADIOTOWER_KURT, KurtEnterMovement
	opentext
    writetext KurtConfrontationText
    promptbutton
    writetext WhitneyResponseText
	promptbutton
    winlosstext WhitneyBeatenText, 0
    loadtrainer WHITNEY, 1
    startbattle
    reloadmapafterbattle
	opentext
	writetext WhitneyAttractText
	waitbutton
	verbosegivetmhm TM_ATTRACT
	waitbutton
	closetext
    applymovement RADIOTOWER_WHITNEY, WhitneyMoveAsideMovement
	turnobject RADIOTOWER_KURT, DOWN
	turnobject PLAYER, UP
	opentext
    writetext KurtFinalText
    waitbutton
    closetext
	playmusic MUSIC_HEAL
    special HealParty
	special SaveMusic	
	playmusic MUSIC_NONE	
	special RestoreMusic
	setevent EVENT_BEAT_WHITNEY
	clearevent EVENT_WHITNEY_GYM
	setflag ENGINE_PLAINBADGE
	setevent EVENT_RADIO_TOWER_KURT2
    end

WhitneyIntroText:
	text_high
    text " Whitney: "
	next
	text_start
	text "Oh? Are you the"
	line "one who cut off"
	cont "my show?"

	para "Jealous of my"
	line "popularity?"
	
    para "I started as a"
    line "picnicker. I got"
    para "stomped because"
    line "my cute #mon"
    para "weren't taken"
    line "seriously."
	
    para "Now, I'm an"
    line "inspiration!"
    done


KurtConfrontationText:
	text_high
    text " Kurt: "
	next
	text_start
    text "You used to make"
	line "people feel"
	cont "heard."
	
	para "Now, yours is the"
	line "only voice you"
	cont "want to hear."
    done

WhitneyResponseText:
	text_high
    text " Whitney: "
	next
	text_start
    text "People tune in."

   	para "Do you know why"
	line "no one comes to"
	cont "the ceremonies?"
	
    para "They're boring."
	line "Pure stasis."

	para "Does anything"
	line "ever happen?"
		
	para "People want to"
	line "see me, stomping"
	cont "their enemies!"
   	done


WhitneyBeatenText:
    text "I'm flattened…"
    line "So this is what"
    cont "it feels like."
	
    para "I lost all those"
	line "relationships be-"
	cont "cause I didn't"
	para "try to see the"
	line "good in anyone"
	cont "else."
    done

	
WhitneyAttractText:
	text_high
    text " Whitney: "
	next
	text_start
	text "<PLAYER>, please,"
	line "take this badge"
	cont "and TM."
	
	para "You reminded me"
	line "that I should"
	cont "uplift others."
	done

	
WhitneyAfterBattleText:
	text_high
    text " Whitney: "
	next
	text_start
	text "Maybe it isn't"
	line "too late to"
	cont "re-make my gym."
	done

KurtFinalText:
	text_high
    text " Kurt: "
	next
	text_start
    text "<PLAYER>, let's go."

    para "Take that ladder,"
	line "and then follow"
	cont "the tracks."
	
	para "We need to get"
	line "to Ecruteak."
	
	para "I'll heal your"
	line "party."
    done


KurtEnterMovement:
	step_down
	step_down
	step_down
	step_down
	step_right
    step_end

WhitneyMoveAsideMovement:
    step_right
	step_right
	step_up
    turn_head_down
    step_end

KurtRadioTower5FScript:
	faceplayer
	opentext
	writetext KurtFinalText
	promptbutton
	closetext
	end
