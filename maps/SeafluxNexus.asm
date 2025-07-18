SeafluxNexus_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 3, 9, SHELTERED_SHORES, 1 ; 1
	warp_event 29, 9, SHELTERED_SHORES, 2 ; 2
	warp_event 15, 25, SHELTERED_SHORES, 3 ; 3
	warp_event 29, 25, SHELTERED_SHORES, 4 ; 4
;HOLES
	warp_event 2, 3, SEAFLUX_NEXUS, 6 ; 5
	warp_event 2, 23, SEAFLUX_NEXUS, 5 ; 6
	warp_event 12, 17, SEAFLUX_NEXUS, 8 ; 7 
	warp_event 22, 21, SEAFLUX_NEXUS, 7	; 8 
;TO B1F
	warp_event 29, 3, SEAFLUX_NEXUS_B1F, 1 ; 9 
;AFTER 
	warp_event 9, 19, SEAFLUX_NEXUS_B1F, 2 ; 10 

	
	def_coord_events



	def_bg_events
	bg_event 24, 25, BGEVENT_ITEM + CALCIUM, EVENT_NEXUS_HIDDEN_CALCIUM
	bg_event  3, 25, BGEVENT_ITEM + PROTEIN, EVENT_NEXUS_HIDDEN_PROTEIN
	bg_event  2,  5, BGEVENT_ITEM + ZINC, EVENT_NEXUS_HIDDEN_ZINC


	def_object_events
	object_event 10, 21, NOMAD_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NexusNomadScript, EVENT_NOMAD_NEXUS 


NexusNomadScript:
	faceplayer
	showtext NexusNomadText
	setevent EVENT_NOMAD_NEXUS
	clearevent EVENT_NOMAD_ISLANDS_HOUSE
	closetext
	end
	
NexusNomadText:
	text "I snuck out here"
	line "because I thought"
	cont "we could persist."
	
	para "If just a few of"
	line "us kept the trad-"
	cont "itions going, "
	
	para "maybe we would"
	line "get back one day."
	
	para "But my friends"
	line "gave up. I can't"
	para "keep up all by"
	line "myself..."
	
	para "I need to head"
	line "home soon."

	para "It'll really"
	line "surprise my mom."
	done
	