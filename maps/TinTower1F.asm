TinTower1F_MapScriptHeader:
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES, TinTowerStairsCallback

	def_warp_events
	warp_event  7, 15, BELLCHIME_TRAIL, 3
	warp_event  8, 15, BELLCHIME_TRAIL, 3
	warp_event  8,  2, TIN_TOWER_2F, 2 ; INACCESSIBLE UNTIL MORTY'S BADGE 

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10, 2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTower1FSage1Text, -1 	
	object_event  3, 12, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTower1FSage2Text, -1 	
	object_event 11, 12, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTower1FSage3Text, -1 	



TinTowerStairsCallback:
	checkevent EVENT_GOT_TM30_SHADOW_BALL ; BEAT MORTY 
	iftrue .NoChange
	changeblock 8, 2, $9
.NoChange:
	endcallback

TinTower1FSage1Text:
	text "The stairs appear"
	line "only to those"
	cont "who can see "
	cont "through the fog."
	
	para "I have only seen"
	line "Morty and two"
	cont "others find their"
	cont "footsteps..."
	done

TinTower1FSage2Text:
	text "I doubted the"
	line "heart of the red-"
	cont "haired boy. But"
	
	para "Ho-Oh saw his"
	line "heart was pure."
	done
	
TinTower1FSage3Text:
	text "This tower has "
	line "stood for over"
	cont "180 years."
	done
