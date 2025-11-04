ClastsCradle2F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES, Cradle2FCartCallback

	def_warp_events
	warp_event 9, 3, CLASTS_CRADLE_3F, 2
	warp_event 17, 11, CLASTS_CRADLE_1F, 1

	def_coord_events



	def_bg_events
	bg_event  17, 6, BGEVENT_READ, CC_2F_Switch
	bg_event  3, 10, BGEVENT_READ, CC_2F_Switch	
	bg_event  2,  2, BGEVENT_ITEM + ENERGYPOWDER, 	EVENT_HIDDEN_CRADLE_2
	bg_event 12,  4, BGEVENT_ITEM + NUGGET, 		EVENT_HIDDEN_CRADLE_3


	def_object_events
	tmhmball_event 9, 6, TM_EXPLOSION, EVENT_GOT_TM_EXPLOSION
; ENGINEERS FACE AWAY FROM YOU BUT WILL BATTLE YOU 
	object_event  16,  6, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerEngineerGoeth, EVENT_BEAT_ADRINNA_MINE
	object_event   4,  5, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBrigader15, EVENT_BEAT_ADRINNA_MINE
	
	object_const_def

Cradle2FCartCallback:
	checkevent EVENT_CRADLE_2F_CART_1
	iffalse .Done
	changeblock 16,  8, $C9
	changeblock 4, 8, $B9
.Done:
	endcallback

CC_2F_Switch:
	opentext
	writetext CartSwitchText
	yesorno
	iffalse_jumptext CartNoSwitchText
	checkevent EVENT_CRADLE_2F_CART_1
	iftrue CC_2F_SwitchBack
	changeblock 16,  8, $C9
	changeblock 4, 8, $B9
	playsound SFX_THUNDER
	waitsfx
	setevent EVENT_CRADLE_2F_CART_1
	reloadmappart
	jumptext CartMovedText 
	
CC_2F_SwitchBack:
	changeblock 16,  8, $C8 
	changeblock 4, 8, $B8
	playsound SFX_THUNDER
	waitsfx
	clearevent EVENT_CRADLE_2F_CART_1
	reloadmappart
	jumptext CartMovedText 

CartSwitchText:
	text "Hit the mine cart"
	line "switch?"
	done

CartNoSwitchText:
	text "Left it be."
	done

CartMovedText:
	text "The cart moved!"
	done

GenericTrainerBrigader15:
	generictrainer BRIGADER, 15, EVENT_BEAT_ROCKET_GRUNTM_15, Brigader15SeenText, Brigader15BeatenText  

Brigader15BeatenText:
	text "My goose was"
	line "cooked."
	done

Brigader15SeenText:
	text "You can't stand"
	line "the heat!"
	done
	
GenericTrainerEngineerGoeth: ; goethite 
	generictrainer ENGINEER, GOETH, EVENT_BEAT_ENGINEER_GOETH, GoethSeenText, GoethBeatenText
	
	text "The mountain is"
	line "delicate - don't"
	para "go deeper without"
	line "a plan!"
	done
	
GoethBeatenText:
	text "You reduced me to"
	line "rubble!"
	done

GoethSeenText:
	text "My battle skills"
	line "are rusty, but I"
	para "can still take"
	line "you down!"
	done
	