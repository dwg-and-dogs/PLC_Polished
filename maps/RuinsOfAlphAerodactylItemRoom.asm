RuinsOfAlphAerodactylItemRoom_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 3
	warp_event  4,  9, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 3


	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  5,  1, BGEVENT_JUMPTEXT, RuinsofAlphStatueText

	def_object_events
	itemball_event  2,  6, ODD_SOUVENIR, 1, EVENT_PICKED_UP_RARE_BONE_FROM_AERODACTYL_ITEM_ROOM
	itemball_event  5,  6, PROTECTOR, 1, EVENT_PICKED_UP_ENERGY_ROOT_FROM_AERODACTYL_ITEM_ROOM
	tmhmball_event  2,  4, TM_SLUDGE_BOMB, EVENT_PICKED_UP_REVIVAL_HERB_FROM_AERODACTYL_ITEM_ROOM
	tmhmball_event  5,  4, TM_PSYCHIC, EVENT_PICKED_UP_SOOTHE_BELL_FROM_AERODACTYL_ITEM_ROOM
