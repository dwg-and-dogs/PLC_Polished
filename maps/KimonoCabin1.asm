KimonoCabin1_MapScriptHeader:
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  19, 19, KIMONO_CABIN, 1

	def_coord_events


	def_bg_events


	def_object_events
	object_event  5,  0, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, DRATINI, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, KimonoCabin1Dratini, EVENT_KIMONO_CABIN_DRATINI
	object_event  19, 18, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE,  OBJECTTYPE_SCRIPT, 0, KimonoCabin11Script, -1 
	tmhmball_event  18, 19, TM_ROCK_SMASH, EVENT_UNION_CAVE_B1F_NORTH_X_DEFEND
	smashrock_event 18, 10
	smashrock_event 13, 5
	smashrock_event 13, 11
	smashrock_event  7, 10
	smashrock_event  3, 6
	smashrock_event  9, 17
	smashrock_event  11, 11
	itemball_event  4, 0, MOON_STONE, 1, EVENT_KIMONO_CABIN_SITRUS
	itemball_event  4, 1, FAST_BALL, 1, EVENT_KIMONO_CABIN_FAST_BALLS

	object_const_def
	const KIMONO_CABIN_1_DRATINI 
	
KimonoCabin1Dratini:
	faceplayer
	cry DRATINI
	pause 15
	loadwildmon DRATINI, 5
	startbattle
	disappear KIMONO_CABIN_1_DRATINI
	setevent EVENT_KIMONO_CABIN_DRATINI
	clearevent EVENT_KIMONO_CABIN_MORPHEA_NOTEBOOK
	reloadmapafterbattle
	end

KimonoCabin11Script:
	opentext
	checkevent EVENT_KIMONO_CABIN_DRATINI
	iftrue Kimono11HelpingScript
	writetext Kimono11ThanksForHelpingText
	waitbutton
	closetext
	end

Kimono11HelpingScript:
	checkevent EVENT_KIMONO_GAVE_VITAMINS
	iftrue_jumpopenedtext Kimono11HelpedText
	writetext Kimono11HelpedTextWithVitamins
	verbosegiveitem CARBOS
	setevent EVENT_KIMONO_GAVE_VITAMINS
	closetext
	end

Kimono11ThanksForHelpingText:
	text "Vera: Um, the"
	line "scary worm is in"
	cont "here somewhere."

	para "Oh, my mom said"
	line "I should learn to"
	cont "smash rocks. "

	para "But I don't know"
	line "how yet."
	done

Kimono11HelpedText:
	text "You did it! That"
	line "worm was probably"
	para "just uncomfy here"
	line "in the cellar."
	
	para "And now I can"
	line "smash rocks!"
	
	para "Thank you!"
	done

Kimono11HelpedTextWithVitamins:
	text "You did it! That"
	line "worm was probably"
	cont "just uncomfy here"
	cont "in the cellar."
	
	para "And now I can"
	line "smash rocks!"
	
	para "Take this candy,"
	line "it always gives"
	cont "me a sugar high."
	
	para "Thank you!"
	done
