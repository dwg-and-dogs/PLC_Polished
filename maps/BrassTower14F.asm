BrassTower14F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 2, 1, BRASS_TOWER_17F, 4
	warp_event 0, 15, BRASS_TOWER_18F, 2
	warp_event 10, 5, BRASS_TOWER_12F, 1
	
	def_coord_events


	def_bg_events
	bg_event 0, 8, BGEVENT_READ, BrassTowerSwitchScript  ;  cf warehouse entrance basement key .... 

	def_object_events
	object_event 14, 4, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerElderHiroshi, -1 ; generous
	object_event  10,  8, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, FLAREON, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BrassTower14FFlareonScript, EVENT_BRASS_TOWER_FLAREON


	object_const_def
	const BRASS_TOWER_FLAREON

GenericTrainerElderHiroshi:
    generictrainer ELDER, HIROSHI, EVENT_BEAT_ELDER_HIROSHI, HiroshiSeenText, HiroshiBeatenText

HiroshiBeatenText:
	text "What goes around"
	line "will come around."
	done
	
HiroshiSeenText:
    text "Give yourself to"
	line "the Consul!"
    done


BrassTower14FFlareonScript:
	showtext FlareonGuardianText
	cry FLAREON
	pause 15
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon FLAREON, 50
	startbattle
	disappear BRASS_TOWER_FLAREON
	setevent EVENT_BRASS_TOWER_FLAREON
	reloadmapafterbattle
	showtext FlareonGoneText
	end
	
FlareonGuardianText:
	text "It's a guardian"
	line "Flareon!"
	done
