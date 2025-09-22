GauldenrodTower4F_MapScriptHeader:
	def_scene_scripts


	def_callbacks

	def_warp_events
	warp_event  3,  9, GAULDENROD_TOWER_3F, 2
	warp_event  8,  9, GAULDENROD_TOWER_1F, 4


	def_coord_events

	def_bg_events

	def_object_events
	object_event   5,  2, SPRITE_SANDRA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GauldenrodTower4FSandraScript, EVENT_BEAT_SANDRA
	object_event  10,  2, SPRITE_BRIGADER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_SANDRA
	object_event   1,  7, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GAULDENROD_AMOS ; initialize this
	pokemon_event  6,  2, CLEFAIRY, -1, -1, PAL_NPC_RED, GauldenrodClefairyText, EVENT_BEAT_SANDRA
	object_event   5,  2, SPRITE_ADRINNA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GAULDENROD_ADRINNA ; initialize this
	tmhmball_event 10,  7, TM_ROOST, EVENT_TM_ROOST
; new 


	object_const_def
	const GAULDENRODTOWER4F_SANDRA
	const GAULDENRODTOWER4F_BRIGADER
	const GAULDENRODTOWER4F_AMOS
	const GAULDENRODTOWER4F_CLEFAIRY
	const GAULDENRODTOWER4F_ADRINNA

GauldenrodTower4FSandraScript: 
	faceplayer
	opentext
	writetext SandraIntroText
	waitbutton
	closetext
	winlosstext SandraWinText, 0
	loadtrainer SANDRA, 1
	startbattle
	reloadmapafterbattle
	disappear GAULDENRODTOWER4F_CLEFAIRY
	opentext
	writetext SandraAfterText
	waitbutton
	verbosegivetmhm TM_DAZZLINGLEAM
	waitbutton
;	givekeyitem RAINBOW_WING
	setflag ENGINE_CASCADEBADGE
	waitbutton
	closetext
	applymovement GAULDENRODTOWER4F_BRIGADER, BrigaderApproachMovement
	turnobject GAULDENRODTOWER4F_SANDRA, RIGHT
	opentext
	writetext BrigaderInterruptText
	waitbutton
	writetext SandraResponseText
	waitbutton
	writetext BrigaderExplanationText
	waitbutton
	writetext SandraAgreementText
	waitbutton
	closetext
	applymovement GAULDENRODTOWER4F_BRIGADER, BrigaderLeaveMovement1
	applymovement GAULDENRODTOWER4F_SANDRA, SandraLeaveMovement
	applymovement GAULDENRODTOWER4F_BRIGADER, BrigaderLeaveMovement2
	pause 60
	showemote EMOTE_SHOCK, PLAYER, 60
	appear GAULDENRODTOWER4F_ADRINNA
	applyonemovement GAULDENRODTOWER4F_ADRINNA, teleport_to
	turnobject GAULDENRODTOWER4F_ADRINNA, LEFT 
	special Special_FadeOutMusic
	pause 60
	playmusic MUSIC_ELITE_FOUR_BATTLE_BW
	opentext
	writetext AdrinnaGauldenrodTowerText
	waitbutton
	verbosegivetmhm HM_STRENGTH
	closetext
	applyonemovement GAULDENRODTOWER4F_ADRINNA, teleport_from
	disappear GAULDENRODTOWER4F_ADRINNA
	special RestartMapMusic
	pause 60
	appear GAULDENRODTOWER4F_AMOS
	applymovement GAULDENRODTOWER4F_AMOS, AmosEnterMovement1
	applymovement GAULDENRODTOWER4F_AMOS, AmosEnterMovement2
	turnobject PLAYER, LEFT
	opentext
	writetext AmosText
	waitbutton
	closetext
	applymovement GAULDENRODTOWER4F_AMOS, AmosLeaveMovement
	disappear GAULDENRODTOWER4F_SANDRA
	disappear GAULDENRODTOWER4F_BRIGADER
	disappear GAULDENRODTOWER4F_AMOS
	setevent EVENT_BEAT_SANDRA
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special Special_FadeInQuickly
	end

.Refused:
	writetext SandraRefusedText
	waitbutton
	closetext
	end

SandraIntroText:
	text_high
    text " Sandra: "
	next
	text_start
	text "Why are you here?"
	line "Seeking Ho-Oh?"

	para "I'm afraid he has"
	line "not perched here"
	cont "in some time."
	
	para "..."
	
	para "Ah, you seek to"
	line "stop outside"
	para "technologies from"
	line "entering Johto."
	
	para "Tell me, what is"
	line "the most destruc-"
	cont "tive innovation?"

	para "Ha, you will learn"
	line "soon enough."

	para "Show me your"
	line "connection!"
	done


SandraWinText:
	text "Magnificent"
	line "battle."
	done

SandraAfterText:
	text_high
    text " Sandra: "
	next
	text_start
	text "Take this."
	
	para "It's the Sonder"
	line "badge. It reminds"
	cont "you of everyone's"
	cont "dignity."

	para "There's an inter-"
	line "dependence from"
	cont "me to you." 

	para "Also, please take"
	line "this technique."
	
	para "It'll dazzle your"
	line "opponenents, the"
	para "way you dazzled"
	line "me!"

	para "I used to award"
	line "them to youth who"
	para "carried an elder"
	line "up to the Alpine"
	cont "Lakes."
	done

SandraRefusedText:
	text_high
    text " Sandra: "
	next
	text_start
	text "I see. Perhaps"
	line "you're not ready"
	cont "yet."
	done

BrigaderInterruptText:
	text_high
    text " Brigader: "
	next
	text_start
	text "Come with us!"
	done


SandraResponseText:
	text_high
    text " Sandra: "
	next
	text_start
	text "What's this?"
	done

BrigaderExplanationText:
	text_high
    text " Brigader: "
	next
	text_start
	text "You'll see!"
	
	para "General Bobesh"
	line "summons you!"
	done

SandraAgreementText:
	text_high
    text " Sandra: "
	next
	text_start

	text "Very well."
	
	para "I have wanted to"
	line "talk to him for"
	cont "some time."
	done

AmosText:
	text_high
    text " Amos: "
	next
	text_start
	
	text "Excuse me,"
	line "have you seen"
	cont "Sandra?"
	
	para "..."

	para "Oh, you were"
	line "with her before"
	cont "they took her?"

	para "Say, you look"
	line "familiar."

	para "Oh, right! You"
	line "were interrupting"
	cont "my conversation"
	cont "with Hollis."
	
	para "..."

	para "I'd better leave"
	line "before Bobesh's"
	cont "Brigaders see me."
	done


BrigaderApproachMovement:
	step_left
	step_left
	step_left
	step_left
	step_end

SandraLeaveMovement:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down	
	step_end

BrigaderLeaveMovement1:
	step_up
	turn_head_down
	step_end

BrigaderLeaveMovement2:
	step_down
	step_right
	step_right
	step_right
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

AmosMovement1:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left	
	step_end

AmosEnterMovement1:
	step_up
	step_up
	step_up	
	step_up
	step_end

AmosEnterMovement2:
	step_up
	step_right	
	step_right
	step_end

AmosLeaveMovement:
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

GauldenrodClefairyText:
	text "Supernova:"
	line "Shammoo!"
	done

AdrinnaGauldenrodTowerText:
	text_high
    text " Adrinna: "
	next
	text_start
	text "My spies are all"
	line "worked up about"
	para "you. My name is"
	line "General Adrinna."

	para "I'm not here to"
	line "fight."

	para "What say you of"
	line "Bobesh's stadium?"
	
	para "Do strong"
	line "trainers watch?"

	para "Think about it."
	line "This might be"
	cont "of use to you."
	done
	