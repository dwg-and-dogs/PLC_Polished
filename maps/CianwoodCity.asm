CianwoodCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CianwoodCityFlyPointAndSuicune

	def_warp_events
	warp_event  5, 27, MANIAS_HOUSE, 1 ; empty 
	warp_event  8, 43, CIANWOOD_GYM, 1
	warp_event  15, 47, MOVE_MANIACS_HOUSE, 1
	warp_event 7, 7, CIANWOOD_CAVE, 1

	def_coord_events


	def_bg_events
	bg_event 20, 34, BGEVENT_JUMPTEXT, CianwoodCitySignText
	bg_event  6, 44, BGEVENT_JUMPTEXT, CianwoodGymSignText
	bg_event 19, 47, BGEVENT_JUMPTEXT, CianwoodPharmacySignText
	bg_event  5, 19, BGEVENT_ITEM + REVIVE, EVENT_CIANWOOD_CITY_HIDDEN_REVIVE
	bg_event 17, 35, BGEVENT_ITEM + MAX_ETHER, EVENT_CIANWOOD_CITY_HIDDEN_MAX_ETHER
	bg_event 14, 19, BGEVENT_READ, CianwoodCityShrineScript

	def_object_events
	object_event 14, 20, SPRITE_EUSINE, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodEusineScript, EVENT_CIANWOODCITY_EUSINE	
	object_event 11, 25, SPRITE_KURT, 	SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CIANWOODCITY_KURT ; INITIALIZE THIS EVENT
	pokemon_event 14, 23, LUGIA, -1, -1, PAL_NPC_BLUE, ObjectEvent, EVENT_CIANWOODCITY_LUGIA ; INITIALIZE 
	smashrock_event 17, 44
	smashrock_event 15, 40
	smashrock_event 13, 32
	smashrock_event 13, 35
	smashrock_event 11, 28
	strengthboulder_event 13, 39
	strengthboulder_event 15, 42

	object_const_def
	const CIANWOODCITY_EUSINE
	const CIANWOODCITY_KURT
	const CIANWOODCITY_LUGIA

CianwoodCityFlyPointAndSuicune:
	setflag ENGINE_FLYPOINT_CIANWOOD
	endcallback

CianwoodCitySignText:
	text "Cianwood City"

	para "A Port Surrounded"
	line "by Rough Seas"
	done

CianwoodGymSignText:
	text "Cianwood City"
	line "#mon Gym"
	done

CianwoodPharmacySignText:
	text "Move Reminder"
	done


CianwoodEusineScript:
	faceplayer
	opentext
	checkevent EVENT_HEARD_CIANWOOD_SHPEEL
	iftrue .HeardShpeel
	writetext CianwoodShpeelText
	waitbutton
	setevent EVENT_HEARD_CIANWOOD_SHPEEL
.HeardShpeel	
	checkevent EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_KURT
	iffalse_jumpopenedtext CianwoodEusineNoLugiaText
	; music 
	closetext
	appear CIANWOODCITY_KURT
	applymovement CIANWOODCITY_KURT, CC_Move_Kurt
	appear CIANWOODCITY_LUGIA
	cry LUGIA 
	applymovement PLAYER, CC_Move_PlayerStepsDown
	applyonemovement CIANWOODCITY_EUSINE, step_left
	turnobject CIANWOODCITY_EUSINE, DOWN
	showemote EMOTE_SHOCK, CIANWOODCITY_EUSINE, 10
	showtext CC_KurtText1
	applymovement CIANWOODCITY_EUSINE, CC_Move_Eusine_1
	showtext CC_EusineText1
	turnobject CIANWOODCITY_KURT, LEFT
	showtext CC_KurtText2	
	disappear CIANWOODCITY_LUGIA
	turnobject CIANWOODCITY_EUSINE, LEFT
	follow CIANWOODCITY_KURT, PLAYER
	applymovement CIANWOODCITY_KURT, CC_Move_Kurt_2
	turnobject CIANWOODCITY_EUSINE, UP
	showtext CC_KurtPrayer
	refreshscreen
	paintingpic LUGIA_PAINTING
	waitbutton
	closepokepic
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	setevent EVENT_CIANWOODCITY_LUGIA
	setevent EVENT_CIANWOODCITY_KURT
	setevent EVENT_CIANWOODCITY_EUSINE
	warp CIANWOOD_COVE, 11, 15
	end
	
CianwoodShpeelText:
	text_high
    text " Eusine: " 
	next
	text_start 
	text "Absurd. The storm"
	line "was a malevolent"
	cont "force of nature."
	
	para "In a few hours"
	line "it grew to a"
	cont "terror."	
	
	para "I used to admire"
	line "nature, but then"
	
	para "she spurned Cian-"
	line "wood - why?"
	
	para "Chuck tried to"
	line "save it, but they"
	cont "couldn't raise a"
	cont "seawall in time."
	
	para "Was I naive to"
	line "only see beauty?"
	
	para "I long to see the"
	line "sublime."
	para "I want to hope"
	line "again."
	done

	
CianwoodEusineNoLugiaText:
	text "Perhaps we don't"
	line "deserve nature's"
	cont "beauty."
	done

CC_Move_Kurt:
	step_up
	step_up
	step_right
	step_right
	turn_head_up
	step_end
	
CC_Move_PlayerStepsDown:
	step_down
	step_down
	step_left
	step_down
	turn_head_up
	step_end

CC_Move_Eusine_1:
	step_down
	step_down
	step_right
	turn_head_down
	step_end

CC_Move_Kurt_2:
	step_up
	step_up
	step_up
	step_right
	turn_head_up
	step_end

CC_KurtText1:
	text_high
    text " Kurt: " 
	next
	text_start 
	text "You know, I felt"
	line "a similar cynicism"
	para "but now, I feel"
	line "empowered. Like"
	para "I'm fulfilling a"
	line "destiny."
	done
	
CC_EusineText1:
	text_high
    text " Eusine: " 
	next
	text_start 
	text "Lugia!"
	para "What majesty!"

	para "The glyphs on the"
	line "rock showed her"
	cont "awesome power."
	done
	
CC_KurtText2:
	text_high
    text " Kurt: " 
	next
	text_start 
	text "<PLAYER>, I think"
	line "we should pray."
	para "It may cause us"
	line "to go backwards"
	cont "in time."
	done
	
CC_KurtPrayer:
	text_high
    text " Kurt: " 
	next
	text_start 
	text "So this is my"
	line "guardian of the"
	cont "sea."
	
	para "Lugia: In this"
	line "darkest hour,"
	
	para "on this tattered"
	line "atoll,"
	
	para "Bring a cleansing"
	line "shower,"
	
	para "Make the broken"
	line "whole!"
	done

CianwoodCityShrineScript: ; revise: show painting of lugia
	refreshscreen
	paintingpic LUGIA_PAINTING
	waitbutton
	closepokepic

	opentext
	writetext CC_AskToTimeTravelText
	yesorno
	iffalse_jumpopenedtext CC_NoTimeTravelText
	writetext CC_YesTimeTravelText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp CIANWOOD_COVE, 10, 14
	end

CC_AskToTimeTravelText:
	text "It's a shrine to"
	line "Lugia."
	
	para "Travel back in"
	line "time?"
	done

CC_NoTimeTravelText:
	text "Maybe later."
	done

CC_YesTimeTravelText:
	text "..."
	done
