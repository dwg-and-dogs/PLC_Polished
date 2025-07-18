SeafluxNexusB2F_MapScriptHeader: ; encounters here are turned off 
	def_scene_scripts
; REVISE THE MAP SO THAT THERE IS WATERFALLS PUSHING YOU BACK TO THE CENTRAL WARP UNTIL YOU GET BOTH OF THEM 

	def_callbacks ; revise based on the tin tower old 3f 
	;CALLBACKS BASED ON EVENT_NEXUS_B1F_BOULDER_1, EVENT_NEXUS_B1F_BOULDER_2
	; solving the strength puzzles lets you access the fifth 
	callback MAPCALLBACK_TILES, SeafluxNexusB2FCallback ; boulder 1



	def_warp_events
	warp_event 17, 21, SEAFLUX_NEXUS_B1F, 4 ; 1 ladder 
	warp_event 9, 31, SEAFLUX_NEXUS_B1F, 5 ; 2
; hole drop 
	warp_event 7, 27, SEAFLUX_NEXUS_B3F, 1 ; to the bottom of the waterfall 



	def_coord_events


	def_bg_events
	bg_event 21, 16, BGEVENT_READ, SeafluxNexusB2F_MasterSwitch  ;  cf warehouse entrance basement key .... 
	bg_event 19, 24, BGEVENT_READ, SeafluxNexusB2F_ResetSwitch  ;  cf warehouse entrance basement key .... 

;	bg_event  7, 14, BGEVENT_READ, SeafluxNexusB2F_Switch1 ; controls w2, w3
;	bg_event 29, 14, BGEVENT_READ, SeafluxNexusB2F_Switch2 ; controls w1, w3, w4
;	bg_event  7, 22, BGEVENT_READ, SeafluxNexusB2F_Switch3 ; controls w1, w2, w4
;	bg_event 29, 22, BGEVENT_READ, SeafluxNexusB2F_Switch4 ; controls w1, w3
	bg_event 15, 24, BGEVENT_READ, SeafluxNexusB2F_Switch5 ; controls w2, w4
; correct order: switch 5 -- 2 -- 3 -- 4 -- 1


	def_object_events
	itemball_event  6,  8, GEODE, 1, EVENT_NEXUSB2F_ITEM1
	itemball_event 18, 34, JEZE_BALL, 1, EVENT_NEXUSB2F_ITEM2
	itemball_event 26, 31, CALCIUM, 1, EVENT_NEXUSB2F_ITEM3
	itemball_event 32, 20, IRON, 1, EVENT_NEXUSB2F_ITEM4
	itemball_event 32, 32, ZINC, 1, EVENT_NEXUSB2F_ITEM5
	itemball_event 21, 17, HP_UP, 1, EVENT_NEXUSB2F_ITEM6


SeafluxNexusB2FCallback:
; first, check the boulders. Nothing happens without them. 
; these events allow you to move beyond the opening ladder. 
	checkevent EVENT_NEXUS_B1F_BOULDER_1
	iffalse .Check2
	changeblock 18, 20, $02
.Check2:
	checkevent EVENT_NEXUS_B1F_BOULDER_2
	iffalse .Done
	changeblock 20, 20, $02
; next, we have to check each of the swithces. 
; first we will check if the master switch is thrown. 
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH
	iffalse .Done
;top waterfalls
	changeblock 14,  4, $02
	changeblock 16,  4, $02
	changeblock 18,  4, $02
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
; now we have to check all of the individual switches. 
	; .Switch5
	; checkevent event_switch_5
	; iffalse .checkswitch2
	; .Switch5Waterfall2

	; checkevent event_waterfall_2
	; iftrue .Switch5Waterfall2Jump
	; setevent event_waterfall_2
	; sjump .Switch5Waterfall4
	; .Switch5Waterfall2Jump
	; clearevent event_waterfall_2

	; .Switch5Waterfall4
	; checkevent event_waterfall_4
	; iftrue .Switch5Waterfall4Jump
	; setevent event_waterfall_4
	; sjump .Switch4
	; .Switch5Waterfall4Jump
	; clearevent event_waterfall_4
	; .Switch4
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
	showtext MasterSwitchSetText
	reloadmap ; should be the end of it
	end

SeafluxNexusB2FCallbackFalls1:
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH 
	iftrue .Changing
	checkevent EVENT_NEXUS_B1F_FALLS_1_OFF
	iffalse .Done
.Changing:
	changeblock  8, 12, $0D
	changeblock 10, 14, $02
	changeblock 18, 12, $0F
.Done:
	endcallback
	
SeafluxNexusB2FCallbackFalls2:
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH 
	iftrue .Changing
	checkevent EVENT_NEXUS_B1F_FALLS_2_OFF
	iffalse .Done
.Changing:
	changeblock  8, 12, $0D
	changeblock 24, 14, $02
	changeblock 16, 12, $0F
.Done:
	endcallback

SeafluxNexusB2FCallbackFalls3:
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH 
	iftrue .Done
	checkevent EVENT_NEXUS_B1F_FALLS_3_OFF
	iffalse .Done
.Changing:
	changeblock  8, 20, $0D
	changeblock 10, 22, $02
	changeblock 16, 16, $0F
.Done:
	endcallback
	
SeafluxNexusB2FCallbackFalls4:
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH 
	iftrue .Done
	checkevent EVENT_NEXUS_B1F_FALLS_4_OFF
	iffalse .Done
.Changing:
	changeblock 26, 20, $0D
	changeblock 24, 22, $02
	changeblock 18, 16, $0F
.Done:
	endcallback


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

SeafluxNexusB2F_ResetSwitch: ; option for a hint 
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH
	iftrue_jumptext MasterSwitchSetText
	opentext
	writetext ResetSwitchText
	yesorno
	iffalse_jumpopenedtext NotPressedText
; falls 1
	clearevent EVENT_NEXUS_B1F_FALLS_1_OFF ; trigger the callback?
; falls 2
	clearevent EVENT_NEXUS_B1F_FALLS_2_OFF ; trigger the callback?
; falls 3
	clearevent EVENT_NEXUS_B1F_FALLS_3_OFF ; trigger the callback?
; falls 4	
	clearevent EVENT_NEXUS_B1F_FALLS_4_OFF ; trigger the callback?
	writetext SwitchesResetText
	closetext
	reloadmap ; should be the end of it
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

SeafluxNexusB2F_Switch5: ; w2,w4
	checkevent EVENT_NEXUS_B2F_FALLS_SWITCH
	iftrue_jumptext MasterSwitchSetText
	opentext
	writetext Switch5Text
	yesorno
	iffalse_jumpopenedtext NotPressedText
; number 2 
	checkevent EVENT_NEXUS_B1F_FALLS_2_OFF
	iftrue .ClearB1FFalls2
	setevent EVENT_NEXUS_B1F_FALLS_2_OFF
	sjump .Falls4
.ClearB1FFalls2:
	clearevent EVENT_NEXUS_B1F_FALLS_2_OFF
; number 4 
.Falls4:
	checkevent EVENT_NEXUS_B1F_FALLS_4_OFF
	iftrue .ClearB1FFalls4
	setevent EVENT_NEXUS_B1F_FALLS_4_OFF
	sjump .Switch5End
.ClearB1FFalls4:
	clearevent EVENT_NEXUS_B1F_FALLS_2_OFF
.Switch5End:
	showtext Switch5EffectText 
	reloadmap ; should trigger the callbacks?
	end

Switch5Text:
	text "The center block"
	line "has the number"
	cont "FIVE on it."

	para "Press it?"
	done

Switch5EffectText:
	text "Falls 2 and 4 are"
	line "now open."
	done
