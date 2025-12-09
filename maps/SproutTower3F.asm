SproutTower3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event  7, 15, SPROUT_TOWER_2F, 2

	def_coord_events


	def_bg_events


	def_object_events
	object_event  5, 14, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ElderHealsScript, EVENT_BEAT_FALKNER
	object_event 11, 10, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBirdKeeperToby, -1
	object_event  7,  1, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletGymFalknerScript, -1
	pokemon_event  6,  1, PIDGEOTTO, -1, -1, PAL_NPC_BLUE, PidgeottoTowerText, -1

	object_const_def

PidgeottoTowerText:
	text "Hawker: "
	line "Skrrraw!"
	done

ElderHealsScript:
	faceplayer
	opentext
	writetext ElderHealsText1
	waitbutton
	closetext
	
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	
	opentext
	writetext ElderHealsText2
	waitbutton
	closetext
	end		
	
ElderHealsText1:
	text "Leader Falkner"
	line "hasn't left this"
	cont "floor in weeks."
	
	para "I'm here to heal"
	line "any #mon."
	
	para "Please, allow me."
	done
	
ElderHealsText2:
	text "Your #mon are"
	line "now healed."
	done

GenericTrainerBirdKeeperToby:
    generictrainer BIRD_KEEPER, TOBY, EVENT_BEAT_BIRD_KEEPER_TOBY, BirdKeeperTobySeenText, BirdKeeperTobyBeatenText

    text "Wow, you're more"
    line "powerful than a"
    cont "Sky Attack."
    done

BirdKeeperTobySeenText:
    text "You want to"
    line "challenge Falkner?"
    para "You'll have to get"
    line "through me first!"
    done

BirdKeeperTobyBeatenText:
    text "Wow, you're more"
    line "powerful than a"
    cont "Sky Attack."
    done


VioletGymFalknerScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FALKNER
	iftrue .FightDone
	writetext FalknerIntroText
	waitbutton
	closetext
	winlosstext FalknerWinLossText, 0
	loadtrainer FALKNER, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FALKNER
	opentext
	writetext ReceivedZephyrBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
	promptbutton
	verbosegivetmhm TM_AERIAL_ACE
	setevent EVENT_GOT_TM_AERIAL_ACE
.FightDone:
	jumpopenedtext FalknerAfterText

FalknerIntroText:
	text "My #mon saw"
	line "you coming."
	
	para "You took down"
	line "Whitney in her"
	para "tower in your"
	line "crusade."
	
	para "Presumably, you're"
	line "here for me."
	
	para "My Bronzong is"
	line "nearly unearthed."
	para "Its tones will"
	line "bring rains for"
	cont "many weeks."
	
	para "Once I tore out"
	line "the roots of this"
	para "tower, it was"
	line "ready to be tran-"
	cont "sformed for me!"
	done


FalknerWinLossText:
	text "It's like your"
	line "#mon knew"
	cont "your thoughts!"
	
	para "What a strong"
	line "foundation you"
	cont "all have."

	para "Maybe my method"
	line "was misguided."
	
	para "Without a strong"
	line "base, this would"
	para "be top-heavy and"
	line "collapse."

	para "I was doing more"
	line "to take nature"
	cont "out of balance."
	done


ReceivedZephyrBadgeText:
	text "Please, take this"
	line "TM and the"
	cont "Zephyr Badge."
	done

FalknerAfterText:
	text "I'll reconsider"
	line "my approach."

	para "I've destroyed so"	
    line "much of meaning"
	para "in and around"
	line "Violet City."

	para "I'll halt the"
	line "excavation on"
	cont "Route 36 at once."
	done
	