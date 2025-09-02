MistyBasin_MapScriptHeader:
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  17, 15, ANARRES_TOWN, 8
	warp_event  13, 9, MISTY_BASIN_B1F, 1

	def_coord_events


	def_bg_events
	bg_event 15, 13, BGEVENT_ITEM + FRESH_WATER, EVENT_MISTY_BASIN_FRESH_WATER 

	def_object_events
	object_event  4, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSageChow, EVENT_BEAT_TAMMY 
	object_event  5,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSageNico, EVENT_BEAT_TAMMY
	object_event 13,  3, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerMediumMartha, EVENT_BEAT_TAMMY
	object_event 14,  2, SPRITE_TAMMY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TammyScript, EVENT_BEAT_TAMMY
	object_event 14, 13, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MistyBasonMatronScript, -1 


	object_const_def
	const MISTY_BASIN_CHOW
	const MISTY_BASIN_NICO
	const MISTY_BASIN_MARTHA
	const MISTY_BASIN_TAMMY

MistyBasonMatronScript:
	checkevent EVENT_GOT_WATER_PULSE
	iftrue_jumptextfaceplayer MatronYawnText
	faceplayer
	opentext
	writetext MistyBasinGiveWaterPulse
	promptbutton
	verbosegivetmhm TM_WATER_PULSE
	iffalse_endtext
	setevent EVENT_GOT_WATER_PULSE
	jumpthisopenedtext


MatronYawnText:
	text "A slowpoke yawn"
	line "causes rain. Ten"
	para "elders ago,"
	line "there was a"
	para "drought, and it"
	line "broke once we"
	para "revered the"
	line "simple act of a"
	cont "Slowpoke yawn."
	done

MistyBasinGiveWaterPulse:
	text "Water is life!"
	line "Disrupt the water"
	para "and you take it"
	line "out of balance."
	
	para "Take this so you"
	line "don't forget."
	done

GenericTrainerSageChow:
	generictrainer SAGE, CHOW, EVENT_BEAT_SAGE_CHOW, SageChowSeenText, SageChowBeatenText

	text "The Elder hoards"
	line "the HM Cut for"
	para "himself. It's"
	line "not right!"
	done

SageChowSeenText:
	text "Why are you"
	line "interrupting our"
	cont "meeting?"
	done

SageChowBeatenText:
	text "We're trying to"
	line "save the forest."
	done

GenericTrainerSageNico:
	generictrainer SAGE, NICO, EVENT_BEAT_SAGE_NICO, SageNicoSeenText, SageNicoBeatenText

	text "We're going to"
	line "confront the"
	cont "Elder."
	done

SageNicoSeenText:
	text "Don't tell"
	line "anyone we're"
	cont "here!"
	done

SageNicoBeatenText:
	text "Deflated."
	done

GenericTrainerMediumMartha:
	generictrainer MEDIUM, MARTHA, EVENT_BEAT_MEDIUM_MARTHA, MediumMarthaSeenText, MediumMarthaBeatenText

	text "Ursula developed"
	line "a method of"
	para "hitting the"
	line "trees to knock"
	cont "off Pineco."
	done

MediumMarthaSeenText:
	text "We'll fight from"
	line "the shadows if"
	cont "we have to!"
	done

MediumMarthaBeatenText:
	text "Whose side are"
	line "you on?"
	done

TammyScript:
	faceplayer
	showtext TammySeenText
	winlosstext TammyBeatenText, 0
	loadtrainer TAMMY, 1 
	startbattle
	reloadmapafterbattle
	opentext
	setevent EVENT_BEAT_TAMMY
	writetext TammyAfterBattleText
	waitbutton
	closetext
	disappear MISTY_BASIN_CHOW
	disappear MISTY_BASIN_NICO
	applymovement MISTY_BASIN_MARTHA, MarthaMovement
	disappear MISTY_BASIN_MARTHA
	opentext
	writetext TammySeeYaText
	waitbutton
	closetext
	applymovement MISTY_BASIN_TAMMY, TammyMovementBasin
	disappear MISTY_BASIN_TAMMY
	end

TammyAfterBattleText:
	text_high
    text " Ursula: "
	next
	text_start
	text "I invented a way"
	line "to shake pineco"
	para "off, without"
	line "hurting the"
	para "tree. Hollis"
	line "says it's"
	cont "unnatural."
	
	para "I want to help,"
	line "but he just"
	para "sits on top of"
	line "the tower. Since"
	para "you want the HM"
	line "as well, can you"
	cont "help me?"
	done

TammySeenText:
	text_high
    text " Ursula: "
	next
	text_start
	text "We're organized"
	line "to confront the"
	cont "Elder. Oh?"
	para "You're also"
	line "trying to get"
	para "the HM? Let's"
	line "see if you're"
	cont "strong enough."
	done


TammyBeatenText:
	text "You've proven"
	line "yourself as a"
	cont "strong trainer."
	done

MarthaMovement:
	step_down
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
	
TammyMovementBasin:
	step_left
	step_down
	step_down
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

TammySeeYaText:	
	text_high
    text " Ursula: "
	next
	text_start
	text "See you at the"
	line "tower!"
	done
