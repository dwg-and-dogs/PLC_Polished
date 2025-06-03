ClastsCradleB1F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks

; SQUARES OF 14, 6; 14, 26;  TURN INTO $5D DEPENDING ON EVENT_CRADLE_BOULDER_1,  _3
; SQUARES OF 18, 14;  TURN INTO $5F DEPENDING ON EVENT_CRADLE_BOULDER_2


	def_warp_events
	warp_event 3, 3, CLASTS_CRADLE_1F, 2
; HOLE DROP 
	warp_event 12, 7, CLASTS_CRADLE_1F, 2


	def_coord_events
	coord_event 21, 12, 0, CradleScene1_Mejimi; cutscene
	coord_event  5, 26, 1, CradleScene2_Heatran; battle heatran 
	coord_event  5, 26, 2, CradleScene2_Adrinna; battle with adrinna
	
	def_bg_events



	def_object_events
; cutscene 1 objects, PLAYER AT 21, 12
	object_event 21, 8, SPRITE_ADRINNA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CRADLE_CUTSCENE
	object_event 22, 8, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CRADLE_CUTSCENE
	object_event 27, 14, SPRITE_MEJIMI, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CRADLE_CUTSCENE
; CUTSCENE 2
	object_event   4,  16, SPRITE_ADRINNA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_ADRINNA_MINE
	object_event   5,  15, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, HEATRAN, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CC_HEATRAN
	object_event   5,  26, SPRITE_KURT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_KURT_MINE_2
; KURT TO HEAL YOU 
	object_event   8,  5, SPRITE_KURT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, KurtScriptCC, EVENT_BEAT_ADRINNA_MINE
; TRAINERS
	object_event  22,  20, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBrigader19, EVENT_BEAT_ADRINNA_MINE
	object_event  17,  24, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBrigader20, EVENT_BEAT_ADRINNA_MINE

	tmhmball_event 25, 23, TM_FOCUS_BLAST, EVENT_GOT_TM_FOCUS_BLAST 


	object_const_def
	const CRADLE_CUTSCENE_ADRINNA
	const CRADLE_CUTSCENE_WORKER
	const CRADLE_CUTSCENE_MEJIMI
	const CRADLE_ADRINNA_2
	const CRADLE_HEATRAN
	const CRADLE_KURT

KurtScriptCC:
	faceplayer
	checkevent EVENT_KURT_INTRO_MINE
	iftrue .AmosHeals
	showtext KurtCradleText1
	setevent EVENT_KURT_INTRO_MINE
.AmosHeals:
	showtext KurtHealsTextCC
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 20
	special RestartMapMusic
	special Special_FadeInQuickly
	showtext KurtCradleText2
	end 
	
KurtCradleText1:
	text "<PLAYER>, I can"
	line "hear Adrinna up"
	cont "ahead."
	
	para "It sounds like a"
	line "powerful #mon"
	cont "is nearby, also."
	done

KurtHealsTextCC:
	text "Let me heal you"
	line "up."
	done

KurtCradleText2:
	text "You can do it!"
	done

CradleScene1_Mejimi:	
;cf western capital
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear PLAYER
	opentext
	writetext CradleCutscene_Text0 ; MEANWHILE, 
	waitbutton
	closetext
	pause 10
	special Special_FadeInQuickly

	opentext
	showemote EMOTE_BOLT, CRADLE_CUTSCENE_ADRINNA, 10
	writetext CradleCutscene_Text1
	waitbutton
	writetext CradleCutscene_Text2
	waitbutton
	closetext
	turnobject CRADLE_CUTSCENE_ADRINNA, DOWN
	showtext CradleCutscene_Text3 
	closetext

    applymovement CRADLE_CUTSCENE_MEJIMI, CC_MejimiMoves1
	
	refreshscreen
	trainerpic MEJIMI
	waitbutton
	closepokepic
	
	showtext CradleCutscene_Text4 ; shoo worker

	applymovement CRADLE_CUTSCENE_WORKER, CC_WorkerMoves1 ; 2 d 1 l 3 d 5 r
	
	showtext CradleCutscene_Text5 ; hello adrinna
	waitbutton
	showtext CradleCutscene_Text6 ; how is kensey?
	waitbutton
	turnobject CRADLE_CUTSCENE_ADRINNA, LEFT
	showtext CradleCutscene_Text7 ; how unfortunate	
	turnobject CRADLE_CUTSCENE_ADRINNA, DOWN
	showtext CradleCutscene_Text8 
	turnobject CRADLE_CUTSCENE_MEJIMI, LEFT
	pause 20
	waitbutton	
	showemote EMOTE_QUESTION, CRADLE_CUTSCENE_ADRINNA, 10
	applymovement CRADLE_CUTSCENE_ADRINNA, CC_AdrinnaMoves2; left down face right
	showtext CradleCutscene_Text9 ; I thought we were done?
	waitbutton
	showtext CradleCutscene_Text10 ; repurposed
	applymovement CRADLE_CUTSCENE_ADRINNA, step_left
	showtext CradleCutscene_Text11
	turnobject CRADLE_CUTSCENE_MEJIMI, DOWN
	showtext CradleCutscene_Text12
	applymovement CRADLE_CUTSCENE_MEJIMI, CC_MejimiMoves2 ; 4 D 5 raw
	pause 20
	showtext CradleCutscene_Text13
	pause 20
	applymovement CRADLE_CUTSCENE_WORKER, CC_MejimiMoves1 ; comes back from mejimi tile 
	turnobject CRADLE_CUTSCENE_WORKER, LEFT
	showtext CradleCutscene_Text14
	turnobject CRADLE_CUTSCENE_ADRINNA, RIGHT
	showtext CradleCutscene_Text15
	pause 15
	cry GYARADOS
	pause 15
	special Special_FadeBlackQuickly
	setevent EVENT_CRADLE_CUTSCENE
	setscene $1
	warp OLIVINE_CITY,  19, 22 ; revise to the desal plant 
	end

CradleCutscene_Text0:
	text "Meanwhile, Mejimi"
	line "visits his mine:"
	done

CradleCutscene_Text1:
	text_high
    text " Adrinna: " 
	next
	text_start 
	text "Brigader Tyson,"
	line "update!"
	done

CradleCutscene_Text2:
	text_high
    text " Tyson: " 
	next
	text_start 
	text "Madam. There were"
	line "some unexpected"
	cont "toxic gases."
	
	para "Some Hisuians"
	line "lost #mon."
	
	para "They suddenly"
	line "want to give up."
	done

	
CradleCutscene_Text3:
	text_high
    text " Adrinna: " 
	next
	text_start 
	text "The Hisuians are"
	line "so weak. They"
	para "need a taste of"
	line "raw power."
	
	para "We must be very"
	line "close to the"
	cont "source?"
	done

CradleCutscene_Text4:
	text_high
    text " Mejimi: " 
	next
	text_start 
	text "Shoo!"
	
	para "Adrinna, your"
	line "soldiers are more"
	para "lively than"
	line "Kensey's."
	done

CradleCutscene_Text5:
	text_high
    text " Adrinna: " 
	next
	text_start 
	text "Say, how is"
	line "General Kensey?"
	done
	
CradleCutscene_Text6:
	text_high
    text " Mejimi: " 
	next
	text_start 
	text "His port - it"
	line "was destroyed!"

	para "Says an old man"
	line "stole my Lugia."
	para "But she's been by"
	line "side dutifully!"
	cont "How absurd."
	done


CradleCutscene_Text7:
	text_high
    text " Adrinna: " 
	next
	text_start 
	text "Another project,"
	line "lost. How tragic!"
	
	para "Now, this mine is"
	line "your only hope."
	done

CradleCutscene_Text8:
	text_high
    text " Mejimi: " 
	next
	text_start 
	text "What's worse, I"
	line "hoped the port"
	para "would bring metals"
	line "for my sculptures."
	
	para "Johto must unite"
	line "around me."
	done


CradleCutscene_Text9:
	text_high
    text " Adrinna: " 
	next
	text_start 
	text "Emperor, I- Er,"
	line "you told me that"
	para "traditions should"
	line "be wiped clean?"
	done

CradleCutscene_Text10:
	text_high
    text " Mejimi: " 
	next
	text_start 
	text "They'll be updated"
	line "to honor me! Ha."
	
	para "That's why we must"
	line "focus on more"
	cont "gold, less steel."
	done

CradleCutscene_Text11:
	text_high
    text " Adrinna: " 
	next
	text_start 
	text "Your majesty. We"
	line "are so close to"
	para "the #mon that"
	line "can shape Johto"
	para "to how I-Er,"
	line "you want!" 
	done

CradleCutscene_Text12:
	text_high
    text " Mejimi: " 
	next
	text_start 
	text "Your plans can"
	line "wait."
	
	para "A coronation will"
	line "revive Johto."
	
	para "See to it!"
	done

CradleCutscene_Text13: 
	text_high
    text " Adrinna: " 
	next
	text_start 
	text "Adrinna: How I"
	line "misjudged you..."
	done

CradleCutscene_Text14:
	text_high
    text " Tyson: " 
	next
	text_start 
	text "What are your"
	line "next orders?"
	done

CradleCutscene_Text15: 
	text_high
    text " Adrinna: " 
	next
	text_start 
	text "We will temper"
	line "ourselves-"

	para "I have a plan to"
	line "lure back the" 

	para "Hisuians with what"
	line "they can't resist."

	para "Then, reach the" 
	line "mountain's heart"

	para "to forge a new"
	line "destiny for Johto."
	
	para "With or without"
	line "the emperor..."
	done


CC_MejimiMoves1: ;6left 5 UP
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

CC_WorkerMoves1: ; 2 d 1 l 3 d 5 r
	step_down
	step_down
	step_left
	step_down
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

CC_AdrinnaMoves2:; left down face right
	step_left
	step_down
	turn_head_right
	step_end

CC_MejimiMoves2: ;; 4 D 5 raw
	step_down
	step_down
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end
	
GenericTrainerBrigader19: ; bugs dark 
	generictrainer BRIGADER, 19, EVENT_BEAT_ROCKET_GRUNTM_19, Brigader19SeenText, Brigader19BeatenText  

Brigader19BeatenText:
	text "Maybe I smelled"
	line "the sulfur..."
	done

Brigader19SeenText:
	text "Don't look so"
	line "scared. I can"
	cont "smell your fear!"
	done
	
GenericTrainerBrigader20: ; tyson nidos steelix
	generictrainer BRIGADER, 20, EVENT_BEAT_ROCKET_GRUNTM_20, Brigader20SeenText, Brigader20BeatenText  

Brigader20BeatenText:
	text "Unfathomable - I"
	line "was the best!"
	done

Brigader20SeenText:
	text "Tyson: I'm the"
	line "top Brigader in"
	cont "here! You would"
	cont "not last a day in"
	cont "this environment!"
	done


CradleScene2_Adrinna:
	applymovement PLAYER, Player_CCB1F_Move1
	sjump Crade_Scene3

CradleScene2_Heatran:
	applymovement PLAYER, Player_CCB1F_Move1
	showemote EMOTE_BOLT, CRADLE_ADRINNA_2, 30
	showtext CradleAdrinnaText1
; may need an additional 
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon HEATRAN, 50
	startbattle
	ifequal $1, .Continue
.Continue:
	setscene $2
	disappear CRADLE_HEATRAN
	setevent EVENT_CC_HEATRAN
	;fallthru 
Crade_Scene3: ; just in case you lose to adrinna after heatran 
	showtext CradleAdrinnaText2
	pause 10
	appear CRADLE_KURT
	applymovement CRADLE_KURT, CradleKurtMovesToYou
	turnobject CRADLE_ADRINNA_2, DOWN
	showtext CradleKurtText1
	special HealParty
	showemote EMOTE_BOLT, CRADLE_ADRINNA_2, 10
	showtext CradleAdrinnaText3
	winlosstext CradleAdrinnaText4, 0
	loadtrainer ADRINNA, ADRINNA2
	startbattle
	ifequal $1, .Continue2
.Continue2:
	reloadmapafterbattle
	opentext
	writetext CradleAdrinnaText5
	waitbutton
	closetext
	setevent EVENT_BEAT_ADRINNA_MINE
	applyonemovement CRADLE_ADRINNA_2, teleport_from	
	disappear CRADLE_ADRINNA_2
	showemote EMOTE_SHOCK, CRADLE_KURT, 10
	showtext CradleKurtText2
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	setscene $2
	warp WHISPERS_WAY, 10, 4
	end
	
Player_CCB1F_Move1:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end
	
CradleKurtMovesToYou:
	step_left
	step_left
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

CradleAdrinnaText1:
	text_high
    text " Adrinna: " 
	next
	text_start
	text "<PLAYER>, I knew"
	line "you would come."
	
	para "We are held back"
	line "by tradition."
	
	para "Consider: Hollis"
	line "holds back his"
	cont "best trainers."
	
	para "Sandra saddles"
	line "youth with the"
	cont "sick and lame."
	
	para "Barbeau rejects"
	line "maps for his own"
	cont "memories."
	
	para "All the while,"
	line "this mountain's"
	para "luscious iron"
	line "lay idle."
	
	para "The #mon here"
	line "is liquid steel."

	para "We can remake"
	line "Johto from the"
	cont "bedrock up."
	
	para "<PLAYER>, I want"
	line "you to have it."
	
	para "Heatran, rise!"
	done


CradleAdrinnaText2:
	text_high
    text " Adrinna: " 
	next
	text_start
	text "<PLAYER>, I knew"
	line "you could do it."
	
	para "No more elders to"
	line "tell you what you"
	cont "should do."
	
	para "Your only limit"
	line "is ... ...?"
	done
	
	
CradleKurtText1:
	text_high
    text " Kurt: " 
	next
	text_start
	text "Don't listen!"
	line "I've been wrong."
	
	para "When we could've"
	line "used <RIVAL>'s"
	para "invention to man-"
	line "age the forest's"
	cont "decline,"
	
	para "I push him away."
	line "I was scared. But"
	para "I forgot that I"
	line "was doing it for"
	para "you. Show Adrinna"
	line "that she's wrong!"
	done
	

CradleAdrinnaText3: 
	text_high
    text " Adrinna: " 
	next
	text_start
	text "Come at me! I'm"
	line "stronger than"
	cont "ever!"
	done
	
CradleAdrinnaText4:
	text "So you are tough."
	done
	
CradleAdrinnaText5:
	text_high
    text " Adrinna: " 
	next
	text_start
	text "This changes"
	line "nothing."
	
	para "The Emperor has"
	line "no idea what's"

	para "coming at his"
	line "coronation."

	para "Goodbye, for now."  
	done
	
CradleKurtText2:
	text_high
    text " Kurt: " 
	next
	text_start
	text "<PLAYER>, what was"
	line "that about?"
	
	para "Amos says he'll"
	line "regroup south"
	para "of the capital."
	line "Let's head there."
	done
