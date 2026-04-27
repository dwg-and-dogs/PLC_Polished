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
	text "Without water,"
	line "there is no life!"
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
	text "Don't tell them"
	line "we're here!"
	done

SageNicoBeatenText:
	text "Shh!"
	done

GenericTrainerMediumMartha:
	generictrainer MEDIUM, MARTHA, EVENT_BEAT_MEDIUM_MARTHA, MediumMarthaSeenText, MediumMarthaBeatenText

	text "Ursula developed"
	line "a method to hit"
	cont "trees to knock"
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
	; START 
	readdifficultymode
	ifequal DIFFICULTY_EASY, .easy
	ifequal DIFFICULTY_HARD, .hard
	loadtrainer TAMMY, TAMMY_NORMAL
	sjump .startbattle
.easy:
	loadtrainer TAMMY, TAMMY_EASY
	sjump .startbattle
.hard:
	loadtrainer TAMMY, TAMMY_HARD
.startbattle:	
	; END
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
	line "to shake Pineco"
	para "off, without"
	line "hurting the tree."

	para "Silas says it's"
	line "unnatural."

	
	para "I want to help,"
	line "but he just sits"
	cont "in his tower."
	
	para "If we both go,"
	line "they can't stop"
	cont "us all."
	
	para "Let's go to the"
	line "Tower! See you"
	cont "up there!"
	done

TammySeenText:
	text_high
    text " Ursula: "
	next
	text_start
	text "We're about to"
	line "confront Silas."
	
	para "Why are you here?"
	
	para "..."
	
	para "I see. You're also"
	line "trying to get his"
	cont "HM. Let's see how"
	cont "strong you are!"

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
	line "Tower!"
	done
