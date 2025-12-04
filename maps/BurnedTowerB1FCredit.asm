BurnedTowerB1FCredit_MapScriptHeader:
	def_scene_scripts
	scene_script BURNEDTOWERB1F_CREDITCreditScene

	def_callbacks


	def_warp_events
	warp_event 9, 6, DEBUG_ROOM, 1

	def_coord_events


	def_bg_events


	def_object_events
	object_event  10, 9, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, HO_OH, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1

	object_event  7,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, RAIKOU, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_1
	object_event 12,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, ENTEI, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_1
	object_event 10,  4, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, SUICUNE, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_1

	object_event  7,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, JOLTEON, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_2
	object_event 12,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, FLAREON, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_2
	object_event 10,  4, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, VAPOREON, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_2

	object_event  7, 10, SPRITE_MEJIMI, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  10, SPRITE_KENSEY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 14,  4, SPRITE_BOBESH, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  4, SPRITE_ADRINNA, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1


	object_const_def 
	const BURNEDTOWERB1F_CREDIT_HOOH

	const BURNEDTOWERB1F_CREDIT_RAIKOU1
	const BURNEDTOWERB1F_CREDIT_ENTEI1
	const BURNEDTOWERB1F_CREDIT_SUICUNE1
	const BURNEDTOWERB1F_CREDIT_RAIKOU2 ; jolteon 
	const BURNEDTOWERB1F_CREDIT_ENTEI2 ; flareon 
	const BURNEDTOWERB1F_CREDIT_SUICUNE2 ; vaporeon 



BURNEDTOWERB1F_CREDITCreditScene:
	applyonemovement PLAYER, hide_object
	playmusic MUSIC_NONE
	
	pause 60
	applymovement BURNEDTOWERB1F_CREDIT_HOOH, HoOhMovesBT1FC
	pause 30
	cry HO_OH
	waitsfx

	refreshscreen
	pokepic HO_OH
	waitbutton
	closepokepic
	
	pause 30
	appear BURNEDTOWERB1F_CREDIT_RAIKOU1
	turnobject PLAYER, UP
	pause 5
	disappear BURNEDTOWERB1F_CREDIT_RAIKOU2
	pause 15
	cry RAIKOU
	appear BURNEDTOWERB1F_CREDIT_ENTEI1
	applyonemovement PLAYER, hide_object
	pause 5
	disappear BURNEDTOWERB1F_CREDIT_ENTEI2
	pause 15
	cry ENTEI
	appear BURNEDTOWERB1F_CREDIT_SUICUNE1
	applyonemovement PLAYER, hide_object
	pause 5
	disappear BURNEDTOWERB1F_CREDIT_SUICUNE2
	pause 15
	cry SUICUNE
	pause 15
	playsound SFX_WARP_FROM
	applymovement BURNEDTOWERB1F_CREDIT_RAIKOU1, BurnedTowerRaikouMovement
	disappear BURNEDTOWERB1F_CREDIT_RAIKOU1
	waitsfx
	playsound SFX_WARP_FROM
	applymovement BURNEDTOWERB1F_CREDIT_ENTEI1, BurnedTowerEnteiMovement
	disappear BURNEDTOWERB1F_CREDIT_ENTEI1
	waitsfx
	pause 15
	playsound SFX_WARP_FROM
	applymovement BURNEDTOWERB1F_CREDIT_SUICUNE1, BurnedTowerSuicuneMovement1
	playsound SFX_WARP_FROM
	applymovement BURNEDTOWERB1F_CREDIT_SUICUNE1, BurnedTowerSuicuneMovement2
	pause 20
	cry SUICUNE
	disappear BURNEDTOWERB1F_CREDIT_SUICUNE1
	pause 60
	special FadeOutPalettes
	opentext
	writetext halloffametext_2
	waitbutton
	closetext
	warphide CREDITS_POKEMON_ALL, 4, 5
;	halloffame
	end

halloffametext_2:
	text "If there's someone"
	line "who shaped your"
	cont "world for the"
	cont "better,"
	
	para "Give them a call,"
	line "send a letter,"
	cont "a message, or"
	para "even a prayer,"
	
	para "to let them know"
	line "what they mean"
	cont "to you."
	
	para "It may mean the"
	line "world to them to"
	para "know that their"
	line "inheritance is"
	cont "treasured."
	done

HoOhMovesBT1FC:
	fix_facing
	slide_step_up
	slide_step_up
	slide_step_up
	slide_step_up
	slide_step_up
	slide_step_up
	step_end
		
	
BurnedTowerRaikouMovement:
	fix_facing
	fast_jump_step_down
	fast_jump_step_left
	step_end

BurnedTowerEnteiMovement:
	fix_facing
	fast_jump_step_right
	fast_jump_step_down
	fast_jump_step_right
	step_end

BurnedTowerSuicuneMovement1:
	fix_facing
	fast_jump_step_right
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_left
	step_end

BurnedTowerSuicuneMovement2:
	fix_facing
	fast_jump_step_down
	fast_jump_step_down
	step_end

BurnedTowerSuicuneMovement3:
	fix_facing
	run_step_up
	fast_jump_step_right
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_down
	step_end
