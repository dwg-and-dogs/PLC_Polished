MagnetTrainTunnel_MapScriptHeader: ;	def_scene_scripts
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event  0,  4, ROUTE_KAJO, 5 
	warp_event  0,  5, ROUTE_KAJO, 6
	warp_event  6,  3, SECOND_CLASS_CABIN, 1 
	warp_event  9,  3, FIRST_CLASS_CABIN, 1


	def_coord_events



	def_bg_events



	def_object_events
	object_event  15,  5, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, ROTOM, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MagnetTunnelRotom, EVENT_MAGNET_TUNNEL_ROTOM

	object_const_def
	const MAGNET_TUNNEL_ROTOM

MagnetTunnelRotom:
	faceplayer
	cry ROTOM
	pause 60
	loadwildmon ROTOM, 30
	startbattle
	disappear MAGNET_TUNNEL_ROTOM
	setevent EVENT_MAGNET_TUNNEL_ROTOM
	reloadmapafterbattle
	end
