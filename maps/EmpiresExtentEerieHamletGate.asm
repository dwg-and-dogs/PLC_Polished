EmpiresExtentEerieHamletGate_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 2, 0, EMPIRES_EXTENT, 2
	warp_event 3, 0, EMPIRES_EXTENT, 3
	warp_event 2, 7, EERIE_HAMLET, 2
	warp_event 3, 7, EERIE_HAMLET, 2

	def_coord_events


	def_bg_events


	def_object_events
	object_event 3, 4, SPRITE_VETERAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, HamletGateNPCScript, -1



HamletGateNPCScript:
	checkevent EVENT_BEAT_ADRINNA_MINE
	iftrue_jumptextfaceplayer GateNPC_MineText
	checkevent EVENT_BEAT_AMOS
	iftrue_jumptextfaceplayer GateNPC_AdrinnaText
	jumptextfaceplayer HamletGateText
	
HamletGateText:
	text "I heard a ruckus"
	line "up by the Tarn."
	
	para "Then all those"
	line "brigaders rushed"
	cont "back to the mine."
	done
	
GateNPC_AdrinnaText:
	text "I sure hope Amos"
	line "knows what he's"
	cont "doing."
	done

GateNPC_MineText:
	text "Lots of folks are"
	line "trying to get out"
	cont "of Johto, with"

	para "all the Consul"
	line "is doing."

	para "Wonder if they'll"
	line "be able to start"
	cont "something new."
	done
	