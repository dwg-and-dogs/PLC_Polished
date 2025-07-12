CapitalCullGate_MapScriptHeader: 

	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 0,  2, CATTLE_CULL_38, 1 
	warp_event 0,  3, CATTLE_CULL_38, 2 
	warp_event 7,  2, WESTERN_CAPITAL, 7 
	warp_event 7,  3, WESTERN_CAPITAL, 8 

	def_coord_events



	def_bg_events



	def_object_events
	object_event 3, 4, SPRITE_NOMAD_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CapitalCullNomadFNPCScript, -1


	object_const_def


CapitalCullNomadFNPCScript:
	jumptextfaceplayer CapitalCullGateNPCText

CapitalCullGateNPCText:
	text "We roamed free"
	line "from sea to"
	cont "shore. Now,"
	para "we're 'free' to"
	line "make #balls"
	cont "for them."
	done
	