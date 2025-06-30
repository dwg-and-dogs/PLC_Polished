BellchimeTrail_MapScriptHeader:
	def_scene_scripts
	scene_script BellchimeTrailStepDownTrigger

	def_callbacks

	def_warp_events
	warp_event  4,  4, WISE_TRIOS_ROOM, 1
	warp_event  4,  5, WISE_TRIOS_ROOM, 2
	warp_event 21,  9, TIN_TOWER_1F, 1 ; hole

	def_coord_events
	coord_event 21,  9, 1, BellchimeTrailPanUpTrigger

	def_bg_events
	bg_event 22, 12, BGEVENT_JUMPTEXT, TinTowerSignText

	def_object_events
	object_event 14,  4, SPRITE_REI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BellchimeTrailEmiScript, -1
;	object_event 21, 10, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BellchimeBlockerText, EVENT_GOT_TM30_SHADOW_BALL ;beat morty 

	object_const_def
	

BellchimeTrailStepDownTrigger:
	sdefer .Script
	end

.Script:
	readvar VAR_YCOORD
	ifnotequal $9, .Done
	readvar VAR_XCOORD
	ifnotequal $15, .Done
	applyonemovement PLAYER, step_down
.Done
	setscene $1
	end

BellchimeTrailPanUpTrigger:
	playsound SFX_EXIT_BUILDING
	applyonemovement PLAYER, hide_object
	waitsfx
	applymovement PLAYER, .PanUpMovement
	disappear PLAYER
	pause 10
	special Special_FadeOutMusic
	special FadeOutPalettes
	pause 15
	setscene $0
	warpfacing UP, TIN_TOWER_1F, 7, 15
	end

.PanUpMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

TinTowerSignText:
	text "Tin Tower"

	para "A legendary #-"
	line "mon is said to"
	cont "roost here."
	done

BellchimeTrailEmiScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_KIMONO_GIRL_EMI
	iftrue .AskToTimeTravel
	writetext KimonoGirlEmiIntroText
	waitbutton
	writetext EmiBattleText
	yesorno
	iffalse_jumpopenedtext EmiRefusedText
	writetext EmiAcceptedText
	waitbutton
	closetext
	winlosstext EmiBeatenText, 0
	loadtrainer REI, 1 ; kimono keeper emi has a unique trainer sprite
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KIMONO_GIRL_EMI
	opentext
	writetext KimonoGirlEmiRewardText
	promptbutton
	verbosegiveitem ODD_SOUVENIR ; hisui stone
	writetext EmiHealsYouText
	waitbutton
	playmusic MUSIC_HEAL
	special HealParty
	special SaveMusic	
;	writetext EmiHealedPokemonText	; 
.AskToTimeTravel:
	writetext BellchimeTrailAskToTimeTravelText
	yesorno
	iffalse_jumpopenedtext BellChimeTrailNoTimeTravelText
	writetext BellChimeTrailYesTimeTravelText
	waitbutton
	closetext
	setevent EVENT_BEAT_RIVAL_THEATRE
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warpfacing LEFT, EMPERORS_GARDEN, 28, 28
	end

KimonoGirlEmiIntroText:
	text "I sensed your"
	line "arrival when"
	cont "you arrived."

	para "You have come"
	line "very far, "

	para "looking for a"
	line "way to save"
	cont "your heritage."
	
	para "You have"
	line "brought people"
	para "together in"
	line "Goldenrod and"
	
	para "calmed the"
	line "Violet gales, so"
	
	para "you seek the"
	line "blossom tree"
	cont "here."
	
	para "Haha, so many"
	line "similarities!"
	done


EmiBattleText:
	text "Eh, you want to"
	line "know the ending"
	cont "of the story?"

	para "I'll tell you if"
	line "you can beat"
	cont "me!"
	done

EmiRefusedText:
	text "You refuse?"
	
	para "You can't run"
	line "from destiny"
	cont "forever!"
	done

EmiAcceptedText:
	text "Face your fate!"
	done

EmiBeatenText:
	text "So the legends"
	line "are true."
	
	para "Allow me to ex-"
	line "plain the rest"
	cont "of the story"
	cont "of these towers."
	done


KimonoGirlEmiRewardText:
	text "The infamous"
	line "lightning"
	cont "strike…"
	
	para "It struck the"
	line "Brass tower as"
	para "the Consul raised"
	line "his hands."

	para "His ambitions,"
	line "to rise above"
	para "nature itself,"
	line "made the tower"
	cont "imbalanced."
	
	para "Of course it"
	line "could not stand."	
	para "But few know"
	line "of the others"
	cont "there that day."
	
	para "Right behind him,"
	line "someone with"
	para "hair like"
	line "spring leaves."
	
	para "For your patience"
	line "I give you this"
	para "stone. Many like"
	line "it have been"
	para "found under the"
	line "Tin Tower."
	done


EmiHealsYouText:
	text "Please, let me"
	line "heal your #mon."
	done

EmiHealedPokemonText:
	text "Chronicler Emi"
	line "healed your"
	cont "#mon."
	done

BellchimeTrailAskToTimeTravelText:
	text "Would you like to"
	line "see how the story"
	cont "unfolds for your-"
	cont "self? Hehe."
	done


BellChimeTrailNoTimeTravelText:
	text "Come see me when"
	line "you're ready."
	done

BellChimeTrailYesTimeTravelText:
	text "Very good. I will"
	line "pray to Celebi..."
	done

BellchimeBlockerText:
	text "The Tin Tower is"
	line "off-limits. Only"
	para "a few have been"
	line "granted access by"
	cont "Leader Morty."
	done
