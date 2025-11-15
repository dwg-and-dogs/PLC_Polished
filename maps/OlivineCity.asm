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


	def_bg_events ; fix the signs 
	bg_event 17,  7, BGEVENT_JUMPTEXT, OlivineCitySignText
	bg_event 20, 22, BGEVENT_JUMPTEXT, OlivineCityPortSignText
	bg_event  7,  7, BGEVENT_JUMPTEXT, OlivineGymSignText
	bg_event 34, 20, BGEVENT_JUMPTEXT, OlivineLighthouseSignText
;	bg_event  1, 21, BGEVENT_JUMPTEXT, OlivineCityBattleTowerSignText
;	bg_event 50, 27, BGEVENT_JUMPTEXT, OlivineCityPokeathlonDomeSignText
	bg_event 10, 17, BGEVENT_JUMPTEXT, OlivineCityCafeSignText
	bg_event 36, 14, BGEVENT_ITEM + RARE_CANDY, EVENT_OLIVINE_CITY_HIDDEN_RARE_CANDY
	bg_event 47, 17, BGEVENT_ITEM + BIG_PEARL, EVENT_OLIVINE_CITY_HIDDEN_BIG_PEARL
	bg_event 49, 29, BGEVENT_ITEM + SOFT_SAND, EVENT_OLIVINE_CITY_HIDDEN_SOFT_SAND

	def_object_events
    object_event 19, 20, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineCityPnkApricornScript, -1

	object_event 20,  8, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, 	OBJECTTYPE_SCRIPT, 0, OlivineCityYoungster1Script, -1
	object_event 26, 22, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, 				OBJECTTYPE_SCRIPT, 0, OlivineCitySailor1Script, -1  
	object_event 23, 17, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, 0, 			OBJECTTYPE_SCRIPT, 0, OlivineCitySchoolBoyScript, -1 
	object_event 26, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, 0, 			OBJECTTYPE_SCRIPT, 0, OlivineCityPokefanMScript, -1 

	object_event 18, 17, SPRITE_PHARMACIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, 			OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineCityRefugeeText, -1
	object_event 11, 23, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, 			OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineCityPokefanFText, -1 
;roadblocks, their text is in route 40 
;	object_event -1, 19, SPRITE_OFFICER,  SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineOfficerText2, EVENT_BEAT_CHUCK
;	object_event -1, 18, SPRITE_OFFICER,  SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineOfficerText2, EVENT_BEAT_CHUCK
	object_event 33, 20, SPRITE_OFFICER,  SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineOfficerText2, EVENT_BEAT_KENSEY_PORT 
	object_event 19, 24, SPRITE_OFFICER,  SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineOfficerText2, EVENT_BEAT_KENSEY_PORT 
	object_event 20, 24, SPRITE_OFFICER,  SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineOfficerText2, EVENT_BEAT_KENSEY_PORT 
	object_event 19, 0, SPRITE_OFFICER,  SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineOfficerText2, EVENT_BEAT_KENSEY_PORT 
	object_event 20, 0, SPRITE_OFFICER,  SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineOfficerText2, EVENT_BEAT_KENSEY_PORT
	object_event 18, 0, SPRITE_OFFICER,  SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineOfficerText2, EVENT_BEAT_KENSEY_PORT 
	object_event 21, 0, SPRITE_OFFICER,  SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlivineOfficerText2, EVENT_BEAT_KENSEY_PORT
	; 
;	tmhmball_event 8, 3, TM_VOLT_SWITCH, EVENT_TM_VOLT_SWITCH
	smashrock_event 52, 23
	smashrock_event 55, 26


OlivineCityFlyPoint:
	setflag ENGINE_FLYPOINT_OLIVINE
	endcallback

OlivineCityYoungster1Script:
	faceplayer
	checkevent EVENT_BEAT_CHUCK
	iftrue_jumptext OlivineCityYoungsterText2

	jumpthistext
	
	text "OMLAS Slowking"
	line "keeps us safe!"
	done

OlivineCityYoungsterText2:
	text "I can't decide if"
	line "I should be a"
	para "Blackbelt or an"
	line "Engineer when I"
	cont "grow up."
	done

OlivineCitySailor1Script:
	faceplayer
	checkevent EVENT_BEAT_CHUCK
	iftrue_jumptext OlivineCitySailorText2

	jumpthistext
	text "The lighthouse"
	line "was a natural"
	para "place to put"
	line "the OMLAS."
	done

OlivineCitySailorText2:
	text "The sea smells"
	line "less salty these"
	cont "days."
	
	para "Did they reduce"
	line "the Desal plant"
	cont "capacity?"
	done

OlivineCityPokefanFText:
	text "The Desal plant"
	line "has briny runoff,"
	
	para "so I only get my"
	line "fish from the"
	cont "market."
	done

OlivineCitySchoolBoyScript: ; optimistic about omlas 
	faceplayer
	checkevent EVENT_BEAT_CHUCK
	iftrue_jumptext OlivineCitySchoolBoyText2

	jumpthistext
	
	text "With help from"
	line "the OMLAS, I can"
	para "translate books"
	line "to my language!"
	done

OlivineCitySchoolBoyText2:
	text "I was just about"
	line "to finish my book"
	para "when OMLAS was"
	line "turned down."
	
	para "How am I going to"
	line "read ancient"
	cont "Greek without it?"
	done


OlivineCityPokefanMScript: ; pessimistic about omlas 
	faceplayer
	checkevent EVENT_BEAT_CHUCK
	iftrue_jumptext OlivineCityPokefanMText2

	jumpthistext
	
	text "If OMLAS Slowking"
	line "can do my job"
	para "faster and cheap-"
	line "er than me,"
	para "why do anything"
	line "at all?"
	done

OlivineCityPokefanMText2:
	text "Do you know if"
	line "anyone needs a"
	para "tutor for ancient"
	line "Greek?"
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
	done

OlivineLighthouseSignText:
	text "Olivine Lighthouse"
	done

OlivineCityCafeSignText:
	text "Olivine Café"
	line "and fish market"
	done

OlivineCityPnkApricornScript:
	faceplayer
	opentext
	writetext PearlForPnkApricornText 
	waitbutton
	checkitem BIG_PEARL
	iffalse .NoBigPearl
	writetext PearlForPnkApricornQuestionText
	yesorno
	iffalse .NoBigPearl
	takeitem BIG_PEARL
	giveapricorn PNK_APRICORN, 5
	jumpopenedtext PearlForPnkApricornEndText

.NoBigPearl
	jumpopenedtext NoPearlForPnkApricornText

PearlForPnkApricornText:
	text "I tried to grow"
	line "a peach tree in"
	cont "my backyard,"
	
	para "but it was a-"
	line "useless PNK"
	cont "Apricorn tree!"

	para "I can't eat those."
	line "I want to eat a"
	cont "BIG Boba pearl."
	done

PearlForPnkApricornQuestionText:
	text "Please trade me,"
	line "I can't eat them!"
	
	para "A big boba pearl"
	line "sounds so yummy."
	done

PearlForPnkApricornEndText:
	text "<PLAYER> got 5"
	line "PNK Apricorn."
	
	para "Thanks! Hey,"
	line "this isn't a"
	cont "boba pearl!"
	done

NoPearlForPnkApricornText:
	text "You don't have"
	line "it? Guess I'll"
	cont "stay hungry."
	done

OlivineCityRefugeeText:
	text "Olivine isn't as"
	line "quiet as Cianwood"
	para "but it's better"
	line "than living on"
	cont "a sandbar."
	done


OlivineOfficerText2:
	text "Olivine is in a"
	line "strict lockdown."
	
	para "We need to catch"
	line "a thief who took"
	para "a part from the"
	line "desal plant."
	done
	