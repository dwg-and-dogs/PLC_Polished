SlowpokeWellB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SlowpokeWellB2FCallBack

	def_warp_events
	warp_event  9, 11, SLOWPOKE_WELL_B1F, 2
	warp_event  5,  1, UNION_CAVE_B1F_SOUTH, 3
	warp_event  15,  5, SLOWPOKE_WELL_B3F, 1

	def_coord_events


	def_bg_events


	def_object_events
	object_event 5, 2, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SlowpokeWellB2FGuardScript, SLOWPOKE_WELL_MOVED_ASIDE
	strengthboulder_event   6, 2
	strengthboulder_event  4, 2


	object_const_def
	const SLOWPOKE_WELL_B2F_SCHOOLBOY

SlowpokeWellB2FCallBack:
	checkevent EVENT_MISTY_BASIN_B1F_BLACKBELT
	iffalse .Done
	changeblock 10,  8, $02
	changeblock 12,  8, $28
.Done:
	endcallback

SlowpokeWellB2FGuardScript:
	faceplayer
	opentext
	checkevent SLOWPOKE_WELL_MOVED_ASIDE
	iftrue .MovedAside
	checkevent EVENT_LOGGERS_ILEX_FOREST
	iftrue .MovesAside
	writetext SlowpokeWellImGuardingText
	waitbutton
	closetext
	end 
	
.MovesAside:
	writetext SlowpokeWellMovesAsideText
	waitbutton
	closetext
	applyonemovement PLAYER, step_down
	turnobject PLAYER, UP
	applymovement SLOWPOKE_WELL_B2F_SCHOOLBOY, MovesAsideMovement
	setevent SLOWPOKE_WELL_MOVED_ASIDE
	end

.MovedAside:
	writetext SlowpokeWellMovesAsideText
	waitbutton
	closetext
	end

SlowpokeWellImGuardingText:
	text "The miners in Un-"
	line "ion cave want to"
	para "exploit Slowpoke"
	line "well. I won't let"
	cont "anyone do that!"
	done

MovesAsideMovement:
	step_down
	step_right
	turn_head_left
	step_end

SlowpokeWellMovesAsideText:
	text "Oh, you stopped"
	line "the Ilex loggers?"
	
	para "Cool! You can"
	line "pass through."
	done
