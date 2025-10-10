LandingDocks_MapScriptHeader: 
	def_scene_scripts
; may have to rewrite so that Lugia slides in with Kurt

	def_callbacks
	callback MAPCALLBACK_OBJECTS, LandinDocksCallback_MoveNPCs

	def_warp_events
	warp_event 2, 19, ARDUOUS_ANCHORAGE, 2
	warp_event 3, 19, ARDUOUS_ANCHORAGE, 2
	warp_event 2,  8, TRADERS_LANDING, 7
	warp_event 3,  8, TRADERS_LANDING, 8

	def_coord_events
	coord_event 14, 16, 0, LandingDocksScene
	coord_event 14, 16, 1, LandingDocksScene_AfterCaptainLeaves


	def_bg_events



	def_object_events
	object_event  9, 16, SPRITE_KURT, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DOCKS_KURT
	object_event 15, 12, SPRITE_KENSEY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DOCKS_KENSEY
	object_event 14, 11, SPRITE_BARBEAU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DOCKS_BARBEAU
	object_event 14, 12, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED,OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DOCKS_SURGE
	object_event  15,  14, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, LUGIA, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DOCKS_LUGIA 


	object_const_def
	const LANDING_DOCKS_KURT
	const LANDING_DOCKS_KENSEY
	const LANDING_DOCKS_BARBEAU
	const LANDING_DOCKS_SURGE
	const LANDING_DOCKS_LUGIA

LandinDocksCallback_MoveNPCs:
	checkscene
	iffalse .Skip
	; surge sprite is gone
	moveobject LANDING_DOCKS_KURT, 15, 14
	turnobject LANDING_DOCKS_KURT, UP
	moveobject LANDING_DOCKS_KENSEY, 15, 12
	turnobject LANDING_DOCKS_KENSEY, DOWN
	moveobject LANDING_DOCKS_BARBEAU, 14, 12
	turnobject LANDING_DOCKS_BARBEAU, DOWN
.Skip:
	endcallback

LandingDocksScene_AfterCaptainLeaves:
	applymovement PLAYER, PlayerMovesForDocksScene1
	sjump PickupDocksScene

LandingDocksScene:
	blackoutmod CIANWOOD_COVE
	special Special_FadeOutMusic
	pause 30
	playmusic MUSIC_LUGIA_BATTLE_HGSS ; MUSIC_BATTLE_FACTORY_RSE ; MUSIC_FRONTIER_BRAIN_BATTLE_RSE, MUSIC_ELITE_FOUR_BATTLE_SM
	applyonemovement PLAYER, step_up
	showemote EMOTE_BOLT, LANDING_DOCKS_SURGE, 30
	opentext
	writetext Docks_Text1
	waitbutton
	writetext Docks_Text1_2
	waitbutton
	turnobject LANDING_DOCKS_KENSEY, UP
	writetext Docks_Text2
	waitbutton
	closetext
	appear LANDING_DOCKS_KURT
	applymovement LANDING_DOCKS_KURT, Docks_KurtMove1 
	appear LANDING_DOCKS_LUGIA
	cry LUGIA
	pause 20
	refreshscreen
	pokepic LUGIA
	waitbutton
	closepokepic
	turnobject LANDING_DOCKS_KENSEY, DOWN
	turnobject LANDING_DOCKS_BARBEAU, DOWN
	turnobject LANDING_DOCKS_SURGE, DOWN
	opentext
	writetext Docks_Text3
	waitbutton
	closetext
	applymovement LANDING_DOCKS_LUGIA, Docks_LugiaMove1
	playsound SFX_AEROBLAST
	waitsfx
	disappear LANDING_DOCKS_LUGIA
	setevent EVENT_DOCKS_LUGIA
	showemote EMOTE_SHOCK, LANDING_DOCKS_BARBEAU, 30
	opentext
	writetext Docks_Text4
	waitbutton
	writetext Docks_Text4_2
	waitbutton
	closetext
	showemote EMOTE_SHOCK, LANDING_DOCKS_SURGE, 30
	applymovement LANDING_DOCKS_SURGE, Docks_CaptainMove1
	disappear LANDING_DOCKS_SURGE
	setevent EVENT_DOCKS_SURGE
	applyonemovement LANDING_DOCKS_BARBEAU, step_down
	opentext
	writetext Docks_Text5
	waitbutton
	turnobject LANDING_DOCKS_BARBEAU, RIGHT
	turnobject LANDING_DOCKS_KENSEY, LEFT
	showemote EMOTE_QUESTION, LANDING_DOCKS_KENSEY, 30
	writetext Docks_Text6
	waitbutton
	writetext Docks_Text6_2
	waitbutton
	turnobject LANDING_DOCKS_KENSEY, DOWN
	turnobject LANDING_DOCKS_BARBEAU, DOWN
	writetext Docks_Text7
	waitbutton
	closetext
	applyonemovement LANDING_DOCKS_KURT, step_right
	turnobject LANDING_DOCKS_KURT, UP
	setscene $1
	; fallthrough 
PickupDocksScene:
	opentext
	writetext Docks_Text8
	waitbutton
	closetext
	showemote EMOTE_QUESTION, LANDING_DOCKS_BARBEAU, 30
	opentext 
	writetext Docks_Text9
	waitbutton
	applyonemovement LANDING_DOCKS_KURT, step_left
	turnobject LANDING_DOCKS_KURT, UP
	writetext Docks_Text10
	waitbutton
	showemote EMOTE_BOLT, LANDING_DOCKS_BARBEAU, 30
	writetext Docks_Text11
	waitbutton
	writetext Docks_Text11_2
	waitbutton
	closetext
	applyonemovement LANDING_DOCKS_KURT, step_right
	turnobject LANDING_DOCKS_KURT, LEFT
	applyonemovement PLAYER, step_up
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special RestartMapMusic	
	turnobject LANDING_DOCKS_KURT, UP
	applyonemovement LANDING_DOCKS_BARBEAU, step_down
	winlosstext BarbeauBeatenText1, 0
	loadtrainer BARBEAU, 1 
	startbattle
	reloadmapafterbattle
	opentext
	writetext Docks_Text12
	waitbutton
	closetext
	playsound SFX_GET_BADGE
	waitsfx ; YOU GET THE BADGE AT THE END 
	applyonemovement LANDING_DOCKS_BARBEAU, step_up
	turnobject LANDING_DOCKS_BARBEAU, DOWN
	turnobject LANDING_DOCKS_KURT, LEFT
	turnobject PLAYER, RIGHT	
	showtext Docks_Text12_2
	playmusic MUSIC_HEAL
	special HealParty
	special SaveMusic	
	playmusic MUSIC_NONE	
	special RestoreMusic
	special Special_FadeOutMusic
	pause 30
	playmusic MUSIC_ELITE_FOUR_BATTLE_BW
	turnobject LANDING_DOCKS_KENSEY, LEFT
	showemote EMOTE_BOLT, LANDING_DOCKS_KENSEY, 30
	turnobject PLAYER, UP	
	turnobject LANDING_DOCKS_KURT, UP	
	showtext Docks_Text13
	applyonemovement LANDING_DOCKS_KENSEY, step_down
	applyonemovement LANDING_DOCKS_KENSEY, step_left
	turnobject LANDING_DOCKS_KENSEY, DOWN
	turnobject PLAYER, UP
	turnobject LANDING_DOCKS_KURT, UP
	winlosstext KenseyBeaten1, 0
	loadtrainer KENSEY, 1 
	startbattle
	reloadmapafterbattle ; OBJECTS IN THE RIGHT SPOT?
	special RestartMapMusic
	showtext Docks_Text14
	applyonemovement LANDING_DOCKS_KENSEY, step_right
	applyonemovement LANDING_DOCKS_KENSEY, step_up
	turnobject LANDING_DOCKS_KENSEY, DOWN
	opentext
	writetext Docks_Text15
	waitbutton
	turnobject LANDING_DOCKS_KURT, DOWN
	turnobject PLAYER, DOWN
	writetext Docks_Text16
	waitbutton
	writetext Docks_Text17
	waitbutton
	turnobject LANDING_DOCKS_KENSEY, LEFT
	writetext Docks_Text18
	waitbutton
	closetext
	applymovement LANDING_DOCKS_KENSEY, Docks_KenseyMoves1
	disappear LANDING_DOCKS_KENSEY
	setevent EVENT_DOCKS_KENSEY
	turnobject LANDING_DOCKS_KURT, UP
	turnobject PLAYER, UP
	showtext Docks_Text19
	special Special_CelebiShrineEvent
	showtext Docks_Text20
; end 
	setscene $2
	setflag ENGINE_RAINBOWBADGE
	setevent EVENT_DOCKS_KURT
	setevent EVENT_DOCKS_KENSEY
	setevent EVENT_DOCKS_BARBEAU
	setevent EVENT_DOCKS_SURGE
	setevent EVENT_DOCKS_LUGIA
	setevent EVENT_BEAT_KENSEY_PORT
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp CLASTS_CRADLE_B1F, 21, 11
	end

Docks_Text1:
	text_high
    text " Outsider: " 
	next
	text_start 
	text "Send the boats"
	line "now! My men need"
	cont "your help!"
	
	para "If you refuse, my"
	line "superiors will"
	para "send even more"
	line "aggressive ships"
	cont "to you!"
	done


Docks_Text1_2:
	text_high
    text " Kensey: " 
	next
	text_start 
	text "We are trying!"
	line "Right, Barbeau?"
	done


Docks_Text2:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "I still believe"
	line "Lugia will come!"
	done

Docks_KurtMove1:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_up
	step_up
	step_left
	turn_head_up
	step_end

Docks_Text3:
	text_high
    text " Kurt: " 
	next
	text_start 
	text "Begone! Lugia,"
	line "Aeroblast their"
	cont "ships!"
	done

Docks_LugiaMove1:
	fix_facing
	slide_step_down
	slide_step_down
	slide_step_down
	slide_step_down
	slide_step_down
	slide_step_down
	step_end

Docks_Text4:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "The guardian of"
	line "the sea?..."
	done

Docks_Text4_2:
	text_high
    text " Kurt: " 
	next
	text_start 
	text "Outsider, get to"
	line "your lifeboat,"

	para "while you still"
	line "can. And don't"
	cont "come back."
	done

Docks_CaptainMove1:
	step_down
	step_right
	step_down
	step_down
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

Docks_Text5:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "See! I told you"
	line "so, Kensey!"
	done

Docks_Text6:
	text_high
    text " Kensey: " 
	next
	text_start 
	text "Kensey: I don't"
	line "understand - isn't"
	cont "she with Urgaust?"
	done


Docks_Text6_2:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "She chose us!"
	done

Docks_Text7:
	text_high
    text " Kensey: " 
	next
	text_start 
	text "No, she chose this"
	line "old bloke."
	
	para "Do you know what"
	line "you've done?"
	done

Docks_Text8:
	text_high
    text " Kurt: " 
	next
	text_start 
	text "I captured Lugia"
	line "for Johto. Her"
	para "power is mine."
	line "Johto's future"
	para "depends on block-"
	line "ing those ships."
	done

Docks_Text9:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "CAPTURED Lugia?"
	done
	
Docks_Text10:
	text_high
    text " Kurt: " 
	next
	text_start 
	text "Indeed."
	done

Docks_Text11:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "She is sacred!"
	line "You must release"
	para "her. Battle me,"
	line "or choose a"
	cont "champion."
	done

Docks_Text11_2:
	text_high
    text " Kurt: " 
	next
	text_start 
	text "Lugia is mine."
	line "<PLAYER>, please"
	para "address his con-"
	line "cern."

	para "I'll heal your"
	line "#mon."
	done

BarbeauBeatenText1:
	text "So Lugia is gone"
	line "from the ocean."
	done

Docks_Text12:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "<PLAYER>, I cannot"
	line "condone what you"
	para "did. But tradit-"
	line "ion dictates that"
	para "I must give you "
	line "this badge,"
	para "marking you as"
	line "worthy to lead"
	cont "an expedition."
	done

Docks_Text12_2:
	text_high
    text " Kurt: " 
	next
	text_start 
	text "Excellent battle,"
	line "<PLAYER>. I'll"
	cont "heal you again."

	para "We've stopped the"
	line "outsiders' boats!"
	
	para "Johto is saved"
	line "from their tech!"
	done

; heal party 

Docks_Text13:
	text_high
    text " Kensey: " 
	next
	text_start 
	text "You are useless!"
	line "You fight without"
	cont "thought, Barbeau!"
	
	para "I'll wipe them"
	line "off the docks!"
	done

KenseyBeaten1:
	text "You have a talent"
	line "for battling. But"
	para "I don't think we"
	line "have seen the"
	para "last of new tech"
	line "just yet."
	
	para "The Consul has a"
	line "mine to the East"
	para "where we are dev-"
	line "eloping tech that"
	para "can compete with"
	line "the outsiders'."
	done

Docks_Text14:
	text_high
    text " Kensey: " 
	next
	text_start 
	text "Fools. There is"
	line "a mine east of"
	cont "the capital."

	para "Adrinna is becom-"
	line "ing a capable"
	cont "metallurgist."

	para "Johto will master"
	line "one field after "
	cont "another."
	
	para "You only delay"
	line "the inevitable."
	done


Docks_Text15:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "why don't you"
	line "call back Lugia?"
	done

Docks_Text16:
	text_high
    text " Kurt: " 
	next
	text_start 
	text "Oh, where did"
	line "she go?"
	done

Docks_Text17:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "She dove beneath"
	line "the waves, but"
	
	para "the sea is still."
	line "Is she OK? Was I"
	para "the last of us to"
	line "see her?"
	done

Docks_Text18:
	text_high
    text " Kensey: " 
	next
	text_start 
	text "Maybe now you"
	line "will see sense!"
	para "Your whole clan"
	line "will learn maps!"
	
	para "I need to tell"
	line "Consul Urgaust"
	para "how these two"
	line "stole his Lugia!"
	done

Docks_KenseyMoves1:
	step_up
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

Docks_Text19: 
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "Kurt, you did"
	line "what you said."
	
	para "I wonder if it"
	line "was worth it."
	
	para "A few weeks time"
	line "against Lugia?"

	para "... Say, do you"
	line "also smell Holly"
	cont "in the air?"
	done

Docks_Text20:
	text_high
    text " Celebi: " 
	next
	text_start 
	text "Time is running"
	line "short. You've"
	para "made nature more"
	line "imbalanced!"
	
	para "Which of you are"
	line "still worthy?"
	done

PlayerMovesForDocksScene1:
	step_up
	step_end
