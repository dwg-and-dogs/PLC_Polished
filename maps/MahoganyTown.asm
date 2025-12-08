MahoganyTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MahoganyTownFlyPoint 

	def_warp_events
	warp_event 11,  7, MAHOGANY_MART_1F, 1
	warp_event 17,  7, MAHOGANY_RED_GYARADOS_SPEECH_HOUSE, 1
	warp_event  6, 13, MAHOGANY_GYM, 1
	warp_event 15, 13, MAHOGANY_POKECENTER_1F, 1
	warp_event  9,  1, ROUTE_43_MAHOGANY_GATE, 3

	def_coord_events
	coord_event 7, 4, 0, MahoganyTradeQuestTrigger

	def_bg_events
	bg_event  1,  5, BGEVENT_JUMPTEXT, MahoganyTownSignText
	bg_event  9,  7, BGEVENT_READ, MahoganyTownSouvenirShopSign
	bg_event  3, 13, BGEVENT_JUMPTEXT, MahoganyGymSignText
	bg_event  8,  2, BGEVENT_JUMPTEXT, SilphSpringsAheadText

	def_object_events
	object_event 11,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 	0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MahoganyTownGrampsScript, -1 ; trade quest
	object_event  5, 14, 	SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 	0, 0, -1, -1, 0, 			OBJECTTYPE_SCRIPT, 0, MahoganyKurtScript, EVENT_BEAT_PRYCE ;
	object_event  7, 5, 	SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 	0, 0, -1, -1, 0, 			OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyTownOfficerText, EVENT_BEAT_PRYCE
	object_event  5,  8, 	SPRITE_FISHER, 		SPRITEMOVEDATA_SPINRANDOM_SLOW, 	1, 1, -1, -1, 0, 			OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyTownFisherText, -1
	object_event 12, 13, 	SPRITE_CUTE_GIRL, 	SPRITEMOVEDATA_SPINRANDOM_SLOW, 	1, 1, -1, -1, PAL_NPC_RED,	OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyTownLassText, -1
	object_event 13,  9, 	SPRITE_GRANNY, 		SPRITEMOVEDATA_SPINRANDOM_SLOW, 	1, 1, -1, -1, 0, 			OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyTownGrannyText, -1
	object_event 19, 8, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyDragonTamerText, -1
	object_event 19, 9, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyDragonTamerText, -1
	
	object_const_def
	const MAHOGANY_TOWN_GRAMPS

MahoganyTradeQuestTrigger:
	showemote EMOTE_SAD, MAHOGANY_TOWN_GRAMPS, 30
	setscene $1
	end

MahoganyTownFlyPoint:
	setflag ENGINE_FLYPOINT_MAHOGANY
	endcallback

MahoganyTownSouvenirShopSign:
	jumpthistext

	text "Grandma's"
	line "Souvenir Shop"
	done

MahoganyTownGrannyText:
	text "I hear that at"
	line "night, an enorm-"
	para "ous Ursaring goes"
	line "around, looking"
	cont "for scraps."
	done

MahoganyTownGrampsScript:
	faceplayer
	opentext	
	checkevent EVENT_GOT_OLD_AMBER
	iftrue_jumpopenedtext GiveOldAmberText
	writetext NeedASurfMailText
	waitbutton
	checkkeyitem SURF_MAIL_K
	iffalse_jumpopenedtext Text_NoSurfMail
	writetext Text_SurfMailQuestion ;;
	yesorno
	iffalse_jumpopenedtext Text_NoSurfMail
	takekeyitem SURF_MAIL_K
	verbosegivekeyitem OLD_AMBER_K
	setevent EVENT_GOT_OLD_AMBER
	jumpopenedtext GiveOldAmberText 

NeedASurfMailText: 
	text "Oh, the sea. How"
	line "I miss my days on"
	cont "the water."
	
	para "I wish I could"
	line "see it once more,"
	
	para "as when I was a"
	line "spry fisher,"
	
	para "but Olivine is"
	line "too far away."
	
	para "Now, all I fish"
	line "for are fossils"
	para "from the mud at"
	line "the quarry."
	
	para "Sigh... "	
	done

Text_SurfMailQuestion:
	text "Hey! What're"
	line "those doodles?"
	
	para "They remind me of"
	line "Olivine's pier."
	
	para "Can I have it?"
	line "I'll give you a"
	cont "fossil I dug up."
	done

	
GiveOldAmberText: 
	text "That fossil was"
	line "dug out of the"
	para "ground. It took a"
	line "lot of work!"
	done

Text_NoSurfMail:
	text "Oh, I only have"
	line "my memories to"
	cont "see it by..."
	done

MahoganyTownFisherText:
	text "Pryce has really"
	line "put himself into"
	cont "the town's Gym."
	
	para "The trainers are"
	line "like his family."
	done

MahoganyTownLassText:
	text "Blackthorn City"
	line "radicals blocked"
	cont "Route 44."
	
	para "They don't want"
	line "Silph to get to"
	cont "their water."
	done

MahoganyTownSignText:
	text "Mahogany Town"

	para "Welcome to the"
	line "Home of the Ninja"
	done


MahoganyGymSignText:
	text "Mahogany Town"
	line "#mon Gym"
	cont "Leader: Pryce"
	done


MahoganyKurtScript: 
	faceplayer
	opentext
	writetext HearAStory_5Text
	yesorno
	iffalse DontHearHearStory5
	writetext KurtMahoganyStoryText
	waitbutton
	clearevent EVENT_KURTS_HOUSE_BOOK_5
	closetext
	end

DontHearHearStory5:
	writetext SomeOtherTime_5Text
	waitbutton
	closetext
	end

HearAStory_5Text:
	text "Would you like"
	line "to hear a story?"
	
	para "When I was here,"
	line "with your dad?"
	done

SomeOtherTime_5Text:
	text "Some other time."
	done

MahoganyDeclineKurtStoryText:
	text "Some other time."
	done
	
KurtMahoganyStoryText:
	text "I invited your"
	line "dad to celebrate"
	cont "winter festival."

	para "We'd had some big"
	line "fights about his"
	para "work on #-"
	line "balls."

	para "I probably said"
	line "some things I"
	cont "shouldn't have."

	para "But this was the"
	line "first time he"
	para "didn't come for"
	line "the festival."

	para "When I got home,"
	line "I noticed some "
	para "paint was wearing"
	line "off the apricorn."

	para "If you ever want"
	line "to hear my story"
	cont "again, check the"
	cont "journals at home."
	done

MahoganyTownOfficerText:
	text "There's a report"
	line "of an aggressive"
	para "#mon ahead."
	line "Only those with"
	para "Pryce's Badge"
	line "can pass."
	done	

SilphSpringsAheadText:
	text "Silph Springs:"
	line "Sustainable water"
	para "for all of Johto"
	line "and beyond!"
	done

MahoganyDragonTamerText:
	text "Champion Lance"
	line "forbids any entry"
	para "to Eastern Johto"
	line "to keep our water"
	cont "in our region!"
	
	para "We will not allow"
	line "Silph to destroy"
	cont "our Den!"
	done
	