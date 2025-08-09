BrassTower16F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 1, 15, BRASS_TOWER_15F, 1
	warp_event 15, 15, BRASS_TOWER_15F, 2
	warp_event 4, 15, BRASS_TOWER_13F, 4
	warp_event 14, 0, BRASS_TOWER_17F, 1
	warp_event 14, 6, BRASS_TOWER_17F, 2

	def_coord_events



	def_bg_events
	bg_event 12, 0, BGEVENT_READ, BrassTowerSwitchScript16F 
	bg_event 10, 12, BGEVENT_READ, BrassTowerSwitchScript16F

	def_object_events
	pokemon_event   9, 2, GENGAR, -1, -1, PAL_NPC_RED, BrassTowerGuardText, EVENT_BRASS_TOWER_RIGHT_GUARD
	pokemon_event  8,  8, MISDREAVUS, -1, -1, PAL_NPC_RED, BrassTowerGuardText, EVENT_BRASS_TOWER_LEFT_GUARD	
	object_event  2, 12, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerElderTadao, -1 ; loyal
	
	object_const_def
	const BRASS_TOWER_16F_RIGHT_GENGAR_1
	const BRASS_TOWER_16F_LEFT_MISDREAVUS_1


BrassTowerSwitchScript16F:
	checkevent EVENT_BRASS_TOWER_RIGHT_GUARD
	iftrue .AskSwitchToLeft
	opentext
	writetext SwitchSpiritsTextLeft
	yesorno
	iffalse_jumpopenedtext NotSwitchingText
	setevent EVENT_BRASS_TOWER_RIGHT_GUARD
	disappear BRASS_TOWER_16F_RIGHT_GENGAR_1
	clearevent EVENT_BRASS_TOWER_LEFT_GUARD
	appear BRASS_TOWER_16F_LEFT_MISDREAVUS_1
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
	disappear BRASS_TOWER_16F_LEFT_MISDREAVUS_1
	clearevent EVENT_BRASS_TOWER_RIGHT_GUARD
	appear BRASS_TOWER_16F_RIGHT_GENGAR_1
	writetext SpiritsChangedText
	waitbutton
	closetext
	end


GenericTrainerElderTadao:
    generictrainer ELDER, TADAO, EVENT_BEAT_ELDER_TADAO, TadaoSeenText, TadaoBeatenText


TadaoBeatenText:
	text "Should I stay"
	line "true to my oath"
	cont "or my values?"
	done
	
TadaoSeenText:
    text "Fall in line,"
	line "show your"
	cont "allegiance!"
    done

