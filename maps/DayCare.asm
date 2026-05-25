DayCare_MapScriptHeader: ; expected behavior: no eggs 
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, DayCareEggCheckCallback

	def_warp_events
	warp_event  0,  4, ROUTE_34, 3
	warp_event  0,  5, ROUTE_34, 4
	warp_event  2,  7, ROUTE_34, 5
	warp_event  3,  7, ROUTE_34, 5

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  5,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DayCareLadyScript, -1
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Inside, EVENT_DAYCARE_MAN_IN_DAYCARE
;	object_event  2,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, DayCarePokeFanNoEggText, -1

	object_const_def
	const DAYCARE_GRANNY

DayCareEggCheckCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .PutDayCareManOutside
	clearevent EVENT_DAYCARE_MAN_IN_DAYCARE
	setevent EVENT_DAYCARE_MAN_ON_ROUTE_34
	endcallback

.PutDayCareManOutside:
	setevent EVENT_DAYCARE_MAN_IN_DAYCARE
	clearevent EVENT_DAYCARE_MAN_ON_ROUTE_34
	endcallback

DayCareManScript_Inside: 
	faceplayer
	opentext
	checkevent EVENT_GOT_EVIOLITE_FROM_DAYCARE
	iftrue .GotEvioliteDayCareMan 
	writetext DayCareManText_GiveEviolite
	waitbutton
	verbosegiveitem EVIOLITE
    setevent EVENT_GOT_EVIOLITE_FROM_DAYCARE
    writetext DayCareText_GotEviolite
	waitbutton
.GotEvioliteDayCareMan:
	special Special_DayCareMan
	waitendtext

DayCareLadyScript:
	faceplayer
	opentext
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue_jumpopenedtext Text_GrampsLookingForYou
	special Special_DayCareLady
	waitendtext

DayCareLadyScript2:
	faceplayer
	opentext
	special Special_DayCareLady
	waitendtext

DayCareMovementData_LyraApproachesGrandma:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_up
	step_end

Text_GrampsLookingForYou:
	text "Gramps was looking"
	line "for you."
	done

DayCareManText_GiveEviolite:
    text "After running this"
    line "Day Care for so"
    para "long, I've grown"
    line "quite fond of"
    cont "unevolved #mon."

    para "But I know they"
    line "sometimes struggle"
    cont "in battles."

    para "If you want them"
	line "to succeed, give"
	cont "them an Eviolite."
	
	para "Here, take one!"
    done

DayCareText_GotEviolite:
    text "Eviolite raises"
	line "the defenses of"
	para "#mon that can"
	line "still evolve."
    done
