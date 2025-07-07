EmperorsGarden_MapScriptHeader: 
	def_scene_scripts
	scene_script EmperorsGardenMejimiScene 

	def_callbacks


	def_warp_events
	warp_event 20, 30, WESTERN_CAPITAL, 1
	warp_event 20, 31, WESTERN_CAPITAL, 2
	warp_event 21, 22, HIDDEN_TREE_GROTTO, 1

	def_coord_events
;	coord_event  28, 28, 	0, EmperorsGardenMejimiScene
	coord_event  29, 14, 	1, EmperorsGardenBobeshScene
	coord_event  21, 11, 	2, EmperorsGardenKenseyScene
	coord_event  13, 14, 	3, EmperorsGardenAdrinnaScene

	def_bg_events
	bg_event 20, 21, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_EMPERORS_GARDEN
	bg_event 21, 21, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_EMPERORS_GARDEN


	def_object_events
	; scene 1
	object_event  	26,	30, 	SPRITE_MEJIMI, 	SPRITEMOVEDATA_STANDING_DOWN, 	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_EMPERORS_GARDEN_MEJIMI 
	object_event  	29,	32, 	SPRITE_BOBESH, 	SPRITEMOVEDATA_STANDING_DOWN, 	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_EMPERORS_GARDEN_MEJIMI 
	object_event  	28,	32,	 	SPRITE_KENSEY, 	SPRITEMOVEDATA_STANDING_DOWN, 	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_EMPERORS_GARDEN_MEJIMI 
	object_event  	27,	32,	 	SPRITE_ADRINNA, SPRITEMOVEDATA_STANDING_DOWN, 	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_EMPERORS_GARDEN_MEJIMI 
	; other scenes 
	object_event  	26,	12,		SPRITE_BOBESH, 	SPRITEMOVEDATA_STANDING_RIGHT, 	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_EMPERORS_GARDEN_BOBESH 
	object_event  	20,	6,	 	SPRITE_KENSEY, 	SPRITEMOVEDATA_STANDING_RIGHT, 	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_EMPERORS_GARDEN_KENSEY 
	object_event  	27,	12,	 	SPRITE_ADRINNA, SPRITEMOVEDATA_STANDING_LEFT, 	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_EMPERORS_GARDEN_BOBESH 	
	object_event  	21,	6,	 	SPRITE_ADRINNA, SPRITEMOVEDATA_STANDING_LEFT, 	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_EMPERORS_GARDEN_KENSEY 	
	object_event  	13,	10,	 	SPRITE_ADRINNA, SPRITEMOVEDATA_STANDING_UP, 	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_EMPERORS_GARDEN_ADRINNA 	
	object_event 	16, 17, 	SPRITE_AMOS, 	SPRITEMOVEDATA_STANDING_LEFT,  	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 2, AmosGardenScript, EVENT_BATTLED_AMOS_GARDEN 	
	; others 
	object_event	22,	30, 	SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_DOWN, 	0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptext, EG_Brigader_Text1, EVENT_BATTLED_AMOS_GARDEN ;
	object_event	22,	31, 	SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_UP, 	0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, EG_Brigader_Text2, EVENT_BATTLED_AMOS_GARDEN ;
	object_event 	27, 28, 	SPRITE_KURT, SPRITEMOVEDATA_STANDING_RIGHT, 	0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EG_KurtText, EVENT_BATTLED_AMOS_GARDEN ;
	object_event	 2,	14, 	SPRITE_BRIGADER, SPRITEMOVEDATA_SPINRANDOM_FAST, 	0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EG_SeedBombMT, -1 ;	
	fruittree_event  2, 21, FRUITTREE_EMPERORS_GARDEN_1, WHT_APRICORN, PAL_NPC_SILVER
	fruittree_event  5, 24, FRUITTREE_EMPERORS_GARDEN_2, LUM_BERRY, PAL_NPC_RED
	fruittree_event  6, 23, FRUITTREE_EMPERORS_GARDEN_3, SITRUS_BERRY, PAL_NPC_RED
	itemball_event  27,  9, PROTEIN, 1, EVENT_EMPERORS_GARDEN_PROTEIN
	itemball_event  21,  3, CALCIUM, 1, EVENT_EMPERORS_GARDEN_CALCIUM
	itemball_event  13,  9, CARBOS, 1, EVENT_EMPERORS_GARDEN_CARBOS

	object_const_def
	const EMPERORS_GARDEN_MEJIMI
	const EMPERORS_GARDEN_BOBESH
	const EMPERORS_GARDEN_KENSEY
	const EMPERORS_GARDEN_ADRINNA
	; other scenes 
	const EMPERORS_GARDEN_BOBESH_2
	const EMPERORS_GARDEN_KENSEY_2
	const EMPERORS_GARDEN_ADRINNA_2
	const EMPERORS_GARDEN_ADRINNA_3
	const EMPERORS_GARDEN_ADRINNA_4
	const EMPERORS_GARDEN_AMOS
	

EG_Brigader_Text2:
	text "Brigader: No, I"
	line "say that BOBESH"
	cont "has the best"
	cont "vision!"
	done
	
EG_Brigader_Text1:
	text "Brigader: No, I"
	line "say that KENSEY"
	cont "has the best"
	cont "vision!"
	done
	
EG_KurtText:
	text "The Chronicler"
	line "sent us back for"
	cont "a reason."
	
	para "Then, we can get"
	line "to the port, to"
	para "stop that steel"
	line "from arriving!"
	done

EmperorsGardenMejimiScene: ; todo, add music 
	;MOVING CAMERA
	applyonemovement PLAYER, hide_object
	waitsfx
	applymovement PLAYER, EG_PanDownMovement ; to add 
	pause 60 
	special Special_FadeOutMusic
	pause 60
	playmusic MUSIC_ELITE_FOUR_BATTLE_BW
	applymovement EMPERORS_GARDEN_MEJIMI, MejimiWalksInMovement
	refreshscreen
	trainerpic MEJIMI
	waitbutton
	closepokepic
	pause 60
	showtext EG_Text1
;	waitbutton
	applyonemovement EMPERORS_GARDEN_MEJIMI, step_right ; in front of bobesh
	turnobject EMPERORS_GARDEN_MEJIMI, DOWN
	turnobject EMPERORS_GARDEN_BOBESH, UP
	showtext EG_Text11
	showtext EG_Text2
	showemote EMOTE_SHOCK, EMPERORS_GARDEN_MEJIMI, 60
	showtext EG_Text3
	applyonemovement EMPERORS_GARDEN_MEJIMI, step_left ; in front of kensey 
	turnobject EMPERORS_GARDEN_MEJIMI, DOWN
	turnobject EMPERORS_GARDEN_KENSEY, UP
	showtext EG_Text4
;	waitbutton
	showtext EG_Text4_2
;	waitbutton
	applyonemovement EMPERORS_GARDEN_MEJIMI, step_left ; in front of adrinna
	turnobject EMPERORS_GARDEN_MEJIMI, DOWN
	turnobject EMPERORS_GARDEN_ADRINNA, UP
	showtext EG_Text5
;	waitbutton
	showtext EG_Text5_2	
;	refreshscreen
;	trainerpic MEJIMI
	showtext EG_Text6
	pause 60
;	waitbutton
	applymovement EMPERORS_GARDEN_MEJIMI, MejimiLeavesMovement
	disappear EMPERORS_GARDEN_MEJIMI
	applymovement EMPERORS_GARDEN_BOBESH, GeneralsLeaveMovement
	disappear EMPERORS_GARDEN_BOBESH
	applymovement EMPERORS_GARDEN_KENSEY, GeneralsLeaveMovement
	disappear EMPERORS_GARDEN_KENSEY
	applymovement EMPERORS_GARDEN_ADRINNA, GeneralsLeaveMovement2
	disappear EMPERORS_GARDEN_ADRINNA
	setevent EVENT_EMPERORS_GARDEN_MEJIMI
	setscene $1
	pause 60
	special Special_FadeOutMusic
	special FadeOutPalettes
	pause 60
	warpfacing DOWN, EMPERORS_GARDEN, 28, 28
	end

MejimiWalksInMovement:
	step_right
	step_right
	turn_head_down
	step_end


EG_Text1:
	text_high
    text " Urgaust: "
	next
	text_start
	text "Ah, my generals."
	done

EG_Text11:
	text_high
    text " Urgaust: "
	next
	text_start
	text "How goes it in"
	line "Gauldenrod?"
	done

EG_Text2:
	text_high
    text " Bobesh: "
	next
	text_start
	text "Consul Urgaust."
	line "The stadium... It"
	para "fell into a"
	line "sinkhole."
	done

EG_Text3:
	text_high
    text " Urgaust: "
	next
	text_start
	text "Disastrous! But"
	line "I trust you won't"
	cont "fail me again."
	done


EG_Text4:
	text_high
    text " Urgaust: "
	next
	text_start
	text "And the port?"
	line "We need metals."
	done

EG_Text4_2:
	text_high
    text " Kensey: "
	next
	text_start
	text "My liege, we have"
	line "traded for Tin"
	cont "and Brass."
	para "The Hisuians"
	line "will teach us"
	cont "to smelt it."
	done

	
EG_Text5:
	text_high
    text " Urgaust: "
	next
	text_start
	text "What about the"
	line "eastern mine?"
	done
	

EG_Text5_2:
	text_high
    text " Adrinna: "
	next
	text_start
	text "The locals are"
	line "still unaware"
	cont "of our plans."
	done


EG_Text6:
	text_high
    text " Urgaust: "
	next
	text_start
	text "Excellent news."
	line "General Adrinna,"

	para "please review"
	line "their plans."

	para "From the west-"
	line "ern islands to"
	
	para "the eastern"
	line "mountains and"

	para "the southern"
	line "forests,"

	para "I will remake Jo-"
	line "hto in my image!"
	done


MejimiLeavesMovement:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

GeneralsLeaveMovement2:
	step_right
GeneralsLeaveMovement:
	step_right
	step_right
	step_up
	step_up
	step_right
	step_right
	step_up
	step_up
	step_right
	step_right
	step_up
	step_up
	step_end


EmperorsGardenBobeshScene:
	showemote EMOTE_BOLT, EMPERORS_GARDEN_ADRINNA_2, 10
	showtext EG_Bobesh_Text1
;	waitbutton
	showtext EG_Bobesh_Text1_2
;	waitbutton
	showtext EG_Bobesh_Text1_3
;	closetext
	applymovement EMPERORS_GARDEN_ADRINNA_2, AdrinnaMoves2
	disappear EMPERORS_GARDEN_ADRINNA_2
	applyonemovement EMPERORS_GARDEN_BOBESH_2, teleport_from
	disappear EMPERORS_GARDEN_BOBESH_2
	setevent EVENT_EMPERORS_GARDEN_BOBESH
	setscene $2
	end	

EG_Bobesh_Text1:
	text_high
    text " Adrinna: "
	next
	text_start
	text "You lied to him."
	line "Your hubris let"
	cont "sabateurs in."
	
	para "I thought you had"
	line "the Strength HM"
	cont "only for your"
	cont "brigaders?"
	done
	
EG_Bobesh_Text1_2:
	text_high
    text " Bobesh: "
	next
	text_start
	text "It was a white"
	line "lie. It won't"
	cont "happen again."
	
	para "If we had an even"
	line "bigger stadium,"
	cont "we could've..."
	done

EG_Bobesh_Text1_3:
	text_high
    text " Adrinna: "
	next
	text_start
	text "Enough. Your"
	line "venue rotted"
	cont "minds. Maybe"
	cont "yours, too."
	done


AdrinnaMoves2:
	step_down
	step_down
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

EmperorsGardenKenseyScene:
	showemote EMOTE_SHOCK, PLAYER, 5
	applymovement PLAYER, PlayerHidesFromKenseyMovement
	pause 30
	showemote EMOTE_QUESTION, EMPERORS_GARDEN_ADRINNA_3, 10
	showtext EG_Kensey_Text_1
;	waitbutton
	showtext EG_Kensey_Text_1_2
;	waitbutton
	showtext EG_Kensey_Text_1_3	
;	closetext
	applymovement EMPERORS_GARDEN_ADRINNA_3, AdrinnaMoves3
	pause 15
	opentext
	writetext EG_FamiliarSmellText
	waitbutton
	closetext
	applymovement EMPERORS_GARDEN_ADRINNA_3, AdrinnaMoves4
	disappear EMPERORS_GARDEN_ADRINNA_3
	applyonemovement EMPERORS_GARDEN_KENSEY_2, teleport_from
	disappear EMPERORS_GARDEN_KENSEY_2
	setevent EVENT_EMPERORS_GARDEN_KENSEY
	setscene $3
	end	

PlayerHidesFromKenseyMovement:
	step_left
	step_left
	step_left
	step_up
	step_up
	step_up
	turn_head_right
	step_end

EG_Kensey_Text_1:
	text_high
    text " Adrinna: "
	next
	text_start
	text "Trading with"
	line "outsiders?"
	done
	
EG_Kensey_Text_1_2:
	text_high
    text " Kensey: "
	next
	text_start
	text "We trade our"
	line "port for their"
	cont "metals."
	
	para "We have hundreds"
	line "on our dole!"

	para "Under my plans,"
	line "skills are sharp!"
	done

EG_Kensey_Text_1_3:
	text_high
    text " Adrinna: "
	next
	text_start
	text "Your plan lacks"
	line "dynamism."
	
	para "You plan to guide"
	line "them forever?"
	done


EG_FamiliarSmellText:
	text "What is that"
	line "familiar smell?"
	
	para "Like holly, but"
	line "that only grows"
	cont "in the south."
	done

AdrinnaMoves3:
	step_down
	step_down
	step_end

AdrinnaMoves4:
	step_down
	step_down	
	step_down
	step_left
	step_left
	step_left
	step_down
	step_down	
	step_down
	step_down
	step_down
	step_down
	step_end

EmperorsGardenAdrinnaScene:
	showemote EMOTE_HAPPY, EMPERORS_GARDEN_ADRINNA_4, 10
	turnobject EMPERORS_GARDEN_ADRINNA_4, DOWN
	applyonemovement EMPERORS_GARDEN_ADRINNA_4, step_down
	turnobject PLAYER, UP
	showtext EG_AdrinnaText1
	applymovement EMPERORS_GARDEN_ADRINNA_4, EG_AdrinnaMove3
	winlosstext AdrinnaWinText, AdrinnaLossText
	loadtrainer ADRINNA, ADRINNA1 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap	
	showtext EG_AdrinnaText2
	closetext
	opentext
	verbosegivekeyitem SILVER_WING
	waitbutton
	showtext EG_AdrinnaText3
	applyonemovement EMPERORS_GARDEN_ADRINNA_4, teleport_from
	disappear EMPERORS_GARDEN_ADRINNA_4
	setevent EVENT_EMPERORS_GARDEN_ADRINNA
	setscene $4 ; no more scenes 
	special HealParty
	end

EG_AdrinnaMove3:
	step_down
	step_down
	step_end

EG_AdrinnaText1:
	text_high
    text " Adrinna: "
	next
	text_start
	text "<PLAYER>!"
	line "Fufufu..."
	cont "enjoying the"
	cont "garden?"

	para "This garden was"
	line "scuplted by a"
	
	para "visionary arch-"
	line "itect, who wiped"
	para "away the land-"
	line "scape and built"
	para "something better"
	line "in its place."

	para "I see the dirt"
	line "on your nails - "
	
	para "show me, what"
	line "is your vision?"
	done


EG_AdrinnaText2:
	text_high
    text " Adrinna: "
	next
	text_start
	text "For entertaining"
	line "me, a gift."
	
	para "A rare feather"
	line "from the towers."
	done

EG_AdrinnaText3:
	text_high
    text " Adrinna: "
	next
	text_start
	text "Now, please"
	line "relax, maybe on"
	para "the beaches"
	line "west of here."
	done

EG_SeedBombMT:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_SEED_BOMB_INTRO
	iftrue EG_TutorSeedBombScript
	writetext Text_SeedBombIntro
	waitbutton
	setevent EVENT_LISTENED_TO_SEED_BOMB_INTRO
EG_TutorSeedBombScript:
	writetext Text_EG_TutorSeedBomb ;;
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_EG_TutorQuestion ;;
	yesorno
	iffalse .TutorRefused
	setval SEED_BOMB
	writetext ClearText
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_EG_TutorRefused ;; 

.NoSilverLeaf
	jumpopenedtext Text_EG_TutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_EG_TutorTaught ;;
	
Text_SeedBombIntro:
	text "Whoa, you almost"
	line "blew me up!"
	
	para "Don't you see"
	line "the spicy seeds"
	cont "in my hands?"
	
	para "When Bobesh asked"
	line "me to make some"
	cont "seed bombs for"
	cont "the army,"
	
	para "I knew just what"
	line "to do."
	
	para "These seeds will"
	line "turn enemies into"
	cont "ghosts!"
	done
	
Text_EG_TutorSeedBomb:
	text "Grass #mon"
	line "use seed bombs"
	cont "in combat."
	done

Text_EG_TutorQuestion:
	text "I could make"
	line "your #mon"
	para "seasoned in"
	line "combat, for a"
	cont "Silver Leaf."
	done

Text_EG_TutorNoSilverLeaf:
	text "Oh, no Silver"
	line "Leaf? This isn't"
	cont "a charity!"
	done

Text_EG_TutorRefused:
	text "Not everyone can"
	line "handle the heat."
	done

Text_EG_TutorTaught:
	text "There! Now you"
	line "can used seed"
	cont "bombs like me!"
	done

AdrinnaWinText:
	text "You put a new"
	line "style on #mon"
	cont "battling."
	done
	
AdrinnaLossText:
	text "I can tell you"
	line "are pushing your-"
	cont "self. Keep at it."
	done

EG_PanDownMovement:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

AmosGardenScript:
	faceplayer
	showemote EMOTE_SHOCK, EMPERORS_GARDEN_AMOS, 10
	showtext AmosSuspectsYouText
	winlosstext AmosWLText, AmosWLText
	loadtrainer AMOS, 1 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	showtext AmosGardenAfterBattleText
	applyonemovement EMPERORS_GARDEN_AMOS, teleport_from
	disappear EMPERORS_GARDEN_ADRINNA_4
	setevent EVENT_BATTLED_AMOS_GARDEN
	setflag ENGINE_FLYPOINT_WESTERN_CAPITAL
	pause 60
	special Special_FadeOutMusic
	special FadeOutPalettes
	pause 60
	warpfacing RIGHT, EMPERORS_GARDEN, 15, 17
	end



AmosSuspectsYouText:
	text_high
    text " Amos: "
	next
	text_start
	text "You! You've been"
	line "with Hollis, then"
	cont "Sandra, "
	
	para "And you meet"
	line "General Adrinna"
	cont "in secret?"
	
	para "Battle me, so I"
	line "can see your"
	cont "true colors."
	done
	
AmosWLText:
	text "Hm, I see... Your"
	line "home is threat-"
	para "ened by a king of"
	line "a different kind."
	done

AmosGardenAfterBattleText:
	text_high
    text " Amos: "
	next
	text_start
	text "I know you want"
	line "to save your"
	cont "home, but to me,"
	
	para "it seems you are"
	line "just getting in"
	cont "my way."
	
	para "Let me handle"
	line "this. Go home."
	done
	