EmpiresExtentCavern_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 4, 9, EMPIRES_EXTENT, 1
	warp_event 5, 9, EMPIRES_EXTENT, 1

	def_coord_events



	def_bg_events



	def_object_events
	object_event  5, 1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EECavernMysticScript, -1	; done 


	object_const_def



EECavernMysticScript:
	faceplayer
	checkevent EVENT_BEAT_CLAIR
	ifture_jumptext EE_Cavern_BeatClairText
	opentext
	writetext MysticText1
	yesorno
	iffalse_jumptext MysticText2
	showtext MysticText3
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp DRAGONS_DEN, 6, 40
	end

	


MysticText1:
	text "We must remember" 
	line "what Adrinna did."

	para "These walls will"
	line "hold the story."

	para "A reliance on"
	line "brute strength"
	cont "leads to ruin."

	para "I pray that some-"
	line "day, someone will"
	cont "find this record,"
	
	para "and it will help"
	line "them find peace."
	
	para "Do you?"
	
	done

MysticText2:
	text "How ignorant!"
	done

MysticText3:	
	text "So young, yet so"
	line "wise! Please,"
	
	para "tell the story"
	line "far and wide."
	done

EE_Cavern_BeatClairText:
	text "I hope the cavern"
	line "will persist for"
	cont "generations."
	done
