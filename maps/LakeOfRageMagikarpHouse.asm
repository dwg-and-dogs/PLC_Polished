LakeOfRageMagikarpHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 2
	warp_event  3,  7, LAKE_OF_RAGE, 2

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  2,  4, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LakeOfRageEarthPowerScript, -1
	pokemon_event 2,  3, QUAGSIRE, -1, -1, PAL_NPC_BLUE, QuagsireEarthPowerText, -1
	object_event  5,  3, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LakeOfRageHealerScript, -1
	pokemon_event 5,  4, CHANSEY, -1, -1, PAL_NPC_RED, LoRChanseyText, -1
	
QuagsireEarthPowerText:
	text "Quag! Quag!"
	
	para "...What's that"
	line "smell?"
	done

LakeOfRageEarthPowerScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_EARTH_POWER_INTRO
	iftrue LakeOfRageTutorEarthPowerScript
	writetext Text_EarthPowerIntro
	waitbutton
	setevent EVENT_LISTENED_TO_EARTH_POWER_INTRO
LakeOfRageTutorEarthPowerScript:
	writetext Text_LakeOfRageTutorEarthPower ;;
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_LakeOfRageTutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval EARTH_POWER
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_LakeOfRageTutorRefused ;; 

.NoSilverLeaf
	jumpopenedtext Text_LakeOfRageTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_LakeOfRageTutorTaught ;;
	
Text_EarthPowerIntro: 
	text "You never know"
	line "what will bubble"
	cont "from the lakebed!"
	
	para "Long ago, a city"
	line "stood nearby, but"
	cont "was swallowed up"
	cont "by the muck."
	
	para "Now, its secrets"
	line "are digested by"
	cont "the soil, and"
	
	para "released silently"
	line "or with a poof."
	
	done

Text_LakeOfRageTutorEarthPower:
	text "If you'd like to"
	line "wield this power"
	cont "for yourself,"
	
	para "I can teach you."
	line "You won't need"
	cont "beans or cabbage,"
	
	para "Just a Silver"
	line "Leaf."
	done

Text_LakeOfRageTutorNoSilverLeaf:
	text "You don't have"
	line "a Silver Leaf."
	done

Text_LakeOfRageTutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "Earth Power?"
	done

Text_LakeOfRageTutorRefused:
	text "Toot yourself."
	done

Text_LakeOfRageTutorTaught:
	text "There! Now, you"
	line "can wield the"
	para "flatus of the"
	line "Earth as well!"
	done

LoRChanseyText:
	text "Chaan!"
	done


LakeOfRageHealerScript:
	blackoutmod LAKE_OF_RAGE
	faceplayer
	opentext
	writetext LoRHealText
	waitbutton
	closetext
	
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	
	opentext
	writetext LoRHealedText
	waitbutton
	closetext
	end

LoRHealText:
	text "Our cabin is a"
	line "respite for weary"
	cont "adventurers."
	
	para "Take a rest."
	done
	
LoRHealedText:
	text "All better!"
	done
