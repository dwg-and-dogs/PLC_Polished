AzaleaMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, AZALEA_TOWN, 3
	warp_event  3,  7, AZALEA_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	mart_clerk_event  1,  3, MARTTYPE_STANDARD, MART_AZALEA
	object_event  2,  5, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, AzaleaMartCooltrainermText, -1
	object_event  5,  3, SPRITE_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, (1 << MORN) | (1 << DAY), PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AzaleaMartLadyText, -1

AzaleaMartCooltrainermText:
	text "I wish Kurt would"
	line "make me some of"
	cont "his custom Balls."
	done

AzaleaMartLadyText:
	text "Some people like"
	line "to use rare"
	cont "candies on their"
	cont "#mon, some"
	cont "don't. Keep in"
	cont "mind that your"
	cont "#mon don't get"
	cont "as strong with"
	cont "candies, though."
	done
