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
	object_event  5,  3, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, (1 << MORN) | (1 << DAY), PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AzaleaMartLadyText, -1

AzaleaMartCooltrainermText:
	text "I love this mart!"
	line "It's the only one"
	para "in Johto to sell"
	line "Rare Candies."
	done

AzaleaMartLadyText:
	text "Some people use"
	line "Rare Candies,"
	cont "some don't."
	para "If you do, your"
	line "#mon won't be"
	cont "as strong."
	
;	para "And experts would"
;	line "never use them."
	done
