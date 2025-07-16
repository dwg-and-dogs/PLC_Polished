WhirlIslandB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	;waterfall

	def_warp_events
	warp_event 9, 5, WHIRL_ISLAND_1F, 1
	warp_event 7, 11, WHIRL_ISLAND_1F, 2
	warp_event 29, 17, WHIRL_ISLAND_1F, 3
	warp_event 37, 21, WHIRL_ISLAND_1F, 4


	warp_event 25, 21, WHIRL_ISLAND_B3F, 1 ; TO THE ITEM , GOOD 
	warp_event 3, 19, WHIRL_ISLAND_B3F, 2 ; INACCESSIBLE UNTIL THE END 
	warp_event 19, 31, WHIRL_ISLAND_B2F, 1 ; 


	def_coord_events


	def_bg_events


	def_object_events
	object_event 18, 20, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, WhirlIslandB1FKurtText, EVENT_GOT_WHIRLPOOL_WHIRL_ISLANDS ;
	pokemon_event 19, 20, GIRAFARIG, -1, -1, PAL_NPC_BROWN, GirafarigText, -1
; kurt, who tells you that there's a whirlpool around this
	itemball_event  5,  4, FULL_RESTORE, 1, EVENT_WHIRL_ISLAND_B2F_FULL_RESTORE
	itemball_event 26,  3, MAX_REVIVE, 1, EVENT_WHIRL_ISLAND_B2F_MAX_REVIVE
	itemball_event 11, 30, MAX_ELIXIR, 1, EVENT_WHIRL_ISLAND_B2F_MAX_ELIXIR
	tmhmball_event  7, 15, TM_REST, EVENT_WHIRL_ISLANDS_TM_REST

	
	
WhirlIslandB1FKurtText:
	text "The current is"
	line "driven by the"
	cont "underwater spring"
	cont "in the cave."
	
	para "I wonder if we"
	line "can block it,"
	cont "somehow?"
	
	para "Lugia is down"
	line "there somewhere,"
	cont "we must catch it!"
	done

GirafarigText:
	text "Rafar!"
	done
