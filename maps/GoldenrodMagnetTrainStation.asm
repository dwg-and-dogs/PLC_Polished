GoldenrodMagnetTrainStation_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8, 17, GOLDENROD_CITY, 5
	warp_event  9, 17, GOLDENROD_CITY, 5
	warp_event  0,  2, RADIO_TOWER_5F, 2
	warp_event 19,  2, ROUTE_KAJO, 1
	warp_event 19,  3, ROUTE_KAJO, 2


	def_coord_events


	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodMagnetTrainStationOfficerScript, -1
	object_event 11, 14, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodMagnetTrainStationGentlemanScript, EVENT_GENTLEMAN_READ_TRAIN_MAIL
	object_event  6, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodMagnetTrainStationCooltrainerf1Script, -1
	object_event  7, 13, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodMagnetTrainStationCooltrainerf2Script, -1
	itemball_event 5,  2, MAGNET, 1, EVENT_MAGNET_TRAIN_MAGNET

	object_const_def
	const STATION_GENTLEMAN

GoldenrodMagnetTrainStationOfficerScript:
    jumptextfaceplayer GoldenrodMagnetTrainStationOfficerText

GoldenrodMagnetTrainStationGentlemanScript:
    faceplayer
    opentext
    checkevent EVENT_GOT_KENYA
    iftrue .GotKenya
    writetext GentlemanNormalText
    waitbutton
    closetext
    end

.GotKenya
    writetext GentlemanReadMailText
    waitbutton
    closetext
    setevent EVENT_GENTLEMAN_READ_TRAIN_MAIL
    end

GoldenrodMagnetTrainStationCooltrainerf1Script:
    jumptextfaceplayer GoldenrodMagnetTrainStationCooltrainerf1Text

GoldenrodMagnetTrainStationCooltrainerf2Script:
    jumptextfaceplayer GoldenrodMagnetTrainStationCooltrainerf2Text

GentlemanExitMovement:
	step_down
	step_down
	step_left
	step_left
	step_down
    step_end

GoldenrodMagnetTrainStationOfficerText:
    text "Explore in"
    line "comfort!"
    para "Oh… you don't"
    line "have a ticket."
    done

GentlemanNormalText:
    text "The trains run on"
    line "geothermal energy"
    cont "from the under-"
    cont "ground."
    para "It's so clean!"
    done

GentlemanReadMailText:
    text "Oh, you have mail"
    line "for me?"
    para "… What does it"
    line "say?"
    para "… Well, thank you"
    line "for telling me."
    done

GoldenrodMagnetTrainStationCooltrainerf1Text:
    text "This train"
    line "travels between"
    cont "Kanto and Johto."
    done

GoldenrodMagnetTrainStationCooltrainerf2Text:
    text "I really like the"
    line "new cars. The old"
    cont "ones were quite"
    cont "unsafe."
    done
	