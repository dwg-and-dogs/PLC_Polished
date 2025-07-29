Route39_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  1,  3, ROUTE_39_BARN, 1
	warp_event  5,  3, ROUTE_39_FARMHOUSE, 1

	def_coord_events

	def_bg_events
	bg_event  9,  5, BGEVENT_JUMPTEXT, MoomooFarmSignText
	bg_event 15,  7, BGEVENT_JUMPTEXT, Route39SignText
	bg_event  9, 37, BGEVENT_JUMPTEXT, HoldingPondsSignText
	bg_event  5, 13, BGEVENT_ITEM + NUGGET, EVENT_ROUTE_39_HIDDEN_NUGGET

	def_object_events
	object_event  8, 21, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, MILTANK, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route39MiltankScript, EVENT_ROUTE39_MILTANK
	object_event  4, 20, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, SUICUNE, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE39_MILTANK
	
	pokemon_event  3, 12, MILTANK, -1, -1, PAL_NPC_RED, Route39MiltankText, -1
	pokemon_event  6, 11, MILTANK, -1, -1, PAL_NPC_RED, Route39MiltankText, -1
	pokemon_event  4, 15, MILTANK, -1, -1, PAL_NPC_RED, Route39MiltankText, -1
	pokemon_event  8, 13, MILTANK, -1, -1, PAL_NPC_RED, Route39MiltankText, -1
	fruittree_event  9,  3, FRUITTREE_ROUTE_39, PNK_APRICORN, PAL_NPC_RED
	object_event  13,19, SPRITE_COWGIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route39FarmerScript, -1  ; annie 
	itemball_event 11, 32, BLACK_SLUDGE, 1, EVENT_ROUTE_39_SLUDGE ; TOP OF THE CAVE
; trainers 
	object_event  3,  9, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerTamerVince, -1
	object_event  8,  9, SPRITE_COWGIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerCowgirlApril, -1
	object_event  4,  12, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerTamerOswald, -1

	object_const_def
	const ROUTE_39_MILTANK 
	const ROUTE_39_SUICUNE

Route39SignText:
	text "Route 39"
	line "Leased to MooMoo"
	cont "Farms, LLC"
	done

HoldingPondsSignText:
	text "Do not swim in"
	line "drainage ponds!"
	
	para "-Moomoo Farms"
	done

MoomooFarmSignText:
	text "Moomoo Farm"

	para "Enjoy Our Fresh"
	line "and Tasty Milk"
	done

Route39TrainerTipsText:
	text "Trainer Tips"

	para "Use Headbutt on"
	line "trees to shake"
	cont "#mon out."

	para "Different kinds of"
	line "#mon drop out"
	cont "of trees."

	para "Use Headbutt on"
	line "any tree you see!"
	done

Route39MiltankText:
	text "Miltank: Moo!"
	done
	

Route39FarmerScript:
	faceplayer
	opentext
	checkevent EVENT_GAVE_MOOMOO_MILKS
	iftrue_jumptext CowgirlThanksAgainText
	checkevent EVENT_BEAT_COWGIRL_ANNIE
	iftrue_jumptext AfterCowgirlAnnieBattleText
	checkevent EVENT_MILTANK_SUICUNE
	iftrue CowgirlBattlesPlayer
	checkevent EVENT_MILTANK_COWGIRL
	iftrue CowgirlThanksPlayer
	jumptext Route39LostMiltankText

Route39LostMiltankText:
	text "One of the Milt-"
	line "ank went missin'."
	
	para "Well, it went a"
	line "bit loopy lookin'"
	cont "for its babe."
	
	para "But, uh, for now"
	line "it needs to get"
	cont "to milking."
	
	para "Can you help me"
	line "find it?"
	done

CowgirlThanksPlayer:
	showtext CowgirlThanksPlayerText
	verbosegiveitem MOOMOO_MILK, 12
	setevent EVENT_GAVE_MOOMOO_MILKS
	end

CowgirlThanksPlayerText:
	text "You found her!"
	para "She'll feel much"
	line "better once she's"
	cont "milked."

	para "Please, take "
	line "these as thanks."
	done

CowgirlThanksAgainText:
	text "Thanks again!"
	done

CowgirlBattlesPlayer: 
	showtext CowgirlBattlesPlayerText
	winlosstext CowgirlWinLossText, 0
	loadtrainer COWGIRL, ANNIE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_COWGIRL_ANNIE
	jumptext AfterCowgirlAnnieBattleText

CowgirlBattlesPlayerText:
	text "I saw you let her"
	line "out of here!"
	
	para "I'll get you for"
	line "that, rustler!"
	done

CowgirlWinLossText:
	text "This ain't your"
	line "first rodeo."
	done

AfterCowgirlAnnieBattleText:
	text "Dirty hands, "
	line "clean money."
	
	para "Can you say the"
	line "same?"
	done

Route39MiltankScript:
	checkevent EVENT_MILTANK_COWGIRL
	iftrue .MiltankCowgirl
	showcrytext Text_Miltank39, MILTANK
	readvar VAR_FACING 
	showtext ExplainMiltankDecisionText
	ifequal LEFT, .SendToSuicuneOption
	; IF FACING RIGHT, SEND TO RANCHER 
.SendToRancher:
	showtext SpookToRancherText
	yesorno
	iffalse_jumptext NoSpookMiltankText
	applymovement ROUTE_39_MILTANK, MiltankMovement3
	setevent EVENT_MILTANK_COWGIRL
	setevent EVENT_ROUTE39_MILTANK
	end
	
.SendToSuicuneOption:
	showtext SpookToSuicuneText
	yesorno
	iffalse_jumptext NoSpookMiltankText
	showtext SpookedToSuicuneText
	applymovement ROUTE_39_MILTANK, MiltankMovement4 ; 
	showemote EMOTE_HAPPY, ROUTE_39_MILTANK, 60
	applymovement ROUTE_39_SUICUNE, SuicuneMovement ; three right, down one 
	opentext
	writetext SuicuneText
	cry SUICUNE
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	loadwildmon SUICUNE, 40
	setevent EVENT_MILTANK_SUICUNE
	setevent EVENT_ROUTE39_MILTANK
	startbattle
	disappear ROUTE_39_SUICUNE
	reloadmapafterbattle
	end

.MiltankCowgirl:
	showcrytext Text_Miltank39Cowgirl, MILTANK
	end

ExplainMiltankDecisionText:
	text "It's a lost"
	line "#mon! It looks"
	cont "distressed."
	
	para "It's eyes dart"
	line "between Suicune"
	cont "and the rancher."
	done

Text_Miltank39Cowgirl:
	text "Miltanks lets out"
	line "a morose moo."
	done
	
Text_Miltank39:
	text "It's a lost"
	line "#mon! It looks"
	cont "distressed."
	done
	
SpookToRancherText:
	text "Herd the miltank"
	line "back to the"
	cont "rancher?"
	done

SpookToSuicuneText:
	text "Herd the miltank"
	line "to Suicune?"
	done

SpookedToSuicuneText:
	text "Miltank is ready"
	line "to run!"
	done

NoSpookMiltankText:
	text "Oh, not yet."
	done

SuicuneText:
	text "Shawoo!"
	done

MiltankMovement1: 
	fix_facing
	fast_jump_step_up
	fast_jump_step_up
	fast_jump_step_up
	fast_jump_step_up
	step_end

MiltankMovement2:
	fix_facing
	fast_jump_step_up
	step_end

MiltankMovement3:
	fix_facing
	fast_jump_step_right
	fast_jump_step_up
	fast_jump_step_right
	step_end

MiltankMovement4:
	fix_facing
	fast_jump_step_left
	fast_jump_step_left
	step_end
	
PlayerFollowMiltank:
	step_left
	step_left
	step_left
	step_end

SuicuneMovement:
	fix_facing
	fast_jump_step_right
	fast_jump_step_right
	slide_step_down
	slide_step_right
	step_end

GenericTrainerTamerVince:
	generictrainer TAMER, VINCE, EVENT_BEAT_TAMER_VINCE, .SeenText1, .BeatenText1

.BeatenText1:
	text "Tending cows is"
	line "hard work."
	done

.SeenText1:
	text "This ranch isn't"
	line "a playground!"
	done
	
	

GenericTrainerTamerOswald:
	generictrainer TAMER, OSWALD, EVENT_BEAT_TAMER_OSWALD, .SeenText2, .BeatenText2

.BeatenText2:
	text "You skimmed me."
	done

.SeenText2:
	text "Your odds to win?"
	line "Lower than two"
	cont "percent!"
	done

GenericTrainerCowgirlApril:
	generictrainer COWGIRL, APRIL, EVENT_BEAT_COWGIRL_APRIL, .SeenText3, .BeatenText3

	text "Oh, the 4 H's?"
	line "That's how we get"
	cont "interlopers out."
	
	para "Heckle you,"
	line "Harass you,"
	cont "Herd you,"
	
	para "and if we need,"
	line "Hogtie you."
	done

.BeatenText3:
	text "Take it easy,"
	line "you'll scare the"
	cont "Miltank!"
	done

.SeenText3:
	text "Stay out, or we"
	line "will give you all"
	cont "four H's!"
	done