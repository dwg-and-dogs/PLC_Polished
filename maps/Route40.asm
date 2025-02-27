Route40_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 14, 10, BGEVENT_JUMPTEXT, Route40SignText
	bg_event  7,  8, BGEVENT_ITEM + HYPER_POTION, EVENT_ROUTE_40_HIDDEN_HYPER_POTION

	def_object_events
;monica
	object_event  8, 10, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MonicaScript, -1
	smashrock_event  7, 11
	smashrock_event  6, 9
	smashrock_event  7, 8
; double edge 
	object_event 16, 27, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route40FisherScript, -1

	object_event 13, 16, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerSwimmermSimon, -1
	object_event 18, 33, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerSwimmermRandall, -1
	object_event  3, 19, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerSwimmerfElaine, -1
	object_event  9, 25, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSwimmerfPaula, -1

	object_event 11, 13, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route40Lass1Text, -1
	object_event  7,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route40PokefanMScript, -1
	object_event 13,  4, SPRITE_PICNICKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route40Lass2Text, -1
	object_event 14,  8, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40YoungsterScript, -1


	object_const_def


MonicaScript:
	checkevent EVENT_GOT_SHARP_BEAK_FROM_MONICA
	iftrue_jumptextfaceplayer MonicaGaveGiftText
	faceplayer
	opentext
	writetext MonicaGivesGiftText
	promptbutton
	verbosegivetmhm TM_ACROBATICS
	iffalse MonicaDoneScript
	setevent EVENT_GOT_SHARP_BEAK_FROM_MONICA
	jumpopenedtext MonicaGaveGiftText

MonicaDoneScript:
	end


MonicaGivesGiftText:
	text "Monica: Glad to"
	line "meet you. I'm"
	cont "Monica of Monday."

	para "I wish I was like"
	line "a bird, dancing"

	para "above it all, not"
	line "a worry in my"
	cont "pocket."	

	para "That's why I use"
	line "this TM -"
	cont "Acrobatics!"
	done

MonicaGaveGiftText:
	text "That TM is best"
	line "if you're unteth-"
	cont "ered from the"
	para "complexities of"
	line "battle items."
	
	para "Take a load off"
	line "and see how good"
	cont "it feels!"
	done


Route40FisherScript: ; double edge 
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_DOUBLE_EDGE_INTRO
	iftrue Route40TutorDoubleEdgeScript
	writetext Text_DoubleEdgeIntro
	waitbutton
	setevent EVENT_LISTENED_TO_DOUBLE_EDGE_INTRO
Route40TutorDoubleEdgeScript:
	writetext Text_Route40TutorDoubleEdge ;;
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_Route40TutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval DOUBLE_EDGE
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_Route40TutorRefused ;; 

.NoSilverLeaf
	jumpopenedtext Text_Route40TutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_Route40TutorTaught ;;
	
Text_DoubleEdgeIntro: 
	text "Technology is a"
	line "double-edged"
	cont "sword."
		
	para "Like a double-"
	line "edged sword, it"
	cont "cuts both ways."

	para "In Olivine, we"
	line "sailors once"
	cont "mended our own"
	cont "vessels."

	para "But now, complex"
	line "new models demand"
	cont "specialized hands."

	para "Ah, speaking of"
	line "double-edged..."

	done

Text_Route40TutorDoubleEdge:
	text "I can teach your"
	line "#mon to use"

	para "Double Edge, for"
	line "a Silver Leaf."
	done

Text_Route40TutorNoSilverLeaf:
	text "You don't have"
	line "a Silver Leaf."
	done

Text_Route40TutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "Double Edge?""
	
	done

Text_Route40TutorRefused:
	text "Wary of the cost?"
	line "A prudent choice"
	cont "for now, perhaps."
	done

Text_Route40TutorTaught:
	text "There - now you"
	line "can feel the dou-"
	cont "ble-edged sword"
	
	para "of progress for"
	line "yourself."
	done

GenericTrainerSwimmerfElaine:
	generictrainer SWIMMERF, ELAINE, EVENT_BEAT_SWIMMERF_ELAINE, SwimmerfElaineSeenText, SwimmerfElaineBeatenText

	text "I'd say I'm a bet-"
	line "ter swimmer than"
	cont "you. Yeah!"
	done

GenericTrainerSwimmerfPaula:
	generictrainer SWIMMERF, PAULA, EVENT_BEAT_SWIMMERF_PAULA, SwimmerfPaulaSeenText, SwimmerfPaulaBeatenText

	text "While I float like"
	line "this, the waves"
	cont "carry me along."
	done

GenericTrainerSwimmermSimon:
	generictrainer SWIMMERM, SIMON, EVENT_BEAT_SWIMMERM_SIMON, SwimmermSimonSeenText, SwimmermSimonBeatenText

	text "Cianwood City is"
	line "a good distance"
	cont "away from here."
	done

GenericTrainerSwimmermRandall:
	generictrainer SWIMMERM, RANDALL, EVENT_BEAT_SWIMMERM_RANDALL, SwimmermRandallSeenText, SwimmermRandallBeatenText

	text "Swimming exercises"
	line "your entire body."
	cont "It's healthy."
	done

Route40PokefanMScript:
	checkevent EVENT_BATTLE_TOWER_OPEN
	iftrue_jumptextfaceplayer Route40PokefanMText2
	jumptextfaceplayer Route40PokefanMText

Route40YoungsterScript:
	checkevent EVENT_BATTLE_TOWER_OPEN
	iftrue_jumptextfaceplayer Route40StandingYoungsterText
	jumptextfaceplayer Route40YoungsterText



SwimmermSimonSeenText:
	text "You have to warm"
	line "up before going"
	cont "into the water."

	para "That's basic."
	done

SwimmermSimonBeatenText:
	text "OK! Uncle! I give!"
	done

SwimmermRandallSeenText:
	text "Hey, you're young"
	line "and fit!"

	para "Don't ride your"
	line "#mon! Swim!"
	done

SwimmermRandallBeatenText:
	text "Uh-oh. I lost…"
	done

SwimmerfElaineSeenText:
	text "Are you going to"
	line "Cianwood?"

	para "How about a quick"
	line "battle first?"
	done

SwimmerfElaineBeatenText:
	text "I lost that one!"
	done

SwimmerfPaulaSeenText:
	text "No inner tube for"
	line "me."

	para "I'm hanging on to"
	line "a sea #mon!"
	done

SwimmerfPaulaBeatenText:
	text "Ooh, I'm feeling"
	line "dizzy!"
	done

Route40Lass1Text:
	text "Although you can't"
	line "see it from here,"

	para "Cianwood is across"
	line "the sea."
	done

Route40PokefanMText:
	text "Hm! There's a big"
	line "building up ahead!"

	para "What is it?"
	done

Route40PokefanMText2:
	text "Hm! Look at all"
	line "those serious-"
	cont "looking trainers"
	cont "streaming in."

	para "What? What?"
	done

Route40Lass2Text:
	text "I came to Olivine"
	line "by ship to see the"

	para "sights and soak up"
	line "the atmosphere."

	para "Being a port, it"
	line "feels so different"
	cont "from a big city."
	done

Route40YoungsterText:
	text "The Battle Tower"
	line "is almost ready!"

	para "Trainers are head-"
	line "ing to Olivine"

	para "from all over the"
	line "world to test"
	cont "their strength."
	done

Route40StandingYoungsterText:
	text "Have you gone to"
	line "the Battle Tower?"

	para "I think a lot of"
	line "tough trainers"

	para "have gathered"
	line "there already."

	para "But since you have"
	line "so many Badges,"

	para "you shouldn't do"
	line "badly at all."
	done


Route40SignText:
	text "Route 40"

	para "Cianwood City -"
	line "Olivine City"
	done
