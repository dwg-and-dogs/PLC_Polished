TinderGarden3_MapScriptHeader: 
	def_scene_scripts
	scene_script TinderGardernWatchTheLoggersScript

	def_callbacks

	
	def_warp_events

	
	
	def_coord_events


	def_bg_events

	
	def_object_events
;for the cutscene if you choose adrinna
	object_event  3, 8, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3, 9, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	pokemon_event  5, 11, CELEBI, -1, -1, PAL_NPC_GREEN, Celebi2Text, EVENT_TINDER_GARDEN_CELEBI_2


	object_const_def
	const TINDER_GARDEN_3_ENGINEER_1
	const TINDER_GARDEN_3_ENGINEER_2
	const TINDER_GARDEN_3_CELEBI_2

	
	
TinderGardernWatchTheLoggersScript:
;cf western capital scene 
	; revise music 
	pause 60
;	playmusic MUSIC_ELITE_FOUR_BATTLE_BW
	showemote EMOTE_QUESTION, TINDER_GARDEN_3_ENGINEER_1, 60
	showtext GardenEngineerText1
	pause 60
	showemote EMOTE_BOLT, TINDER_GARDEN_3_ENGINEER_2, 60
	showtext GardenEngineerText2		
	closetext
	turnobject TINDER_GARDEN_3_ENGINEER_1, RIGHT
	pause 60
	playsound SFX_CUT
	waitsfx
	changeblock 4, 0, $01 
	reloadmappart
	special Special_FadeOutMusic
	pause 60
	special Special_FadeOutMusic
	disappear TINDER_GARDEN_3_CELEBI_2
	pause 60
	turnobject TINDER_GARDEN_3_ENGINEER_1, DOWN
	pause 60
	showtext GardenEngineerText3
	turnobject TINDER_GARDEN_3_ENGINEER_2, UP
	showtext GardenEngineerText4
	closetext
	pause 120
	halloffame
	end
	
GardenEngineerText1:
	text "Is this the one?"
	line "I couldn't find"
	cont "any other blossom"
	cont "trees."
	done

	
GardenEngineerText2:
	text "Yup, it may be the"
	line "last one in"
	cont "Johto."
	done

	
Celebi2Text:
	text "..."
	done

GardenEngineerText3:
	text "What are we using"
	line "this for, anyway?"
	done

GardenEngineerText4:
	text "Hoenn wants the"
	line "them for an extr-"
	cont "avagant shrine."
	
	para "I'm glad Johto"
	line "doesn't have such"
	para "wasteful things"
	line "ever since that"
	para "kid toppled the"
	line "Consul some"
	cont "180 years ago."
	
	para "What was their"
	line "name again?"
	done
