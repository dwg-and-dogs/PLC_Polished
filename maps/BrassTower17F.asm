BrassTower17F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES, BrassTower17FCallback  

	def_warp_events
	warp_event 13, 5, BRASS_TOWER_17F, 4
	warp_event 13, 9, BRASS_TOWER_17F, 5
	warp_event 2, 14, BRASS_TOWER_18F, 1
	warp_event 10, 15, BRASS_TOWER_14F, 1


	def_coord_events


	def_bg_events
	bg_event  7, 10, BGEVENT_READ, BrassTower17FUnownBlocks
	bg_event  6, 10, BGEVENT_READ, BrassTower17FUnownBlocks
	bg_event  7, 11, BGEVENT_READ, BrassTower17FUnownBlocks
	bg_event  6, 11, BGEVENT_READ, BrassTower17FUnownBlocks

	def_object_events
	object_event  5, 3, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerElderSatoru, -1 ; wise
	pokemon_event  6,  8, MISDREAVUS, -1, -1, PAL_NPC_RED, BrassTowerGuardText, EVENT_BRASS_TOWER_LEFT_GUARD	

	object_const_def

BrassTower17FCallback:
	checkevent EVENT_BRASS_TOWER_13F_UNOWN
	iffalse .EndCallback
	changeblock 6, 10, $5F
.EndCallback:
	endcallback

GenericTrainerElderSatoru:
    generictrainer ELDER, SATORU, EVENT_BEAT_ELDER_SATORU, SatoruSeenText, SatoruBeatenText

	text "Will history call"
	line "us wise or fools?"
	done

SatoruBeatenText:
	text "Hm, but why does"
	line "he act with such"
	cont "folly."	
	done
	
SatoruSeenText:
    text "Urgaust has the"
	line "wisdom of the"
	cont "ages!"	
    done

BrassTower17FUnownBlocks:
	unowntypeface
	showtext BrassTowerUnownText
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end
