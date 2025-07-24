ShelteredShores_MapScriptHeader: 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES, ShelteredShoresOpenCallback
	callback MAPCALLBACK_NEWMAP, ShelteredShoresFlyPoint

	def_warp_events
	warp_event 8, 17, SEAFLUX_NEXUS, 1
	warp_event 34, 19, SEAFLUX_NEXUS, 2
	warp_event 12, 37, SEAFLUX_NEXUS, 3
	warp_event 36, 43, SEAFLUX_NEXUS, 4


	def_coord_events


	def_bg_events


	def_object_events
	itemball_event 17, 17, REVIVAL_HERB, 1, EVENT_SHORES_ITEM_1 
	itemball_event 17, 32, SILVER_LEAF, 3, EVENT_SHORES_ITEM_2
	itemball_event 40, 38, MAX_REPEL, 1, EVENT_SHORES_ITEM_3 
	itemball_event 43, 16, PETAYA_BERRY, 1, EVENT_SHORES_ITEM_4
	object_event  30, 19, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ShoresSageScript, -1
	object_event  36, 21, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ShoresSageScript, -1
	object_event 12, 19, SPRITE_NOMAD_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ShoresIcyWindTutorScript, -1 
	object_event 9, 42, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, ShoresSailorText, -1 ;todo make this cost a silver leaf

	object_const_def

ShelteredShoresFlyPoint:
	setflag ENGINE_FLYPOINT_SHELTERED_SHORES
	endcallback	

ShelteredShoresOpenCallback:
	checkevent EVENT_CIANWOODCITY_EUSINE ; need to open up the whirl islands so you don't black out and get stuck 
	iffalse .Done
	changeblock 12, 24, $35
	changeblock 36, 26, $35
	changeblock 10, 46, $35	
	changeblock 36, 50, $35
.Done:
	endcallback

ShoresSageScript:
	faceplayer
	opentext
	writetext ShoresAskToTimeTravel
	yesorno
	iffalse_jumpopenedtext ShoresNoTimeTravel  
	writetext ShoresTimeTravel
	waitbutton
	closetext
	playsound SFX_WARP_TO
	showtext ShoresWaitText
	special FadeOutPalettes
	waitsfx
	warp ROUTE_41, 37, 20
	end

ShoresAskToTimeTravel:
	text "I'm not sure what"
	line "happened, but we"
	para "aren't on Route"
	line "41 any more."
	
	para "It must be conn-"
	line "ected to Lugia"
	cont "somehow!"
	
	para "Shall we pray to"
	line "her again?"
	done

ShoresNoTimeTravel:
	text "Oh? But I thought"
	line "you wanted to"
	cont "join us?"
	done

ShoresTimeTravel:
	text "Swirling depths,"
	line "Lugia's might"
	para "Even pulls the"
	line "Day into night."
	
	para "From the deep"
	line "she watches all,"
	para "Until tides turn"
	line "And empires fall."
	done
	
ShoresWaitText:
	text "Egad! What is"
	line "happening to us?"
	done
	
	
ShoresIcyWindTutorScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_ICY_WIND_INTRO
	iftrue ShoresTutorIcyWindScript
	writetext Text_IcyWindIntro
	waitbutton
	setevent EVENT_LISTENED_TO_ICY_WIND_INTRO
ShoresTutorIcyWindScript:
	writetext Text_ShoresTutorIcyWind ;;
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_ShoresTutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval ICY_WIND
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_ShoresTutorRefused ;; 

.NoSilverLeaf
	jumpopenedtext Text_ShoresTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_ShoresTutorTaught ;;
	
Text_IcyWindIntro: 
	text "W-w-welcome to"
	line "sheltered shores."
	
	para "I'm f-f-freezing"
	line "the islands so"
	cont "n-n-no one will"
	para "want to mess"
	line "w-w-with us."
	done

Text_ShoresTutorIcyWind:
	text "An i-i-icy wind"
	line "should repel the"
	cont "outsiders and the"
	cont "b-b-brigaders."
	
	para "I'll sh-sh-show"
	line "you how, if you"
	cont "b-b-bring me a"
	cont "Silver Leaf to"
	para "m-m-make myself a"
	line "h-h-hot tea..."
	done

Text_ShoresTutorNoSilverLeaf:
	text "N-n-no leaf?"
	done

Text_ShoresTutorQuestion:
	text "Sh-sh-shall I"
	line "teach Icy Wind"
	cont "to your #mon?"
	done

Text_ShoresTutorRefused:
	text "W-w-why the cold"
	line "shoulder?"
	done

Text_ShoresTutorTaught:
	text "Th-th-there! Now"
	line "for s-some hot"
	cont "t-tea."
	done

ShoresSailorText:
	text "I deserted my"
	line "ship. But I hoped"
	para "these islands"
	line "would be warm."
	
	para "All I've felt is"
	line "a brisk breeze"
	cont "from the north!"	
	done
