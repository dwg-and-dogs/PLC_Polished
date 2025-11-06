WhirlIslandLugiaChamber_MapScriptHeader:
	def_scene_scripts
	scene_script WhirlIslandKurtLugiaScript

	def_callbacks


	def_warp_events
	warp_event  9, 13, WHIRL_ISLAND_B3F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, LUGIA, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_LUGIA
	object_event  9, 11, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ObjectEvent, EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_KURT ;
	object_event  10, 11, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LUGIA_POKEBALL
	
	object_const_def
	const WHIRLISLANDLUGIACHAMBER_LUGIA
	const WHIRLISLANDLUGIACHAMBER_KURT
	const WHIRLISLANDLUGIACHAMBER_BALL


WhirlIslandKurtLugiaScript:
	sdefer .Script
	end
	
.Script:
	applyonemovement PLAYER, step_up
	; music
	showemote EMOTE_BOLT, WHIRLISLANDLUGIACHAMBER_KURT, 60
	opentext
	writetext KurtLugiaText1
	waitbutton
	closetext
	appear WHIRLISLANDLUGIACHAMBER_BALL
	cry LUGIA
	waitsfx
	applymovement WHIRLISLANDLUGIACHAMBER_BALL, WhirlIslandBallMoves
;	clearevent EVENT_LUGIA_POKEBALL
	playsound SFX_THROW_BALL
	waitsfx
	playsound SFX_BALL_BOUNCE
	waitsfx
	disappear WHIRLISLANDLUGIACHAMBER_LUGIA
	setevent EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_LUGIA
	pause 30
	disappear WHIRLISLANDLUGIACHAMBER_BALL
	setevent EVENT_LUGIA_POKEBALL
	pause 30
	turnobject WHIRLISLANDLUGIACHAMBER_KURT, DOWN
	showtext KurtLugiaText2
	applymovement WHIRLISLANDLUGIACHAMBER_KURT, KurtLeavesMovement
	disappear WHIRLISLANDLUGIACHAMBER_KURT
	; revise the music back 
	setscene $1
	setevent EVENT_LUGIA_POKEBALL
	setevent EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_KURT
	setevent EVENT_CIANWOODCITY_KURT
	setevent EVENT_CIANWOODCITY_LUGIA
	end
	
KurtLugiaText1:
	text "Lugia, give me"
	line "your power!"
	done

KurtLugiaText2: ; need to have kurt go to the top floor and tell the player here to go 
	text "<PLAYER>, I've"
	line "caught Lugia."
	
	para "Now it can wreak"
	line "havoc at the"
	cont "Consul's port."
	
	para "There may be a"
	line "shrine we can use"
	cont "at Cianwood."
	
	para "Let's go."
	
	para "..."
	done

KurtLeavesMovement:
	step_right
	step_down
	step_down
	step_left
	turn_head_down
	step_end

WhirlIslandBallMoves:
	fix_facing
	slide_step_up
	slide_step_left
	step_end
