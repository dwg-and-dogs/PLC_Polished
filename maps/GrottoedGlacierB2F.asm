GrottoedGlacierB2F_MapScriptHeader:
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES,GlacierBouldersB2FCallback
	callback MAPCALLBACK_OBJECTS, GlacierB2FCallback_MoveAK

; PROBABLY WILL NEED A CALLBACK TO MOVE THE PEOPLE 

	def_warp_events
	warp_event 5, 15, GROTTOED_GLACIER_B1F, 2
	warp_event 6, 15, GROTTOED_GLACIER_B1F, 2


	def_coord_events
	coord_event 17, 7, 0, GrottoedGlacierB1FScene0
	coord_event 17, 7, 1, GrottoedGlacierB1FScene1

	def_bg_events



	def_object_events
	object_event  17,  4, SPRITE_KANNA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GLACIER_KANNA
	object_event  17,  6, SPRITE_ADRINNA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GLACIER_ADRINNA
	pokemon_event  17, 3, BASCULEGION, -1, -1, PAL_NPC_ROCK, BasculegionText, EVENT_BASCULEGION_SLEEPS
	pokemon_event  17, 3, BASCULEGION, -1, -1, PAL_NPC_RED, BasculegionText, EVENT_BASCULEGION_LIVES ; INITIALIZE 
	itemball_event  7, 2, CHOICE_SPECS, 1, EVENT_CHOICE_SPECS

	object_const_def
	const GLACIER_B2F_KANNA
	const GLACIER_B2F_ADRINNA
	const GLACIER_B2F_BASCULEGION_SLEEPY
	const GLACIER_B2F_BASCULEGION_ALIVE	

GlacierBouldersB2FCallback:
	checkevent EVENT_BOULDER1_IN_GLACIER
	iffalse .Done
	changeblock  8,  8, $2D
	checkevent EVENT_BOULDER2_IN_GLACIER
	iffalse .Done
	changeblock  8, 14, $2F
.Done:
	endcallback


GlacierB2FCallback_MoveAK:
	checkscene
	iffalse .Skip
	moveobject GLACIER_B2F_KANNA, 18, 3
	moveobject GLACIER_B2F_ADRINNA, 18, 6
.Skip:
	endcallback

GrottoedGlacierB1FScene1:
;	applymovement PLAYER, PlayerWalksDownMovement2
;	turnobject STADIUMGROUNDS_BOBESH, LEFT
;	turnobject STADIUMGROUNDS_SANDRA, LEFT
	sjump PickupGlacierScene

GrottoedGlacierB1FScene0:
	pause 30
	showtext GlacierB2F_Text1
	turnobject GLACIER_B2F_KANNA, RIGHT
	showtext GlacierB2F_Text2
	applyonemovement GLACIER_B2F_KANNA, step_right
	applyonemovement GLACIER_B2F_KANNA, step_up	
	turnobject GLACIER_B2F_KANNA, LEFT
	showemote EMOTE_SLEEP, GLACIER_B2F_BASCULEGION_SLEEPY, 30 
	showtext GlacierB2F_Text3
	waitbutton
	showtext GlacierB2F_Text3_2
	turnobject GLACIER_B2F_KANNA, DOWN
	showemote EMOTE_BOLT, GLACIER_B2F_KANNA, 30
	showtext GlacierB2F_Text4
	disappear GLACIER_B2F_BASCULEGION_SLEEPY
	appear GLACIER_B2F_BASCULEGION_ALIVE
	pause 30
	showemote EMOTE_BOLT, GLACIER_B2F_BASCULEGION_ALIVE, 30
	applymovement GLACIER_B2F_BASCULEGION_ALIVE, GlacierBasc_Move1
	applyonemovement GLACIER_B2F_ADRINNA, step_right
	turnobject GLACIER_B2F_ADRINNA, LEFT
	applymovement GLACIER_B2F_BASCULEGION_ALIVE, GlacierBasc_Move2
	showtext BasculegionText
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon BASCULEGION, 40
	startbattle
	ifequal $1, .Continue
.Continue:
	disappear GLACIER_B2F_BASCULEGION_ALIVE
	setscene $1
	setevent EVENT_BATTLED_BASCULEGION
	setevent EVENT_BASCULEGION_SLEEPS
	setevent EVENT_BASCULEGION_LIVES

PickupGlacierScene:
	showtext GlacierB2F_Text5
	showemote EMOTE_QUESTION, GLACIER_B2F_KANNA, 30 
	showtext GlacierB2F_Text6
	showemote EMOTE_BOLT, GLACIER_B2F_KANNA, 30 	
	showtext GlacierB2F_Text7
	waitbutton
	showtext GlacierB2F_Text7_2	
	special HealParty
	winlosstext KannaWinText, 0
	setlasttalked GLACIER_B2F_KANNA
	loadtrainer KANNA, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	setevent EVENT_BEAT_KANNA
	opentext
	writetext KannaWaterfallText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MARSHBADGE
	verbosegivetmhm HM_WATERFALL	
	writetext KannaTellAmosText	
	closetext
	earthquake 100
	playsound SFX_BEAT_UP
	showemote EMOTE_SHOCK, GLACIER_B2F_KANNA, 30 
	showtext GlacierB2F_Text8
	waitbutton
	showtext GlacierB2F_Text8_2
	waitbutton
	showtext GlacierB2F_Text8_3
	waitbutton
	showtext GlacierB2F_Text8_4
	applyonemovement GLACIER_B2F_ADRINNA, teleport_from
	disappear GLACIER_B2F_ADRINNA
	setevent EVENT_GLACIER_ADRINNA
	showtext GlacierB2F_Text9
	applyonemovement GLACIER_B2F_KANNA, teleport_from
	disappear GLACIER_B2F_KANNA	
	setevent EVENT_GLACIER_KANNA
	setscene $2
	end

GlacierB2F_Text1:
	text "Adrinna: Your"
	line "people enjoy the"
	para "Gyarados. Some"
	line "say they will"
	cont "stay in Johto."
	done

GlacierB2F_Text2:
	text_high
    text " Kanna: " 
	next
	text_start 
	text "Our culture is"
	line "strong. We know"
	para "that discipline"
	line "needs sacrifice."
	done

GlacierB2F_Text3:
	text_high
    text " Kanna: " 
	next
	text_start 
	text "We admire the"
	line "Basculegion."
	para "A symbol of"
	line "sacrifice. We"
	cont "owe it to our"
	para "ancestors to"
	line "persevere."
	para "You know nothing"
	line "of it - you"
	para "destroy what"
	line "gives their"
	cont "lives meaning."

GlacierB2F_Text3_2:
	text_high
    text " Adrinna: " 
	next
	text_start 
	text "So wrong! I find"
	line "meaning for"
	para "myself. How sad"
	line "that you can't."
	done


GlacierB2F_Text4:
	text_high
    text " Kanna: " 
	next
	text_start 
	text "General, it's time"
	line "you saw how"
	para "strong our"
	line "foundation is."
	cont "Basculegion, go!"
	done


GlacierB2F_Text5:
	text_high
    text " Adrinna: " 
	next
	text_start
	text "Well done,"
	line "<PLAYER>."
	done

GlacierB2F_Text6::
	text_high
    text " Kanna: " 
	next
	text_start
	text "Who is this?"
	done

GlacierB2F_Text7:
	text_high
    text " Kanna: " 
	next
	text_start
	text "Are they your"
	line "lieutenant? I'll"
	para "start with you!"
	done

GlacierB2F_Text7_2:
	text_high
    text " Kanna: " 
	next
	text_start
	text "Let me heal you."
	line "She's hardly"
	cont "being fair."
	done

KannaWinText:
	text "Your technique"
	line "appears time-"
	cont "honored."
	done

Text_ReceivedKannaBadge:
	text_high
    text " Kanna: " 
	next
	text_start
	text "A-hem. Having"
	line "defeated me, I"
	para "am obligated by"
	line "duty to give you"
	para "the Legacy Badge,"
	line "and this HM."
	done

GlacierB2F_Text8:
	text_high
    text " Kanna: " 
	next
	text_start
	text "Whoa! What's"
	line "that? It sounds"
	para "like the glacier"
	line "is cracking!"
	done

GlacierB2F_Text8_2:
	text_high
    text " Adrinna: " 
	next
	text_start
	para "Oh, it's just my"
	line "Gyarados letting"
	para "loose. My"
	line "brigaders are"
	para "showing your"
	line "people what power"
	cont "feels like."
	done

GlacierB2F_Text8_3:
	text_high
    text " Kanna: " 
	next
	text_start
	text "Without glaciers"
	line "to traverse, how"
	para "will our regions"
	line "meet?"
	para "Generations of"
	line "knowledge,"
	cont "destroyed!"
	done

GlacierB2F_Text8_4:
	text_high
    text " Adrinna: " 
	next
	text_start
	text "You know, it was"
	line "a nice try to"
	cont "ambush me here."
	done

GlacierB2F_Text9:
	text_high
    text " Kanna: " 
	next
	text_start
	text "Heavens! We have"
	line "to leave, before"
	para "anything else"
	line "happens..."
	done
	
KannaWaterfallText:
	text "I hate that you"
	line "beat me, but I"
	para "took an oath. You"
	line "can have this HM"
	para "and the Legacy"
	line "Badge."
	done

KannaTellAmosText:
	text "I'll be telling"
	line "the Johto elders"
	para "about your green"
	line "minion, Adrinna."
	done

GlacierBasc_Move1: ; just in front of adrinna
	fix_facing
	fast_jump_step_down
	fast_jump_step_down
	step_end	

GlacierBasc_Move2: ; in front of player 
	fix_facing
	fast_jump_step_down
	step_end
	
BasculegionText:
	text "Baskaa!"
	done
