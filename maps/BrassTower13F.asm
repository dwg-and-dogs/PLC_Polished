BrassTower13F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 3, 1, BRASS_TOWER_12F, 3
	warp_event 11, 1, BRASS_TOWER_12F, 4
	warp_event 2, 15, BRASS_TOWER_15F, 3
	warp_event 10,15, BRASS_TOWER_16F, 3

	def_coord_events



	def_bg_events
	bg_event 2, 8, BGEVENT_READ, BrassTowerSwitchScript13F


	def_object_events
	pokemon_event  3,  5, GENGAR, -1, -1, PAL_NPC_PURPLE, BrassTowerGuardText, EVENT_BRASS_TOWER_RIGHT_GUARD
	pokemon_event  11, 12, GENGAR, -1, -1, PAL_NPC_PURPLE, BrassTowerGuardText, EVENT_BRASS_TOWER_RIGHT_GUARD
	pokemon_event  10,  5, MISDREAVUS, -1, -1, PAL_NPC_RED, BrassTowerGuardText, EVENT_BRASS_TOWER_LEFT_GUARD
	pokemon_event  2, 12, MISDREAVUS, -1, -1, PAL_NPC_RED, BrassTowerGuardText, EVENT_BRASS_TOWER_LEFT_GUARD
	object_event  10,  8, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, UNOWN, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BrassTower13FUnownScript, EVENT_BRASS_TOWER_13F_UNOWN

	object_event  1, 6, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerElderIsamu, -1 ; courage
	object_event  12,6, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerElderKaito, -1 ; sea, soar


	object_const_def
	const BRASS_TOWER_13F_RIGHT_GENGAR_1
	const BRASS_TOWER_13F_RIGHT_GENGAR_2
	const BRASS_TOWER_13F_LEFT_MISDREAVUS_1
	const BRASS_TOWER_13F_LEFT_MISDREAVUS_2
	const BRASS_TOWER_13F_UNOWN

BrassTowerGuardText:
	text "A spirit blocks"
	line "the path."
	done

BrassTowerSwitchScript13F:
	checkevent EVENT_BRASS_TOWER_RIGHT_GUARD
	iftrue .AskSwitchToLeft
	opentext
	writetext SwitchSpiritsTextLeft
	yesorno
	iffalse_jumpopenedtext NotSwitchingText
	setevent EVENT_BRASS_TOWER_RIGHT_GUARD
	disappear BRASS_TOWER_13F_RIGHT_GENGAR_1
	disappear BRASS_TOWER_13F_RIGHT_GENGAR_2
	clearevent EVENT_BRASS_TOWER_LEFT_GUARD
	appear BRASS_TOWER_13F_LEFT_MISDREAVUS_1
	appear BRASS_TOWER_13F_LEFT_MISDREAVUS_2	
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
	disappear BRASS_TOWER_13F_LEFT_MISDREAVUS_1
	disappear BRASS_TOWER_13F_LEFT_MISDREAVUS_2
	clearevent EVENT_BRASS_TOWER_RIGHT_GUARD
	appear BRASS_TOWER_13F_RIGHT_GENGAR_1
	appear BRASS_TOWER_13F_RIGHT_GENGAR_2
	writetext SpiritsChangedText
	waitbutton
	closetext
	end


BrassTower13FUnownScript:
	opentext
	writetext BrassTowerUnownText
	waitbutton
	cry UNOWN
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon NOCTOWL, 50
	startbattle
	disappear BRASS_TOWER_13F_UNOWN
	setevent EVENT_BRASS_TOWER_13F_UNOWN
	reloadmapafterbattle
	end
	
BrassTowerUnownText:
	text "Noctowl's aura"
	line "guards the tower!"
	done

GenericTrainerElderIsamu:
    generictrainer ELDER, ISAMU, EVENT_BEAT_ELDER_ISAMU, IsamuSeenText, IsamuBeatenText

IsamuBeatenText:
    text "Bravery is shown"
	line "only when afraid."
    done
	
IsamuSeenText:
	text "I fight with"
	line "courage!"
	done
	

GenericTrainerElderKaito:
    generictrainer ELDER, KAITO, EVENT_BEAT_ELDER_KAITO, KaitoSeenText, KaitoBeatenText

KaitoBeatenText:
    text "Where I end,"
	line "another begins!"
    done
	
KaitoSeenText:
	text "We will belong to"
	line "the everlasting!"
	done
	
	