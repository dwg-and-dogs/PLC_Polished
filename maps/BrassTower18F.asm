BrassTower18F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 3,  3, BRASS_TOWER_17F, 3
	warp_event 6, 11, BRASS_TOWER_14F, 2
	warp_event 12, 15, BRASS_TOWER_12F, 1

	def_coord_events


	def_bg_events
	bg_event 2, 12, BGEVENT_READ, BrassTowerSwitchScript18F  ;  cf warehouse entrance basement key .... 


	def_object_events
	pokemon_event   3, 6, GENGAR, -1, -1, PAL_NPC_RED, BrassTowerGuardText, EVENT_BRASS_TOWER_RIGHT_GUARD
	pokemon_event  8,  12, MISDREAVUS, -1, -1, PAL_NPC_RED, BrassTowerGuardText, EVENT_BRASS_TOWER_LEFT_GUARD	
	object_event  12, 11, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, JOLTEON, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BrassTower18FJolteonScript, EVENT_BRASS_TOWER_JOLTEON
	object_event  8, 1, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerElderYoshi, -1 ; virtuous
	itemball_event 12, 7, FULL_RESTORE, 1, EVENT_BRASS_TOWER_18F_ITEM

	object_const_def
	const BRASS_TOWER_18F_RIGHT_GENGAR_1
	const BRASS_TOWER_18F_LEFT_MISDREAVUS_1
	const BRASS_TOWER_JOLTEON


BrassTowerSwitchScript18F:
	checkevent EVENT_BRASS_TOWER_RIGHT_GUARD
	iftrue .AskSwitchToLeft
	opentext
	writetext SwitchSpiritsTextLeft
	yesorno
	iffalse_jumpopenedtext NotSwitchingText
	setevent EVENT_BRASS_TOWER_RIGHT_GUARD
	disappear BRASS_TOWER_18F_RIGHT_GENGAR_1
	clearevent EVENT_BRASS_TOWER_LEFT_GUARD
	appear BRASS_TOWER_18F_LEFT_MISDREAVUS_1
	writetext SpiritsChangedText
	waitbutton
	closetext
	end

.AskSwitchToLeft:
	opentext
	writetext SwitchSpiritsTextRight
	yesorno
	iffalse_jumpopenedtext NotSwitchingText
	setevent EVENT_BRASS_TOWER_LEFT_GUARD
	disappear BRASS_TOWER_18F_LEFT_MISDREAVUS_1
	clearevent EVENT_BRASS_TOWER_RIGHT_GUARD
	appear BRASS_TOWER_18F_RIGHT_GENGAR_1
	writetext SpiritsChangedText
	waitbutton
	closetext
	end

GenericTrainerElderYoshi:
    generictrainer ELDER, YOSHI_SAGE, EVENT_BEAT_ELDER_YOSHI, YoshiSeenText, YoshiBeatenText

YoshiBeatenText:
	text "But who does he"
	line "follow?"	
	done
	
YoshiSeenText:
    text "We follow Urgaust"
	line "as a model of"
	cont "virtue!"
    done

BrassTower18FJolteonScript:
	showtext JolteonGuardianText
	cry JOLTEON
	pause 15
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon JOLTEON, 50
	startbattle
	disappear BRASS_TOWER_JOLTEON
	setevent EVENT_BRASS_TOWER_JOLTEON
	reloadmapafterbattle
	end
	
JolteonGuardianText:
	text "It's a guardian"
	line "Jolteon!"
	done
