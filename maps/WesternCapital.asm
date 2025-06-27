WesternCapital_MapScriptHeader: ; todo 
	def_scene_scripts
	scene_script WesternCapitalCemeteryScene

	def_callbacks


	def_warp_events
	warp_event 17, 11, EMPERORS_GARDEN, 1
	warp_event 18, 11, EMPERORS_GARDEN, 2
	warp_event 9, 27, WESTERN_CAPITAL_CEMETERY, 1
	warp_event 23, 17, WESTERN_CAPITAL_DANCE_THEATRE, 1
	warp_event 21, 25, WESTERN_CAPITAL_DORMS, 1
	warp_event 27, 23, WESTERN_CAPITAL_STOCKROOM, 1	
	warp_event 0, 18, CAPITAL_CULL_GATE, 3
	warp_event 0, 19, CAPITAL_CULL_GATE, 4
	warp_event 35, 5, TIN_TOWER_OLD_1F, 1
	warp_event 3, 31, STADIUM_CAPITAL_GATE, 1
	warp_event 4, 31, STADIUM_CAPITAL_GATE, 2
	warp_event 35, 26, STY_CAPITAL_GATE, 1
	warp_event 35, 27, STY_CAPITAL_GATE, 2

	def_coord_events



	def_bg_events
	bg_event 7, 7, BGEVENT_JUMPTEXT, WCBrassTowerText
	bg_event 37, 7, BGEVENT_JUMPTEXT, WCTinTowerText
	bg_event 15, 11, BGEVENT_JUMPTEXT, WCGardenText
	bg_event 21, 17, BGEVENT_JUMPTEXT, WCDanceText
	bg_event 21, 11, BGEVENT_JUMPTEXT, WCGloryToMejimiText
	bg_event 17, 23, BGEVENT_JUMPTEXT, WCSignText
	bg_event 19, 19, BGEVENT_READ, WC_AmosWantedSign
	bg_event 4, 28, BGEVENT_JUMPTEXT, WC_ToStadiumSign
	; hidden items 
	bg_event  14, 14, BGEVENT_ITEM + PP_UP, EVENT_WC_HIDDEN_1
	bg_event  29, 27, BGEVENT_ITEM + SILVER_LEAF, EVENT_WC_HIDDEN_2

	def_object_events
; cutsceners
	object_event 11, 21, SPRITE_MEJIMI, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, 	OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PROLOGUE_MEJIMI
	object_event  9, 23, SPRITE_ADRINNA, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, 				OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PROLOGUE_ADRINNA 
	pokemon_event  8, 19, LUGIA, -1, -1, PAL_NPC_BLUE, WC_pkmn_text, EVENT_PROLOGUE_MEJIMI ; by tammy  ;;;; 
	pokemon_event  11, 19, HO_OH, -1, -1, PAL_NPC_RED, WC_pkmn_text, EVENT_PROLOGUE_MEJIMI ; by tammy  ;;;; 
; civilians
	object_event 16, 16, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, 	OBJECTTYPE_SCRIPT, 0, WesternCapitalNPC1Text, EVENT_WESTERN_CAPITAL_CIVILIAN
	object_event 26, 27, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, 	OBJECTTYPE_SCRIPT, 0, WesternCapitalHisuiText1, EVENT_BEAT_ADRINNA_MINE
	object_event 28, 19, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, 	OBJECTTYPE_SCRIPT, 0, WesternCapitalNPC2Text, EVENT_WESTERN_CAPITAL_CIVILIAN 
	object_event 16, 21, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, 		OBJECTTYPE_SCRIPT, 0, WesternCapitalNPC3Text, EVENT_WESTERN_CAPITAL_CIVILIAN 
	object_event 18, 26, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, 	OBJECTTYPE_SCRIPT, 0, WesternCapitalNPC4Text, EVENT_WESTERN_CAPITAL_CIVILIAN 
	object_event 9, 17, SPRITE_GRANNY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, 	OBJECTTYPE_SCRIPT, 0, WesternCapitalNPC5Text, EVENT_WESTERN_CAPITAL_CIVILIAN 
	object_event 5, 6, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, WCBrigaderText, -1

	fruittree_event 6, 5, FRUITTREE_WESTERN_CAPITAL, FIXED_CHARGE, PAL_NPC_RED


	object_const_def
	const WESTERN_CAPITAL_MEJIMI
	const WESTERN_CAPITAL_ADRINNA


WesternCapitalCemeteryScene:
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear PLAYER

	opentext
	writetext Prologue_Text0 ; MEANWHILE, 
	waitbutton
	closetext
	pause 10
;	special Special_FadeInQuickly

	opentext
	writetext Prologue_Text1 ; FATHER, WHAT 
	waitbutton
	closetext

    playsound SFX_EXIT_BUILDING
    appear WESTERN_CAPITAL_ADRINNA
    waitsfx
    applymovement WESTERN_CAPITAL_ADRINNA, WC_AdrinnaMovement1
	
	special Special_FadeOutMusic
	pause 30
	playmusic MUSIC_ELITE_FOUR_BATTLE_BW
	
	refreshscreen
	trainerpic ADRINNA
	waitbutton
	closepokepic
	
	applyonemovement WESTERN_CAPITAL_MEJIMI, step_left
	turnobject WESTERN_CAPITAL_MEJIMI, UP
	showemote EMOTE_SHOCK, WESTERN_CAPITAL_MEJIMI, 15
	
	opentext
	writetext Prologue_Text2 ; YOUR STRATEGIES... 
	waitbutton
	writetext Prologue_Text2_2
	waitbutton
	writetext Prologue_Text2_3
	waitbutton
	closetext

	; todo emotes 
	
	opentext
	writetext Prologue_Text3
	waitbutton
	closetext
	
	; todo emotes 
	
	turnobject WESTERN_CAPITAL_MEJIMI, DOWN
	
	opentext
	writetext Prologue_Text4 ; KENSEY DECEIVES!
	waitbutton
	closetext	
	
	; todo emotes 

	opentext
	writetext Prologue_Text5 ; eh adrinna?
	waitbutton
	closetext	

	; todo emotes 
	
;	refreshscreen
;	trainerpic MEJIMI
;	waitbutton
;	closepokepic

	; todo emotes 
	

	special Special_FadeBlackQuickly
	
	setevent EVENT_PROLOGUE_MEJIMI
	setevent EVENT_PROLOGUE_ADRINNA

	setscene $1
	warp HOLT_COAST_GATE,  3, 7
	end
	
WC_pkmn_text:
	text "null"
	done

Prologue_Text0:
	text "Meanwhile, at the"
	line "Western Capital:"
	done

Prologue_Text1:
	text_high
    text " Urgaust: "
	next
	text_start

	text "Guide me, father."

	para "Being the Consul"
	line "of Johto is a"
	cont "heavy role."
		
	para "How would you"
	line "deal with the"
	cont "outsiders?"
	done

Prologue_Text2:
	text_high
    text " Urgaust: "
	next
	text_start
	text "Ah --  General"
	line "Adrinna! I had"
	para "two meetings"
	line "before yours."
	done

Prologue_Text2_2:
	text_high
    text " Adrinna: "
	next
	text_start	
	
	text "Your majesty. It's"
	line "urgent. Your"
	para "strata-Um, the"
	line "other generals'"
	cont "strategies."
	
	para "The other cities"
	line "resist us."
	done

Prologue_Text2_3:	
	text_high
    text " Urgaust: "
	next
	text_start
	
	text "What do you mean?"
	line "The office of the"
	para "Consul is not for"
	line "coercion."
	done

Prologue_Text3:
	text_high
    text " Adrinna: "
	next
	text_start	
	
	text "With the threat"
	line "of the outsiders,"
	para "you have a chance"
	line "to remake Johto."
	
	para "A blank slate to"
	line "build an empire-"

	para "The region will"
	line "come around,"
	para "if an emperor"
	line "presents himself."
	done

Prologue_Text4:
	text_high
    text " Urgaust: "
	next
	text_start	
	text "This is true…"
	line "but would my "
	para "ancestors condone"
	line "my actions?"
	done


Prologue_Text5:
	text_high
    text " Adrinna: "
	next
	text_start	
	
	text "Your ancestors"
	line "stagnated their"
	para "inheritance."
	line "You have a chance"
	cont "to reshape yours."
	done

WC_AdrinnaMovement1:
	step_up
	step_up
	step_up
	step_right
	turn_head_down
	step_end
	

WesternCapitalNPC1Text:
	faceplayer
	checkevent EVENT_BEAT_ADRINNA_MINE
	iftrue_jumptext WesternCapitalNPC1Text_2

	jumpthistext
	text "We couldn't have"
	line "built the East"
	cont "Tower without"
	
	para "help from the"
	line "Hisuians."
	done


WesternCapitalNPC1Text_2:
	text "Why didn't the"
	line "Hisuians stay for"
	cont "the coronation?"
	done

WesternCapitalHisuiText1:
	jumpthistext
	text "My blessing will"
	line "attract #mon"
	cont "to protect the"
	cont "tower."
	done

WesternCapitalNPC2Text:
	text "The towers are"
	line "so tall!"
	
	para "Hail Consul"
	line "Urgaust!"
	done

WesternCapitalNPC3Text:
	faceplayer
	checkevent EVENT_BEAT_ADRINNA_MINE
	iftrue_jumptext WesternCapitalNPC3Text_2

	jumpthistext
	text "The metal in our"
	line "towers lets them"
	para "stand taller than"
	line "others in Johto."
	done

WesternCapitalNPC3Text_2:
	text "Glory to Consul"
	line "Urgaust! He will"
	cont "protect Johto!"
	done

WesternCapitalNPC4Text:
	faceplayer
	checkevent EVENT_BEAT_ADRINNA_MINE
	iftrue_jumptext WesternCapitalNPC4Text_2

	jumpthistext
	text "The outsiders at"
	line "Trader's Landing"
	para "claim to have"
	line "towers even taller"
	cont "than these!"
	done

WesternCapitalNPC4Text_2:
	text "Something weird"
	line "is going on."
	
	para "Adrinna's briga-"
	line "ders aren't here"
	cont "for some reason."
	done

WesternCapitalNPC5Text:
	faceplayer
	checkevent EVENT_BEAT_ADRINNA_MINE
	iftrue_jumptext WesternCapitalNPC5Text_2

	jumpthistext
	text "The moat protects"
	line "us in case of an"
	cont "ambush by the"
	cont "outsiders."
	done

WesternCapitalNPC5Text_2:
	text "My bones ache."
	line "There must be a"
	cont "storm coming."
	done

WCBrigaderText:
	faceplayer
	checkevent EVENT_BEAT_ADRINNA_MINE
	iftrue_jumptext WCBrigaderText_2

	jumpthistext
	text "Off-limits until"
	line "the tower is"
	cont "blessed."
	done

WCBrigaderText_2:
	text "The tower is off-"
	line "limits! Glory to"
	cont "the Consul!"
	done

WCBrassTowerText:
	text "Brass Tower"
	line "Devoted to"
	cont "Consul Urgaust"
	done

WCTinTowerText:
	text "Tin Tower"
	line "Protected by"
	cont "spirits"
	done

WCGardenText:
	text "Consul's Garden"
	line "Home to refined"
	cont "#mon"
	done
	
WCDanceText:
	text "Kimono Theatre"
	line "A neverending"
	cont "tapestry"
	done

WCGloryToMejimiText:
	text "Welcome the new"
	line "age - Glory to"
	cont "Consul Urgaust!"
	done
	
WCSignText:
	text "Western Capital"
	line "Protected by"
	para "Chronicler"
	line "Vespera"
	done
	
WC_AmosWantedSign:
	refreshscreen
	trainerpic AMOS
	waitbutton
	closepokepic
	jumpthistext

	text "WANTED: This man"
	line "is wanted for"
	para "crimes against"
	line "the Consul."

	para "If you see him,"
	line "please notify a"
	cont "brigader!"

	para "Known alias:"
	line "Amos."
	done

WC_ToStadiumSign:
	text "South: To Stadium"
	done

	