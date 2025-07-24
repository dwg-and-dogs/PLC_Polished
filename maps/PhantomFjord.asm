PhantomFjord_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  5, 9, ARDUOUS_ANCHORAGE, 1
	warp_event  4, 4, RUSALKA_RUINS_B1F, 1


	def_coord_events


	def_bg_events
	bg_event   3,  8, BGEVENT_ITEM + REVIVAL_HERB, EVENT_FJORD_HIDDEN_1
	bg_event 10, 8, BGEVENT_READ, FjordDebugSpot

	def_object_events


FjordDebugSpot:
	warpfacing UP, OLIVINE_DESAL_1F,  5, 4
	end
;	setevent EVENT_DOCKS_KURT
;	setevent EVENT_DOCKS_LUGIA 
;	jumpthistext
;	
;	text "cleared kurt lugia"
;	done
