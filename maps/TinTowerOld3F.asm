TinTowerOld3F_MapScriptHeader:
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 0, 15, TIN_TOWER_OLD_1F, 3 ; WARP 
	warp_event 1, 1, TIN_TOWER_OLD_2F, 3 ; STAIRS 
	warp_event 4, 5, TIN_TOWER_OLD_2F, 4 ; HOLE 

	def_coord_events
	coord_event 7, 10, 0, TT3F_CCW_Bottom_Trigger
	coord_event 7, 10, 1, TT3F_CW_Bottom_Trigger
	
	coord_event 10, 9, 0, TT3F_CCW_Right_Trigger
	coord_event 10, 9, 1, TT3F_CW_Right_Trigger
	
	coord_event 8, 4, 0, TT3F_CCW_Top_Trigger
	coord_event 8, 4, 1, TT3F_CW_Top_Trigger
	
	coord_event 5, 7, 0, TT3F_CCW_Left_Trigger
	coord_event 5, 7, 1, TT3F_CW_Left_Trigger

	def_bg_events



	def_object_events
	object_event  7, 7, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, HAUNTER, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TinTowerHaunterScript, EVENT_TIN_TOWER_OLD_HAUNTER_1
	object_event  8, 7, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, HAUNTER, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TinTowerHaunterScript, EVENT_TIN_TOWER_OLD_HAUNTER_2
	object_event  7, 6, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, HAUNTER, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TinTowerHaunterScript, EVENT_TIN_TOWER_OLD_HAUNTER_3
	object_event  8, 6, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, HAUNTER, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TinTowerHaunterScript, EVENT_TIN_TOWER_OLD_HAUNTER_4
	object_event 13, 13, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, H__TYPHLOSION, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TinTowerHTyphlosionScript, EVENT_TIN_TOWER_OLD_HAUNTER_4

	object_event 14, 7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSageJeffrey, -1
	object_event  10, 1, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSagePing, -1
	object_event  2, 3, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSageJin, -1

	object_event 12, 13, SPRITE_SAMSARA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower3FSamsaraScript, -1 ; party is done 


	object_const_def
	const TIN_TOWER_OLD_3F_HAUNTER_1
	const TIN_TOWER_OLD_3F_HAUNTER_2
	const TIN_TOWER_OLD_3F_HAUNTER_3
	const TIN_TOWER_OLD_3F_HAUNTER_4

TT3F_CCW_Bottom_Trigger:
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	applymovement PLAYER, Player_CCW_Bottom_Move
	setscene $1
	end
	
TT3F_CW_Bottom_Trigger:
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	applymovement PLAYER, Player_CW_Bottom_Move
	setscene $0
	end

Player_CCW_Bottom_Move:
	step_up
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end
	
Player_CW_Bottom_Move:
	step_up
	step_left
	step_up
	step_up
	step_left
	step_left
	step_left
	step_end

TT3F_CCW_Right_Trigger:
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	applymovement PLAYER, Player_CCW_Right_Move
	setscene $1
	end
	
TT3F_CW_Right_Trigger:
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	applymovement PLAYER, Player_CW_Right_Move
	setscene $0
	end

Player_CCW_Right_Move: 
	step_up
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end
	
Player_CW_Right_Move:
	step_up
	step_left
	step_up
	step_up
	step_left
	step_left
	step_left
	step_end



TT3F_CCW_Top_Trigger:
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	applymovement PLAYER, Player_CCW_Top_Move
	setscene $1
	end
	
TT3F_CW_Top_Trigger:
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	applymovement PLAYER, Player_CW_Top_Move
	setscene $0
	end

Player_CCW_Top_Move:
	step_up
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end
	
Player_CW_Top_Move:
	step_up
	step_left
	step_up
	step_up
	step_left
	step_left
	step_left
	step_end


TT3F_CCW_Left_Trigger:
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	applymovement PLAYER, Player_CCW_Left_Move
	setscene $1
	end
	
TT3F_CW_Left_Trigger:
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_4
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_3
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_2
	pause 5
	appear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	disappear TIN_TOWER_OLD_3F_HAUNTER_1
	pause 5
	applymovement PLAYER, Player_CW_Left_Move
	setscene $0
	end

Player_CCW_Left_Move:
	step_up
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end
	
Player_CW_Left_Move:
	step_up
	step_left
	step_up
	step_up
	step_left
	step_left
	step_left
	step_end


GenericTrainerSageJeffrey:
    generictrainer SAGE, JEFFREY, EVENT_BEAT_SAGE_JEFFREY, SageJeffreySeenText, SageJeffreyBeatenText

    text "He must not be"
	line "allowed to dest-"
	cont "roy all that our"
	cont "ancestors know!"
    done

SageJeffreySeenText:
    text "Urgaust says his"
	line "ascension will"
	cont "bring a new era"
	cont "of progress."
	
	para "But if we abandon"
	line "our traditions, "
	cont "do we not lose"
	cont "their wisdom?"
    done

SageJeffreyBeatenText:
    text "He must not be"
	line "allowed to dest-"
	cont "roy all that our"
	cont "ancestors know!"
    done
	
	

GenericTrainerSagePing:
    generictrainer SAGE, PING, EVENT_BEAT_SAGE_PING, SagePingSeenText, SagePingBeatenText

    text "Of course not!"
	line "Divinity is not"
	cont "in mortality, it"
	para "is in the eternal"
	line "relationship bet-"
	cont "ween mortals!"
    done

SagePingSeenText:
    text "The Consul has"
	line "always been a "
	para "sacred bridge"
	line "between heaven"
	cont "and earth."
	
	para "But can divinity"
	line "reside in a "
	cont "mortal body?"
    done

SagePingBeatenText:
    text "Of course not!"
	line "Divinity is not"
	cont "in mortality, it"
	para "is in the eternal"
	line "relationship bet-"
	cont "ween mortals!"
    done


GenericTrainerSageJin:
    generictrainer SAGE, JIN, EVENT_BEAT_SAGE_JEFFREY, SageJinSeenText, SageJinBeatenText

    text "Yes, I see!"
	
	para "If he climbs"
	line "too high, he"
	cont "may cause it to"
	cont "crumble down!"
    done

SageJinSeenText:
    text "Urgaust's ambition"
	line "to rise above"
	cont "nature itself - "
	
	para "Does it upset the"
	line "delicate balance"
	cont "that sustains us?"

SageJinBeatenText:
    text "Yes, I see!"
	
	para "If he climbs"
	line "too high, he"
	cont "may cause it to"
	cont "crumble down!"
    done


TinTower3FSamsaraScript:
	faceplayer
	checkevent EVENT_BEAT_SAMSARA
	iftrue_jumpopenedtext SamsaraAfterText 
	checkevent EVENT_BEAT_SAGE_JEFFREY
	iffalse_jumpopenedtext TinTower3FStudyHarderText;
	checkevent EVENT_BEAT_SAGE_PING
	iffalse_jumpopenedtext TinTower3FStudyHarderText;
	checkevent EVENT_BEAT_SAGE_JIN
	iffalse_jumpopenedtext TinTower3FStudyHarderText;
	writetext SamsaraIntroText
	waitbutton
	closetext
	winlosstext SamsaraWinLossText, 0
	loadtrainer SAMSARA, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SAMSARA
	opentext
	writetext ReceivedHeavensBadgeText ; 
	givetmhm HM_SURF
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_THUNDERBADGE
	promptbutton
	verbosegivetmhm TM_SHADOW_CLAW
	jumpopenedtext SamsaraAfterText


TinTower3FStudyHarderText:
	text "You would like to"
	line "leave the city?"
	
	para "As the chief"
	line "Chronicler, I"
	cont "protect it."
	
	para "If I help you,"
	line "more may leave,"
	cont "putting us in an"
	cont "even worse spot."
	
	para "We are in a"
	cont "crisis. Come"
	
	para "back when we have"
	line "resolved it."
	done


ReceivedHeavensBadgeText:
	text "Now, take this"
	line "Heavens badge."
	
	para "It symbolizes the"
	line "duality present"
	cont "in all things."
	
	para "Oh, and this TM"
	line "is also from me."
	para "It's a reminder"
	line "that the past is"
	para "always trying to"
	line "reach into the"
	cont "future."
	done
	
SamsaraIntroText:
	text "So, you're here"
	line "to stop Urgaust"
	cont "and preserve"
	cont "Johto's culture?"
	
	para "You're not the"
	line "only one."
	
	para "As the chief"
	line "Chronicler, I am"
	para "responsible for"
	line "protecting the"
	cont "Capital."
	
	para "Day into night"
	line "into day. An"
	para "infinite cycle"
	line "of rebirth."
	
	para "I prayed to the"
	line "heavens! Why does"
	para "Urgaust deny the"
	line "next day its"
	para "light in his"
	line "quest for Godli-"
	cont "ness?"
	
	para "Show me you und-"
	line "erstand what he"
	para "does not, and I"
	line "will help you."
	done	
	
	
SamsaraWinLossText:
	text "Your #mon"
	line "do not fear the"
	cont "future."
	
	para "They know they "
	line "will persevere"
	para "with their uni-"
	line "que talents."

	para "This is what"
	line "Urgaust forgot."
	
	para "His ancestors"
	line "were not revered"
	para "for taking, but"
	line "by giving of"
	cont "themselves."
	done


SamsaraAfterText:
	text "There is still"
	line "time to change"
	cont "the Consul."
	
	para "Please, we are"
	line "counting on you."
	
	para "We cannot leave,"
	line "but you can."
	done

TinTowerHaunterScript:
	jumptext TinTowerHaunterText
	done

TinTowerHaunterText:
	text "..."
	done

TinTowerHTyphlosionScript:
	jumptext TinTowerHTyphlosionText
	done
	
TinTowerHTyphlosionText:
	text "Charon:"
	line "Scarrooo!"
	done
	