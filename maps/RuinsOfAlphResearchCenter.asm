RuinsOfAlphResearchCenter_MapScriptHeader:
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  2,  7, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  3,  7, RUINS_OF_ALPH_OUTSIDE, 6

	def_coord_events

	def_bg_events
	bg_event  6,  5, BGEVENT_JUMPTEXT, RuinsOfAlphResearchCenterAcademicBooksText
	bg_event  5,  0, BGEVENT_JUMPTEXT, RuinsOfAlphResearchCenterProfSilktreePhotoText

	def_object_events
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, RuinsOfAlphResearchCenterScientist1Text, -1
	object_event  5,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, RuinsOfAlphResearchCenterScientist2Text, -1
	object_event  2,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist3Script, -1

	object_const_def


RuinsOfAlphResearchCenterScientist3Script:
	faceplayer
	checkevent EVENT_GOT_PUMICE_HARP
	opentext
	iffalse_jumpopenedtext .RuinsOfAlphResearchCenterScientist3Text
	writetext ThatsABrandNewHarpText
	waitbutton
	closetext


.RuinsOfAlphResearchCenterScientist3Text:
	text "There's an odd"
	line "energy emanat-"
	cont "ing from the"
	cont "northwest cave."
	
	para "There's a mini"
	line "tremor causing"
	cont "that whirlpool."
	done

RuinsOfAlphResearchCenterScientist1Text:
	text "The ruins are"
	line "over 1,500 years"
	cont "old."

	para "But it's not known"
	line "why they were"
	cont "built--or by whom."
	done

RuinsOfAlphResearchCenterScientist2Text:
	text "I'm captivated by"
	line "the characters on"
	cont "the walls of the"
	cont "chambers."
	
	para "It's like they"
	line "transport me to"
	cont "another time."	
	done

RuinsOfAlphResearchCenterComputerText:
	text "Ruins of Alph"

	para "Exploration"
	line "Year 22"
	done


RuinsOfAlphResearchCenterProfSilktreePhotoText:
	text "It's a photo of"
	line "the Research"

	para "Center's founder,"
	line "Prof.Silktree."
	done

RuinsOfAlphResearchCenterAcademicBooksText:
	text "There are many"
	line "academic books."

	para "Ancient Ruins…"
	line "Mysteries of the"
	cont "Ancients…"
	done

ThatsABrandNewHarpText:
	text "That harp - did"
	line "you find it in "
	cont "the ruins?"
	
	para "I wonder, why"
	line "did they stash"
	cont "it so deep?"

	done
	