BrassTower3F_MapScriptHeader:
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES, BrassTower3FCallback

	def_warp_events
	warp_event 8, 5, BRASS_TOWER_2F, 3
	warp_event 6, 7, BRASS_TOWER_3F_WARP, 1
	warp_event 4, 5, BRASS_TOWER_4F, 1


	def_coord_events



	def_bg_events



	def_object_events




BrassTower3FCallback:
	checkevent EVENT_BEAT_KENSEY_TOWER
	iffalse .Done
	changeblock 4, 4, $24
.Done:
	endcallback	

