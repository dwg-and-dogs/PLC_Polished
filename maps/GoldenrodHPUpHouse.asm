GoldenrodHPUpHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 19
	warp_event  3,  7, GOLDENROD_CITY, 19

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodHPUpFisherScript, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodHPUpHousePokefanFText, -1
	pokemon_event  6,  3, QUAGSIRE, -1, -1, PAL_NPC_BLUE, GoldenrodHPUpHousePikachuText, -1

GoldenrodHPUpFisherScript:
    checkevent EVENT_GOT_GOOD_ROD
	iftrue_jumptextfaceplayer .AlreadyHaveRodText
    faceplayer
    opentext
    writetext .FisherIntroText
    promptbutton
    verbosegivekeyitem GOOD_ROD
	iffalse .BagFull
    setevent EVENT_GOT_GOOD_ROD
    jumpthisopenedtext
		
    text "You never know"
	line "what you'll pull"
	cont "up with that!"
    done	
		
.BagFull
    jumpthisopenedtext FisherBagFullText

.FisherIntroText:
    text "I was married to"
    line "the sea."
	
	para "We had a tough"
	line "breakup - she"
	para "got to be too"
	line "tempestuous for"
	cont "me."
	
	para "Ah, so I don't"
	line "need this any"
	cont "longer."
    done

.AlreadyHaveRodText:
    text "Remember - "
	line "there's always"
	para "more fish in"
	line "the sea!"
    done


GoldenrodHPUpHousePokefanFText:
	text "After the wedding"
	line "I realized I was"
	cont "Whicash-fished."
	
	para "His ex took all"
	line "of his stuff in"
	cont "the divorce."
	done

GoldenrodHPUpHousePikachuText:
	text "Quagsire: "
	line "Qua!"
	done
