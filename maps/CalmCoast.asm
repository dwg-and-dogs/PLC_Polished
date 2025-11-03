CalmCoast_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 15, 49, HOLT_COAST_GATE, 3
	warp_event 16, 49, HOLT_COAST_GATE, 4
	warp_event 13, 17, CALM_COAST_COTTAGE, 1

	def_coord_events


	def_bg_events
	bg_event 13, 33, BGEVENT_JUMPTEXT, CalmCoastSign1Text
	bg_event 12,  6, BGEVENT_JUMPTEXT, CalmCoastSign2Text
	bg_event 14, 42, BGEVENT_JUMPTEXT, CalmCoastSign3Text
	; hidden items: energypowder and pp_up, ADD TO EVENTS AND PLACE ON MAP 
	bg_event 12, 38, BGEVENT_ITEM + ENERGYPOWDER, EVENT_CALM_COAST_HIDDEN_1
	bg_event  6, 16, BGEVENT_ITEM + PP_UP, EVENT_CALM_COAST_HIDDEN_2

	def_object_events
	object_event 15, 42, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CalmCoastKurtScript, EVENT_KURT_CALM_COAST
	object_event 15, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterWarren, EVENT_BEAT_BOBESH_STADIUM ;
	object_event 11, 21, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerCooltrainerMGaven, -1
	object_event 11, 6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerYoungsterJimmy, -1
	object_event 6, 50, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBattleGirlSubaru, -1
	object_event 7, 48, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBattleGirlDiane, -1
	object_event 5, 48, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBattleGirlKagami, -1
	object_event 11, 4, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBrigader2, -1
	tmhmball_event 4, 50, TM_ROAR, EVENT_GOT_TM05_ROAR
	pokemon_event  14, 19, PIDGEOTTO, -1, -1, PAL_NPC_RED, CalmCoastPidgeottoText, -1
	pokemon_event  17, 18, DARTRIX, -1, -1, PAL_NPC_GREEN, CalmCoastDartrixText, -1
	fruittree_event 17, 14, FRUITTREE_CALM_COAST_1, SITRUS_BERRY, PAL_NPC_RED
	fruittree_event 18, 14, FRUITTREE_CALM_COAST_2, LUM_BERRY, PAL_NPC_RED
	fruittree_event 19, 12, FRUITTREE_CALM_COAST_3, PNK_APRICORN, PAL_NPC_RED
	itemball_event 18, 20, SOOTHE_BELL, 1, EVENT_SOOTHE_BELL ;ok
	itemball_event  3, 49, SOFT_SAND, 1, EVENT_CALM_COAST_SOFT_SAND ;ok

	object_const_def
	const CALM_COAST_KURT

GenericTrainerYoungsterWarren:
	generictrainer YOUNGSTER, WARREN, EVENT_BEAT_YOUNGSTER_WARREN, YoungsterWarrenSeenText, YoungsterWarrenBeatenText

	text "Can you tell the"
	line "old guy I'm ready"
	cont "to go home?"
	
	para "I'm getting so"
	line "bored here."
	done

YoungsterWarrenSeenText:
	text "I'm on the lookout"
	line "for pidgeys!"
	done

YoungsterWarrenBeatenText:
	text "Gosh, it gets"
	line "boring standing"
	cont "here."
	done

GenericTrainerCooltrainerMGaven:
	generictrainer COOLTRAINERM, GAVEN1, EVENT_BEAT_COOLTRAINERM_GAVEN, CooltrainerMGavenSeenText, CooltrainerMGavenBeatenText

	text "The bazaar has so"
	line "many vendors."
	
	para "You have to check"
	line "it out!"
	done

CooltrainerMGavenBeatenText:
	text "I just got back"
	line "from the bazaar!"
	done

CooltrainerMGavenSeenText:
	text "I lost? That's"
	line "bizarre."
	done

GenericTrainerYoungsterJimmy:
	generictrainer SCHOOLBOY, JACK1, EVENT_BEAT_SCHOOLBOY_JACK, SchoolboyJackSeenText, SchoolboyJackBeatenText

	text "The strongest"
	line "#mon trainers"
	cont "become brigaders."
	
	para "It's a brand new"
	line "division started"
	cont "by the Consul!"
	done

SchoolboyJackSeenText:
	text "I'm trying to join"
	line "the brigaders!"
	done

SchoolboyJackBeatenText:
	text "Now I'll never"
	line "make it as a"
	cont "brigader."
	done

GenericTrainerBattleGirlSubaru:
	generictrainer BATTLE_GIRL, SUBARU, EVENT_BEAT_BATTLE_GIRL_SUBARU, BattleGirlSubaruSeenText, BattleGirlSubaruBeatenText

	text "Watch out for my"
	line "sisters."
	done

BattleGirlSubaruSeenText:
	text "Our secret hiding"
	line "spot! Get out!"
	done

BattleGirlSubaruBeatenText:
	text "Don't tell anyone"
	line "we're here."
	done

GenericTrainerBattleGirlDiane:
	generictrainer BATTLE_GIRL, DIANE, EVENT_BEAT_BATTLE_GIRL_DIANE, BattleGirlDianeSeenText, BattleGirlDianeBeatenText

	text "We're training for"
	line "an attack on the"
	cont "Stadium."
	done

BattleGirlDianeSeenText:
	text "Let my rage flow"
	line "through me!"
	done

BattleGirlDianeBeatenText:
	text "Crashed and"
	line "burned."
	done

GenericTrainerBattleGirlKagami:
	generictrainer BATTLE_GIRL, KAGAMI, EVENT_BEAT_BATTLE_GIRL_KAGAMI, BattleGirlKagamiSeenText, BattleGirlKagamiBeatenText

	text "This spot is so"
	line "quiet, it's good"
	cont "for training."
	done

BattleGirlKagamiSeenText:
	text "Kame-hame…"
	done

BattleGirlKagamiBeatenText:
	text "You got the last"
	line "laugh."
	done

GenericTrainerBrigader2:
	generictrainer BRIGADER, 2, EVENT_BEAT_ROCKET_GRUNTM_2, BrigaderNAME7SeenText, BrigaderNAME7BeatenText

	text "I'm on the lookout"
	line "for three women"
	cont "who stole some"
	cont "#mon from"
	cont "the stadium."
	done

BrigaderNAME7SeenText:
	text "In the name of"
	line "General Bobesh,"
	cont "Halt! Show me"
	cont "your #mon!"
	done

BrigaderNAME7BeatenText:
	text "I'm on the lookout"
	line "for three women"
	cont "who stole some"
	cont "#mon from"
	cont "the stadium."

	para "Please, go"
	line "about your way."
	done

CalmCoastKurtScript:
	faceplayer
	opentext
	writetext CalmCoastKurtText
	waitbutton
	closetext
	applymovement CALM_COAST_KURT, CalmCoastKurtWalksAway
	disappear CALM_COAST_KURT
	clearevent EVENT_KURTS_HOUSE_BOOK_1 ; now it appears 
	setevent EVENT_KURT_CALM_COAST	
	end

HearAStory_1Text:
	text "<PLAYER>, would"
	line "you like to hear"
	cont "another story"
	cont "about your dad?"
	done

SomeOtherTime_1Text:
	text "Some other time."
	done

CalmCoastKurtText:
	text "So this is how"
	line "Route 34 looked"
	cont "160 years ago."

	para "Your father helped"
	line "at the day care"
	cont "when he was young."

	para "Once, on the way"
	line "back to Azalea, he"
	para "was playing with"
	line "an apricorn and"
	para "accidentally got"
	line "a Cyndaquil!"
	
	para "The apricorn had"
	line "a soft glow in"
	para "his hands with the"
	line "#mon inside!"
	
	para "If you ever want"
	line "to hear it again,"
	para "check the journal"
	line "in my house."
	
	para "Now, let's find a"
	line "way to the port"
	para "to stop outside"
	line "tech from getting"
	cont "into Johto!"
	done

CalmCoastDartrixText:
	text "Dartrix:"
	line "...hoo!"
	done
	
CalmCoastPidgeottoText:
	text "Pidgeotto:"
	line "Cheep!"
	done

CalmCoastSign2Text:
	text "Posted: do not"
	line "bother Oshawott"
	cont "dams!"
	done

CalmCoastSign1Text:
	text "The Calm Coast"
	done

CalmCoastSign3Text:
	text "South to:"
	line "Holly's Holt"
	done

CalmCoastKurtWalksAway:
	step_up
	step_up
	step_up
	step_up
	