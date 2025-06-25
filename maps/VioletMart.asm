VioletMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, VIOLET_CITY, 1
	warp_event  3,  7, VIOLET_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	mart_clerk_event  1,  3, MARTTYPE_STANDARD, MART_VIOLET
	object_event  7,  6, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletMartGrannyText, -1
	object_event  5,  2, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletMartCooltrainerMText, -1

VioletMartGrannyText:
	text "The tower can see"
	line "for miles away."
	
	para "Falkner uses his"
	line "Pidgeotto to blow"
	para "clouds from all"
	line "over to rain on"
	cont "our city."
	done

VioletMartCooltrainerMText:
	text "Without rain the"
	line "sprout tower was"
	para "getting too"
	text "wobbly."
	done
