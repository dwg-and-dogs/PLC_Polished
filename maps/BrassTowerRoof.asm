BrassTowerRoof_MapScriptHeader: 
	def_scene_scripts
	scene_script BrassTowerRoofScript

	def_callbacks
; callbacks for right before the noadrinna mejimi battle

; callback for right before the yesadrinna mejimi battle
; callback for right before the noadrinna kurt battle 


	def_warp_events
	warp_event 9, 5, BRASS_TOWER_4F, 3


	def_coord_events



	def_bg_events



	def_object_events
	object_event  9, 9, SPRITE_MEJIMI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CRADLE_CUTSCENE
	object_event  9, 5, SPRITE_KURT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CRADLE_CUTSCENE
	object_event  9, 5, SPRITE_ADRINNA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CRADLE_CUTSCENE

	object_event  	8, 9, SPRITE_MON_ICON, 	SPRITEMOVEDATA_POKEMON, 0, LUGIA, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROOF_LUGIA 
	object_event  	10, 9, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, HO_OH, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROOF_HOOH 
	object_event  	10, 3, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, CELEBI, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROOF_HOOH

	object_event  7, 3, SPRITE_LIGHTNING_OVERWORLD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LIGHTNING_1
	object_event  7, 4, SPRITE_LIGHTNING_OVERWORLD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LIGHTNING_2
	object_event  7, 5, SPRITE_LIGHTNING_OVERWORLD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LIGHTNING_3

	object_event  7, 6, SPRITE_MON_ICON, 	SPRITEMOVEDATA_POKEMON, 0, JOLTEON, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROOF_JOLTEON

	object_const_def ; IS THIS TOO MANY? 
	const BRASS_TOWER_ROOF_MEJIMI
	const BRASS_TOWER_ROOF_KURT
	const BRASS_TOWER_ROOF_ADRINNA
	const BRASS_TOWER_ROOF_LUGIA
	const BRASS_TOWER_ROOF_HOOH
	const BRASS_TOWER_ROOF_CELEBI
	const BRASS_TOWER_ROOF_LIGHTNING_1
	const BRASS_TOWER_ROOF_LIGHTNING_2
	const BRASS_TOWER_ROOF_LIGHTNING_3
	const BRASS_TOWER_ROOF_JOLTEON

	
BrassTowerRoofScript:
	checkevent EVENT_ACCEPTED_ADRINNA
	iftrue AcceptedAdrinnaRoofScript
	sdefer .DeclinedAdrinnaRoofScript
	end
	
.DeclinedAdrinnaRoofScript:
	applymovement PLAYER, BTR_PlayerStepsDownMovement
	showtext TowerRoofMejimiText1_0
	pause 10
	turnobject BRASS_TOWER_ROOF_MEJIMI, UP
	showemote EMOTE_SHOCK, BRASS_TOWER_ROOF_MEJIMI, 10
	showtext TowerRoofMejimiText1_1
	appear BRASS_TOWER_ROOF_KURT
	applymovement BRASS_TOWER_ROOF_KURT, BTR_KurtStepsDownMovement
	showtext TowerRoofMejimiText1_4
	showemote EMOTE_QUESTION, BRASS_TOWER_ROOF_MEJIMI, 10
	showtext TowerRoofMejimiText1_5
	showemote EMOTE_BOLT, BRASS_TOWER_ROOF_MEJIMI, 10
	showtext TowerRoofMejimiText1_7
	applyonemovement PLAYER, step_down
; BATTLE MEJIMI 
	winlosstext TowerRoofMejimiText1_8, 0
	loadtrainer MEJIMI, 1
	startbattle
	ifequal $1, .Continue
.Continue:
	reloadmapafterbattle
	showemote EMOTE_SHOCK, BRASS_TOWER_ROOF_MEJIMI, 10
	appear BRASS_TOWER_ROOF_LIGHTNING_1
	pause 2
	appear BRASS_TOWER_ROOF_LIGHTNING_2
	pause 2
	appear BRASS_TOWER_ROOF_LIGHTNING_3
	pause 2
	disappear BRASS_TOWER_ROOF_LIGHTNING_1
	pause 2
	disappear BRASS_TOWER_ROOF_LIGHTNING_2
	pause 2
	disappear BRASS_TOWER_ROOF_LIGHTNING_3
	pause 2
	playsound SFX_THUNDER
	waitsfx
	changeblock 6, 6, $0F ; fire, todo 
	setevent EVENT_FIRST_LIGHTNING_ROOF
	applyonemovement BRASS_TOWER_ROOF_MEJIMI, step_down
	turnobject BRASS_TOWER_ROOF_MEJIMI, LEFT 
	showtext TowerRoofMejimiText1_9
	applymovement BRASS_TOWER_ROOF_LUGIA, BrassTowerLugiaFleesMovement 
	disappear BRASS_TOWER_ROOF_LUGIA
	showemote EMOTE_SHOCK, BRASS_TOWER_ROOF_MEJIMI, 10
; another lightning bolt, 	moveobject BRASS_TOWER_ROOF_LIGHTNING_1, 10,  3?
; changeblock 10, 6, $0F ; fire, todo 	
	turnobject BRASS_TOWER_ROOF_MEJIMI, RIGHT 
	showtext TowerRoofMejimiText1_9_2
	applymovement BRASS_TOWER_ROOF_HOOH, BrassTowerHoOhMovement1
	showtext TowerRoofMejimiText1_10
	; more flames 
	turnobject PLAYER, RIGHT
	disappear PLAYER
	applymovement BRASS_TOWER_ROOF_HOOH, BrassTowerHoOhMovement2 ; steps down off screen
	disappear BRASS_TOWER_ROOF_HOOH
	; more flames 
	pause 5
	special FadeOutPalettes
	
	refreshscreen
	paintingpic HO_OH_PAINTING
	waitbutton
	closepokepic

	special FadeOutPalettes
	waitsfx
; 	clearevents todo, all events related to the brass tower from when you enter 2F 
	warp TIMELESS_TAPESTRY,  9, 26
	end

BTR_PlayerStepsDownMovement:
	step_down
	step_down
	step_end

BTR_KurtStepsDownMovement:
	step_left
	step_down
	step_down
	step_end

TowerRoofMejimiText1_0: 
	text "Johto! We will be"
	line "united under my"
	cont "rule!"
	
	para "I am nature"
	line "incarnate!"

	para "Devote yourselves"
	line "to me and to the"
	cont "everlasting!"

	para "We will repel the"
	line "barbaric outsiders!"
	done

TowerRoofMejimiText1_1:
	text "Hm? How did my"
	line "generals fail me?"
	done

TowerRoofMejimiText1_4:
	text "Kurt: we are all"
	line "part of nature."
	para "When you set"
	line "yourself above,"
	cont "you become unnatural."
	done

TowerRoofMejimiText1_5:
	text "Mejimi: Who are "
	line "you to say?"
	done
	
TowerRoofMejimiText1_6: 
	text "Kurt: You claim"
	line "today and tomo-"
	cont "rrow."

	para "By then, there"
	line "will be nothing."
	done

TowerRoofMejimiText1_7: 
	text "Silence!"
	para "I'll end you"
	line "here and now!"
	done

TowerRoofMejimiText1_8: 
	text "Inconceivable!"
	done

TowerRoofMejimiText1_9: 
	text "Mejimi: Lugia,"
	line "put it out!"
	done


TowerRoofMejimiText1_9_2:
	text "Mejimi: Absurd!"
	para "Ho-Oh, save me,"
	line "the pure of heart!"
	done

TowerRoofMejimiText1_10:
	text "<PLAYER>. All of"
	line "Johto is watching."
	para "We've shown them"
	line "the most ruinous"
	cont "invention is"
	cont "selfishness."

	para "We're part of an"
	line "endless cycle,"
	cont "borrowing from"
	cont "the next."

	para "This tower will"
	line "fall - only room"
	cont "for you on Ho-Oh."

	para "When you get back"
	line "to our time, tell"
	para "everyone about"
	line "how it happened."

	para "How we united for"
	line "a better future,"
	cont "despite all"
	cont "dangers."
	done

BrassTowerLugiaFleesMovement:
	fix_facing
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_down
	step_end
	
BrassTowerHoOhMovement1:
	fix_facing
	fast_jump_step_up
	fast_jump_step_up
	step_end

BrassTowerHoOhMovement2:
	fix_facing
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_down	
	step_end

AcceptedAdrinnaRoofScript:
	applymovement PLAYER, BTR_PlayerStepsDownMovement
	appear BRASS_TOWER_ROOF_ADRINNA
	applymovement BRASS_TOWER_ROOF_ADRINNA, BTR_AdrinnaMove1
	pause 10
	turnobject BRASS_TOWER_ROOF_MEJIMI, UP
	showemote EMOTE_SHOCK, BRASS_TOWER_ROOF_MEJIMI, 10
	showtext TowerRoofMejimiText2_0
	appear BRASS_TOWER_ROOF_KURT
	applymovement BRASS_TOWER_ROOF_KURT, BTR_KurtStepsDownMovement2
	showemote EMOTE_QUESTION, BRASS_TOWER_ROOF_KURT, 10 
	showtext TowerRoofText2_4
	turnobject PLAYER, RIGHT
	showemote EMOTE_BOLT, BRASS_TOWER_ROOF_ADRINNA, ADRINNA, 10
	showtext TowerRoofText2_5
	showemote EMOTE_BOLT, BRASS_TOWER_ROOF_MEJIMI, MEJIMI, 10
	showtext TowerRoofText2_7
	applyonemovement BRASS_TOWER_ROOF_MEJIMI, step_up
	setevent EVENT_YES_ADRINNA_BATTLE_MEJIMI 
; BATTLE MEJIMI 
	winlosstext TowerRoofMejimiText2_8, 0
	loadtrainer MEJIMI, 1
	startbattle
	ifequal $1, .Continue
.Continue:
	reloadmapafterbattle
	showemote EMOTE_SHOCK, BRASS_TOWER_ROOF_MEJIMI, 10
	showtext TowerRoofText2_8_1
	applymovement BRASS_TOWER_ROOF_MEJIMI, BTR_MejimiLeaves
	disappear BRASS_TOWER_ROOF_MEJIMI
	applyonemovement BRASS_TOWER_ROOF_HOOH, teleport_from
	disappear BRASS_TOWER_ROOF_HOOH
	applyonemovement BRASS_TOWER_ROOF_LUGIA, teleport_from
	disappear BRASS_TOWER_ROOF_LUGIA
	pause 10
	appear BRASS_TOWER_ROOF_JOLTEON
	; TODO sfx of doors and leaving
	turnobject PLAYER, RIGHT
	showtext TowerRoofText2_9
	applymovement BRASS_TOWER_ROOF_ADRINNA, BTR_AdrinnaMove2
	showtext TowerRoofText2_10
	showemote EMOTE_SAD, BRASS_TOWER_ROOF_KURT, 10
	showtext TowerRoofText2_11
	turnobject BRASS_TOWER_ROOF_ADRINNA, UP
	showtext TowerRoofText2_12
	turnobject BRASS_TOWER_ROOF_KURT, DOWN
	showtext TowerRoofText2_13
	special Special_CelebiShrineEvent ; todo check that this is OK 
	showemote EMOTE_SHOCK, BRASS_TOWER_ROOF_KURT, 10
	showtext TinTowerRoofText2_Celebi
	setevent EVENT_YES_ADRINNA_BATTLE_KURT
; BATTLE MEJIMI 
	winlosstext TowerRoofText2_16, 0
	loadtrainer KURT, KURT13
	startbattle
	ifequal $1, .Continue2
.Continue2:
	reloadmapafterbattle
	turnobject BRASS_TOWER_ROOF_KURT, UP
	showtext TowerRoofText2_16_2
	applymovement BRASS_TOWER_ROOF_KURT, BTR_Kurt_Leaves
	disappear BRASS_TOWER_ROOF_KURT
	pause 10
	appear BRASS_TOWER_ROOF_LIGHTNING_1
	pause 2
	appear BRASS_TOWER_ROOF_LIGHTNING_2
	pause 2
	appear BRASS_TOWER_ROOF_LIGHTNING_3
	pause 2
	disappear BRASS_TOWER_ROOF_LIGHTNING_1
	pause 2
	disappear BRASS_TOWER_ROOF_LIGHTNING_2
	pause 2
	disappear BRASS_TOWER_ROOF_LIGHTNING_3
	pause 2
	playsound SFX_THUNDER
	waitsfx
	showemote EMOTE_SHOCK, BRASS_TOWER_ROOF_JOLTEON, 10
	showtext TowerRoofText2_18
	applymovement PLAYER, BTR_PlayerToFrontMovement
	pause 30
	warp TINDER_GARDEN, 3, 3
	end
	
BTR_AdrinnaMove1:
	step_down
	step_left
	step_down
	step_end

BTR_KurtStepsDownMovement2:
	step_down
	step_right
	step_down
	turn_head_left
	step_end
	
BTR_MejimiLeaves:
	step_left
	step_left
	step_up
	step_up
	step_up
	step_right
	step_right
	step_end

BTR_AdrinnaMove2:
	step_down
	step_right
	step_down
	step_end

BTR_Kurt_Leaves:
	step_up
	step_up
	step_left
	step_end

BTR_PlayerToFrontMovement:
	step_down
	step_left
	step_down
	step_end

TowerRoofMejimiText2_0: 
	text "Mejimi: Adrinna,"
	line "why are you with"
	cont "this child?"
	done

TowerRoofText2_4: 
	text "Kurt: <PLAYER>,"
	line "what's going on?"
	done

TowerRoofText2_5: 
	text "Adrinna: <PLAYER>"
	line "is done with your"
	cont "traditions."
	
	para "Soon, all Johto"
	line "will see what a"
	para "waste all this"
	line "pageantry is."
	
	para "Only earned power"
	line "deserves to stand"
	cont "on these towers."
	
	para "I'm coming for"
	line "you, Mejimi!"
	done

TowerRoofText2_7: 
	text "Mejimi: Traitor!"
	line "I'll start with"
	cont "you, <PLAYER>!"
	done

TowerRoofMejimiText2_8: 
	text "Mejimi: My "
	line "#mon… How "
	cont "could I lose?"
	done
	
TowerRoofText2_8_1: 
	text "Mejimi: Impossible."
	line "I must convene"
	cont "with the sages."
	done

TowerRoofText2_9: 
	text "Kurt: <PLAYER>, is"
	line "this who you are?"
	done

TowerRoofText2_10: 
	text "Adrinna: Johto!"
	line "Anyone can rise"
	para "to the level of"
	line "the emperor, with"
	para "the right skills!"
	line "See <PLAYER>,"
	para "from a no-name"
	line "town. It's time"
	para "to let the energy"
	line "out of every one"
	cont "of you."

	para "This is how we"
	line "repel the out-"
	cont "siders."
	done

TowerRoofText2_11: 
	text "Kurt: No! <PLAYER>,"
	line "I was misguided."

	para "I wanted the fu-"
	line "ture to look like"
	cont "my past."

	para "But I forgot that"
	line "traditions serve"
	cont "us, not the other"
	cont "way around."
	
	para "If I'd listened to"
	line "<RIVAL> earlier,"
	para "we might've saved"
	line "more of Ilex."
	done

TowerRoofText2_12: 
	text "Adrinna: Enough."
	line "Show him out." 
	done

TowerRoofText2_13: 
	text "Kurt: I will"
	line "fight for my"
	cont "home!"

TinTowerRoofText2_Celebi: 
	text "Humans are not "
	line "above or below "
	cont "nature - "
	
	para "you are nature."
	line "Just as a forest"
	cont "needs growth and"
	cont "decay,"
	
	para "society needs"
	line "tradition and"
	cont "innovation."
	
	para "I tried to show"
	line "you that all"
	cont "generations are"
	
	para "part of an end-"
	line "less cycle - "
	
	para "but only <RIVAL>"
	line "and Kurt learned."

	para "You failed me,"
	line "<PLAYER>."
	done

TowerRoofText2_16: 
	text "Kurt: So this"
	line "is the end…"

TowerRoofText2_16_2: 
	text "Kurt: I… I don't"
	line "know where I go"
	cont "from here."
	
	para "First my son,"
	line "then my home,"
	cont "and now my "
	cont "grandchild."

	para "So long, <PLAYER>."
	line "I know that deep"
	para "down, there's a"
	line "good person try-"
	cont "ing to do the "
	cont "right thing."
	
	para "I can't guide"
	line "you any more."	

TowerRoofText2_18: 
	text "Adrinna: Thank"
	line "you, Indrage."
	
	para "<PLAYER>, it's"
	line "time to let the"
	cont "strong rise to"
	cont "the top."
	done
	