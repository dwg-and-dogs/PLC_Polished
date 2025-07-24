TranquilTarn_MapScriptHeader: 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_NEWMAP, TranquilTarnFlyPoint
	callback MAPCALLBACK_TILES, TranquilTarnCallback  


	def_warp_events


	def_coord_events
;	coord_event 26, 20, 0, TranquilTarnDestructionScene ; probably going to cut this  


	def_bg_events
; todo add a 

	def_object_events
	object_event  28,  20, SPRITE_BIRD_KEEPER, 	SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBirdKeeperHank, EVENT_BEAT_KANNA
	object_event 29, 20, SPRITE_BRIGADER, 	SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, TranquilTarnBrigaderScript, -1
	pokemon_event  30, 20, GYARADOS, -1, -1, PAL_NPC_BLUE, GyaradosText, EVENT_BEAT_KANNA
	object_event  22,  10, SPRITE_HIKER, 	SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerRuinManiacJones, EVENT_BEAT_KANNA
	object_event  18,  19, SPRITE_HIKER, 	SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerRuinManiacLeland, EVENT_BEAT_KANNA
	object_event  26,  25, SPRITE_BUG_MANIAC, 	SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBugManiacRob, EVENT_BEAT_KANNA
	object_event 20, 6, SPRITE_AROMA_LADY, 	SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TranquilTarnNPC1Script, EVENT_BEAT_KANNA
	object_event 11, 10, SPRITE_BLACK_BELT, 	SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, TranquilTarnNPC2Text, EVENT_BEAT_KANNA
	object_event 23, 10, SPRITE_BRIGADER, 	SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, TranquilTarnBrigaderScript, -1	
	pokemon_event  24, 10, GYARADOS, -1, -1, PAL_NPC_BLUE, GyaradosText, EVENT_BEAT_KANNA
	fruittree_event 17, 26, FRUITTREE_TRANQIL_TARN_1, TOUGH_LEAVES, PAL_NPC_GREEN;OK
	fruittree_event 36,  5, FRUITTREE_TRANQIL_TARN_2, RADIANT_OPAL, PAL_NPC_RED;OK
	tmhmball_event 31, 29, TM_AVALANCHE, EVENT_TM_AVALANCHE
	itemball_event 26, 33, ENERGY_ROOT, 1, EVENT_TARN_ITEM_1
	itemball_event 38, 14, REVIVAL_HERB, 1, EVENT_TARN_ITEM_2

	object_const_def
;	const TRANQUIL_TARN_HANK
;	const TRANQUIL_TARN_BRIGADER
;	const TRANQUIL_TARN_GYARADOS

TranquilTarnCallback:
	checkevent EVENT_BEAT_KANNA
	iffalse .Done
	changeblock 26, 8, $CB
	changeblock 32, 8, $CB 
	changeblock 26, 10, $CB 
	changeblock 32, 10, $CB 
	changeblock 24, 12, $CB 
	changeblock 32, 12, $CB 
	changeblock 24, 14, $CB 
	changeblock 30, 14, $CB 
	changeblock 22, 16, $CB 
	changeblock 28, 16, $CB 
	changeblock 22, 18, $CB 
	changeblock 28, 18, $CB 
	changeblock 24, 20, $CB 
	changeblock 26, 20, $CB 
.Done:
	endcallback

TranquilTarnFlyPoint:
	setflag ENGINE_FLYPOINT_TRANQUIL_TARN
	endcallback

GenericTrainerBirdKeeperHank:
	generictrainer BIRD_KEEPER, HANK, EVENT_BEAT_BIRD_KEEPER_HANK, HankSeenText, HankBeatenText

HankBeatenText:
	text "You whirled us"
	line "out of the air!"
	done
	
HankSeenText:
	text "Fly, fly! My bird"
	line "#mon!"
	done

GenericTrainerRuinManiacJones:
	generictrainer RUIN_MANIAC, JONES, EVENT_BEAT_RUIN_MANIAC_JONES, RuinManiacJonesSeenText, RuinManiacJonesBeatenText

RuinManiacJonesBeatenText:
	text "Rgh! You made me"
	line "lose my temper!"
	done
	
RuinManiacJonesSeenText:
	text "Hisui steel won't"
	line "melt!"
	done

GenericTrainerRuinManiacLeland:
	generictrainer RUIN_MANIAC, ROB, EVENT_BEAT_RUIN_MANIAC_ROB, RuinManiacLelandSeenText, RuinManiacLelandBeatenText

RuinManiacLelandBeatenText:
	text "I couldn't"
	line "even beat you?"
	done
	
RuinManiacLelandSeenText:
	text "I've explored all"
	line "Hisui's caves - "
	
	para "I know a thing or"
	line "two!"
	done

GenericTrainerBugManiacRob:
	generictrainer BUG_MANIAC, ROB, EVENT_BEAT_BUG_MANIAC_ROB, BugManiacRobSeenText, BugManiacRobBeatenText

BugManiacRobBeatenText:
	text "Hm, not quite"
	line "strong enough."
	done
	
BugManiacRobSeenText:
	text "Hisui's bugs are"
	line "strong, right?"
	done

TranquilTarnBrigaderScript:
	faceplayer
	checkevent EVENT_BEAT_KANNA
	iftrue_jumptext TarnBrigaderText2
	jumpthistext
	
	text "Hey kid, want a"
	line "Gyarados? They're"
	para "full of Dragon"
	line "energy."
	
	para "Far stronger than"
	line "your #mon."
	
	para "Go find General"
	line "Adrinna if so."
	done
	
TarnBrigaderText2:
	text "General Adrinna's"
	line "plan worked!"
	
	para "Some of the His-"
	line "uians joined our"
	cont "brigade!"
	
	para "And now, a great"
	line "Lake to raise up"
	cont "Gyarados."
	done

TranquilTarnNPC1Script:
	faceplayer
	checkevent EVENT_BEAT_KANNA
	iffalse_jumptext TarnNPC1Text
	jumpthistext
	
	text "Did the soldiers"
	line "know what they"
	cont "were doing?"
	
	para "The tarn will"
	line "never be the"
	cont "same again."
	done

	
TarnNPC1Text:
	text "What happened to"
	line "Johto? Last time"
	para "we visited from"
	line "Hisui, there were"
	cont "no soldiers."
	done

TranquilTarnNPC2Text:
	text "Those brigaders"
	line "have no control"
	cont "over their"
	cont "#mon!"
	
	para "Where is their"
	line "discipline?"
	done

GyaradosText:
	text "Gayash!"
	done

;TranquilTarnDestructionScene:	; c.f. western capital  -- probably will cut, but leaving here in case I want to do it 
;	special Special_FadeBlackQuickly
;	special Special_ReloadSpritesNoPalettes
;	disappear PLAYER
;	showtext TarnScene_Text0 ; MEANWHILE, 
;	pause 10
;	special Special_FadeInQuickly
;	showemote EMOTE_SHOCK, TRANQUIL_TARN_HANK, 10
;	showtext TarnScene_Text1
;	showtext TarnScene_Text2
;	applyonemovement TRANQUIL_TARN_BRIGADER, step_down
;	turnobject TRANQUIL_TARN_BRIGADER, UP
;	applyonemovement TRANQUIL_TARN_HANK, step_right
;	showemote EMOTE_BOLT, TRANQUIL_TARN_GYARADOS, 10
;	applymovement TRANQUIL_TARN_GYARADOS, TarnGyarados_Movement1
;	earthquake 30
;	changeblock 28, 18, $CB
;	reloadmappart
;	turnobject TRANQUIL_TARN_HANK, UP
;	showemote EMOTE_SHOCK, TRANQUIL_TARN_HANK, 10	
;	showtext TarnScene_Text3
;	applymovement TRANQUIL_TARN_GYARADOS, TarnGyarados_Movement2
;	earthquake 30
;	changeblock 28, 16, $CB
;	reloadmappart
;	applyonemovement TRANQUIL_TARN_BRIGADER, step_left
;	applyonemovement TRANQUIL_TARN_BRIGADER, step_up	
;	showemote EMOTE_BOLT, TRANQUIL_TARN_BRIGADER, 20		
;	showtext TarnScene_Text4
;	; DO ALL THE REST 
;	special Special_FadeBlackQuickly
;	disappear TRANQUIL_TARN_GYARADOS
;	disappear PLAYER
;	setevent EVENT_BEAT_KANNA
;	; do all the blocks 
;	changeblock 26, 8, $CB
;	changeblock 32, 8, $CB 
;	changeblock 26, 10, $CB 
;	changeblock 32, 10, $CB 
;	changeblock 24, 12, $CB 
;	changeblock 32, 12, $CB 
;	changeblock 24, 14, $CB 
;	changeblock 30, 14, $CB 
;	changeblock 22, 16, $CB 
;	changeblock 28, 16, $CB 
;	changeblock 22, 18, $CB 
;	changeblock 28, 18, $CB 
;	changeblock 24, 20, $CB 
;	changeblock 26, 20, $CB 
;	reloadmappart
;	pause 10
;	special Special_FadeInQuickly	
;	turnobject TRANQUIL_TARN_HANK, LEFT
;	showtext TarnScene_Text5
;	turnobject TRANQUIL_TARN_BRIGADER, RIGHT	
;	showtext TarnScene_Text6
;	setscene $1
;	setevent EVENT_BEAT_KANNA
;	warp GROTTOED_GLACIER_B2F, 17, 5
;	end
	
;TarnScene_Text0:
;	text "Meanwhile, at the"
;	line "Tranquil Tarn:"
;	done
;
;TarnScene_Text1:
;	text "Hank: Really? You"
;	line "will let me Pilot"
;	cont "this Gyarados?"
;	done
; hank gets a gyarados 
;TarnScene_Text2:
;	text "Brigader: Yes, "
;	line "just get a taste"
;	cont "of its power."
;	done
;brigader gives it to hank 
;TarnScene_Text3:
;	text "Hank: Wow! OK..."
;	line "Wait, what's it-"
;	
;	para "Stop! Stop it!"
;	line "Stop thrashing!"
;	done
;gyarados thrashes about, wrecking the ice and ruining the landscape 
;TarnScene_Text4:
;	text "Brigader: Look at"
;	line "it crush the ice"
;	cont "in one blow!"
;	done
;hank is conflicted, but intoxicated
;TarnScene_Text5:
;	text "Hank: Incredible."
;	line "The Tarn, ruined,"
;	cont "and yet..."
;	
;	para "their power is so"
;	line "intoxicating..."
;	
;	para "Does the General"
;	line "have any flying"
;	cont "Dragons I can"
;	cont "tame?"
;	done
;
;TarnScene_Text6:
;	text "Brigader: Come to"
;	line "the mine and see"
;	cont "for yourself!"
;
;	para "Join us and wield"  
;	line "unrivaled might!"
;	done
;
;TarnGyarados_Movement1:
;	fix_facing
;	fast_jump_step_up
;	fast_jump_step_left
;	fast_jump_step_up
;	fast_jump_step_left
;	step_end
;
;TarnGyarados_Movement2:
;	fix_facing
;	fast_jump_step_up
;	fast_jump_step_up
;	step_end
