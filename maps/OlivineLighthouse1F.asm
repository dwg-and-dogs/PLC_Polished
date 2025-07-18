OlivineLighthouse1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 10, 17, OLIVINE_CITY, 8
	warp_event 11, 17, OLIVINE_CITY, 8
	warp_event  3, 11, OLIVINE_LIGHTHOUSE_2F, 1


	def_coord_events
    coord_event 11, 15, 0, LighthouseRivalTrigger1
    coord_event 11, 14, 0, LighthouseRivalTrigger2

	def_bg_events


	def_object_events ; black belts 
	object_event 14, 9, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 	ObjectEvent, EVENT_RIVAL_LIGHTHOUSE 
	object_event 11, 17, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, 	ObjectEvent, EVENT_KURT_LIGHTHOUSE_1 

	object_event  5,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, 	TrainerScientistJoseph, -1
	object_event 13,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, 	TrainerBlackBeltWai, -1
	object_event  2,  4, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, 	TrainerEngineerLang, -1

	object_const_def 
	const LIGHTHOUSE_RIVAL
	const LIGHTHOUSE_KURT


LighthouseRivalTrigger1:
	applyonemovement PLAYER, step_up
LighthouseRivalTrigger2:
	applyonemovement PLAYER, step_right
	applyonemovement PLAYER, step_right
	appear LIGHTHOUSE_KURT
	applymovement LIGHTHOUSE_KURT, Kurt_LighthouseMove1
	turnobject PLAYER, LEFT
	showtext Kurt_LighthouseText1
    showemote EMOTE_SHOCK, PLAYER, 15
    special Special_FadeOutMusic
    pause 15
    appear LIGHTHOUSE_RIVAL
    waitsfx
    applymovement LIGHTHOUSE_RIVAL, LighthouseRivalApproachMovement
	turnobject KURT, UP
	turnobject PLAYER, UP
    scall LigthouseRivalBattleScript
	; after the battle
    applymovement LIGHTHOUSE_RIVAL, LighthouseRivalRetreatMovement
    playsound SFX_EXIT_BUILDING
	waitsfx
    disappear LIGHTHOUSE_RIVAL
    setscene $1
    setevent EVENT_FOUGHT_RADIO_TOWER_RIVAL
    waitsfx
    playmapmusic
	showemote EMOTE_SHOCK, LIGHTHOUSE_KURT, 10
	showtext LighthouseKurtEndText
	applymovement LIGHTHOUSE_KURT, LighthouseKurtGoesUpMovement
	disappear LIGHTHOUSE_KURT
	setevent EVENT_KURT_LIGHTHOUSE_1
    end

LigthouseRivalBattleScript:
    playmusic MUSIC_RIVAL_ENCOUNTER
    showtext LighthouseRivalBeforeText
    setevent EVENT_RIVAL_RADIO_TOWER
    checkevent EVENT_GOT_OSHAWOTT
    iftrue .Oshawott
    checkevent EVENT_GOT_ROWLET
    iftrue .Rowlet
    winlosstext LighthouseRivalWinText, LighthouseRivalLossText
    setlasttalked LIGHTHOUSE_RIVAL
    loadtrainer RIVAL1, 9
    startbattle
    dontrestartmapmusic
    reloadmapafterbattle
    sjump .FinishRivalBattle

.Oshawott:
    winlosstext LighthouseRivalWinText, LighthouseRivalLossText
    setlasttalked LIGHTHOUSE_RIVAL
    loadtrainer RIVAL1, 7
    startbattle
    dontrestartmapmusic
    reloadmapafterbattle
    sjump .FinishRivalBattle

.Rowlet:
    winlosstext LighthouseRivalWinText, LighthouseRivalLossText
    setlasttalked LIGHTHOUSE_RIVAL
    loadtrainer RIVAL1, 8
    startbattle
    dontrestartmapmusic
    reloadmapafterbattle
    sjump .FinishRivalBattle

.FinishRivalBattle:
    special DeleteSavedMusic
    playmusic MUSIC_RIVAL_AFTER
    jumptext LighthouseRivalAfterText

LighthouseRivalApproachMovement:
	step_down
	step_down
	step_down
	step_down
	step_left
	step_end

LighthouseRivalRetreatMovement:
	step_left
	step_left
	step_down
	step_down
	step_left
	step_left
	step_down
	step_down	
    step_end

LighthouseRivalBeforeText:
	text_high
    text " <RIVAL>: "
	next
	text_start
    text "Oh, it's you."
	done

LighthouseRivalBeforeText_2:
	text_high
    text " Kurt: "
	next
	text_start
	
	text "Hey! Your invent-"
	line "ion pollutes the"
	para "sea with its"
	line "discharge!"
	done


LighthouseRivalBeforeText_3:
	text_high
    text " <RIVAL>: "
	next
	text_start
	
	text "I didn't know"
	line "they would do"
	cont "this!"
	
	para "I just wanted to"
	line "let us come into"
	para "a balance with"
	line "nature."
	para "As you look back,"
	line "I look forward!"	
	done


LighthouseRivalWinText:
    text "All my plans..."
    done

LighthouseRivalLossText:
    text "..."
    done

LighthouseRivalAfterText:
	text_high
    text " <RIVAL>: "
	next
	text_start
	
    text "I know. I didn't"
	line "want to be their"
	para "pawn. And I had"
	line "no idea what they"
	para "were doing on the"
	line "top floor..."

	para "Don't follow me"
	line "any more."
    done

LighthouseKurtEndText:
	text_high
    text " Kurt: "
	next
	text_start
	
	text "We have to get"
	line "to the top!"
	done

Kurt_LighthouseMove1:
	step_up
	step_up
	step_up
	step_right
	step_end

LighthouseKurtGoesUpMovement:
	step_up
	step_up
	step_right
	step_right
	step_up
	step_up
	step_up
	step_end

Kurt_LighthouseText1:	
	text_high
    text " Kurt: "
	next
	text_start
	
	text "<PLAYER>, I"
	line "have learned that"
	para "Chuck is doing"
	line "something awful"
	para "to a Slowking on"
	line "the top floor of"
	cont "the lighthouse."
	
	para "We must confront"
	line "him to end it!"
	
	para "He uses #mon"
	line "brutally, for his" 
	cont "own designs!"
	done

TrainerScientistJoseph:
	generictrainer SCIENTIST, JOSEPH, EVENT_BEAT_ENGINEER_JOSEPH, .SeenText1, .BeatenText1

.BeatenText1:
	text "My colleague is"
	line "not so bright." 
	done

.SeenText1:
	text "Candela is the"
	line "proper unit!" 
	done


TrainerBlackBeltWai:
	generictrainer BLACK_BELT, WAI, EVENT_BEAT_BLACKBELT_WAI, .SeenText2, .BeatenText2
	
.BeatenText2:
	text "I wonder if any-"
	line "one is still at"
	cont "the Cianwood Gym."
	done

.SeenText2:
	text "I left the gym,"
	line "but still guard"
	cont "this like one!"
	done

TrainerEngineerLang:
	generictrainer ENGINEER, LANG, EVENT_BEAT_ENGINEER_JOSEPH, .SeenText3, .BeatenText3

.BeatenText3:
	text "Unit conversion"
	line "is half my job." 
	done

.SeenText3:
	text "I'm telling you,"
	line "we measure it in"
	cont "Lumens!"
	done
