HollysHolt_MapScriptHeader:
	def_scene_scripts
	scene_script HollysHoltTrigger

	def_callbacks


	def_warp_events 
	warp_event  7, 44, ANARRES_HOLT_GATE, 3
	warp_event  7, 45, ANARRES_HOLT_GATE, 4
	warp_event  4,  6, HOLT_COAST_GATE, 1
	warp_event  5,  6, HOLT_COAST_GATE, 2
	warp_event  24,  46, KIMONO_CABIN, 1
	warp_event  25,  46, KIMONO_CABIN, 1
	warp_event 29, 40, TIMELESS_TAPESTRY, 2
	warp_event 29, 41, TIMELESS_TAPESTRY, 3
	
	def_coord_events


	def_bg_events
	bg_event  5, 19, BGEVENT_JUMPTEXT, HH_Sign1Text
	bg_event 25, 25, BGEVENT_JUMPTEXT, HH_Sign2Text
	bg_event 21, 41, BGEVENT_ITEM + SILVERPOWDER, EVENT_HOLLYS_HOLT_HIDDEN_SILVERPOWDER
	bg_event 16,  2, BGEVENT_ITEM + REVIVAL_HERB, EVENT_HOLLYS_HOLT_HIDDEN_REVIVAL_HERB
	bg_event 10, 24, BGEVENT_READ, HollysHoltShrineScript 
	bg_event 23, 43, BGEVENT_JUMPTEXT, HH_Sign3Text


	def_object_events
	object_event  9, 25, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HollysHoltKurtScript, EVENT_ANARRES_HOLT_GATE
	object_event  8, 25, SPRITE_HOLLIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HollysHoltHollisScript, EVENT_TALKED_TO_HOLLIS
	object_event 18, 38, SPRITE_TAMMY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HollysHoltTammyScript, EVENT_TAMMY_HOLLYS_HOLT
	object_event 17, 37, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, HollysHoltNPC6Text, EVENT_TAMMY_HOLLYS_HOLT 

	object_event   6, 18, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, PINECO, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PinecoHeadbuttScript1, EVENT_BEAT_HOLLIS ;;;;
	object_event  29, 28, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, PINECO, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PinecoHeadbuttScript1, EVENT_BEAT_HOLLIS ;;;;
	object_event   4, 40, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, PINECO, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PinecoHeadbuttScript1, EVENT_BEAT_HOLLIS ;;;;
	
	object_event  8, 16, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, HollysHoltNPC1Text, -1
	object_event 23, 24, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HollysHoltNPC2Script, -1  ; gives seed
	object_event 16, 36, SPRITE_BREEDER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, HollysHoltNPC3Text, -1
	object_event 19, 10, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, HollysHoltNPC4Text, -1 
	object_event 24, 38, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, HollysHoltNPC5Text, -1 
	itemball_event 28, 14, ENERGYPOWDER, 1, EVENT_HOLLYS_HOLT_ENERGYPOWDER
	itemball_event 19, 16, REVIVAL_HERB, 1, EVENT_ILEX_FOREST_REVIVAL_HERB
	tmhmball_event 24, 33, TM_X_SCISSOR, EVENT_GOT_TM_X_SCISSOR
	cuttree_event 25, 5, EVENT_HOLLYS_HOLT_CUT_TREE
	pokemon_event  18, 37, PINECO, -1, -1, PAL_NPC_BLUE, HollysHoltBagwormText, -1 ; by tammy
	fruittree_event 13, 14, FRUITTREE_HOLLYS_HOLT, TOUGH_LEAVES, PAL_NPC_GREEN

	object_const_def
	const HOLLYS_HOLT_KURT
	const HOLLYS_HOLT_HOLLIS
	const HOLLYS_HOLT_TAMMY
	const HOLLYS_HOLT_SCHOOLGIRL
	const HOLLYS_HOLT_PINECO_1
	const HOLLYS_HOLT_PINECO_2
	const HOLLYS_HOLT_PINECO_3

HollysHoltTrigger:
	sdefer HollysHoltScript1
	end

HollysHoltScript1:
	showemote EMOTE_SHOCK, HOLLYS_HOLT_KURT, 60
	showemote EMOTE_SHOCK, HOLLYS_HOLT_HOLLIS, 60
	turnobject HOLLYS_HOLT_KURT, LEFT
	turnobject HOLLYS_HOLT_HOLLIS, RIGHT
	turnobject PLAYER, LEFT
	pause 20
	refreshscreen
	trainerpic HOLLIS
	waitbutton
	closepokepic
	opentext
	writetext HH_HollisHello
	waitbutton
	writetext HH_KurtExplains
	waitbutton
	closetext
	showemote EMOTE_QUESTION, HOLLYS_HOLT_HOLLIS, 60
	opentext
	writetext HH_HollisPinecos
	waitbutton
	closetext
	applymovement HOLLYS_HOLT_HOLLIS, HH_Hollis_Leaves
	disappear HOLLYS_HOLT_HOLLIS
	showemote EMOTE_SHOCK, HOLLYS_HOLT_KURT, 60
	turnobject HOLLYS_HOLT_KURT, RIGHT
	opentext
	writetext HH_KurtHasAPlan
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_HOLLIS
	setscene $1
	end

HollysHoltKurtScript:
	faceplayer
	opentext
	writetext HH_KurtHasAPlan
	waitbutton
	closetext
	end
	
HollysHoltHollisScript:
	faceplayer
	opentext
	writetext HH_HollisHello2
	waitbutton
	closetext
	end

HH_HollisHello:
	text_high
    text " Silas: "
	next
	text_start

	text "Hello! How did"
	line "you get behind"
	cont "the shrine?"
	
	para "Are you also"
	line "from Hisui?"
	
	para "I am Silas, the"
	line "Elder of Anarres."
	
	para "I was praying for"
	line "guidance at the"
	cont "shrine."
	
	para "You will see that"
	line "Pineco are a bit"
	cont "out of control."
	
	para "I'm the only one"
	line "who can safely"
	cont "remove them."
	
	para "Nothing works, it"
	line "feels like I'm"
	cont "hitting my head"
	cont "against a wall!"
	done

	
HH_KurtExplains:
	text_high
    text " Kurt: "
	next
	text_start
	text "We're here to"
	line "preserve Johto's"
	cont "traditions!"
	
	para "Some dangerous"
	line "inventions from"
	cont "outside threaten"
	cont "to destroy them."
	done


HH_HollisPinecos:
	text_high
    text " Silas: "
	next
	text_start
	
	text "Yes, we must be"
	line "vigilant against"
	cont "outside threats."
	
	para "I can tolerate"
	line "the Hisuians at"
	cont "the ceremony,"
		
	para "But there is word"
	line "of visitors at"
	cont "the Landing,"
	para "to the west of"
	line "the Capital."

	para "I wish I could"
	line "stay, but I am"
	para "so tired from"
	line "this work."
	done


HH_KurtHasAPlan:
	text_high
    text " Kurt: "
	next
	text_start
	text "<PLAYER>! Outside"
	line "technology is"
	para "being brought in"
	line "through historic"
	cont "Olivine City."
	
	para "We have to find"
	line "a way north of"
	cont "the forest."
	
	para "If you need to go"
	line "back to our time,"
	cont "you can visit the"
	cont "shrine."
	done

	
HH_HollisSpins:
	turn_head_down
	pause 60
	turn_head_left
	pause 60
	turn_head_up
	pause 60
	turn_head_right
	step_end


HollysHoltNPC1Text:
	text "Hi! Did you"
	line "visit to honor"
	cont "the new shrine?"
	
	para "We built it with"
	line "the Hisuians."
	done

HollysHoltNPC2Script:
	checkevent EVENT_HOLT_MIRACLE_SEED
	iftrue_jumptextfaceplayer HHNPC2_GotSeed
	faceplayer
	opentext
	writetext HHNPC2_GiveSeed
	promptbutton
	verbosegiveitem MIRACLE_SEED
	iffalse_endtext
	setevent EVENT_HOLT_MIRACLE_SEED
	jumpthisopenedtext

HHNPC2_GotSeed:
	text "It's a Miracle"
	line "seed. It could"
	cont "grow anywhere."
	
	para "A grass-type"
	line "#mon would"
	para "be happy to"
	line "hold it."
	done


HHNPC2_GiveSeed:
	text "Do you know"
	line "about Celebi?"
	
	para "Celebi is the"
	line "forest and its"
	cont "guardian."
	
	para "When the forest"
	line "is threatened,"
	para "Celebi protects"
	line "it. When it is"
	para "damaged, Celebi"
	line "will heal it."
	
	para "When we honor"
	line "Celebi, we"
	cont "honor the forest."
	
	para "Honestly, this"
	line "forest is a"
	cont "miracle."
	done

HollysHoltNPC3Text:
	text "There are so"
	line "many Pineco."
	
	para "When so many"
	line "get on a tree,"
	cont "they destroy it."
	
	para "The Pinecos"
	line "can't help but"
	cont "act this way."
	
	para "We have to find a"
	line "way to restore"
	cont "balance."
	done

HollysHoltNPC4Text: 
	text "Just like me,"
	line "this used to be"
	cont "a rolling stone."

	para "I used to roll"
	line "down hills, and"
	cont "over boulders."
	
	para "Until one day"
	line "I rolled here to"
	cont "put down roots."
	done
	
HollysHoltNPC5Text:
	text "Celebi isn't"
	line "just the forest's"
	para "protector. It IS"
	line "the forest."
	
	para "Like a Tangela"
	line "vine, it exists"
	para "at all times"
	line "and extents of"
	cont "the forest."
	done

HH_HollisHello2:
	text_high
    text " Silas: "
	next
	text_start
	text "Please, visit"
	line "Anarres Town."
	
	para "The town isn't as"
	line "lively as usual,"

	para "due to the Pineco"
	line "infestation."
	done

HollysHoltShrineScript:
	opentext
	writetext HHAskToTimeTravelText
	yesorno
	iffalse_jumpopenedtext HHNoTimeTravelText
	writetext HHYesTimeTravelText
	waitbutton
	closetext
	special Special_CelebiShrineEvent
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp ILEX_FOREST, 10, 25
	end

HHAskToTimeTravelText:
	text "Travel back"
	line "to present?"
	done

HHNoTimeTravelText:
	text "Staying in"
	line "the past." 
	done
	
HHYesTimeTravelText:
	text "Time to go!"
	done

HH_Sign1Text:
	text "Anarres Holt:"
	line "Home of Celebi"
	done

HH_Sign2Text:
	text "Reflection Pond"
	done

HollysHoltTammyScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_HEADBUTT_INTRO
	iftrue HHTutorHeadbuttScript
	writetext Text_HeadbuttIntro
	waitbutton
	setevent EVENT_LISTENED_TO_HEABUTT_INTRO
HHTutorHeadbuttScript:
	writetext Text_HHTutorHeadbutt 
	waitbutton
	writetext Text_HHTutorQuestion 
	yesorno
	iffalse .TutorRefused
	setval HEADBUTT
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_HHTutorRefused

.TeachMove
	jumpopenedtext Text_HHTutorTaught
	
Text_HeadbuttIntro: 
	text "Hi, <PLAYER>."
	line "Thanks again for"
	para "your help talking"
	line "to Silas."
	
	para "Now, I can teach"
	line "everyone how to"
	para "use Headbutt to"
	line "rattle trees!"
	done

Text_HHTutorHeadbutt:
	text "I can teach your"
	line "#mon to use"

	para "Heabutt, if"
	line "you want."
	done

Text_HHTutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "Headbutt?"
	done

Text_HHTutorRefused:
	text "Alright then."
	done

Text_HHTutorTaught:
	text "There! Perfect."
	done


HollysHoltNPC6Text:
	text "Ursula is showing"
	line "me how to use"
	cont "Headbutt."

	para "Tending nature is"
	line "our sacred duty."
	done

HollysHoltBagwormText:
	text "It's a Pineco."
	line "The tree's leaves"
	cont "are shredded with"
	cont "bug bites."
	done

HH_Hollis_Leaves:
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
	
HH_Sign3Text:
	text "Just a cozy cabin"

	para "No fugitives or"
	line "runaways here!"

	done

PinecoHeadbuttScript1:
	jumpthistext
	
	text "Dozens of Pineco"
	line "cover the tree."
	
	para "It's turning a"
	line "sickly yellow."
	done
	