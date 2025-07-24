ManiasHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 1
	warp_event  3,  7, CIANWOOD_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_JUMPSTD, radio2
	bg_event  7,  1, BGEVENT_JUMPSTD, picturebookshelf

	def_object_events
	object_event  2,  4, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, TEDDIURSA, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptext, ManiasDollText, -1
	object_event  4,  5, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, CHANSEY, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ManiaHealerScript, -1



ManiasDollText:
	text "A shiny Teddiursa"
	line "doll. Looks like"
	cont "it was loved."
	done


ManiaHealerScript:
	; debug tech TODO REMOVE
	setevent EVENT_CIANWOODCITY_KURT
	setevent EVENT_CIANWOODCITY_LUGIA
	opentext
	writetext ManiaHealingDoll
	waitbutton
	playmusic MUSIC_HEAL
	special HealParty
	special SaveMusic	
	writetext ManiaHealed
	waitbutton
	closetext
	playmusic MUSIC_NONE	
	special RestoreMusic
	end


ManiaHealingDoll:
	text "A special Chansey"
	line "doll! They heal"
	cont "#mon."
	done

ManiaHealed:
	text "All better!"
	done
