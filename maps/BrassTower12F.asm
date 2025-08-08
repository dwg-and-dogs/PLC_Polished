BrassTower12F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  5,  1, BRASS_TOWER_1F, 1
	warp_event 10,  1, BRASS_TOWER_19F, 1
	warp_event  1,  13, BRASS_TOWER_13F, 1
	warp_event 15,  15, BRASS_TOWER_13F, 2

	def_coord_events



	def_bg_events
	bg_event 10, 12, BGEVENT_READ, BrassTowerSwitchScript  ;  cf warehouse entrance basement key .... 


	def_object_events
	object_event  5,  8, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerElderNoboru, -1
	object_event  12, 7, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerElderTakashi, -1
	itemball_event 9, 13, ENERGY_ROOT, 	3,	EVENT_BRASS_TOWER_ITEM_1
	pokemon_event  12, 11, GENGAR, -1, -1, PAL_NPC_PURPLE, 	BrassTowerGuardText, EVENT_BRASS_TOWER_RIGHT_GUARD
	pokemon_event   9, 11, MISDREAVUS, -1, -1, PAL_NPC_PURPLE, BrassTowerGuardText, EVENT_BRASS_TOWER_LEFT_GUARD




GenericTrainerElderNoboru:
    generictrainer ELDER, NOBORU, EVENT_BEAT_ELDER_NOBORU, NoboruSeenText, NoboruBeatenText

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

TakashiBeatenText:
    text "I should have"
	line "revered you..."
    done
	
TakashiSeenText:
    text "The Consul must"
	line "be revered!"
	done
