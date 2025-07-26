Route40_MapScriptHeader: ; todo revise the warp and move Kurt 
	def_scene_scripts

	def_callbacks


	def_warp_events
	

	def_coord_events
	coord_event 7, 5, 0, Route40_KurtScene

	def_bg_events
	bg_event 14, 10, BGEVENT_JUMPTEXT, Route40SignText ; fix sign 
	bg_event  8,  4, BGEVENT_ITEM + HYPER_POTION, EVENT_ROUTE_40_HIDDEN_HYPER_POTION

	def_object_events
	; npc who gives you razor claw for defeating them all 
	object_event 11, 16, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RazorScavengerScript, -1
	object_event 6, 5, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_40_KURT
;monica
	object_event  14,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MonicaScript, -1
	smashrock_event  7, 15
	smashrock_event  6, 13
	smashrock_event  7, 12
; double edge 
	object_event 15, 27, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route40FisherScript, -1
	object_event 14, 29, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route40SailorText, -1
;scavengers
	object_event 13, 21, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerSwimmermHarold, -1
	object_event  7, 31, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerSwimmermSimon, -1
	object_event  3, 19, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerSwimmermRandall, -1
	object_event  9, 25, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSwimmermCharlie, -1
; beach NPCs
	object_event 12, 10, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route40MatronScript, -1 ; redo text and heal you 
	object_event  10,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route40Lass2Text, -1 ; redo text 
; roadblock NPCs, quarantine the city while they look for who took the part 
	object_event 19, 4, SPRITE_OFFICER,  SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineOfficerText, EVENT_DOCKS_KENSEY ; redo text and heal you 
	object_event 19, 5, SPRITE_OFFICER,  SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineOfficerText, EVENT_DOCKS_KENSEY ; redo text and heal you 


	object_const_def
	const ROUTE40_SCAVENGER
	const ROUTE40_KURT


Route40_KurtScene:
	turnobject PLAYER, LEFT
	turnobject ROUTE40_KURT, RIGHT
	showemote EMOTE_SHOCK, ROUTE40_KURT, 30
	opentext
	writetext Route40_KurtText
	waitbutton
	closetext
	pause 60 
	applymovement ROUTE40_KURT, Route40KurtMovesDown
	disappear ROUTE40_KURT
	setevent EVENT_ROUTE_40_KURT
	setscene $1
	end

Route40_KurtText:
	text "<PLAYER>, Ha! It"
	line "worked!"
	
	para "Let's get to the"
	line "Whirl Islands and"
	para "bring Lugia to"
	line "the port."
	
	para "See you there."
	done
	
Route40KurtMovesDown:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

OlivineOfficerText:
	text "Olivine is in a"
	line "strict lockdown."
	
	para "We need to catch"
	line "a thief who took"
	para "a part from the"
	line "desal plant."
	done
	
Route40SailorText:
	text "There's some real"
	line "weirdos past us."
	
	para "Dressed in blue"
	line "robes and wearing"
	cont "Lugia pendants."
	done

RazorScavengerScript: ; check route 31 script if not working 
;	endifjustbattled
	checkevent EVENT_GOT_RAZOR_ITEM_ROUTE_40
	iftrue_jumptextfaceplayer .AfterText2
	faceplayer
	opentext
	checkevent EVENT_BEAT_SWIMMERM_GEORGE
	iftrue .Beaten
	checkevent EVENT_BEAT_SWIMMER_M_HAROLD
	iffalse_jumpopenedtext .IntroText
	checkevent EVENT_BEAT_SWIMMER_M_SIMON
	iffalse_jumpopenedtext .IntroText
	checkevent EVENT_BEAT_SWIMMER_M_RANDALL
	iffalse_jumpopenedtext .IntroText
	checkevent EVENT_BEAT_SWIMMER_M_CHARLIE
	iffalse_jumpopenedtext .IntroText
	writetext .QuestionText
	yesorno
	iffalse_jumpopenedtext .RefusedText
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked ROUTE40_SCAVENGER
	loadtrainer SWIMMERM, GEORGE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SWIMMERM_GEORGE
	opentext
.Beaten:
	writetext .AfterText1
	promptbutton
	verbosegiveitem RAZOR_CLAW
	iffalse_endtext
	setevent EVENT_GOT_RAZOR_ITEM_ROUTE_40
	jumpthisopenedtext

.AfterText2: ;  
	text "Without so many"
	line "boats around, it"
	cont "is safe to dive."
	
	para "The corals really"
	line "took a hit with"
	cont "the desal plant,"
	cont "though."
	done

.IntroText:;  
	text "The other scav-"
	line "engers are good"
	cont "divers, but not"
	
	para "so much battlers."
	line "If you beat them"
	cont "all, come talk to"
	para "me, so I can have"
	line "an interesting"
	cont "battle."
	done

.QuestionText:;  
	text "You defeated all"
	line "others!"
	
	para "Shall we battle?"
	line "If you win, I'll"
	para "give you a nice"
	line "item I found in"
	cont "a wreck."
	done

.RefusedText:;  
	text "Fine, I'll keep"
	line "my Razor Claw."
	done

.SeenText:;  
	text "Let's go!"
	done

.BeatenText:;  
	text "You're sharp!"
	done

.AfterText1:;  
	text "That was a rush!"
	line "Please take this."
	
	para "I found it in a"
	line "shipwreck."
	done

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
	cont "specialization."

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
	cont "Double Edge?"
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


Route40SignText:
	text "Route 40"
	
	para "Danger: high"
	line "salt content"
	done

Route40MatronScript:
	faceplayer
	opentext
	writetext Route40WantToHeal
	waitbutton
	playmusic MUSIC_HEAL
	special HealParty
	special SaveMusic	
	writetext Route40Healed
	waitbutton
	closetext
	playmusic MUSIC_NONE	
	special RestoreMusic
	end

Route40WantToHeal:
	text "Have you been out"
	line "swimming in the"
	para "chop? Let me heal"
	line "your #mon."
	done

Route40Healed:
	text "All better!"
	done

Route40Lass2Text:
	text "The output from"
	line "the desal plant"
	para "has changed the"
	line "ocean chemistry."
	para "Around here, you"
	line "need a wetsuit to"
	cont "protect yourself."
	done


GenericTrainerSwimmermHarold:
	generictrainer SWIMMERM, HAROLD, EVENT_BEAT_SWIMMER_M_HAROLD, .SeenText1, .BeatenText1

.BeatenText1:
	text "Back to diving!"
	done

.SeenText1:
	text "I love to battle"
	line "on my surface"
	cont "intervals!"
	done


GenericTrainerSwimmermSimon:
	generictrainer SWIMMERM, SIMON, EVENT_BEAT_SWIMMER_M_SIMON, .SeenText2, .BeatenText2

.BeatenText2:
	text "You should see it"
	line "under there."
	done

.SeenText2:
	text "There's a whole"
	line "world under the"
	cont "surface!"
	done



GenericTrainerSwimmermRandall:
	generictrainer SWIMMERM, RANDALL, EVENT_BEAT_SWIMMER_M_RANDALL, .SeenText3, .BeatenText3

.BeatenText3:
	text "Diving is hard"
	line "work."
	done

.SeenText3:
	text "Gasp... Gasp..."
	line "I'm exhausted but"
	cont "I'll battle!"
	done



GenericTrainerSwimmermCharlie:
	generictrainer SWIMMERM, CHARLIE, EVENT_BEAT_SWIMMER_M_CHARLIE, .SeenText4, .BeatenText4

.BeatenText4:
	text "You brought me"
	line "down."
	done

.SeenText4:
	text "I already found"
	line "some nuggets in a"
	cont "shipwreck!"
	done

