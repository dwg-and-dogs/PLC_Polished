GauldenrodSereneSpringsGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GAULDENROD, 7
	warp_event  3,  7, GAULDENROD, 8
	warp_event  2,  0, SERENE_SPRINGS, 1
	warp_event  3,  0, SERENE_SPRINGS, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  4, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GauldenrodSereneSpringsGateNPCScript, -1

GauldenrodSereneSpringsGateNPCScript:
	jumptextfaceplayer GauldenrodSereneSpringsGateNPCText

GauldenrodSereneSpringsGateNPCText:
	text "Did you know the"
	line "reason for the"
	cont "Serene Springs?"

	para "The bubbles are"
	line "said to be steam"
	para "coming off of a"
	line "powerful #mon"
	para "swimming through"
	line "the bedrock."

	para "..."

	para "Say, I think I"
	line "smell sulfur."
	done
