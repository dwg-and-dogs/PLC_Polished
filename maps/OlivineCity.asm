OlivineCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, OlivineCityFlyPoint

	def_warp_events
	warp_event 13, 17, OLIVINE_POKECENTER_1F, 1
	warp_event 10,  7, OLIVINE_GYM, 1
	warp_event 25,  7, OLIVINE_TIMS_HOUSE, 1
	warp_event 29,  7, OLIVINE_PUNISHMENT_SPEECH_HOUSE, 1
	warp_event 13, 11, OLIVINE_GOOD_ROD_HOUSE, 1
	warp_event  7, 17, OLIVINE_CAFE, 1
	warp_event 19, 13, OLIVINE_MART, 2
	warp_event 33, 19, OLIVINE_LIGHTHOUSE_1F, 1
	warp_event 19, 25, OLIVINE_DESAL_1F, 1
	warp_event 20, 25, OLIVINE_DESAL_1F, 2

	def_coord_events
	coord_event 10,  8, 0, OlivineCityRivalGymScript
	coord_event 33, 23, 0, OlivineCityRivalLighthouseScript

	def_bg_events ; fix the signs 
	bg_event 17,  7, BGEVENT_JUMPTEXT, OlivineCitySignText
	bg_event 20, 22, BGEVENT_JUMPTEXT, OlivineCityPortSignText
	bg_event  7,  7, BGEVENT_JUMPTEXT, OlivineGymSignText
	bg_event 34, 20, BGEVENT_JUMPTEXT, OlivineLighthouseSignText
	bg_event  1, 21, BGEVENT_JUMPTEXT, OlivineCityBattleTowerSignText
	bg_event 50, 27, BGEVENT_JUMPTEXT, OlivineCityPokeathlonDomeSignText
	bg_event 10, 17, BGEVENT_JUMPTEXT, OlivineCityCafeSignText
	bg_event 36, 14, BGEVENT_ITEM + RARE_CANDY, EVENT_OLIVINE_CITY_HIDDEN_RARE_CANDY
	bg_event 47, 17, BGEVENT_ITEM + BIG_PEARL, EVENT_OLIVINE_CITY_HIDDEN_BIG_PEARL
	bg_event 49, 29, BGEVENT_ITEM + SOFT_SAND, EVENT_OLIVINE_CITY_HIDDEN_SOFT_SAND

	def_object_events
	object_event 20,  8, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineCityYoungster1Script, -1
	object_event 26, 22, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineCitySailor1Text, -1
	object_event 11, 23, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineCitySailor4Text, -1
	object_event 23, 17, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineCitySailor5Text, -1
	smashrock_event 52, 23
	smashrock_event 55, 26
    object_event 19, 20, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineCityPnkApricornScript, -1
	object_event 
;npc talking about the desal plant used to do and what it does now

	object_const_def


OlivineCityFlyPoint:
	setflag ENGINE_FLYPOINT_OLIVINE
	endcallback

OlivineCityRivalGymScript:
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	playsound SFX_ENTER_DOOR
	appear OLIVINECITY_OLIVINE_RIVAL
	waitsfx
	playsound SFX_TACKLE
	applymovement PLAYER, OlivineCityMovementData_ShovePlayerDown
	applyonemovement OLIVINECITY_OLIVINE_RIVAL, step_down
	playmusic MUSIC_RIVAL_ENCOUNTER
	showtext OlivineCityRivalGymText
	turnobject PLAYER, RIGHT
	applymovement OLIVINECITY_OLIVINE_RIVAL, OlivineCityMovementData_RivalLeavesGym
	setscene $1
	disappear OLIVINECITY_OLIVINE_RIVAL
	special RestartMapMusic
	end

OlivineCityRivalLighthouseScript:
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	moveobject OLIVINECITY_OLIVINE_RIVAL, 33, 19
	playsound SFX_ENTER_DOOR
	appear OLIVINECITY_OLIVINE_RIVAL
	waitsfx
	applymovement OLIVINECITY_OLIVINE_RIVAL, OlivineCityMovementData_RivalExitsLighthouse
	playmusic MUSIC_RIVAL_ENCOUNTER
	showtext OlivineCityRivalLighthouseText
	playsound SFX_TACKLE
	applymovement PLAYER, OlivineCityMovementData_ShovePlayerDown2
	turnobject PLAYER, LEFT
	applymovement OLIVINECITY_OLIVINE_RIVAL, OlivineCityMovementData_RivalLeavesLighthouse
	setscene $1
	disappear OLIVINECITY_OLIVINE_RIVAL
	special RestartMapMusic
	end

OlivineCityYoungster1Script:
	random 2
	iffalse_jumptextfaceplayer OlivineCityStandingYoungsterPokedexText
	jumpthistextfaceplayer

	text "That thing you"
	line "have--it's a #-"
	cont "gear, right? Wow,"
	cont "that's cool."
	done

OlivineCityMovementData_ShovePlayerDown:
	turn_head_up
	fix_facing
	step_down
	remove_fixed_facing
	step_end

OlivineCityMovementData_RivalExitsLighthouse:
	step_down
	step_down
	step_down
	step_end

OlivineCityMovementData_RivalLeavesGym:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

OlivineCityMovementData_ShovePlayerDown2:
	turn_head_up
	fix_facing
	jump_step_down
	remove_fixed_facing
	step_end

OlivineCityMovementData_RivalLeavesLighthouse:
	step_down
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

OlivineCityRivalGymText:
	text "…"

	para "You again?"

	para "There's no need to"
	line "panic. I don't"

	para "bother with wimps"
	line "like you."

	para "Speaking of weak-"
	line "lings, the city's"

	para "Gym Leader isn't"
	line "here."

	para "Supposedly taking"
	line "care of a sick"

	para "#mon at the"
	line "Lighthouse."

	para "Humph! Boo-hoo!"
	line "Just let sick"
	cont "#mon go!"

	para "A #mon that"
	line "can't battle is"
	cont "worthless!"

	para "Why don't you go"
	line "train at the"
	cont "Lighthouse?"

	para "Who knows. It may"
	line "make you a bit"
	cont "less weak!"
	done

OlivineCityRivalLighthouseText:
	text "…"

	para "You again?"

	para "There's no need to"
	line "panic. I don't"

	para "bother with wimps"
	line "like you."

	para "Speaking of weak-"
	line "lings, the city's"

	para "Gym Leader is"
	line "taking care of a"

	para "sick #mon in"
	line "the Lighthouse."

	para "Humph! Boo-hoo!"
	line "Just let sick"
	cont "#mon go!"

	para "A #mon that"
	line "can't battle is"
	cont "worthless!"

	para "Why don't you go"
	line "train inside?"

	para "Who knows. It may"
	line "make you a bit"
	cont "less weak!"
	done

OlivineCityStandingYoungsterPokedexText:
	text "Wow, you have a"
	line "#dex!"

	para "That is just so"
	line "awesome."
	done

OlivineCitySailor1Text: ; TODO what the lighthouse is 
	text "..."
	done

OlivineCitySailor2Text: ; TODO what the desal plant is 
	text "The sea is sweet!"

	para "Sunsets on the sea"
	line "are marvelous!"

	para "Sing with me!"
	line "♪ Yo-ho! Blow the"
	cont "man down!… ♪"
	done

OlivineCityFisherText:
	text "You remind me of"
	line "a kid who used to"
	cont "live here."

	para "The family moved"
	line "away when their"

	para "father became a"
	line "Gym Leader in"
	cont "another region."
	done

OlivineCitySailor3Text:
	text "To see the Light-"
	line "house illuminate"

	para "the sea at night--"
	line "it's beautiful!"
	done

OlivineCityPokefanFText:
	text "Have you been to"
	line "Olivine Café?"

	para "The food is"
	line "delicious."
	done

OlivineCityPokefanMText:
	text "Most trainers who"
	line "visit Olivine head"

	para "straight for the"
	line "Battle Tower."

	para "Only the best can"
	line "compete there."
	done

OlivineCitySailor4Text:
	text "♪ A home like"
	line "O-li-vine,"

	para "I'm so hap-py I"
	line "can call you mine,"

	para "Next to the deep"
	line "blue brine,"

	para "Ci-ty oh so"
	line "di-vine,"

	para "Shine bright my"
	line "O-li-vine!… ♪"
	done

OlivineCitySailor5Text:
	text "Us sailors love"
	line "a sing-song."
	cont "Join in!"

	para "♪ From off the"
	line "plank,"

	para "'twas then he"
	line "thank,"

	para "oh fiddle-dee"
	line "fiddle-dee dee… ♪"
	done

OlivineCityLass1Text:
	text "The sailors here"
	line "may seem like a"

	para "handful, but"
	line "they're harmless."
	done

OlivineCityYoungster2Text:
	text "Sailors and camp-"
	line "ers have something"
	cont "in common:"

	para "we both like to"
	line "sing!"

	para "But sailors' songs"
	line "are really…"
	cont "different."
	done

OlivineCityLass2Text:
	text "Jasmine, our Gym"
	line "Leader, is a shy"

	para "girl. She's no"
	line "pushover, mind!"
	done

OlivineCitySignText:
	text "Olivine City"

	para "The Port Closest"
	line "to Foreign Lands"
	done

OlivineCityPortSignText:
	text "Olivine Desal"
	line "Plant"
	done

OlivineGymSignText:
	text "Olivine City"
	line "#mon Gym"
	cont "Leader: Jasmine"

	para "The Steel-Clad"
	line "Defense Girl"
	done

OlivineLighthouseSignText:
	text "Olivine Lighthouse"
	line "Also known as the"
	cont "Glitter Lighthouse"
	done

OlivineCityBattleTowerSignText:
	text "Battle Tower Ahead"
	line "Opening Now!"
	done

OlivineCityPokeathlonDomeSignText:
	text "The #athlon"
	line "Project Has"
	cont "Started!"
	done

OlivineCityCafeSignText:
	text "Olivine Café"
	done

;;;
OlivineCityPnkApricornScript:
	faceplayer
	opentext
	writetext PearlForPnkApricornText ;;
	waitbutton
	checkitem BIG_PEARL
	iffalse .NoBigPearl
	writetext PearlForPnkApricornQuestionText ;;
	yesorno
	iffalse .NoBigPearl
	takeitem BIG_PEARL
	giveapricorn PNK_APRICORN, 5 ; ez mode
	jumpopenedtext PearlForPnkApricornEndText ;;

.NoBigPearl
	jumpopenedtext NoPearlForPnkApricornText ;;

PearlForPnkApricornText:
	text "I tried to grow"
	line "a peach tree in"
	cont "my backyard,"
	
	para "but it was a-"
	line "useless Pink"
	cont "Apricorn tree!"

	para "I can't eat those."
	line "I want to eat a"
	cont "BIG Boba pearl."

	done

PearlForPnkApricornQuestionText:
	text "Please trade me,"
	line "I can't eat these"
	cont "apricorns!"
	
	para "A big boba pearl"
	line "sounds so good,"
	cont "here on the dock."
	done

PearlForPnkApricornEndText:
	text "<PLAYER> got 5"
	line "PNK APRICORN."
	
	para "Thanks! Hey,"
	line "this isn't a"
	cont "boba pearl!"
	done

NoPearlForPnkApricornText:
	text "You don't have"
	line "it? Guess I'll"
	cont "stay hungry."
	done
