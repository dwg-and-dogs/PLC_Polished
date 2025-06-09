TradersLanding_MapScriptHeader: 

	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_NEWMAP, TradesLandingFlyPoint


	def_warp_events
	warp_event 11, 6, LANDING_BARBEAU, 1
	warp_event 13, 11, LANDING_STOCKROOM, 1
	warp_event 15, 16, LANDING_DORMS, 1
	warp_event 9, 16, LANDING_TAVERN, 1
	warp_event 25, 7, LANDING_HOUSE_1, 1
	warp_event 29, 7, LANDING_HOUSE_2, 1
	warp_event 20, 27, LANDING_DOCKS, 1 
	warp_event 21, 27, LANDING_DOCKS, 1 


	def_coord_events
	coord_event 18, 0, 0, TL_Scene_Part_1_Script_L
	coord_event 19, 0, 0, TL_Scene_Part_1_Script
	coord_event 20, 0, 0, TL_Scene_Part_1_Script
	coord_event 21, 0, 0, TL_Scene_Part_1_Script_R
	
	coord_event 5, 9, 1, TL_Scene_2_L
	coord_event 6, 9, 1, TL_Scene_2_R

	def_bg_events
	bg_event 21, 4, BGEVENT_JUMPTEXT, TL_ReportForWorkSign
	bg_event 16, 18, BGEVENT_JUMPTEXT, TL_OpenForBusinessSign
	bg_event 14, 6, BGEVENT_JUMPTEXT, TL_KenseysOfficeSign
	bg_event 22, 12, BGEVENT_READ, TL_AmosWantedSign
;todo, shrine?
	bg_event  13, 18, BGEVENT_ITEM + CALCIUM, EVENT_LANDING_HIDDEN_1



	def_object_events
	; scene 1
	object_event 19, 5, SPRITE_BARBEAU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LANDING_SCENE_1_BARBEAU
	object_event 20, 5, SPRITE_KENSEY, 	SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LANDING_SCENE_1_KENSEY
	object_event 18, 0, SPRITE_KURT, 	SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LANDING_SCENE_1_KURT
	; scene 2
	object_event  5, 5, SPRITE_BARBEAU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, LandingBarbeauScript, -1 
	object_event 5, 10, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LANDING_KURT_2
	; roadblock 
	object_event 20, 25, SPRITE_BRIGADER, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, jumptextfaceplayer, TL_Brigader_Script, -1
	object_event 21, 25, SPRITE_BRIGADER, 	SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, jumptextfaceplayer, TL_Brigader_Script, -1
	; NPCs
	object_event 10, 19, SPRITE_FIREBREATHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LandingEggScript, EVENT_BEAT_KENSEY_PORT
	; todos 
	object_event 21, 15, SPRITE_NOMAD_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LandingNomadMScript, -1 ; todo 
	object_event 19, 19, SPRITE_NOMAD_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LandingNomadFScript, -1 ; todo 

	object_const_def
	const TRADERS_LANDING_BARBEAU_1
	const TRADERS_LANDING_KENSEY
	const TRADERS_LANDING_KURT
	const TRADERS_LANDING_BARBEAU_2
	const TRADERS_LANDING_KURT_2

TradesLandingFlyPoint:
	setflag ENGINE_FLYPOINT_TRADERS_LANDING
	endcallback

TL_Scene_Part_1_Script_R:
	applyonemovement PLAYER, step_left
	sjump TL_Scene_Part_1_Script
	
TL_Scene_Part_1_Script_L:
	applyonemovement PLAYER, step_right
;JUMPTHRU
TL_Scene_Part_1_Script:
	applyonemovement PLAYER, step_down
	applyonemovement PLAYER, step_down
	applyonemovement PLAYER, step_down
	applyonemovement PLAYER, step_down
	refreshscreen
	trainerpic KENSEY
	waitbutton
	closepokepic
	pause 30
	showemote EMOTE_SHOCK, TRADERS_LANDING_KENSEY, 10
	opentext
	writetext TL_Text1
	waitbutton
	closetext

	refreshscreen
	trainerpic BARBEAU
	waitbutton
	closepokepic

	showemote EMOTE_QUESTION, TRADERS_LANDING_BARBEAU_1, 10
	showtext TL_Text2
	showtext TL_Text3
	turnobject TRADERS_LANDING_BARBEAU_1, LEFT
	showtext TL_Text4 ; 
	showemote EMOTE_SHOCK, TRADERS_LANDING_KENSEY, 10
	showtext TL_Text5
	waitbutton
	closetext
	applymovement TRADERS_LANDING_KENSEY, TL_Move_Kensey_1
	disappear TRADERS_LANDING_KENSEY
	turnobject TRADERS_LANDING_BARBEAU_1, DOWN
	showtext TL_Text6
	appear TRADERS_LANDING_KURT
	applymovement TRADERS_LANDING_KURT, TL_Move_Kurt_1
	turnobject TRADERS_LANDING_BARBEAU_1, LEFT	
	showtext TL_Text7
	showtext TL_Text8
	applymovement TRADERS_LANDING_BARBEAU_1, TL_Move_Kurt_1
	disappear TRADERS_LANDING_BARBEAU_1
	applyonemovement TRADERS_LANDING_KURT, step_up
	turnobject TRADERS_LANDING_KURT, RIGHT
	showtext TL_Text9
	applymovement TRADERS_LANDING_KURT, TL_Move_Kurt_2
	disappear TRADERS_LANDING_KURT
	setevent EVENT_LANDING_SCENE_1_BARBEAU
	setevent EVENT_LANDING_SCENE_1_KENSEY
	setevent EVENT_LANDING_SCENE_1_KURT
	end

TL_Text1:
	text_high
    text " Kensey: " 
	next
	text_start 
	text "Your navigators"
	line "must help!"
	
	para "We promised them!"
	done

TL_Text2:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "How? They refuse."
	line "They know that"
	cont "Lugia guards us."
	done

TL_Text3:
	text_high
    text " Kensey: " 
	next
	text_start 
	text "You're being so"
	line "difficult."
	
	para "Lugia now serves"
	line "the Consul."
	done

TL_Text4:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "When the time"
	line "comes, I have"
	para "faith that she'll"
	line "choose us!"
	done

TL_Text5:
	text_high
    text " Kensey: " 
	next
	text_start 
	text "You fool! If they"
	line "can't port, then"
	
	para "the outsiders"
	line "will see it as an"
	cont "act of war!"
	
	para "Johto depends on"
	line "you. Get to it."
	done

TL_Text6:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "(sigh)"
	done
	

TL_Text7:
	text_high
    text " Kurt: " 
	next
	text_start 
	text "Excuse me! Are"
	line "you the elder?"
	
	para "We're trying to"
	line "block the outsi-"
	cont "ders, and we may"
	cont "be able to help." 
	done

TL_Text8:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "Wait… is that a"
	line "Silver Wing?"
	
	para "Are you a friend"
	line "of Lugia?"
	
	para "Meet me by the"
	line "shrine."
	done

TL_Text9:
	text_high
    text " Kurt: " 
	next
	text_start 
	text "Kurt: <PLAYER>:"
	line "Lugia in this "
	para "timeline is with"
	line "the Consul."
	
	para "But with your "
	line "silver wing,"
	para "we can go to our"
	line "time and bring"
	cont "her here to save"
	para "the Landing."
	
	para "Let's see if Bar-"
	line "beau can help."
	done

TL_Scene_2_L:
	applyonemovement PLAYER, step_right
TL_Scene_2_R:
	applymovement PLAYER, TL_2_PlayerMovesUp
	turnobject TRADERS_LANDING_BARBEAU_2, RIGHT
	showtext TL_2_Text1 ; you've comE? 
	pause 10
	appear TRADERS_LANDING_KURT_2
	applymovement TRADERS_LANDING_KURT_2, TL_2_PlayerMovesUp
	turnobject TRADERS_LANDING_BARBEAU_2, DOWN
	showtext TL_2_Text2 ; we are on a quest from celebi from a different world, to stop expansion of steel types. We believe that this shrine will get celebi to help us out. 
	showemote EMOTE_SHOCK, TRADERS_LANDING_BARBEAU_2, 10
	showtext TL_2_Text3 ; best chance i've got. kensey and those pokeballs are so brutal. Just promise me you will take good care of her?
	showemote EMOTE_BOLT, TRADERS_LANDING_KURT_2, 10
	showtext TL_2_Text4 ; yes we will
	turnobject TRADERS_LANDING_BARBEAU_2, UP
	applyonemovement TRADERS_LANDING_BARBEAU_2, step_up
	turnobject PLAYER, UP
	applyonemovement PLAYER, step_up
	applymovement TRADERS_LANDING_KURT_2, TL_2_KurtMoves2
	showtext TL_2_Text5 ; honor Lugia
	playsound SFX_WARP_TO
	setevent EVENT_BARBEAU_WARPED
	special FadeOutPalettes
	waitsfx
	warp ROUTE_40, 14, 2
	end

TL_2_Text1:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "Oh, where's your"
	line "grandpa?"
	done

TL_2_Text2:
	text_high
    text " Kurt: " 
	next
	text_start 
	text "We come from far"
	line "away, but share"	
	cont "the same goal:"
	para "stop those ships."
	line "The future of "
	para "Johto depends on"
	line "blocking them!"
		
	para "I believe if you"
	line "pray here, we can"
	para "bring Lugia back"
	line "to help you."
	done

	
TL_2_Text3:
	text_high
    text " Barbeau: " 
	next
	text_start 

	text "The Silver Wing"
	line "marks you as an"
	para "ally of Lugia,"
	line "which means you"
	para "are our ally. If"
	line "I do this, will"
	para "you promise me"
	line "you will look"
	cont "after Lugia?"
	
	para "If anything were"
	line "to happen to her,"
	para "it would be..."
	line "devastating."
	
	para "We rely on her to"
	line "guide us back"
	cont "from the islands."
	done


TL_2_Text4:
	text_high
    text " Kurt: " 
	next
	text_start 
	text "Of course. You"
	line "can trust us."
	done
	
TL_2_Text5:
	text_high
    text " Barbeau: " 
	next
	text_start 
	text "Very well. Let us"
	line "pray:"
		
	para "Without waypoint,"

	para "Clouds shroud all" 
	line "sight,"
	
	para "Beseech thee"
	line "moon,"

	para "Guide us with"
	line "your light!"
	done
	

TL_KenseysOfficeSign:
	text "Kensey's Office"
	done

TL_ReportForWorkSign:
	text "Coastal Nomads:"
	line "Report for work"
	cont "at lighthouse!"
	para "-General Kensey"
	done

TL_OpenForBusinessSign:
	text "Trader's Landing!"
	line "Open for business!"
	done

TL_Brigader_Script:
	checkevent EVENT_BEAT_KENSEY_PORT
	iftrue_jumptextfaceplayer TL_Brigader_AfterKenseyText
	jumpthisopenedtext
	
	text "Port is open only"
	line "to workers."
	
	para "Go see Barbeau"
	line "for assignment."
	done

TL_Brigader_AfterKenseyText:
	text "The port will"
	line "take some time"
	cont "to rebuild after"
	cont "that nasty storm."
	done


LandingEggScript: ;cf the cafe script 
	checkevent EVENT_GOT_HSLIGGOO_EGG
	iftrue_jumptextfaceplayer GotHSliggooEggText
	faceplayer
	opentext
	writetext GivingHSliggooEggText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext NoMoneyText
	checkmoney $0, 10000
	ifequal $2, .NoMoney 
	promptbutton
	giveegg H__SLIGGOO
	iffalse_jumpopenedtext NoRoomText
	playsound SFX_TRANSACTION
	takemoney $0, 10000
	special PlaceMoneyTopRight
	setevent EVENT_GOT_HSLIGGOO_EGG
	writetext GotHSliggooEggText
	waitbutton
	closetext
	end

.NoMoney:
	jumpopenedtext NoMoneyText

GivingHSliggooEggText:
	text "Hey, you my"
	line "contact?"
	
	para "I gotta the egg"
	line "smuggled outta"
	para "Hisui, like I"
	line "told ya. 10k."
	done
	
GotHSliggooEggText:
	text "Now, I just need"
	line "to escape back on"
	para "the Sailor's boat"
	line "and it's a big"
	cont "score."
	
	para "Hopefully it's"
	line "smooth sailing."
	done

NoMoneyText:
	text "Getting cheap on"
	line "me now?"
	
	para "I won't be here"
	line "forever."
	done

NoRoomText:
	text "Oh! You won't"
	line "take it?"
	done

TL_Move_Kensey_1:
	step_down
	step_down
	step_down
	step_down
	step_end

TL_Move_Kurt_2:
	step_down ; fallthru
TL_Move_Kurt_1:
	step_down
	step_down
	step_down
	step_down
	step_down
	turn_head_right
	done


LandingBarbeauScript:
	faceplayer
	checkevent EVENT_BEAT_KENSEY_PORT
	iftrue AfterKensey
	opentext
	writetext BarbeauTimeTravelText
	yesorno
	iffalse_jumpopenedtext BarbeauNoTimeTravelText
	writetext TL_2_Text5
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp ROUTE_40, 14, 2
	end

BarbeauTimeTravelText:
	text "I thought you"
	line "were bringing"
	cont "Lugia back?"
	
	para "Have you come to"
	line "pray with me?"
	done

BarbeauNoTimeTravelText:
	text "Some other time."
	done



AfterKensey:
	checkpoke LUGIA
	iftrue_jumptextfaceplayer BarbeauLugiaText
	jumpthisopenedtext
	
	text "What will we do?"
	line "Lugia, guardian"
	cont "of the seas, is"
	para "no longer with"
	line "us. We must find"
	cont "ways to adapt"
	cont "without her."
	done

BarbeauLugiaText:
	text "What will we do?"
	line "Lugia, guardian"
	cont "of the seas, is"
	para "no longer with"
	line "us."
	
	para "Oh? She is with"
	line "you? But I saw!"
	cont "With my own eyes!"
	para "Lugia must have"
	line "chosen you for"
	cont "a reason."
	
	para "We will find a"
	line "way to adapt"
	cont "without her"
	cont "presence."
	done

LandingNomadMScript:
	faceplayer
	checkevent EVENT_BEAT_KENSEY_PORT
	iftrue_jumptext LandingNomadMTextAfter
	jumpthistext
	
	text "Before Kensey,"
	line "most of us would"
	para "set sail to the"
	line "Sheltered Shores"
	cont "for the summer."

	para "The voyages were"
	line "grueling!"
	done
	

LandingNomadMTextAfter:
	text "Hey, you're the"
	line "one responsible"
	cont "for losing Lugia!"
	
	para "Some nerve to come"
	line "back here."
	done


LandingNomadFScript:
	faceplayer
	checkevent EVENT_BEAT_KENSEY_PORT
	iftrue_jumptext LandingNomadFTextAfter
	jumpthistext
	
	text "Kensey won't let"
	line "us sail anymore."
	
	para "It used to be"
	line "just the oldest"
	para "members who would"
	line "stay back in the"
	para "summer. He's made"
	line "us all feel old!"
	done
	
LandingNomadFTextAfter:
	text "We used to guide"
	line "by intuition."
	para "Now, we'll rely on"
	line "expertise."
	done

TL_AmosWantedSign:
	refreshscreen
	trainerpic AMOS
	waitbutton
	closepokepic
	jumpthistext

	text "WANTED: This man"
	line "is wanted for"
	cont "crimes against"
	cont "the Consul."

	para "If you see him,"
	line "please notify a"
	cont "brigader"
	cont "immediately."

	para "Known alias:"
	line "Amos."
	done

TL_2_PlayerMovesUp:
	step_up
	step_up
	step_up
	step_up
	turn_head_left
	step_end

TL_2_KurtMoves2:
	step_left
	step_up
	step_up
	step_end
