SproutTower1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8, 15, VIOLET_CITY, 7
	warp_event  9, 15, VIOLET_CITY, 7
	warp_event  7,  7, SPROUT_TOWER_2F, 1

	def_coord_events

	def_bg_events
	bg_event  5, 15, BGEVENT_JUMPTEXT, SproutTower1FStatueText
	bg_event 12, 15, BGEVENT_JUMPTEXT, SproutTower1FStatueText

	def_object_events
	object_event  7, 12, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBirdKeeperRod, -1
	object_event  10, 12, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBirdKeeperAbe, -1



SproutTower1FStatueText:
	text "A #mon statue…"

	para "It looks very"
	line "distinguished."
	done

GenericTrainerBirdKeeperRod:
    generictrainer BIRD_KEEPER, ROD, EVENT_BEAT_BIRD_KEEPER_ROD, BirdKeeperRodSeenText, BirdKeeperRodBeatenText

    text "Brought me down"
	line "to Earth!"
    done

GenericTrainerBirdKeeperAbe:
    generictrainer BIRD_KEEPER, ABE, EVENT_BEAT_BIRD_KEEPER_ABE, BirdKeeperAbeSeenText, BirdKeeperAbeBeatenText

    text "You've got some"
	line "wind under your"
	cont "wings."
    done

BirdKeeperRodSeenText:
    text "Can we get much"
    line "higher?"
    done

BirdKeeperRodBeatenText:
    text "Brought me down"
	line "to Earth!"
    done

BirdKeeperAbeSeenText:
    text "If you want to"
	line "talk to Falkner,"
	para "you've got to get"
	line "through me!"
    done

BirdKeeperAbeBeatenText:
    text "You've got some"
	line "wind under your"
	cont "wings."
    done
