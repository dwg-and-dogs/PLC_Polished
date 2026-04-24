GoldenrodMuseum1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6,  7, GOLDENROD_CITY, 16
	warp_event  7,  7, GOLDENROD_CITY, 16
	warp_event 13,  7, GOLDENROD_MUSEUM_2F, 1

	def_coord_events

	def_bg_events
    bg_event  1,  0, BGEVENT_READ, GoldenrodMuseum1FExhibit1
    bg_event  9,  0, BGEVENT_READ, GoldenrodMuseum1FExhibit2

	def_object_events
	object_event  1,  2, SPRITE_SLOWPOKETAIL, SPRITEMOVEDATA_ARCH_TREE_DOWN, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_COMMAND, end, NULL, -1
	object_event  2,  2, SPRITE_SLOWPOKETAIL, SPRITEMOVEDATA_ARCH_TREE_UP, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_COMMAND, end, NULL, -1
    object_event  7,  4, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodMuseum1FAttendantScript, -1
    object_event  5,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodMuseum1FNPC1Script, -1
    object_event 10,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodMuseum1FNPC2Script, -1


GoldenrodMuseum1FAttendantScript:
    jumptextfaceplayer GoldenrodMuseum1FAttendantText

GoldenrodMuseum1FNPC1Script:
    jumptextfaceplayer GoldenrodMuseum1FNPC1Text

GoldenrodMuseum1FNPC2Script:
    jumptextfaceplayer GoldenrodMuseum1FNPC2Text

GoldenrodMuseum1FExhibit1:
    jumptext GoldenrodMuseum1FExhibit1Text

GoldenrodMuseum1FExhibit2:
    jumptext GoldenrodMuseum1FExhibit2Text

GoldenrodMuseum1FAttendantText:
    text "Enjoy your visit"
    line "to the museum,"
    para "brought to you"
    line "by Silph Co.!"
    done

GoldenrodMuseum1FNPC1Text:
    text "I can't believe"
    line "that the National"
    para "Park used to have"
    line "a stadium in it!"
    done

GoldenrodMuseum1FNPC2Text:
    text "I'm so proud that"
    line "the people of"
    para "Goldenrod united"
    line "against the"
    cont "Emperor!"
    done

GoldenrodMuseum1FExhibit1Text:
    text "Archaeologists"
    line "have discovered"
    para "that there was"
    line "once a stadium in"
    para "the National"
    line "Park."
    done

GoldenrodMuseum1FExhibit2Text:
    text "Artifacts from"
    line "Ecruteak began"
    para "appearing in"
    line "Goldenrod around"
    cont "160 years ago."
    done
	