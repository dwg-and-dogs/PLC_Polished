IlexForestAzaleaGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, ILEX_FOREST, 2
	warp_event  0,  5, ILEX_FOREST, 3
	warp_event  9,  4, AZALEA_TOWN, 7
	warp_event  9,  5, AZALEA_TOWN, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, jumptextfaceplayer, IlexForestAzaleaGateOfficerScript, -1 ;GIVE THIEF
	object_event  1,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, jumptextfaceplayer, IlexForestAzaleaGateGrannyScript, -1 ; GIVE false swipe
	object_event  8,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ProfOaksAide1Script, -1


ProfOaksAide1Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_NEST_BALLS_FROM_PROF_OAKS_AIDE
	iftrue .Explain
	writetext ProfOaksAide1HiText
	waitbutton
	countseencaught
	readvar VAR_DEXCAUGHT
	ifgreater 5, .HereYouGo
.UhOh
	jumpopenedtext ProfOaksAide1UhOhText

.HereYouGo
	writetext ProfOaksAide1HereYouGoText
	waitbutton
	giveitem EXP_SHARE
	iffalse .NoRoom
	writetext ProfOaksAide1NestBallText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_NEST_BALLS_FROM_PROF_OAKS_AIDE
.Explain
	jumpopenedtext ProfOaksAide1ExplainText

.NoRoom
	jumpopenedtext ProfOaksAide1NoRoomText

ProfOaksAide1HiText:
	text "Hello there! I'm"
	line "Prof.Oak's aide."

	para "If you caught 6"
	line "kinds of #mon,"

	para "I'm supposed to"
	line "give you an item."

	para "So, <PLAYER>,"
	line "have you caught"

	para "at least 6 kinds"
	line "of #mon?"
	done

ProfOaksAide1UhOhText:
	text "Let's see…"
	line "Uh-oh! You've only"

	para "caught "
	text_decimal wTempPokedexCaughtCount, 1, 3
	text " kinds"
	line "of #mon."

	para "Come back and see"
	line "me when you catch"
	cont "6 kinds."
	done

ProfOaksAide1HereYouGoText:
	text "Let's see…"
	line "Great job! You've"

	para "caught "
	text_decimal wTempPokedexCaughtCount, 1, 3
	text " kinds"
	line "of #mon."

	para "Congratulations!"
	line "Here you go!"
	done

ProfOaksAide1NoRoomText:
	text "Oh! I see you"
	line "don't have any"
	cont "room for this."
	done

ProfOaksAide1NestBallText:
	text "<PLAYER> received"
	line "Exp. Share."
	done

ProfOaksAide1ExplainText:
	text "Use that Exp."
	line "share to level"
	cont "up weak #mon."
	done

IlexForestAzaleaGateGrannyScript: ;CF THE ROUTE34GATE TEACHER
	checkevent EVENT_GOT_TM54_FALSE_SWIPE
	iftrue_jumptextfaceplayer IlexForestAzaleaGateGranny_GotFalseSwipe
	faceplayer
	opentext
	writetext IlexForestAzaleaGateGrannyText
	promptbutton
	verbosegivetmhm TM_FALSE_SWIPE
	setevent EVENT_GOT_TM54_FALSE_SWIPE
	jumpthisopenedtext

IlexForestAzaleaGateGranny_GotFalseSwipe:
	text "It's False Swipe."

	para "Teach it to a"
	line "special #mon."
	done
	
IlexForestAzaleaGateGrannyText:
	text "Oh, honey. You're"
	line "making a #dex?"

	para "It must be hard to"
	line "catch all those"
	cont "#mon."

	para "Here, take this"
	line "TM."
	done
	
IlexForestAzaleaGateOfficerScript: 
	checkevent EVENT_GOT_TM46_THIEF_FROM_LANCE
	iftrue_jumptextfaceplayer IlexForestAzaleaGateOfficer_GotThief
	faceplayer
	opentext
	writetext IlexForestAzaleaGateOfficerText
	promptbutton
	verbosegivetmhm TM_THIEF
	setevent EVENT_GOT_TM46_THIEF_FROM_LANCE
	jumpthisopenedtext

IlexForestAzaleaGateOfficer_GotThief:
	text "Stay alert for"
	line "troublemakers!"
	done
	
IlexForestAzaleaGateOfficerText:
	text "There's reports of"
	line "groups stealing"
	para "equipment in Ilex"
	line "Forest. If you see"
	para "them, can you"
	line "steal it back?"
	done
	