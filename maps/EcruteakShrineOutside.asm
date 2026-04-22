EcruteakShrineOutside_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  3, ECRUTEAK_SHRINE_INSIDE, 1
	warp_event  4, 12, ECRUTEAK_CITY, 4
	warp_event  5, 12, ECRUTEAK_CITY, 4
	warp_event  6, 12, ECRUTEAK_CITY, 5
	warp_event  7, 12, ECRUTEAK_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  3,  8, BGEVENT_JUMPTEXT, EcruteakShrineOutsideStatueText
	bg_event  8,  8, BGEVENT_JUMPTEXT, EcruteakShrineOutsideStatueText

	def_object_events
	object_event  8,  4, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakShrineOutsideTwinText, -1
	object_event  2, 10, SPRITE_SAGE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakShrineOutsideSageText, -1
	object_event  5,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakPhotoStudioFishingGuruScript, -1
	object_event  8, 10, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_ECRUTEAK_BATTLE, -1
	object_event  6, 10, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakShrineOutsideSchoolGirlText, -1
	object_event  2,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakShrineRadiantOpalScript, -1 ; apricorn trader 


EcruteakShrineOutsideTwinText:
	text "My #mon's"
	line "Foresight helps"
	cont "shoo away ghosts."
	done


EcruteakShrineOutsideSageText:
	text "On New Year's Eve,"
	line "people visit this"

	para "shrine and make"
	line "wishes for their"
	cont "future."
	done

EcruteakShrineOutsideStatueText:
	text "A #mon statue!"

	para "It looks very"
	line "serene."
	done

EcruteakPhotoStudioFishingGuruScript:
	faceplayer
	opentext
	checkflag ENGINE_DAILY_PHOTOGRAPH
	iftrue_jumpopenedtext PhotoStudioAlreadyDoneText
	writetext PhotoStudioGreetingText
	yesorno
	iffalse_jumpopenedtext PhotoStudioRefusedText
	writetext PhotoStudioWhichMonText
	promptbutton
	special Special_CianwoodPhotograph
	ifequal $0, .NoPicture
	ifequal $1, .EggPicture
	setflag ENGINE_DAILY_PHOTOGRAPH
	writetext PhotoStudioHoldStillText
	waitbutton
	closetext
	special FadeOutPalettes
	special LoadMapPalettes
	pause 10
	playsound SFX_DOUBLE_SLAP
	waitsfx
	pause 10
	special FadeInPalettes
	readmem wCurPartySpecies
	pokepic 0
	cry 0
	waitsfx
	closepokepic
	opentext
	writetext PhotoStudioPrestoText
	special PlayCurMonCry
	waitbutton
	jumpthisopenedtext

	text "Come again, OK?"
	done

.NoPicture:
	jumpopenedtext PhotoStudioNoPictureText

.EggPicture:
	jumpopenedtext PhotoStudioEggPictureText

PhotoStudioGreetingText:
	text "Step right up!"

	para "Get your memories"
	line "frozen in time!"
	done

PhotoStudioWhichMonText:
	text "OK! Big smile now!"

	para "Which #mon"
	line "should I photo-"
	cont "graph?"
	done

PhotoStudioHoldStillText:
	text "All righty. Hold"
	line "still for a bit."
	done

PhotoStudioPrestoText:
	text "Presto! All done."

	para "Your "
	text_ram wStringBuffer3
	line "looks happier!"
	done

PhotoStudioAlreadyDoneText:
	text "I've already taken"
	line "a photo for you"
	cont "today."

	para "Come back again"
	line "tomorrow."
	done

PhotoStudioRefusedText:
	text "Oh, that's too"
	line "bad. I thought it"

	para "would be a great"
	line "memento…"
	done

PhotoStudioNoPictureText:
	text "Oh, no picture?"
	line "Come again, OK?"
	done

PhotoStudioEggPictureText:
	text "An Egg? My talent"
	line "is worth more…"
	done

EcruteakShrineOutsideSchoolGirlText:
	text "I got a photo"
	line "and a cool battle"
	cont "item to remember"
	cont "my time here!"
	done

EcruteakShrineRadiantOpalScript:
	faceplayer
	opentext
	writetext PearlForRadiantOpalText ;;
	waitbutton
	checkitem BIG_PEARL
	iffalse .NoBigPearl
	writetext PearlForRadiantOpalQuestionText ;;
	yesorno
	iffalse .NoBigPearl
	takeitem BIG_PEARL
	giveapricorn RADIANT_OPAL, 5 ; ez mode
	jumpopenedtext PearlForRadiantOpalEndText ;;

.NoBigPearl
	jumpopenedtext NoPearlForRadiantOpalText ;;

PearlForRadiantOpalText:
	text "I practice the"
	line "ancient art of"
	cont "alchemy!"
	
	para "I turn ordinary"
	line "BIG PEARLs into"
	cont "Radiant Opals."
	done

PearlForRadiantOpalQuestionText:
	text "Would you like"
	line "me to do so, as"
	cont "a souvenir of"
	para "your time in "
	line "Ecruteak?"
	done

PearlForRadiantOpalEndText:
	text "<PLAYER> got 5"
	line "Radiant Opals."
	para "Enjoy your stay,"
	line "and buy more "
	cont "merchandise to"
	para "support the"
	line "temple!"
	done

NoPearlForRadiantOpalText:
	text "Oh, you don't"
	line "have any."
	done
	