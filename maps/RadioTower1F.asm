RadioTower1F_MapScriptHeader:
    def_scene_scripts

    def_callbacks

    def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 11
	warp_event  3,  7, GOLDENROD_CITY, 11
	warp_event 15,  0, RADIO_TOWER_2F, 2
	warp_event  0,  4, UNDERGROUND_RADIO_TOWER, 2

    def_coord_events
    coord_event 15, 1, 0, RadioTowerRivalTrigger1

    def_bg_events


    def_object_events
    object_event 15,  0, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_RADIO_TOWER

    object_const_def
    const RADIOTOWER_RIVAL

RadioTowerRivalTrigger1:
    showemote EMOTE_SHOCK, PLAYER, 15
    special Special_FadeOutMusic
    pause 15
    playsound SFX_ENTER_DOOR
    appear RADIOTOWER_RIVAL
    waitsfx
    applymovement PLAYER, RadioTowerPlayerPushbackMovement
    applymovement RADIOTOWER_RIVAL, RadioTowerRivalApproachMovement
	playmusic MUSIC_RIVAL_ENCOUNTER
    scall RadioTowerRivalBattleScript
	; picks up back here 
    applymovement RADIOTOWER_RIVAL, RadioTowerRivalRetreatMovement
    playsound SFX_EXIT_BUILDING
    disappear RADIOTOWER_RIVAL
    setscene $1
    setevent EVENT_FOUGHT_RADIO_TOWER_RIVAL
    waitsfx
    playmapmusic
    end

RadioTowerRivalBattleScript:
    playmusic MUSIC_RIVAL_ENCOUNTER
    showtext RadioTowerRivalBeforeText
    setevent EVENT_RIVAL_RADIO_TOWER
    checkevent EVENT_GOT_OSHAWOTT
    iftrue .Oshawott
    checkevent EVENT_GOT_ROWLET
    iftrue .Rowlet
    winlosstext RadioTowerRivalWinText, RadioTowerRivalLossText
    setlasttalked RADIOTOWER_RIVAL
    loadtrainer RIVAL1, 6
    startbattle
    dontrestartmapmusic
    reloadmapafterbattle
    sjump .FinishRivalBattle

.Oshawott:
    winlosstext RadioTowerRivalWinText, RadioTowerRivalLossText
    setlasttalked RADIOTOWER_RIVAL
    loadtrainer RIVAL1, 4
    startbattle
    dontrestartmapmusic
    reloadmapafterbattle
    sjump .FinishRivalBattle

.Rowlet:
    winlosstext RadioTowerRivalWinText, RadioTowerRivalLossText
    setlasttalked RADIOTOWER_RIVAL
    loadtrainer RIVAL1, 5
    startbattle
    dontrestartmapmusic
    reloadmapafterbattle
    sjump .FinishRivalBattle

.FinishRivalBattle:
    special DeleteSavedMusic
    playmusic MUSIC_RIVAL_AFTER
    jumptext RadioTowerRivalAfterText

RadioTowerRivalApproachMovement:
	step_down
    step_end

RadioTowerPlayerPushbackMovement:
	step_down
	turn_head_up
    step_end

RadioTowerRivalRetreatMovement:
    step_left
    step_left
	step_down
    step_left
    step_left
    step_left
    step_left
    step_left
    step_end

RadioTowerRivalBeforeText:
    text "Hey, <PLAYER>. I"
    line "see you finally"
    cont "made it out."
	
	para "Bet this power"
	line "outage makes"
	para "you feel right"
	line "at home, eh?"
	
    para "Whitney invited me"
    line "on her show to"
    para "talk about my"
    line "distiller. The"
	para "one your grandpa"
	line "mocked."

    para "We're building a"
    line "new world - you"
    para "and your grandpa"
    line "are just relics!"
    done


RadioTowerRivalWinText:
    text "Tch. Makes sense"
    line "that you'd fight"
    cont "so dirty."
    done

RadioTowerRivalLossText:
    text "Those same old"
	line "tired tactics"
	para "won't cut it"
	line "anymore."
    done

RadioTowerRivalAfterText:
    text "I must be going."
    line "Silph wants to"
	para "meet me in"
	line "Ectureak to talk"
	para "about my distill-"
	line "er. See ya never."
    done
