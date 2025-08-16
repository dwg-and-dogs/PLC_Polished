GrottoedGlacierB2F_MapScriptHeader:
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES,GlacierBouldersB2FCallback
	callback MAPCALLBACK_OBJECTS, GlacierB2FCallback_MoveAK

; PROBABLY WILL NEED A CALLBACK TO MOVE THE PEOPLE 

	def_warp_events
	warp_event 5, 15, GROTTOED_GLACIER_B1F, 2
	warp_event 4, 15, GROTTOED_GLACIER_B1F, 2
	warp_event 17, 10, GROTTOED_GLACIER_B1F, 2 ; debug only 


	def_coord_events
	coord_event 17, 7, 0, GrottoedGlacierB1FScene0
	coord_event 17, 7, 1, GrottoedGlacierB1FScene1

	def_bg_events



	def_object_events
	object_event  17,  4, SPRITE_KANNA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GLACIER_KANNA ; TODO, CHANGE PALETTE TO GREEN AND REVISE THE TITLE TO "HISUI" FROM SINNOH 
	object_event  17,  5, SPRITE_ADRINNA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GLACIER_ADRINNA
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
	changeblock  8, 14, $2E
.Done:
	endcallback


GlacierB2FCallback_MoveAK:
	checkscene
	iffalse .Skip
	moveobject GLACIER_B2F_KANNA, 17, 4
	moveobject GLACIER_B2F_ADRINNA, 18, 5
	turnobject GLACIER_B2F_ADRINNA, LEFT
.Skip:
	endcallback

GrottoedGlacierB1FScene1:
	applyonemovement PLAYER, step_up
	sjump PickupGlacierScene

GrottoedGlacierB1FScene0:
	applyonemovement PLAYER, step_up
	pause 30
	special Special_FadeOutMusic
	pause 60
	playmusic MUSIC_ELITE_FOUR_BATTLE_BW
	showtext GlacierB2F_Text1
	turnobject GLACIER_B2F_KANNA, RIGHT
	showtext GlacierB2F_Text2
	applyonemovement GLACIER_B2F_KANNA, step_right
	applyonemovement GLACIER_B2F_KANNA, step_up	
	turnobject GLACIER_B2F_KANNA, LEFT
	opentext
	writetext GlacierB2F_Text3
	waitbutton
	writetext GlacierB2F_Text3_2
	waitbutton
	turnobject GLACIER_B2F_KANNA, DOWN
	showemote EMOTE_BOLT, GLACIER_B2F_KANNA, 30
	writetext GlacierB2F_Text4
	waitbutton
	closetext
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
	reloadmapafterbattle
	setscene $1
	setevent EVENT_BATTLED_BASCULEGION
	setevent EVENT_BASCULEGION_SLEEPS
	setevent EVENT_BASCULEGION_LIVES
	applyonemovement GLACIER_B2F_KANNA, step_left
	applyonemovement GLACIER_B2F_KANNA, step_down


PickupGlacierScene:	
	turnobject GLACIER_B2F_ADRINNA, LEFT
	opentext
	writetext GlacierB2F_Text5
	waitbutton
	showemote EMOTE_QUESTION, GLACIER_B2F_KANNA, 30 
	writetext GlacierB2F_Text6
	waitbutton
	writetext GlacierB2F_Text7_2	
	waitbutton
	closetext
	applyonemovement GLACIER_B2F_ADRINNA, step_down
	turnobject GLACIER_B2F_ADRINNA, LEFT
	special HealParty
	showtext GlacierB2F_Text7_3
	applyonemovement PLAYER, step_up
	winlosstext KannaWinText, 0
	setlasttalked GLACIER_B2F_KANNA
	loadtrainer KANNA, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	setevent EVENT_BEAT_KANNA
	applyonemovement GLACIER_B2F_ADRINNA, step_up
	opentext
	writetext KannaWaterfallText
	waitbutton
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MARSHBADGE
	verbosegivetmhm HM_WATERFALL	
	writetext KannaTellAmosText	
	waitbutton
	closetext
	earthquake 100
	playsound SFX_BEAT_UP
	showemote EMOTE_SHOCK, GLACIER_B2F_KANNA, 30 
	opentext
	writetext GlacierB2F_Text8
	waitbutton
	applyonemovement GLACIER_B2F_ADRINNA, step_up
	turnobject GLACIER_B2F_ADRINNA, LEFT
	writetext GlacierB2F_Text8_2
	waitbutton
	turnobject GLACIER_B2F_KANNA, RIGHT
	writetext GlacierB2F_Text8_3
	waitbutton
	writetext GlacierB2F_Text8_4
	waitbutton
	closetext
	applyonemovement GLACIER_B2F_ADRINNA, teleport_from
	disappear GLACIER_B2F_ADRINNA
	setevent EVENT_GLACIER_ADRINNA
	turnobject GLACIER_B2F_KANNA, DOWN
	showtext GlacierB2F_Text9
	applyonemovement GLACIER_B2F_KANNA, teleport_from
	disappear GLACIER_B2F_KANNA	
	setevent EVENT_GLACIER_KANNA
	setscene $2
	end

GlacierB2F_Text1:
	text_high
    text " Adrinna: "
	next
	text_start

	text "Your people are"
	line "entranced by my"
	cont "Gyarados."
	
	para "Many have joined"
	line "our forces."
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
	done

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
	text "Who are you? You"
	line "spoiled my trap!"

	para "I'll take you out,"
	line "then deal with"
	cont "General Adrinna!"
	done

GlacierB2F_Text7_2:
	text_high
    text " Adrinna: " 
	next
	text_start
	text "Let me heal you."
	line "She's hardly"
	cont "being fair."
	done

GlacierB2F_Text7_3:
	text_high
    text " Adrinna: " 
	next
	text_start
	text "Make me proud,"
	line "<PLAYER>. Can a"
	para "kid from nowhere"
	line "stand even with"
	cont "a Hisuian elder?"
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
	text "Oh, it's just my"
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
	
	para "But I must get to"
	line "the mine. We're"
	para "nearly to the"
	line "heart of it."
	
	para "<PLAYER>, you'll"
	line "know where to"
	cont "find me. This is"
	cont "not goodbye."
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
	
	para "And you: please,"
	line "think about what"
	para "your ancestors"
	line "would think if"
	para "they saw you,"
	line "joining forces"
	cont "with Adrinna."
	done
	
KannaWaterfallText:
	text_high
    text " Kanna: " 
	next
	text_start
	text "I regret that you"
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
	slide_step_down
	step_end	

GlacierBasc_Move2: ; in front of player 
	fix_facing
	slide_step_down
	step_end
	
BasculegionText:
	text "Baskaa!"
	done
