SereneSpringsCavern_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 11,  7,  SERENE_SPRINGS, 5


	def_coord_events


	def_bg_events


	def_object_events
	object_event 10, 12, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, MAGCARGO, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, SereneSpringsCavernScript, EVENT_FOUGHT_MAGCARGO_VARIANT


	object_const_def
	const SPRINGS_CAVERN_MAGCARGO

SereneSpringsCavernScript:
	cry MAGCARGO
	loadwildmon MAGCARGO, OTHER_FORM, 25
	startbattle
	disappear SPRINGS_CAVERN_MAGCARGO
	reloadmapafterbattle
	end

