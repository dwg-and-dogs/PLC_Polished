EcruteakGym_MapScriptHeader:
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_STONETABLE, EcruteakGymBoulders

	def_warp_events
	warp_event  4, 17, ECRUTEAK_CITY, 10
	warp_event  5, 17, ECRUTEAK_CITY, 10

	warp_event  7,  6, ECRUTEAK_GYM, 5 ; 3 boulder 1
	warp_event  2,  8, ECRUTEAK_GYM, 5	; 4 boulder 2 
	
	warp_event  4, 14, ECRUTEAK_GYM, 4
	warp_event  2,  4, ECRUTEAK_GYM, 5
	warp_event  2,  5, ECRUTEAK_GYM, 5
	warp_event  2,  6, ECRUTEAK_GYM, 5
	warp_event  2,  7, ECRUTEAK_GYM, 5	

	warp_event  2,  9, ECRUTEAK_GYM, 5
	warp_event  2,  10, ECRUTEAK_GYM, 5	
	warp_event  3,  10, ECRUTEAK_GYM, 5
	warp_event  4,  10, ECRUTEAK_GYM, 5	
	warp_event  5,  10, ECRUTEAK_GYM, 5		
	warp_event  6,  10, ECRUTEAK_GYM, 5		
	warp_event  6,  11, ECRUTEAK_GYM, 5			
	warp_event  6,  9, ECRUTEAK_GYM, 5			
	warp_event  6,  8, ECRUTEAK_GYM, 5			
	warp_event  4,  4, ECRUTEAK_GYM, 5			
	warp_event  4,  5, ECRUTEAK_GYM, 5			
	warp_event  4,  6, ECRUTEAK_GYM, 5			
	warp_event  4,  7, ECRUTEAK_GYM, 5			
	warp_event  5,  4, ECRUTEAK_GYM, 5			
	warp_event  6,  4, ECRUTEAK_GYM, 5		
	warp_event  6,  5, ECRUTEAK_GYM, 5			
	warp_event  6,  6, ECRUTEAK_GYM, 5				


	def_coord_events

	def_bg_events


	def_object_events
	strengthboulder_event 7, 11, EVENT_ECRUTEAK_BOULDER_1
	strengthboulder_event 3, 8, EVENT_ECRUTEAK_BOULDER_2 
	object_event  2, 15, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakGymBouldersResetScript, -1  
	object_event  5,  1, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakGymMortyScript, -1 
	object_event  5, 13, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakGymPryceScript, EVENT_BURNED_TOWER_MORTY
	pokemon_event  4, 13, MAMOSWINE, -1, -1, PAL_NPC_BROWN, EcruteakMamoswineText, EVENT_BURNED_TOWER_MORTY

	object_event  2,  3, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerMediumRebecca, -1
	object_event  7,  3, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerMediumDoris, -1

	object_const_def
	const ECRUTEAK_GYM_BOULDER1
	const ECRUTEAK_GYM_BOULDER2	
	
EcruteakGymBoulders:
	usestonetable .BoulderTable
	endcallback

.BoulderTable:
	; boulder 1 
	stonetable 3, 	ECRUTEAK_GYM_BOULDER1, .Disappear1
	; boulder 2 
	stonetable 4, 	ECRUTEAK_GYM_BOULDER2, .Disappear2
	db -1 ; end

.Disappear1:
	disappear ECRUTEAK_GYM_BOULDER1
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	reloadmappart
	jumpthistext

	text "The boulder fell"
	line "down!"
	done	

.Disappear2:
	disappear ECRUTEAK_GYM_BOULDER2
	pause 30
	playsound SFX_FORESIGHT
	earthquake 80
	reloadmappart
	jumpthistext

	text "The boulder fell"
	line "down!"
	done	

GenericTrainerMediumRebecca:
	generictrainer MEDIUM, REBECCA, EVENT_BEAT_MEDIUM_REBECCA, RebeccaSeenText, RebeccaBeatenText

RebeccaBeatenText:
	text "Who guides you?"
	done

RebeccaSeenText:
	text "Spirits guide me!"
	done

GenericTrainerMediumDoris:
	generictrainer MEDIUM, DORIS, EVENT_BEAT_MEDIUM_DORIS, DorisSeenText, DorisBeatenText

DorisBeatenText:
	text "It surrounds us"
	line "all!"
	done

DorisSeenText:
	text "Can you feel the"
	line "sublime?"
	done

EcruteakGymMortyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MORTY_GYM
	iftrue .FightDone
	writetext MortyIntroText
	waitbutton
	closetext
	winlosstext MortyWinLossText, 0
	loadtrainer MORTY, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MORTY_GYM
	opentext
	writetext Text_ReceivedFogBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_FOGBADGE
.FightDone:
	checkevent EVENT_GOT_TM30_SHADOW_BALL
	iftrue_jumpopenedtext MortyFightDoneText
	writetext MortyText_FogBadgeSpeech
	promptbutton
	verbosegivetmhm TM_SHADOW_BALL
	setevent EVENT_GOT_TM30_SHADOW_BALL
	jumpopenedtext MortyText_ShadowBallSpeech

EcruteakGymPryceScript:
	text "<PLAYER> - Morty"
	line "isn't here."
	
	para "He's in the Burned"
	line "Tower, chasing his"
	para "trail hunting a"
	line "legendary beast,"
	
	para "hoping it will"
	line "draw guests."

	para "I think he is"
	line "misguided, but"
	cont "he won't hear it."
	done
	
MortyIntroText:
	text "<PLAYER>. Thank"
	line "you for showing"
	para "me that there is"
	line "subline in the"
	cont "ordinary."

	para "Battle me, and"
	line "show me your"
	cont "bonds!"
	done

MortyWinLossText:
	text "I see. Your"
	line "connection is"
	para "even stronger"
	line "than I thought."
	done

Text_ReceivedFogBadge:
	text "Take this Fog"
	line "Badge."
	done
	
MortyText_FogBadgeSpeech:
	text "It shows that"
	line "you can find a"
	para "way on unfamil-"
	line "iar paths."
	
	para "It also grants"
	line "you acces to the"
	cont "Tin Tower."
	done

MortyFightDoneText:
	text "My gym will re-"
	line "turn to a place"
	cont "where trainers "
	cont "can look inward."
	
	para "What would you"
	line "find, if you"
	
	para "looked beyond" ; past your doubts?
	line "your fears?"
	done

MortyText_ShadowBallSpeech:
	text "That's Shadow"
	line "Ball. It's a "
	cont "demonstration of"
	cont "the power of the"
	cont "unseen forces in"
	cont "our lives."
	
	para "What would you"
	line "find, if you"
	
	para "looked beyond"
	line "your fears?"
	done

EcruteakMamoswineText:
	text "Baconator:"
	line "Mamooo!"
	done


EcruteakGymBouldersResetScript: ; C.F. KIMONO CABIN 3
	faceplayer
	opentext
	checkevent EVENT_BURNED_TOWER_MORTY
	iffalse_jumpopenedtext MortyIsntHereNowText
	writetext EG_CallBackBoulderText
	waitbutton
	yesorno
	iffalse .Done
	closetext
.CheckBoulder1:
	checkevent EVENT_ECRUTEAK_BOULDER_1
	iffalse .CheckBoulder2
	earthquake 80
	clearevent EVENT_ECRUTEAK_BOULDER_1	
	moveobject ECRUTEAK_GYM_BOULDER1, 7, 11	
	appear ECRUTEAK_GYM_BOULDER1	
.CheckBoulder2:
	checkevent EVENT_ECRUTEAK_BOULDER_2
	iffalse_jumptext EG_BouldersAreAllBack
	earthquake 80
	clearevent EVENT_ECRUTEAK_BOULDER_2	
	moveobject ECRUTEAK_GYM_BOULDER2, 3, 8
	appear ECRUTEAK_GYM_BOULDER2
; finish 
	opentext
	writetext EG_BouldersAreBackText
	waitbutton
.Done:
	closetext
	end
	
EG_CallBackBoulderText:
	text "Call back the"
	line "boulders?"
	done

EG_BouldersAreBackText:
	text "Boulders are"
	line "levitated back!"
	done
	
EG_BouldersAreAllBack:
	text "The boulders are"
	line "all up here!"
	done
	

MortyIsntHereNowText:
	text "The Gym is not"
	line "accepting any"
	cont "challengers."
	
	para "Morty hasn't been"
	line "himself lately."
	done
	