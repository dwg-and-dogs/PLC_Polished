HoltCoastGate_MapScriptHeader:
	def_scene_scripts
	scene_script HoltCoastGateWarpScene

	def_callbacks

	def_warp_events
	warp_event 2, 7, HOLLYS_HOLT, 3
	warp_event 3, 7, HOLLYS_HOLT, 4
	warp_event 2, 0, CALM_COAST, 1
	warp_event 3, 0, CALM_COAST, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 3, 4, SPRITE_VETERAN_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, HoltCoastGateNPCScript, -1


HoltCoastGateWarpScene:
	special Special_FadeOutMusic
	special FadeOutPalettes
	setscene $1
	applyonemovement PLAYER, hide_object
	warphide WESTERN_CAPITAL_CUTSCENE, 10, 22
	end

HoltCoastGateNPCScript:
	jumptextfaceplayer HoltCoastGateNPCText

HoltCoastGateNPCText:
	text "Will the emperor"
	line "try to annex"
	cont "Anarres Town?"
	done
