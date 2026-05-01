WesternCapitalCutscene_MapScriptHeader: 
	def_scene_scripts
	scene_script WesternCapitalCemeteryScene

	def_callbacks


	def_warp_events


	def_coord_events


	def_bg_events


	def_object_events
; cutsceners
	object_event 11, 21, SPRITE_MEJIMI, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, 	OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PROLOGUE_MEJIMI
	object_event  9, 23, SPRITE_ADRINNA, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, 				OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PROLOGUE_ADRINNA
	pokemon_event  8, 19, LUGIA, -1, -1, PAL_NPC_BLUE, WC_pkmn_text, EVENT_PROLOGUE_MEJIMI ; by tammy  ;;;;
	pokemon_event  11, 19, HO_OH, -1, -1, PAL_NPC_RED, WC_pkmn_text, EVENT_PROLOGUE_MEJIMI ; by tammy  ;;;;

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
	pause 60
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

	opentext
	writetext Prologue_Text3
	waitbutton
	closetext
	
	turnobject WESTERN_CAPITAL_MEJIMI, DOWN
	
	opentext
	writetext Prologue_Text4
	waitbutton
	closetext	

	opentext
	writetext Prologue_Text5 ; eh adrinna?
	waitbutton
	closetext	

	special Special_FadeBlackQuickly
	
	setevent EVENT_PROLOGUE_MEJIMI
	setevent EVENT_PROLOGUE_ADRINNA

	setscene $1
	warpfacing UP, HOLT_COAST_GATE,  3, 7
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
    text " Vesper: "
	next
	text_start

	text "Guide me, father."

	para "Being the Emperor"
	line "of Johto is a"
	cont "heavy role."
		
	para "How would you"
	line "deal with the"
	cont "outsiders?"
	done

Prologue_Text2:
	text_high
    text " Vesper: "
	next
	text_start
	text "Ah, General"
	line "Andrea! I had"
	para "two meetings"
	line "before yours."
	done

Prologue_Text2_2:
	text_high
    text " Andrea: "
	next
	text_start	
	
	text "Your majesty. It's"
	line "urgent. Your"
	para "strata-Um, the"
	line "other generals'"
	cont "strategies."
	
	para "The other cities"
	line "defy us."
	done

Prologue_Text2_3:	
	text_high
    text " Vesper: "
	next
	text_start
	
	text "What do you mean?"
	line "The office of the"
	para "Emperor is not for"
	line "coercion."
	done

Prologue_Text3:
	text_high
    text " Andrea: "
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
    text " Vesper: "
	next
	text_start	
	text "This is true…"
	line "but would my "
	para "ancestors condone"
	line "my actions?"
	done


Prologue_Text5:
	text_high
    text " Andrea: "
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
	
