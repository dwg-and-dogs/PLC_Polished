SeafluxNexusB2F_MapScriptHeader: ; encounters here are turned off 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES, SeafluxNexusB2FCallback 

	def_warp_events
	warp_event 17, 21, SEAFLUX_NEXUS_B1F, 5 ; 1 ladder 
	warp_event 9, 31, SEAFLUX_NEXUS_B1F, 4 ; 2
; hole drop 
	warp_event 7, 27, SEAFLUX_NEXUS_B3F, 1 ; to the bottom of the waterfall 

	def_coord_events


	def_bg_events
	bg_event 21, 16, BGEVENT_READ, SeafluxNexusB2F_MasterSwitch  ;  cf warehouse entrance basement key .... 
	bg_event 19, 24, BGEVENT_READ, SeafluxNexusB2F_ResetSwitch  ;  cf warehouse entrance basement key .... 

	bg_event  7, 14, BGEVENT_READ, SeafluxNexusB2F_Switch1 ; controls w2, w3
	bg_event 29, 14, BGEVENT_READ, SeafluxNexusB2F_Switch2 ; controls w3, w4
	bg_event  7, 22, BGEVENT_READ, SeafluxNexusB2F_Switch3 ; controls w1, w2, w4
	bg_event 29, 22, BGEVENT_READ, SeafluxNexusB2F_Switch4 ; controls w3
	bg_event 15, 24, BGEVENT_READ, SeafluxNexusB2F_Switch5 ; controls w2, w4, DONE 
; correct order: switch 5 - 4 - 3 - 1 - 2

	def_object_events
	itemball_event  6,  8, GEODE, 1, EVENT_NEXUSB2F_ITEM1
	itemball_event 18, 34, JEZE_BALL, 1, EVENT_NEXUSB2F_ITEM2
	itemball_event 26, 31, CALCIUM, 1, EVENT_NEXUSB2F_ITEM3
	itemball_event 32, 20, IRON, 1, EVENT_NEXUSB2F_ITEM4
	itemball_event 32, 32, ZINC, 1, EVENT_NEXUSB2F_ITEM5
	itemball_event 21, 17, HP_UP, 1, EVENT_NEXUSB2F_ITEM6


SeafluxNexusB2FCallback: ; done? 
; first, check the boulders. Nothing happens without them. 
	checkevent EVENT_NEXUS_B1F_BOULDER_1
	iffalse .Check2
	changeblock 18, 20, $02
.Check2:
	checkevent EVENT_NEXUS_B1F_BOULDER_2
	iffalse .Done
	changeblock 20, 20, $02
.ReviseWaterfallBlocks:
.Waterfall1:
	checkevent EVENT_NEXUS_WATERFALL_1
	iffalse .Waterfall2
	changeblock 10, 14, $02
	changeblock  8, 12, $0D
	changeblock 16, 12, $0F
.Waterfall2:
	checkevent EVENT_NEXUS_WATERFALL_2
	iffalse .Waterfall3
	changeblock 24, 14, $02
	changeblock 26, 12, $0D
	changeblock 18, 12, $0F
.Waterfall3:
	checkevent EVENT_NEXUS_WATERFALL_3
	iffalse .Waterfall4
	changeblock 10, 22, $02
	changeblock  8, 20, $0D
	changeblock 16, 16, $0F
.Waterfall4:
	checkevent EVENT_NEXUS_WATERFALL_4
	iffalse .CheckMaster
	changeblock 24, 22, $02	
	changeblock 26, 20, $0D
	changeblock 18, 16, $0F
; We always check the master switch at the end. 
.CheckMaster:
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH
	iffalse .Done
;top waterfalls
	changeblock 14,  4, $09
	changeblock 16,  4, $09
	changeblock 18,  4, $09
	changeblock 14,  6, $0D
	changeblock 18,  6, $0D
	changeblock 14,  8, $02
	changeblock 16,  8, $02
	changeblock 18,  8, $02
;little streamies
	changeblock  8, 12, $0D
	changeblock 26, 12, $0D
	changeblock  8, 20, $0D
	changeblock 26, 20, $0D
;rushing waters
	changeblock 10, 14, $02
	changeblock 24, 14, $02
	changeblock 10, 22, $02
	changeblock 24, 22, $02	
; middle rushing stream
	changeblock 16, 12, $0F
	changeblock 18, 12, $0F
	changeblock 16, 16, $0F
	changeblock 18, 16, $0F
.Done:
	endcallback	

SeafluxNexusB2F_MasterSwitch:
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH
	iftrue_jumptext MasterSwitchSetText
	opentext
	writetext MasterSwitchText1
	yesorno
	iffalse_jumpopenedtext NotPressedText
	setevent EVENT_NEXUS_B2F_FALLS_SWITCH
	playsound SFX_1ST_PLACE
	waitsfx
	writetext MasterSwitchSetText
	waitbutton
	closetext
	reloadmap ; should be the end of it
	end

SeafluxNexusB2F_ResetSwitch: ; option for a hint 
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH
	iftrue_jumptext MasterSwitchSetText
	opentext
	writetext ResetSwitchText
	yesorno
	iffalse_jumpopenedtext NotPressedText
; falls 1
	clearevent EVENT_NEXUS_WATERFALL_1
	playsound SFX_HYDRO_PUMP
	waitsfx
; falls 2
	clearevent EVENT_NEXUS_WATERFALL_2
	playsound SFX_HYDRO_PUMP
	waitsfx
; falls 3
	clearevent EVENT_NEXUS_WATERFALL_3
	playsound SFX_HYDRO_PUMP
	waitsfx
; falls 4	
	clearevent EVENT_NEXUS_WATERFALL_4
	playsound SFX_HYDRO_PUMP
	waitsfx
	writetext SwitchesResetText
	waitbutton
	closetext
	playsound SFX_HYDRO_PUMP
	waitsfx
	reloadmap ; should be the end of it
	end

SeafluxNexusB2F_Switch1: ; controls w2, w3
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH
	iftrue_jumptext MasterSwitchSetText
	opentext
	writetext Switch1Text
	yesorno
	iffalse_jumpopenedtext NotPressedText
	writetext SwitchPressedText
	waitbutton
	closetext
.Switch1Waterfall2:
	checkevent EVENT_NEXUS_WATERFALL_2 ; waterfall event true == waterfall is accessible 
	iftrue .Switch1Waterfall2Clear
	setevent EVENT_NEXUS_WATERFALL_2
	playsound SFX_FORESIGHT
	sjump .Switch1Waterfall3
.Switch1Waterfall2Clear:
	clearevent EVENT_NEXUS_WATERFALL_2
	playsound SFX_HYDRO_PUMP
	
.Switch1Waterfall3:
	checkevent EVENT_NEXUS_WATERFALL_3
	iftrue .Switch1Waterfall3Clear
	setevent EVENT_NEXUS_WATERFALL_3
	playsound SFX_FORESIGHT
	sjump .DoneSwitch1
.Switch1Waterfall3Clear:
	clearevent EVENT_NEXUS_WATERFALL_3
	playsound SFX_HYDRO_PUMP
.DoneSwitch1:
	reloadmap
	end

SeafluxNexusB2F_Switch2: ; controls w3, w4
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH
	iftrue_jumptext MasterSwitchSetText
	opentext
	writetext Switch2Text
	yesorno
	iffalse_jumpopenedtext NotPressedText
	writetext SwitchPressedText
	waitbutton
	closetext
.Switch2Waterfall3:
	checkevent EVENT_NEXUS_WATERFALL_3 ; waterfall event true == waterfall is accessible 
	iftrue .Switch2Waterfall3Clear
	setevent EVENT_NEXUS_WATERFALL_3
	playsound SFX_FORESIGHT
	sjump .Switch2Waterfall4
.Switch2Waterfall3Clear:
	clearevent EVENT_NEXUS_WATERFALL_3
	playsound SFX_HYDRO_PUMP
	
.Switch2Waterfall4:
	checkevent EVENT_NEXUS_WATERFALL_4
	iftrue .Switch2Waterfall4Clear
	setevent EVENT_NEXUS_WATERFALL_4
	playsound SFX_FORESIGHT
	sjump .DoneSwitch2
.Switch2Waterfall4Clear:
	clearevent EVENT_NEXUS_WATERFALL_4
	playsound SFX_HYDRO_PUMP
.DoneSwitch2:
	reloadmap
	end


SeafluxNexusB2F_Switch3: ; controls w1, w2, w4
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH
	iftrue_jumptext MasterSwitchSetText
	opentext
	writetext Switch3Text
	yesorno
	iffalse_jumpopenedtext NotPressedText
	writetext SwitchPressedText
	waitbutton
	closetext
.Switch3Waterfall1:
	checkevent EVENT_NEXUS_WATERFALL_1 ; waterfall event true == waterfall is accessible 
	iftrue .Switch3Waterfall1Clear
	setevent EVENT_NEXUS_WATERFALL_1
	playsound SFX_FORESIGHT
	sjump .Switch3Waterfall2
.Switch3Waterfall1Clear:
	clearevent EVENT_NEXUS_WATERFALL_1
	playsound SFX_HYDRO_PUMP
	
.Switch3Waterfall2:
	checkevent EVENT_NEXUS_WATERFALL_2
	iftrue .Switch3Waterfall2Clear
	setevent EVENT_NEXUS_WATERFALL_2
	playsound SFX_FORESIGHT
	sjump .Switch3Waterfall4
.Switch3Waterfall2Clear:
	clearevent EVENT_NEXUS_WATERFALL_2
	playsound SFX_HYDRO_PUMP
	
.Switch3Waterfall4:
	checkevent EVENT_NEXUS_WATERFALL_4
	iftrue .Switch3Waterfall4Clear
	setevent EVENT_NEXUS_WATERFALL_4
	playsound SFX_FORESIGHT
	sjump .DoneSwitch3
.Switch3Waterfall4Clear:
	clearevent EVENT_NEXUS_WATERFALL_4
	playsound SFX_HYDRO_PUMP
.DoneSwitch3:
	reloadmap
	end


SeafluxNexusB2F_Switch4: ; waterfall 3 
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH
	iftrue_jumptext MasterSwitchSetText
	opentext
	writetext Switch4Text
	yesorno
	iffalse_jumpopenedtext NotPressedText
	writetext SwitchPressedText
	waitbutton
	closetext
.Switch4Waterfall3:
	checkevent EVENT_NEXUS_WATERFALL_3 ; waterfall event true == waterfall is accessible 
	iftrue .Switch5Waterfall2Clear
	setevent EVENT_NEXUS_WATERFALL_3
	playsound SFX_FORESIGHT
	sjump .DoneSwitch4
.Switch5Waterfall2Clear:
	clearevent EVENT_NEXUS_WATERFALL_3
	playsound SFX_HYDRO_PUMP
	
.DoneSwitch4:
	reloadmap
	end
	
SeafluxNexusB2F_Switch5: ; waterfall 2 and 4 
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH
	iftrue_jumptext MasterSwitchSetText
	opentext
	writetext Switch5Text
	yesorno
	iffalse_jumpopenedtext NotPressedText
	writetext SwitchPressedText
	waitbutton
	closetext
.Switch5Waterfall2:
	checkevent EVENT_NEXUS_WATERFALL_2 ; waterfall event true == waterfall is accessible 
	iftrue .Switch5Waterfall2Clear
	setevent EVENT_NEXUS_WATERFALL_2
	playsound SFX_FORESIGHT
	sjump .Switch5Waterfall4
.Switch5Waterfall2Clear:
	clearevent EVENT_NEXUS_WATERFALL_2
	playsound SFX_HYDRO_PUMP
	
.Switch5Waterfall4:
	checkevent EVENT_NEXUS_WATERFALL_4
	iftrue .Switch5Waterfall4Clear
	setevent EVENT_NEXUS_WATERFALL_4
	playsound SFX_FORESIGHT
	sjump .DoneSwitch5
.Switch5Waterfall4Clear:
	clearevent EVENT_NEXUS_WATERFALL_4
	playsound SFX_HYDRO_PUMP
.DoneSwitch5:
	reloadmap
	end




ResetSwitchText:
	text "It's a reset"
	line "block. Press it?"
	done

SwitchesResetText:
	text "All waterfalls"
	line "are reset."
	
	para "Hint: solution"
	line "has each block"
	cont "hit one time."
	done

Switch1Text:
	text "The center block"
	line "has the number"
	cont "ONE on it."

	para "Press it?"
	done


Switch2Text:
	text "The center block"
	line "has the number"
	cont "TWO on it."

	para "Press it?"
	done

Switch3Text:
	text "The center block"
	line "has the number"
	cont "THREE on it."

	para "Press it?"
	done
	
Switch4Text:
	text "The center block"
	line "has the number"
	cont "FOUR on it."

	para "Press it?"
	done

Switch5Text:
	text "The center block"
	line "has the number"
	cont "FIVE on it."

	para "Press it?"
	done

SwitchPressedText:
	text "The sound of the"
	line "rushing water is"
	cont "changed somehow."
	done
	
MasterSwitchText1:
	text "The main block."
	line "Pressing it could"
	cont "have long-term"
	cont "consequences."
	done

NotPressedText:
	text "Not pressed."
	done

MasterSwitchSetText:
	text "The main block"
	line "is set."
	
	para "No more changes"
	line "can be made."
	done




;SeafluxNexusB2F_Switch5: ; w2,w4
;	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH
;	iftrue_jumptext MasterSwitchSetText
;	opentext
;	writetext Switch5Text
;	yesorno
;	iffalse_jumpopenedtext NotPressedText
; number 2 
;	checkevent EVENT_NEXUS_B1F_FALLS_2_OFF
;	iftrue .ClearB1FFalls2
;	setevent EVENT_NEXUS_B1F_FALLS_2_OFF
;	sjump .Falls4
;.ClearB1FFalls2:
;	clearevent EVENT_NEXUS_B1F_FALLS_2_OFF
; number 4 
;.Falls4:
;	checkevent EVENT_NEXUS_B1F_FALLS_4_OFF
;	iftrue .ClearB1FFalls4
;	setevent EVENT_NEXUS_B1F_FALLS_4_OFF
;	sjump .Switch5End
;.ClearB1FFalls4:
;	clearevent EVENT_NEXUS_B1F_FALLS_2_OFF
;.Switch5End:
;	showtext Switch5EffectText 
;	reloadmappart ; should trigger the callbacks?
;	end
