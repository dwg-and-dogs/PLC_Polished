BrassTower2F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES, BrassTower2FCallback

	def_warp_events
	warp_event  8,  5, BRASS_TOWER_19F, 2 ; DONE
	warp_event  6,  7, BRASS_TOWER_2F_WARP, 1
	warp_event  4,  5, BRASS_TOWER_3F, 1


	def_coord_events



	def_bg_events



	def_object_events



BrassTower2FCallback:
	checkevent EVENT_BEAT_BOBESH_TOWER
	iffalse .Done
	changeblock 4, 4, $24
.Done:
	endcallback	
