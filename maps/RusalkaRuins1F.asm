RusalkaRuins1F_MapScriptHeader: 

	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  30, 10, RUSALKA_RUINS_B1F, 2
	warp_event  6, 8, RUSALKA_RUINS_B1F, 3
	warp_event  3, 11, RUSALKA_RUINS_CAPTAIN, 1
;cabins
	warp_event 15,  8, RUSALKA_RUINS_LIT_CABINS, 1
	warp_event 23,  8, RUSALKA_RUINS_LIT_CABINS, 2
	warp_event 27,  8, RUSALKA_RUINS_LIT_CABINS, 3
	warp_event 15, 15, RUSALKA_RUINS_LIT_CABINS, 4
	warp_event 23, 15, RUSALKA_RUINS_LIT_CABINS, 5
	warp_event 27, 15, RUSALKA_RUINS_LIT_CABINS, 6
;dark cabins
	warp_event 19,  8, RUSALKA_RUINS_DARK_CABINS, 1
	warp_event 19, 15, RUSALKA_RUINS_DARK_CABINS, 2
;holes 
	warp_event 6, 15, RUSALKA_RUINS_B1F, 4 ; hole 
	warp_event 7, 15, RUSALKA_RUINS_B1F, 4; hole 
	warp_event 24, 5, RUSALKA_RUINS_B1F, 5; hole 
	warp_event 25, 5, RUSALKA_RUINS_B1F, 5; hole 

	def_coord_events



	def_bg_events



	def_object_events

	object_event 30, 13, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, CaptainsLog05, -1	
	object_event 25, 17, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, CaptainsLog06, -1	
	object_event 18, 16, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, CaptainsLog07, -1	
	object_event  6, 13, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, CaptainsLog09, -1	

	object_const_def


CaptainLog05:
	text "Captain's Log 5"
	line "May 15"
	
	para "These cursed wh-"
	line "islands are tough"
	cont "to navigate."
	
	para "Though we can just"
	line "see the mountains of"
	cont "our destination,"
	
	para "We can't get any"
	line "closer."

	para "Another mail"
	line "batch of Eleanor,"
	para "Kangaskhan stamps"
	line "this time."
	
	para "That woman claims"
	line "that the islands"
	cont "have precious"
	cont "metals inside."

CaptainLog06:
	text "Captain's Log 6"
	line "May 20"
	
	para "Sailing in"
	line "circles getting"
	cont "nowhere."
	
	para "Sent a large"
	line "exploratory crew"
	cont "into the caves"
	cont "to look for"
	cont "metals two days"
	cont "back with the"
	cont "chief's wife."
	
	para "If they come"
	line "back with any,"
	cont "I'll be twice"
	cont "the hero!"
	
	para "I am the one"
	line "worthy of the"
	cont "gift stone!"
	
	para "I will take it"
	line "as mine when we"
	cont "land."
	done


CaptainLog07:
	text "Captain's Log 7"
	line "June 03"
	
	para "Still stuck in"
	line "the endlessly"
	cont "turning whirl"
	cont "islands."
	
	para "No mail for 2"
	line "weeks - how is"
	cont "it possible,"
	cont "when we are so"
	cont "close?"
	done

CaptainLog09:
	text "Captain's Log 9"
	line "June 06"
	
	para "Took heavy"
	line "losses getting"
	cont "through the"
	cont "whirlpools and"
	cont "now crash inside"
	cont "this cave."
	
	para "If I'd had the"
	line "full crew we"
	cont "might have"
	cont "done it."
	
	para "No one has seen"
	line "that woman since"
	cont "we crashed."
	done
