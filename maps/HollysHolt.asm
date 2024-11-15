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

	
	def_coord_events


	def_bg_events
	bg_event  5, 19, BGEVENT_JUMPTEXT, HH_Sign1Text
	bg_event 25, 25, BGEVENT_JUMPTEXT, HH_Sign2Text
	bg_event 21, 41, BGEVENT_ITEM + SILVERPOWDER, EVENT_HOLLYS_HOLT_HIDDEN_SILVERPOWDER ;ok
	bg_event 16,  2, BGEVENT_ITEM + REVIVAL_HERB, EVENT_HOLLYS_HOLT_HIDDEN_REVIVAL_HERB ;ok
	bg_event 10, 24, BGEVENT_READ, HollysHoltShrineScript 
	bg_event 23, 43, BGEVENT_JUMPTEXT, HH_Sign3Text

	def_object_events
	object_event  9, 25, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HollysHoltKurtScript, -1;EVENT_BEAT_HOLLIS ;todo add this 
	object_event  8, 25, SPRITE_HOLLIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HollysHoltHollisScript, EVENT_TALKED_TO_HOLLIS;todo add this
	object_event 18, 38, SPRITE_TAMMY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HollysHoltTammyScript, EVENT_TAMMY_HOLLYS_HOLT
	object_event 19, 38, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, HollysHoltNPC6Text, EVENT_TAMMY_HOLLYS_HOLT 
	object_event  8, 16, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, HollysHoltNPC1Text, -1
	object_event 23, 24, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HollysHoltNPC2Script, -1  ; gives seed
	object_event 16, 36, SPRITE_BREEDER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, HollysHoltNPC3Text, -1
	object_event 19, 10, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, HollysHoltNPC4Text, -1 
	object_event 24, 38, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, HollysHoltNPC5Text, -1 
	itemball_event 28, 14, ENERGYPOWDER, 1, EVENT_HOLLYS_HOLT_ENERGYPOWDER
	itemball_event 19, 16, REVIVAL_HERB, 1, EVENT_ILEX_FOREST_REVIVAL_HERB
	tmhmball_event 24, 33, TM_X_SCISSOR, EVENT_GOT_TM_X_SCISSOR
	cuttree_event 25, 5, EVENT_HOLLYS_HOLT_CUT_TREE
	pokemon_event   6, 18, PINECO, -1, -1, PAL_NPC_BLUE, HollysHoltBagwormText, EVENT_BEAT_HOLLIS
	pokemon_event  13, 11, PINECO, -1, -1, PAL_NPC_BLUE, HollysHoltBagwormText, EVENT_BEAT_HOLLIS
	pokemon_event  29,  5, PINECO, -1, -1, PAL_NPC_BLUE, HollysHoltBagwormText, EVENT_BEAT_HOLLIS
	pokemon_event  26, 14, PINECO, -1, -1, PAL_NPC_BLUE, HollysHoltBagwormText, EVENT_BEAT_HOLLIS
	pokemon_event  29, 28, PINECO, -1, -1, PAL_NPC_BLUE, HollysHoltBagwormText, EVENT_BEAT_HOLLIS
	pokemon_event  18, 37, PINECO, -1, -1, PAL_NPC_BLUE, HollysHoltBagwormText, -1
	pokemon_event   3, 32, PINECO, -1, -1, PAL_NPC_BLUE, HollysHoltBagwormText, EVENT_BEAT_HOLLIS
	pokemon_event   4, 40, PINECO, -1, -1, PAL_NPC_BLUE, HollysHoltBagwormText, EVENT_BEAT_HOLLIS
	fruittree_event  9,  8, FRUITTREE_HOLLYS_HOLT, TOUGH_LEAVES, PAL_NPC_GREEN

	object_const_def
	const HOLLYS_HOLT_KURT
	const HOLLYS_HOLT_HOLLIS
	const HOLLYS_HOLT_TAMMY
	const HOLLYS_HOLT_SCHOOLGIRL

HollysHoltTrigger:
	sdefer HollysHoltScript1
	end

HollysHoltScript1:
	playmusic MUSIC_CELADON_CITY
	showemote EMOTE_SHOCK, HOLLYS_HOLT_KURT, 15
	showemote EMOTE_SHOCK, HOLLYS_HOLT_HOLLIS, 15
	turnobject HOLLYS_HOLT_KURT, LEFT
	turnobject HOLLYS_HOLT_HOLLIS, RIGHT
	turnobject PLAYER, LEFT
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
	showemote EMOTE_QUESTION, HOLLYS_HOLT_HOLLIS, 15
	opentext
	writetext HH_HollisPinecos
	waitbutton
	closetext
	applymovement HOLLYS_HOLT_HOLLIS, HH_Hollis_Leaves
	disappear HOLLYS_HOLT_HOLLIS
	showemote EMOTE_SHOCK, HOLLYS_HOLT_KURT, 15
	turnobject HOLLYS_HOLT_KURT, RIGHT
	opentext
	writetext HH_KurtHasAPlan
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_HOLLIS
	setscene $1 ;shouldn't let you see it multiple times
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
	text "Hollis:"
	line "Hello! How did"
	cont "you get behind"
	cont "the shrine?"
	
	para "Are you also"
	line "from Hisui?"
	
	para "My name is"
	line "Hollis. I am"
	cont "the elder here."
	
	para "I was just, eh"
	line "praying at the"
	cont "shrine."
	
	para "You will see that"
	line "Pineco are a pox"
	cont "on the trees."
	
	para "I'm the only one"
	line "who can safely"
	cont "remove them."
	done
	
HH_KurtExplains:
	text "Kurt: Ah, we're"
	line "here to stop"
	cont "Steel types from"
	cont "entering Johto."
	
	para "They are an"
	line "unnatural type,"
	cont "intrinsically"
	cont "damaging."
	done

HH_HollisPinecos:
	text "Hollis: Steel?"

	line "The Hisuians had"
	cont "some of those,"
	cont "but they weren't"
	cont "a problem."
	
	para "Oh, but they did"
	line "say that some"
	cont "steel types were"
	cont "being brought in"
	cont "through the West-"
	cont "ern port."

	para "I wish I could"
	line "stay and chat"
	cont "more, but I am"
	cont "so tired from"
	cont "this work."
	done

HH_KurtHasAPlan:
	text "Kurt: <PLAYER>!"
	line "Of course, the"
	cont "steel types are"
	cont "being brought"
	cont "through Olivine!"
	
	para "We have to get"
	line "there. We will"
	cont "need to find a"
	cont "way north of"
	cont "this forest."
	done
	
HH_HollisSpins:
	turn_head_down
	pause 5
	turn_head_left
	pause 5
	turn_head_up
	pause 5
	turn_head_right
	step_end


HollysHoltNPC1Text:
	text "Hi! Did you"
	line "visit to honor"
	cont "the new shrine?"
	
	para "We just built"
	line "it to honor"
	cont "Celebi."
	
	para "The visitors"
	line "from the north"
	cont "helped build it."
	done

HollysHoltNPC2Script:
	checkevent EVENT_YELLOW_FOREST_MIRACLE_SEED
	iftrue_jumptextfaceplayer HHNPC2_GotSeed
	faceplayer
	opentext
	writetext HHNPC2_GiveSeed
	promptbutton
	verbosegiveitem MIRACLE_SEED
	iffalse_endtext
	setevent EVENT_YELLOW_FOREST_MIRACLE_SEED
	jumpthisopenedtext

HHNPC2_GotSeed:
	text "It's a Miracle"
	line "seed. It could"
	cont "grow anywhere."
	
	para "A grass-type"
	line "#mon would"
	cont "be happy to"
	cont "hold it."
	done


HHNPC2_GiveSeed:
	text "Do you know"
	line "about Celebi?"
	
	para "Celebi is the"
	line "forest and its"
	cont "guardian."
	
	para "When the forest"
	line "is threatened,"
	cont "Celebi protects"
	cont "it. When it is"
	cont "damaged, Celebi"
	cont "will heal it."
	
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
	
	para "The bagworms"
	line "can't help but"
	cont "reproduce this"
	cont "way. We have to"
	cont "find a way to"
	cont "restore balance."
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
	line "just the forest"
	cont "protector. It is"
	cont "the forest."
	
	para "Like a Tangela"
	line "vine, it exists"
	cont "at all times"
	cont "and extents of"
	cont "the forest."

	para "At least that's"
	line "what we learned"
	cont "at the ritual."
	done

HH_HollisHello2:
	text "Please, visit"
	line "Anarres Town."
	
	para "The town isn't"
	line "as lively as"
	cont "usual, due to"
	cont "the bagworms"
	cont "damaging so"
	cont "many of the"
	cont "trees."
	done

HollysHoltShrineScript:
	opentext
	writetext HHAskToTimeTravelText
	yesorno
	iffalse_jumpopenedtext HHNoTimeTravelText
	writetext HHYesTimeTravelText
	waitbutton
	closetext
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
	text "Holly's Holt:"
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
	writetext Text_HHTutorHeadbutt ;;
	waitbutton
	writetext Text_HHTutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval HEADBUTT
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_HHTutorRefused ;; 

.TeachMove
	jumpopenedtext Text_HHTutorTaught ;;
	
Text_HeadbuttIntro: 
	text "Hi, <PLAYER>."
	line "Thanks again for"
	cont "your help talking"
	cont "to Hollis."
	
	para "Now, I can teach"
	line "everyone how to"
	cont "use Headbutt to"
	cont "rattle trees!"
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
	text "Tammy is showing"
	line "me how to use"
	cont "Headbutt."
	
	para "Soon, we can"
	line "knock off the"
	cont "Pineco to get"
	cont "the forest back"
	cont "to a healthy"
	cont "equilibrium."
	
	para "Tending nature"
	line "is part of pro-"
	cont "tecting it."
	done

HollysHoltBagwormText:
	text "It's a Pineco."
	line "The leaves are"
	cont "decimated by"
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
	text "Curious Cabin"
	done
