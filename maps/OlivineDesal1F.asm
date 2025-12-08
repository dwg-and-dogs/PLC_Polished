OlivineDesal1F_MapScriptHeader: 
	def_scene_scripts
	scene_script OlivineDesal1FScene

	def_callbacks


	def_warp_events
	warp_event  4,  0, OLIVINE_CITY, 9
	warp_event  5,  0, OLIVINE_CITY, 10
	warp_event  5,  12, OLIVINE_DESAL_B1F, 1


	def_coord_events


	def_bg_events


	def_object_events
	object_event  4,  1, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DESAL_1F_JASMINE
	object_event  5,  1, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DESAL_1F_CHUCK
;	object_event  7,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, Desal1FNPCText, -1
	object_event  6,  3, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtOlivineScript, EVENT_RIVAL_LIGHTHOUSE ;

	object_const_def
	const DESAL_JASMINE
	const DESAL_CHUCK

OlivineDesal1FScene:
	showemote EMOTE_SHOCK, DESAL_JASMINE, 60
	opentext
	writetext OlivineDesal_Text_1
	waitbutton
	writetext OlivineDesal_Text_2
	waitbutton
	writetext OlivineDesal_Text_3
	waitbutton
	closetext
	pause 30
	turnobject DESAL_CHUCK, RIGHT
	opentext
	writetext OlivineDesal_Text_4
	waitbutton
	writetext OlivineDesal_Text_5
	waitbutton
	closetext
	pause 30
	turnobject DESAL_CHUCK, LEFT
	showemote EMOTE_BOLT, DESAL_CHUCK, 30
	opentext
	writetext OlivineDesal_Text_6
	waitbutton
	closetext
	applyonemovement DESAL_CHUCK, step_up
	playsound SFX_EXIT_BUILDING
	waitsfx
	disappear DESAL_CHUCK
	setevent EVENT_DESAL_1F_CHUCK
	turnobject DESAL_JASMINE, UP
	opentext
	writetext OlivineDesal_Text_7
	waitbutton
	closetext
	applyonemovement DESAL_JASMINE, step_up
	playsound SFX_EXIT_BUILDING
	waitsfx
	disappear DESAL_JASMINE
	setevent EVENT_DESAL_1F_JASMINE
	setscene $1
	end
	

OlivineDesal_Text_1:
	text_high
    text " Jasmine: "
	next
	text_start

	text "What's going on?"
	done


OlivineDesal_Text_2:
	text_high
    text " Chuck: "
	next
	text_start

	text "Someone took a"
	line "part from the"
	cont "Desal plant!"
	done

OlivineDesal_Text_3:
	text_high
    text " Jasmine: "
	next
	text_start

	text "But then, without"
	line "the desal, how"
	para "will you run the"
	line "OMLAS forecast?"
	done
	
OlivineDesal_Text_4:
	text_high
    text " Chuck: "
	next
	text_start

	text "We got through"
	line "the Silph Springs"
	para "crisis with the"
	line "new design from"
	cont "<RIVAL>,"
	
	para "but we will need"
	line "a lot more water"
	para "for the OMLAS"
	line "Slowking."
	done

OlivineDesal_Text_5:
	text_high
    text " Jasmine: "
	next
	text_start
	
	text "Maybe too much"
	line "water! Johto is"
	cont "in a drought!"
	
	para "And why does it"
	line "sound like that"
	para "OMLAS Slowking"
	line "is in pain?"
	done
	
OlivineDesal_Text_6:
	text_high
    text " Chuck: "
	next
	text_start
	
	text "I'm respecting its"
	line "limits. You can"
	cont "trust me."
	
	para "If we'd had these"
	line "forecasts before"
	para "the storm, then"
	line "Cianwood could've"
	cont "been saved."
	done

OlivineDesal_Text_7:
	text_high
    text " Jasmine: "
	next
	text_start
	
	text "What am I allow-"
	line "ing? Our coast is"
	para "nearly toxic with"
	line "the discharge"
	cont "from this plant!"
	done
	

Desal1FNPCText:
	text "How horrible!"
	line "Someone stole a"
	cont "machine part from"
	cont "the Desal plant."
	done

KurtOlivineScript:
	faceplayer
	opentext
	writetext KurtOlivineText
	yesorno
	iffalse_jumpopenedtext KurtOlivineText3
	winlosstext OlivineKurtBattleText, OlivineKurtBattleText
	loadtrainer KURT, KURT8
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext OlivineKurtBattleText2

KurtOlivineText:
	text "<PLAYER>! Celebi"
	line "was so upset with"
	cont "what we did to"
	cont "Lugia."
	
	para "How was I so"
	line "misguided?"

	para "We have a chance"
	line "for redemption-"
	
	para "Chuck's OMLAS"
	line "project destroys"
	cont "the shoreline"
	para "as he uses that"
	line "#mon for his"
	cont "own ends!"
	
	para "Some ingenious"
	line "engineer took out"
	cont "a machine part,"
	para "causing the whole"
	line "thing to stop."
	
	para "Now's a chance to"
	line "take it offline!"
	
	para "Want to battle"
	line "to train a bit?"
	done
	
KurtOlivineText3:
	text "Some other time."
	done

OlivineKurtBattleText:
	text "What a battle!"
	done

OlivineKurtBattleText2:
	text "We can battle as"
	line "many times as"
	cont "you like."
	done
