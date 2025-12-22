OlivineLighthouseRoof_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9,  3, OLIVINE_LIGHTHOUSE_6F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10, 14, SPRITE_EUSINE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EusineRaikouScript, EVENT_BATTLED_RAIKOU 
	object_event  10,  19, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, RAIKOU, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LIGHTHOUSE_RAIKOU 
	itemball_event 16,  8, SILVER_LEAF, 1, EVENT_OLIVINE_LIGHTHOUSE_ROOF_SILVER_LEAF

	object_const_def
	const LIGHTHOUSE_EUSINE
	const LIGHTHOUSE_RAIKOU

EusineRaikouScript:
	faceplayer
	opentext
	checkevent EVENT_BATTLED_RAIKOU
	iftrue_jumptext RaikouText3
	writetext RaikouConditionText
	waitbutton
	checkpoke LUGIA
	iftrue RaikouAppears
	checkpoke POLITOED
	iftrue RaikouAppears
	writetext EusineTextNoRain
	waitbutton
	closetext
	end

EusineTextNoRain:
	text "If only I could"
	line "summon a storm!"
	done
	
RaikouAppears:
	showemote EMOTE_SHOCK, LIGHTHOUSE_EUSINE, 30
	writetext RaikouCOnditionText2
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal LEFT, .RaikouBattleRight
	readvar VAR_FACING
	ifequal UP, .RaikouBattleUp
	applyonemovement PLAYER, step_down
	applyonemovement PLAYER, step_right
.RaikouBattleUp:
	appear LIGHTHOUSE_RAIKOU
	applymovement LIGHTHOUSE_RAIKOU, LighthouseRaikouMovement1
	turnobject LIGHTHOUSE_EUSINE, RIGHT
	pause 30
	applyonemovement PLAYER, step_right
	cry RAIKOU
	pause 60
	setevent EVENT_BATTLED_RAIKOU
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	loadwildmon RAIKOU, 40
	startbattle
	disappear LIGHTHOUSE_RAIKOU
	setevent EVENT_LIGHTHOUSE_RAIKOU
	reloadmapafterbattle
	end

.RaikouBattleRight:
	appear LIGHTHOUSE_RAIKOU
	applymovement LIGHTHOUSE_RAIKOU, LighthouseRaikouMovement2
	turnobject LIGHTHOUSE_EUSINE, LEFT
	applyonemovement PLAYER, step_down
	applyonemovement PLAYER, step_left	
	pause 30
	applyonemovement PLAYER, step_left	
	cry RAIKOU
	pause 60
	setevent EVENT_BATTLED_RAIKOU
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	loadwildmon RAIKOU, 40
	startbattle
	disappear LIGHTHOUSE_RAIKOU
	setevent EVENT_LIGHTHOUSE_RAIKOU
	reloadmapafterbattle
	end

LighthouseRaikouMovement1: ; fix 
	fix_facing
	fast_jump_step_up
	fast_jump_step_right
	fast_jump_step_up
	step_end


LighthouseRaikouMovement2: ; fix 
	fix_facing
	fast_jump_step_up
	fast_jump_step_left
	fast_jump_step_up
	step_end

RaikouConditionText:
	text "<PLAYER>. This"
	line "lighthouse is a"
	cont "lightning rod"
	
	para "during storms. If"
	line "we could summon a"
	cont "rainstorm, then "
	
	para "Raikou would"
	line "be drawn to it!"
	done

RaikouCOnditionText2:
	text "That #mon"
	line "summons a storm-"
	
	para "I can hear its"
	line "footfalls, like"
	
	para "static drawn to"
	line "an antenna!"
	done

RaikouText3:
	text "My heart flutters"
	line "to have seen it!"
	done
