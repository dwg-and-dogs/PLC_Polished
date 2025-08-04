DragonsDen_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events



	def_coord_events



	def_bg_events
;	bg_event  10, 14, BGEVENT_JUMPTEXT, DragonsDenSignText 


	def_object_events
	object_event  10, 13, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerDragonTamerDarin, -1
	object_event  13, 13, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerDragonTamerPaul, -1
;warper 
	object_event  9, 14, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonsDenElder, -1	 

	object_event  11,  11, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ClairScript, -1
	pokemon_event 12,  11, DRAGONAIR, -1, -1, PAL_NPC_BLUE, DragonairText, -1

	object_const_def


GenericTrainerDragonTamerDarin:
	generictrainer DRAGON_TAMER, DARIN, EVENT_BEAT_DRAGON_TAMER_DARIN, .SeenText, .BeatenText

.BeatenText:
	text "Impressive!"
	done

.SeenText:
	text "Can you wield a"
	line "dragon #mon?"
	done


GenericTrainerDragonTamerPaul:
	generictrainer DRAGON_TAMER, PAUL, EVENT_BEAT_DRAGON_TAMER_PAUL, .Seen2Text, .Beaten2Text

.Beaten2Text:
	text "I should train"
	line "under you."
	done

.Seen2Text:
	text "I've trained with"
	line "Clair for years."
	
	para "No way I'll lose!"
	done


DragonsDenSignText:
	text "Dragon's Den"
	line "Where trust with"
	cont "#mon is built"
	done

DragonsDenElder:
	faceplayer
	opentext
	writetext DragonsDenBackText
	yesorno
	iffalse_jumpopenedtext DragonsDenNoBackText
	writetext DragonsDenYesBackText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp EMPIRES_EXTENT, 6, 40
	end

DragonsDenBackText:
	text "Are you finished"
	line "training in the"
	cont "Dragon's Den?"
	done
	
DragonsDenNoBackText:
	text "Stay as long"
	line "as you like."
	done

DragonsDenYesBackText:
	text "Safe travels."
	done

DragonairText:
	text "GordianRa:"
	line "Dragooo!"
	done

ClairScript:
	checkevent EVENT_BEAT_CLAIR
	iftrue_jumptextfaceplayer .AfterClairText
	showtext .ClairText1
	faceplayer
	showtextfaceplayer .SeenText
	winlosstext .BeatenText, 0
	loadtrainer CLAIR, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CLAIR
	opentext
	writethistext
		text "<PLAYER> received"
		line "Rising Badge."
		done
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RISINGBADGE

	setevent EVENT_BEAT_DRAGON_TAMER_DARIN
	setevent EVENT_BEAT_DRAGON_TAMER_PAUL

	promptbutton
	verbosegivetmhm TM_DRAGON_CLAW
	setevent EVENT_GOT_TM69_U_TURN
	jumptext .AfterClairText

.ClairText1:
	text "Faster! Stronger!"
	line "Like Lance's!"
	done


.SeenText:
	text "You interrupted"
	line "my training."
	
	para "Dragons require" 
	line "intense focus."
	
	para "In these hard"
	line "times, I feel"
	para "that we must turn"
	line "to the mightiest"
	para "#mon to get us"
	line "through."

	para "You seem quite"
	line "confident in your"
	cont "own power."

	para "Let's see if it's"
	line "justified!"
	done


.BeatenText:
	text "Beaten, again."
	line "Every time I try"
	cont "to climb up the"
	
	para "ranks to become"
	line "an Elite Four,"
	
	para "I fall. Is my "
	line "drive too much?"

	para "You've earned the"
	line "Rising Badge and" 
	cont "this TM. Take it."
	done


.AfterClairText:
	text "If I'm going to"
	line "achieve my dreams"
	para "I need to trust"
	line "that I am headed"
	cont "in the right way."
	
	para "You showed me the"
	line "power of belie-"
	para "ving in my"
	line "#mon,"

	para "even if they are"
	line "not strong in the"
	cont "ways I expect."
	done
