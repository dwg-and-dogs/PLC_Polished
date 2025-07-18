Route43MahoganyGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  0, ROUTE_43, 1
	warp_event  5,  0, ROUTE_43, 2
	warp_event  4,  7, MAHOGANY_TOWN, 5
	warp_event  5,  7, MAHOGANY_TOWN, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route43MahoganyGateOfficer, -1
	object_event  4,  3,  SPRITE_JUGGLER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SantosScript, -1
	object_event  3,  2, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, LakeOfRageEngineerText, -1

Route43MahoganyGateOfficer:
	jumpthistextfaceplayer

	text "The Lake is only"
	line "visited by hard-"
	cont "core backpackers."
	done


LakeOfRageEngineerText:
	text "I can't bear to"
	line "leave this place-"
	
	para "Why didn't I tell"
	line "Silph their plan"
	cont "wouldn't work?"
	done


SantosScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_SUCKER_PUNCH_INTRO
	iftrue ROUTE42GATE_TutorSuckerPunchScript
	writetext Text_SuckerPunchIntro
	waitbutton
	setevent EVENT_LISTENED_TO_SUCKER_PUNCH_INTRO
ROUTE42GATE_TutorSuckerPunchScript:
	writetext Text_ROUTE42GATE_TutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval SUCKER_PUNCH
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_ROUTE42GATE_TutorRefused ;; 

.TeachMove
	jumpopenedtext Text_ROUTE42GATE_TutorTaught ;;
	
Text_SuckerPunchIntro:
	text "Santos: Hey."
	line "I'm Santos of"
	cont "Saturday."
		
	para "I don't let the"
	line "future surprise"
	cont "me."
	
	para "With my Sucker"
	line "Punch, I can have"
	cont "the element of"
	cont "surprise."	
	done
	
Text_ROUTE42GATE_TutorQuestion:
	text "If you want to"
	line "take control, I"
	cont "can teach your"
	para "#mon the move"
	line "Sucker Punch."
	done

Text_ROUTE42GATE_TutorRefused:
	text "Stay vigilant."
	done


Text_ROUTE42GATE_TutorTaught:
	text "There. Now you"
	line "can set the pace"
	cont "of battles."
	done

