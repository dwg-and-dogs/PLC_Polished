WesternCapital_MapScriptHeader: 
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

	def_coord_events



	def_bg_events
	bg_event 7, 7, BGEVENT_JUMPTEXT, WCBrassTowerText
	bg_event 37, 7, BGEVENT_JUMPTEXT, WCTinTowerText
	bg_event 15, 11, BGEVENT_JUMPTEXT, WCGardenText
	bg_event 21, 17, BGEVENT_JUMPTEXT, WCDanceText
	bg_event 21, 11, BGEVENT_JUMPTEXT, WCGloryToMejimiText
	bg_event 17, 23, BGEVENT_JUMPTEXT, WCSignText
	bg_event 19, 19, BGEVENT_READ, WC_AmosWantedSign

	def_object_events
	object_event 11, 21, SPRITE_MEJIMI, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PROLOGUE_MEJIMI ; need to put all these in the event flags file
	object_event  9, 23, SPRITE_ADRINNA, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PROLOGUE_ADRINNA ; disappeared at start
	object_event  9, 23, SPRITE_KENSEY, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PROLOGUE_KENSEY; disappeared at start
	object_event  9, 23, SPRITE_BOBESH, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PROLOGUE_BOBESH; disappeared at start
	object_event  9, 23, SPRITE_SAMSARA, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PROLOGUE_SAMSARA; disappeared at start
	pokemon_event  10, 19, LUGIA, -1, -1, PAL_NPC_BLUE, WC_pkmn_text, EVENT_PROLOGUE_MEJIMI ; by tammy  ;;;; 
	pokemon_event  12, 19, HO_OH, -1, -1, PAL_NPC_RED, WC_pkmn_text, EVENT_PROLOGUE_MEJIMI ; by tammy  ;;;; 
	object_event 16, 16, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, WesternCapitalNPC1Text, EVENT_WESTERN_CAPITAL_CIVILIAN ; done
	object_event 26, 27, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, WesternCapitalHisuiText1, EVENT_WESTERN_CAPITAL_CIVILIAN ; done
	object_event 28, 19, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, WesternCapitalNPC2Text, EVENT_WESTERN_CAPITAL_CIVILIAN ; done
	object_event 16, 21, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, WesternCapitalNPC3Text, EVENT_WESTERN_CAPITAL_CIVILIAN ; done
	object_event 18, 26, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, WesternCapitalNPC4Text, EVENT_WESTERN_CAPITAL_CIVILIAN ; done
	object_event 9, 17, SPRITE_GRANNY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, WesternCapitalNPC5Text, EVENT_WESTERN_CAPITAL_CIVILIAN ; done
	object_event 5, 6, SPRITE_BRIGADER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, WCBrigaderText, EVENT_WESTERN_CAPITAL_CIVILIAN ; done

	object_const_def
	const WESTERN_CAPITAL_MEJIMI
	const WESTERN_CAPITAL_ADRINNA
	const WESTERN_CAPITAL_KENSEY
	const WESTERN_CAPITAL_BOBESH
	const WESTERN_CAPITAL_SAMSARA


WesternCapitalCemeteryScene: ; SOME OF THIS C.F. MRPOKEMONSHOUSE.ASM IN POLISHED 
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear PLAYER
	opentext
	writetext Prologue_Text0 ; MEANWHILE, 
	waitbutton
	closetext
	pause 10
	special Special_FadeInQuickly

	opentext
	writetext Prologue_Text1 ; FATHER, WHAT 
	waitbutton
	closetext

    playsound SFX_EXIT_BUILDING
    appear WESTERN_CAPITAL_ADRINNA
    waitsfx
    applymovement WESTERN_CAPITAL_ADRINNA, WC_AdrinnaMovement1
	
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
	closetext
	
    playsound SFX_EXIT_BUILDING
    appear WESTERN_CAPITAL_KENSEY
    waitsfx
    applymovement WESTERN_CAPITAL_KENSEY, WC_KenseyMovement1
	
	refreshscreen
	trainerpic KENSEY
	waitbutton
	closepokepic
	
	turnobject WESTERN_CAPITAL_MEJIMI, LEFT
	turnobject WESTERN_CAPITAL_ADRINNA, LEFT

	opentext
	writetext Prologue_Text3 ; HOW ARE THINGS 
	waitbutton
	closetext
	
    applymovement WESTERN_CAPITAL_KENSEY, WC_KenseyMovement2
    playsound SFX_ENTER_DOOR
	disappear WESTERN_CAPITAL_KENSEY
	turnobject WESTERN_CAPITAL_ADRINNA, DOWN
	turnobject WESTERN_CAPITAL_MEJIMI, UP
	
	opentext
	writetext Prologue_Text4 ; KENSEY DECEIVES!
	waitbutton
	closetext	
	

    playsound SFX_EXIT_BUILDING
    appear WESTERN_CAPITAL_BOBESH
    waitsfx
    applymovement WESTERN_CAPITAL_BOBESH, WC_BobeshMovement1
	
	refreshscreen
	trainerpic BOBESH
	waitbutton
	closepokepic
	
	turnobject WESTERN_CAPITAL_MEJIMI, LEFT

	opentext
	writetext Prologue_Text5 ; eh adrinna?
	waitbutton
	closetext	

	turnobject WESTERN_CAPITAL_ADRINNA, DOWN

	opentext
	writetext Prologue_Text6 ; BUT,,, YOU STILL HAVE NOT! 
	waitbutton
	closetext	

    applymovement WESTERN_CAPITAL_BOBESH, WC_BobeshMovement2
    playsound SFX_ENTER_DOOR
	disappear WESTERN_CAPITAL_BOBESH
	applyonemovement WESTERN_CAPITAL_MEJIMI, step_left
	applyonemovement WESTERN_CAPITAL_MEJIMI, step_left
	applyonemovement WESTERN_CAPITAL_ADRINNA, step_down
	turnobject WESTERN_CAPITAL_MEJIMI, RIGHT
	turnobject WESTERN_CAPITAL_ADRINNA, LEFT

	opentext
	writetext Prologue_Text7 ; now that evoked! 
	waitbutton
	closetext	

    playsound SFX_EXIT_BUILDING
    appear WESTERN_CAPITAL_SAMSARA
    waitsfx
    applymovement WESTERN_CAPITAL_SAMSARA, WC_SamsaraMovement1
	turnobject WESTERN_CAPITAL_MEJIMI, DOWN
	showemote EMOTE_SHOCK, WESTERN_CAPITAL_SAMSARA, 10 
	
	opentext
	writetext Prologue_Text8 ; THIS SITE IS HOLY 
	waitbutton
	closetext
	
	showemote EMOTE_BOLT, WESTERN_CAPITAL_MEJIMI, 20 

	pause 10
	
	refreshscreen
	trainerpic MEJIMI
	waitbutton
	closepokepic

	opentext
	writetext Prologue_Text9 ; I AM THE EMPEROR 
	waitbutton
	closetext	

	applyonemovement WESTERN_CAPITAL_MEJIMI, step_left
	
	opentext
	writetext Prologue_Text10 ; how dare you 
	waitbutton
	closetext	

	special Special_FadeBlackQuickly
	
	setevent EVENT_PROLOGUE_MEJIMI
	setevent EVENT_PROLOGUE_ADRINNA
	setevent EVENT_PROLOGUE_BOBESH
	setevent EVENT_PROLOGUE_KENSEY
	setevent EVENT_PROLOGUE_SAMSARA

	setscene $1
	warp HOLT_COAST_GATE,  3, 5
	end
	
WC_pkmn_text:
	text "null"
	done

Prologue_Text0:
	text "Meanwhile, at the"
	line "Western Capital:"
	done


Prologue_Text1:
	text "Emperor Mejimi:"
	line "Guide me father."
	para "How would you"
	line "deal with the"
	cont "outsiders?"
	para "... Are your"
	line "ways still"
	cont "enough?"
	done

Prologue_Text2:
	text "Mejimi: General"
	line "Adrinna! I have"
	para "three meetings"
	line "before yours."
	
	para "Adrinna: It's"
	line "urgent. Your"
	para "strata-Um, the"
	line "other strageies."
	
	para "The other cities"
	line "resist us, des-"
	cont "pite the prot-"
	para "ection we would"
	line "offer against"
	cont "the outsiders."
	
	para "Mejimi: We've"
	line "never coerced."
	
	para "That's how my"
	line "father handled"
	cont "the famine."
	done

Prologue_Text3:
	text "General Kensey:"
	line "Adrinna, why"
	cont "are you here?"

	para "Mejimi: never"
	line "mind her."
	
	para "How are things"
	line "with the out-"
	cont "siders at the"
	cont "Western Port?"

	para "Kensey: their"
	line "#balls are..."
	para "Barbaric! But"
	line "incredible."
	para "We must produce"
	line "our own."
	
	para "Mejimi: Very"
	line "well."
	done

Prologue_Text4:
	text "Adrinna: Kensey"
	line "deceives! The"
	cont "coast nomads"

	para "will never fol-"
	line "low bean counters"
	cont "like Kensey."

	para "His plan is a"
	line "farce!"
	done

Prologue_Text5:
	text "General Bobesh:"
	line "Eh, Adrinna?"
	para "Don't you know"
	line "your place?"

	para "Mejimi: Bobesh,"
	line "you address me."

	para "Please, tell me"
	line "about the South."

	para "Bobesh: the"
	line "stadium shows"
	cont "our strength."

	para "Anarres can be"
	line "brought in soon."

	para "Mejimi: ..."
	line "Very well..."
	done

Prologue_Text6:
	text "Mejimi: But..."
	line "the instigator"
	
	para "Amos is still"
	line "on the loose!"
	
	para "If you do not"
	line "find him soon,"

	para "you may be the"
	line "one fighting"
	cont "feral pokemon"
	cont "in your stad-"
	cont "ium."
	done

Prologue_Text7:
	text "Adrinna: Now,"
	line "that evoked an"
	cont "Aeroblast or"
	cont "Sacred Fire!"
	
	para "Mejimi: Oh,"
	line "here's Chronicler"
	cont "Samsara."
	done

Prologue_Text8:
	text "Samsara:"
	line "Adrinna? This"
	cont "site is holy."
	para "How did you get"
	line "back here?"
	
	para "Mejimi: Quickly."
	line "How go the"
	cont "towers' const-"
	cont "ruction?"

	para "Samsara: the"
	line "Hisuians have"
	cont "blessed the" 
	para "Tin Tower, but"
	line "they need more"
	para "time for the"
	line "Brass Tower."
	done
	
Prologue_Text9:
	text "Mejimi: I am"
	line "the emperor!"
	
	para "My presence"
	line "is holy enough!"

	para "Samsara: Your"
	line "majesty, that"
	cont "is a novel idea."

	para "Would your Father"
	line "condone it?"
	done
	
Prologue_Text10:
	text "Mejimi: how"
	line "dare you."
; move this to a different scene.	
;	para "My father was"
;	line "stagnant with"
;	cont "his inheritance."
;	
;	para "I will trans-"
;	line "form mine."
;	
;	para "From the west-"
;	line "ern islands to"
;	
;	para "the eastern"
;	line "mountains and"
;
;	para "the southern"
;	line "forests,"
;
;	para "I will remake Jo-"
;	line "hto in my image!"
	done

WC_AdrinnaMovement1:
;	step_up
;	step_up
;	step_up
;	step_up
;	step_up
	step_up
	step_up
	step_up
	step_right
	turn_head_down
	step_end
	
WC_KenseyMovement1:
;	step_up
;	step_up
;	step_up
;	step_up
;	step_up
	step_up
	step_up	
	turn_head_right
	step_end

WC_KenseyMovement2:
;	step_down
;	step_down
;	step_down
;	step_down
;	step_down
	step_down	
	step_down
	step_end

WC_BobeshMovement1:
;	step_up
;	step_up
;	step_up
;	step_up
;	step_up
	step_up
	step_up
	turn_head_right
	step_end

WC_BobeshMovement2:
;	step_down
;	step_down
;	step_down
;	step_down
;	step_down	
	step_down
	step_down
	step_end
	
WC_SamsaraMovement1:
;	step_up
;	step_up
;	step_up
;	step_up
;	step_up
	step_up
	step_end

WesternCapitalNPC1Text:
	text "We couldn't have"
	line "built the East"
	cont "Tower without"
	
	para "help from the"
	line "Hisuians."
	done

WesternCapitalHisuiText1: 
	text "My blessing will"
	line "attract #mon"
	cont "to protect the"
	cont "tower."
	done

WesternCapitalNPC2Text:
	text "The towers are"
	line "so tall!"
	
	para "Hail Emperor"
	line "Mejimi!"
	done

WesternCapitalNPC3Text:
	text "The metal in our"
	line "towers lets them"
	cont "stand taller than"
	cont "others in Johto."
	done

WesternCapitalNPC4Text:
	text "The outsiders at"
	line "Trader's Landing"
	cont "claim to have"
	para "towers even taller"
	cont "than these!"
	done

WesternCapitalNPC5Text:
	text "The moat protects"
	line "us in case of an"
	cont "ambush by the"
	cont "outsiders."
	done

WCBrigaderText:
	text "Off-limits until"
	line "the tower is"
	cont "blessed."
	done


WCBrassTowerText:
	text "Brass Tower"
	line "Devoted to"
	cont "Emperor Mejimi!"
	done

WCTinTowerText:
	text "Tin Tower"
	line "Protected by"
	cont "spirits"
	done

WCGardenText:
	text "Emperor's Garden"
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
	cont "Emperor Mejimi!"
	done
	
WCSignText:
	text "Western Capital"
	line "Protected by"
	para "Chronicler"
	line "Samsara"
	done
	
WC_AmosWantedSign:
	refreshscreen
	trainerpic AMOS
	waitbutton
	closepokepic
	jumpthistext

	text "WANTED: This man"
	line "is wanted for"
	cont "crimes against"
	cont "the emperor."

	para "If you see him,"
	line "please notify a"
	cont "brigader"
	cont "immediately."

	para "Known alias:"
	line "Amos."
	done