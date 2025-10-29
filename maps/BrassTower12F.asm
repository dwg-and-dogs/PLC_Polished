BrassTower12F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  9,  1, BRASS_TOWER_1F, 1
	warp_event  6,  1, BRASS_TOWER_19F, 1
	warp_event  3,  3, BRASS_TOWER_13F, 1
	warp_event 13,  3, BRASS_TOWER_13F, 2

	def_coord_events



	def_bg_events
	bg_event  8, 4, BGEVENT_READ, BrassTowerSwitchScript12F 


	def_object_events
	pokemon_event  10,  7, GENGAR, -1, -1, PAL_NPC_PURPLE, 	BrassTowerGuardText, EVENT_BRASS_TOWER_RIGHT_GUARD ; starts clear, then gets set
	pokemon_event   5,  7, MISDREAVUS, -1, -1, PAL_NPC_PURPLE, BrassTowerGuardText, EVENT_BRASS_TOWER_LEFT_GUARD ; starts clear, then gets set
	object_event  2,  6, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerElderNoboru, -1
	object_event  13, 6, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerElderTakashi, -1
	itemball_event 7, 7, ENERGY_ROOT, 	3,	EVENT_BRASS_TOWER_ITEM_1

	object_const_def
	const BRASS_TOWER_12F_RIGHT_GENGAR
	const BRASS_TOWER_12F_LEFT_MISDREAVUS


BrassTowerSwitchScript12F:
	checkevent EVENT_BRASS_TOWER_RIGHT_GUARD
	iftrue .AskSwitchToLeft
	opentext
	writetext SwitchSpiritsTextLeft
	yesorno
	iffalse_jumpopenedtext NotSwitchingText
	setevent EVENT_BRASS_TOWER_RIGHT_GUARD
	disappear BRASS_TOWER_12F_RIGHT_GENGAR
	clearevent EVENT_BRASS_TOWER_LEFT_GUARD
	appear BRASS_TOWER_12F_LEFT_MISDREAVUS
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
	disappear BRASS_TOWER_12F_LEFT_MISDREAVUS
	clearevent EVENT_BRASS_TOWER_RIGHT_GUARD
	appear BRASS_TOWER_12F_RIGHT_GENGAR
	writetext SpiritsChangedText
	waitbutton
	closetext
	end

SwitchSpiritsTextRight:
	text "Call up the LEFT"
	line "spirits?"
	done

SwitchSpiritsTextLeft:
	text "Call up the RIGHT"
	line "spirits?"
	done

SwitchSpiritsText:
	text "Change spirits?"
	done

NotSwitchingText:
	text "Unchanged."
	done

DebugTextDisappearGengarText:
	text "disappear gengar"
	done

DebugTextAppearMisdreavusText:
	text "appear misdreavus"
	done

SpiritsChangedText:
	text "Sprits changed!"
	done

;BrassTowerGuardText:
;	text "A spirit blocks"
;	line "the path."
;	done

GenericTrainerElderNoboru:
    generictrainer ELDER, NOBORU, EVENT_BEAT_ELDER_NOBORU, NoboruSeenText, NoboruBeatenText

	text "This tower will"
	line "stand forever!"
	done

NoboruBeatenText:
    text "I fell to the"
	line "ground..."
    done
	
NoboruSeenText:
	text "This tower will"
	line "pierce the sky!"
	done

GenericTrainerElderTakashi:
    generictrainer ELDER, TAKASHI, EVENT_BEAT_ELDER_TAKASHI, TakashiSeenText, TakashiBeatenText

	text "The Consul will"
	line "not be stopped."
	done

TakashiBeatenText:
    text "I should have"
	line "revered you..."
    done
	
TakashiSeenText:
    text "The Consul must"
	line "be revered!"
	done
