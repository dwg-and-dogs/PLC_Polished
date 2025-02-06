SeafluxNexusB1F_MapScriptHeader:
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_STONETABLE, NexusB1FBoulders

	def_warp_events
	warp_event 23, 5, SEAFLUX_NEXUS, 9 ; stairs up, the first one you take 
	warp_event 9, 19, SEAFLUX_NEXUS, 10 ; accessible after waterfall 
	warp_event 26, 26, SEAFLUX_NEXUS_B3F, 1 ; secret passageway to the lugia waterfall 
	warp_event 3, 13, SEAFLUX_NEXUS_B2F, 2  ; to the top of the waterfall 
	warp_event 14, 4, SEAFLUX_NEXUS_B2F, 3
;HOLES 
	warp_event 4, 9, SEAFLUX_NEXUS_B2F, 3 ; hole drop 
	warp_event 8, 13, SEAFLUX_NEXUS_B2F, 3 ; hole drop 



	def_coord_events


	def_bg_events


	def_object_events
	strengthboulder_event 16, 11, EVENT_NEXUS_B1F_BOULDER_1
	strengthboulder_event 10, 3,  EVENT_NEXUS_B1F_BOULDER_2
	itemball_event 23,  9, ESCAPE_ROPE, 1, EVENT_NEXUSB1F_ESCAPE_ROPE
	itemball_event 12, 25, HYPER_POTION, 1, EVENT_NEXUSB1F_HYPER_POTION


	object_const_def
	const NEXUSB1F_BOULDER1
	const NEXUSB1F_BOULDER2

NexusB1FBoulders:
	usestonetable .BoulderTable
	endcallback

.BoulderTable:
	stonetable 6, NEXUSB1F_BOULDER1, .Disappear1
	stonetable 5, NEXUSB1F_BOULDER2, .Disappear2
	db -1 ; end
	
.Disappear1:
	disappear NEXUSB1F_BOULDER1
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	
	jumpthistext

	text "The boulder fell"
	line "through!"
	done

	
.Disappear2:
	disappear NEXUSB1F_BOULDER2
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	
	jumpthistext

	text "The boulder fell"
	line "through!"
	done
