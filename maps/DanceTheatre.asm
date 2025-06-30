DanceTheatre_MapScriptHeader:
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event  5, 13, ECRUTEAK_CITY, 8
	warp_event  6, 13, ECRUTEAK_CITY, 8

	def_coord_events

	def_bg_events


	def_object_events
	object_event  5,  9, SPRITE_OSTENE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, DanceTheatreOstene1Text, EVENT_BEAT_RIVAL_THEATRE ; end 
	object_event  6,  9, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheatreRivalScript, EVENT_BEAT_RIVAL_THEATRE ; end
	object_event  0,  3, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TheatreElderScript, -1
	object_event  3,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerKimono_girlSayo, -1 ; FLAREON, kimono girl 1 -- DONE 
	object_event  7,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerKimono_girlKuni, -1 ; GLACEON, kimono girl 4 -- DONE
	object_event 10,  8, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheatreKurtScript, EVENT_BEAT_KIMONO_GIRL_EMI ; 
	object_event  3,  8, SPRITE_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, DanceTheatreNPC1Text, -1


	object_const_def
	const THEATRE_OSTENE_1
	const THEATRE_RIVAL
	const THEATRE_ELDER

PorygonZText:
	text "Porygon-Z:"
	line "Zoop zoop!"
	done

DanceTheatreRivalScript:
	faceplayer
	checkevent EVENT_BEAT_RIVAL_THEATRE
	iftrue_jumptext RivalTheatreAfterBattleText
;
    playmusic MUSIC_RIVAL_ENCOUNTER
    showtext TheatreRivalBeforeText
    checkevent EVENT_GOT_OSHAWOTT
    iftrue .Oshawott
    checkevent EVENT_GOT_ROWLET
    iftrue .Rowlet
    winlosstext TheatreRivalWinText, 0
	setlasttalked THEATRE_RIVAL
    loadtrainer RIVAL1, 15
    startbattle
    dontrestartmapmusic
    reloadmapafterbattle
    sjump .FinishRivalBattle

.Oshawott:
    winlosstext TheatreRivalWinText, 0
    setlasttalked THEATRE_RIVAL
    loadtrainer RIVAL1, 13
    startbattle
    dontrestartmapmusic
    reloadmapafterbattle
    sjump .FinishRivalBattle

.Rowlet:
    winlosstext TheatreRivalWinText, 0
    setlasttalked THEATRE_RIVAL
    loadtrainer RIVAL1, 14
    startbattle
    dontrestartmapmusic
    reloadmapafterbattle
    sjump .FinishRivalBattle

.FinishRivalBattle:
    special DeleteSavedMusic
    playmusic MUSIC_RIVAL_AFTER
	setevent EVENT_BEAT_RIVAL_THEATRE
    jumptext RivalTheatreAfterBattleText

TheatreRivalWinText:
	text "It's just one"
	line "setback."
	done


TheatreRivalBeforeText:
	text "<RIVAL>: Hey, I'm"
	line "in the middle of"
	cont "something! Silph"
	
	para "is offering me a"
	line "big project in"
	para "Olivine to filter"
	line "water due to the"
	cont "drought."
	
	para "I feel like this"
	line "is was Celebi"
	para "wanted me to do!"
	line "What have you and"
	para "your grandpa done"
	line "for the drought?"

	
	para "I owe the future"
	line "a way to actually"
	cont "solve problems."
	
	para "Hey, I'll start"
	line "by getting you"
	cont "out of here!"
	done

DanceTheatreOstene1Text:
	text "Isn't this show"
	line "boring?"
	
	para "It needs to be"
	line "brought back "
	cont "to life."
	
	para "We at Silph are"
	line "imagining better"
	cont "futures."
	
	para "Like <RIVAL>'s new"
	line "distillation"
	cont "method!"
	done
	
RivalTheatreAfterBattleText:
	text "With Silph's help"
	line "I'm going to res-"
	cont "tore balance."
	
	para "So stay out of"
	line "my way."
	done

DanceTheatreSilphText:
	text "We at Silph"
	line "think Ostene"
	cont "can draw some"
	cont "big crowds."
	done


DanceTheatreKurtScript: ; will this work?....
	faceplayer
	opentext
	writetext DanceTheatreKurtText
	yesorno
	iffalse .Jump
	winlosstext DanceTheatreKurtBattleText, DanceTheatreKurtBattleText
	loadtrainer KURT, KURT5 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext DanceTheatreKurtBattleText2

.Jump
	jumpopenedtext KurtDanceTheatreText2
	promptbutton
	end
	
KurtDanceTheatreText2:
	text "Maybe the Kimono"
	line "Girls will have"
	cont "an idea how to"
	para "summon Celebi to"
	line "go back in time."
	
	para "Oh, I noticed"
	line "<RIVAL> is here."
	done

DanceTheatreKurtBattleText:
	text "Excellent!"
	done

DanceTheatreKurtBattleText2:
	text "We can battle as"
	line "many times as"
	cont "you like."
	done

	
DanceTheatreKurtText:
	text "<PLAYER> - "
	
	line "the Kimono Girls"
	cont "are excellent"
	cont "battlers."
	
	para "Want to practice?"
	done

DanceTheatreNPC1Text:
	text "This show is so"
	line "immersive!"
	done



TheatreElderScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_KIMONO_GIRL_AKARI
	iftrue_jumpopenedtext TheatreElderThanksYou
	writetext TheatreElderExplainsText
	yesorno
	iffalse_jumpopenedtext DanceTheatre_MaybeLater
	writetext DanceTheatre_GoodLuck
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	clearevent EVENT_BEAT_KIMONO_GIRL_NAOKO
	clearevent EVENT_BEAT_KIMONO_GIRL_SAYO
	clearevent EVENT_BEAT_KIMONO_GIRL_ZUKI
	clearevent EVENT_BEAT_KIMONO_GIRL_IZUMI
	clearevent EVENT_BEAT_KIMONO_GIRL_KUNI
	clearevent EVENT_BEAT_KIMONO_GIRL_MIKI
	warp DANCE_THEATRE_2F, 0, 2
	end	

DanceTheatre_MaybeLater:
	text "Some other time."
	done

DanceTheatre_GoodLuck:
	text "Enjoy the show!"
	done

TheatreElderThanksYou:
	text "Congratulations!"
	
	para "Akari invites you"
	line "to an epilogue at"
	cont "Bellchime Trail."
	done
	
TheatreElderExplainsText:
	text "We have a very"
	line "immersive dance"
	cont "these days."
	
	para "The Kimono Girls"
	line "battle you back"
	cont "to back, "
	
		
	para "delivering the "
	line "story of how"
	para "Johto's unique"
	line "traditions were"
	cont "kept alive."
	done
	