const_value set 2
	const FASTSHIPB1F_SAILOR1
	const FASTSHIPB1F_SAILOR2
	const FASTSHIPB1F_SAILOR3
	const FASTSHIPB1F_LASS
	const FASTSHIPB1F_SUPER_NERD
	const FASTSHIPB1F_SAILOR4
	const FASTSHIPB1F_FISHER
	const FASTSHIPB1F_BLACK_BELT
	const FASTSHIPB1F_SAILOR5
	const FASTSHIPB1F_TEACHER
	const FASTSHIPB1F_YOUNGSTER1
	const FASTSHIPB1F_YOUNGSTER2

FastShipB1F_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	dw UnknownScript_0x7673a, 0
	dw UnknownScript_0x7673b, 0

.MapCallbacks:
	db 0

UnknownScript_0x7673a:
	end

UnknownScript_0x7673b:
	end

UnknownScript_0x7673c:
	checkevent EVENT_FAST_SHIP_B1F_SAILOR_RIGHT
	iftrue UnknownScript_0x76766
	applymovement FASTSHIPB1F_SAILOR2, MovementData_0x76876
	moveperson FASTSHIPB1F_SAILOR1, $1a, $4
	appear FASTSHIPB1F_SAILOR1
	pause 5
	disappear FASTSHIPB1F_SAILOR2
	end

UnknownScript_0x76751:
	checkevent EVENT_FAST_SHIP_B1F_SAILOR_LEFT
	iftrue UnknownScript_0x76766
	applymovement FASTSHIPB1F_SAILOR1, MovementData_0x76871
	moveperson FASTSHIPB1F_SAILOR2, $1b, $4
	appear FASTSHIPB1F_SAILOR2
	pause 5
	disappear FASTSHIPB1F_SAILOR1
	end

UnknownScript_0x76766:
	end

SailorScript_0x76767:
	faceplayer
	opentext
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue UnknownScript_0x767a0
	checkevent EVENT_FAST_SHIP_LAZY_SAILOR
	iftrue UnknownScript_0x7678d
	checkevent EVENT_FAST_SHIP_INFORMED_ABOUT_LAZY_SAILOR
	iftrue UnknownScript_0x76787
	writetext UnknownText_0x7687b
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_INFORMED_ABOUT_LAZY_SAILOR
	clearevent EVENT_FAST_SHIP_CABINS_NNW_NNE_NE_SAILOR
	end

UnknownScript_0x76787:
	writetext UnknownText_0x76907
	waitbutton
	closetext
	end

UnknownScript_0x7678d:
	writetext UnknownText_0x7692e
	checkevent EVENT_FAST_SHIP_FOUND_GIRL
	iffalse UnknownScript_0x76799
	waitbutton
	closetext
	end

UnknownScript_0x76799:
	buttonsound
	writetext UnknownText_0x7696d
	waitbutton
	closetext
	end

UnknownScript_0x767a0:
	writetext UnknownText_0x7699d
	waitbutton
	closetext
	end

TrainerSailorJeff:
	trainer EVENT_BEAT_SAILOR_JEFF, SAILOR, JEFF, SailorJeffSeenText, SailorJeffBeatenText, 0, SailorJeffScript

SailorJeffScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x76a38
	waitbutton
	closetext
	end

TrainerPicnickerDebra:
	trainer EVENT_BEAT_PICNICKER_DEBRA, PICNICKER, DEBRA, PicnickerDebraSeenText, PicnickerDebraBeatenText, 0, PicnickerDebraScript

PicnickerDebraScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x76a99
	waitbutton
	closetext
	end

TrainerJugglerFritz:
	trainer EVENT_BEAT_JUGGLER_FRITZ, JUGGLER, FRITZ, JugglerFritzSeenText, JugglerFritzBeatenText, 0, JugglerFritzScript

JugglerFritzScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x76b02
	waitbutton
	closetext
	end

TrainerSailorGarrett:
	trainer EVENT_BEAT_SAILOR_GARRETT, SAILOR, GARRETT, SailorGarrettSeenText, SailorGarrettBeatenText, 0, SailorGarrettScript

SailorGarrettScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x76b7a
	waitbutton
	closetext
	end

TrainerFisherJonah:
	trainer EVENT_BEAT_FISHER_JONAH, FISHER, JONAH, FisherJonahSeenText, FisherJonahBeatenText, 0, FisherJonahScript

FisherJonahScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x76c22
	waitbutton
	closetext
	end

TrainerBlackbeltWai:
	trainer EVENT_BEAT_BLACKBELT_WAI, BLACKBELT_T, WAI, BlackbeltWaiSeenText, BlackbeltWaiBeatenText, 0, BlackbeltWaiScript

BlackbeltWaiScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x76c9e
	waitbutton
	closetext
	end

TrainerSailorKenneth:
	trainer EVENT_BEAT_SAILOR_KENNETH, SAILOR, KENNETH, SailorKennethSeenText, SailorKennethBeatenText, 0, SailorKennethScript

SailorKennethScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x76d5f
	waitbutton
	closetext
	end

TrainerTeacherShirley:
	trainer EVENT_BEAT_TEACHER_SHIRLEY, TEACHER, SHIRLEY, TeacherShirleySeenText, TeacherShirleyBeatenText, 0, TeacherShirleyScript

TeacherShirleyScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x76de1
	waitbutton
	closetext
	end

TrainerSchoolboyNate:
	trainer EVENT_BEAT_SCHOOLBOY_NATE, SCHOOLBOY, NATE, SchoolboyNateSeenText, SchoolboyNateBeatenText, 0, SchoolboyNateScript

SchoolboyNateScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x76e3d
	waitbutton
	closetext
	end

TrainerSchoolboyRicky:
	trainer EVENT_BEAT_SCHOOLBOY_RICKY, SCHOOLBOY, RICKY, SchoolboyRickySeenText, SchoolboyRickyBeatenText, 0, SchoolboyRickyScript

SchoolboyRickyScript:
	end_if_just_battled
	opentext
	writetext UnknownText_0x76eb6
	waitbutton
	closetext
	end

MovementData_0x76871:
	fix_facing
	big_step_right
	remove_fixed_facing
	turn_head_down
	step_end

MovementData_0x76876:
	fix_facing
	big_step_left
	remove_fixed_facing
	turn_head_down
	step_end

UnknownText_0x7687b:
	text "Hey, kid. Could I"
	line "get you to look"
	cont "for my buddy?"

	para "He's goofing off"
	line "somewhere, that"
	cont "lazy bum!"

	para "I want to go find"
	line "him, but I'm on"
	cont "duty right now."
	done

UnknownText_0x76907:
	text "Oh, gee…"

	para "The Captain will"
	line "be furious…"
	done

UnknownText_0x7692e:
	text "Thanks, kid!"
	line "I chewed him out"

	para "good so he'll quit"
	line "slacking off!"
	done

UnknownText_0x7696d:
	text "A little girl?"

	para "I may have seen"
	line "her go by here."
	done

UnknownText_0x7699d:
	text "The dining room is"
	line "up ahead."

	para "The stairs at the"
	line "end lead to the"
	cont "Captain's cabin."
	done

SailorJeffSeenText:
	text "Nothing beats a"
	line "battle when I'm"
	cont "on my break."
	done

SailorJeffBeatenText:
	text "Win or lose, my"
	line "break's over!"
	done

UnknownText_0x76a38:
	text "I guess I can't"
	line "win if I don't get"
	cont "serious."
	done

PicnickerDebraSeenText:
	text "I'm so bored."
	line "Want to battle?"
	done

PicnickerDebraBeatenText:
	text "Yow! You're too"
	line "strong!"
	done

UnknownText_0x76a99:
	text "Saffron, Celadon…"
	line "I hear there are"

	para "many big cities"
	line "in Kanto."
	done

JugglerFritzSeenText:
	text "Urrf…"
	line "I'm seasick!"
	done

JugglerFritzBeatenText:
	text "I can't move any-"
	line "more…"
	done

UnknownText_0x76b02:
	text "No more ships for"
	line "me. Next time,"

	para "I'm taking the"
	line "Magnet Train."
	done

SailorGarrettSeenText:
	text "This is where we"
	line "sailors work!"
	done

SailorGarrettBeatenText:
	text "I lost on my home"
	line "field…"
	done

UnknownText_0x76b7a:
	text "We get different"
	line "passengers from"

	para "Vermilion City to"
	line "Olivine City."
	done

FisherJonahSeenText:
	text "Even though we're"
	line "out on the sea, I"
	cont "can't fish!"

	para "This is boring!"
	line "Let's battle!"
	done

FisherJonahBeatenText:
	text "I… I'm not bored"
	line "anymore…"
	done

UnknownText_0x76c22:
	text "I plan to fish off"
	line "Vermilion's pier."
	done

BlackbeltWaiSeenText:
	text "I'm building up my"
	line "legs by bracing"

	para "against the ship's"
	line "rocking!"
	done

BlackbeltWaiBeatenText:
	text "Rocked and rolled"
	line "over!"
	done

UnknownText_0x76c9e:
	text "I couldn't find"
	line "the Karate King in"
	cont "Johto."

	para "He's supposed to"
	line "be training in a"
	cont "cave somewhere."
	done

SailorKennethSeenText:
	text "I'm a sailor man!"

	para "But I'm training"
	line "#mon, so I can"
	cont "become the Champ!"
	done

SailorKennethBeatenText:
	text "My lack of train-"
	line "ing is obvious…"
	done

UnknownText_0x76d5f:
	text "Eight Badges!"
	line "They must prove"

	para "that you've beaten"
	line "Gym Leaders."

	para "No wonder you're"
	line "so good!"
	done

TeacherShirleySeenText:
	text "Don't lay a finger"
	line "on my students!"
	done

TeacherShirleyBeatenText:
	text "Aaack!"
	done

UnknownText_0x76de1:
	text "We're on a field"
	line "trip to the ruins"
	cont "outside Violet."
	done

SchoolboyNateSeenText:
	text "Do you know the"
	line "Ruins of Alph?"
	done

SchoolboyNateBeatenText:
	text "Yaargh!"
	done

UnknownText_0x76e3d:
	text "Radios pick up"
	line "strange signals"
	cont "inside the ruins."
	done

SchoolboyRickySeenText:
	text "There are some odd"
	line "stone panels in"
	cont "the Ruins of Alph."
	done

SchoolboyRickyBeatenText:
	text "I was done in!"
	done

UnknownText_0x76eb6:
	text "I read that there"
	line "are four of those"
	cont "stone panels."
	done

FastShipB1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $9, $1, 11, FAST_SHIP_1F
	warp_def $b, $1b, 12, FAST_SHIP_1F

.XYTriggers:
	db 2
	xy_trigger 0, $5, $1a, $0, UnknownScript_0x7673c, $0, $0
	xy_trigger 0, $5, $1b, $0, UnknownScript_0x76751, $0, $0

.Signposts:
	db 0

.PersonEvents:
	db 12
	person_event SPRITE_SAILOR, 4, 26, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SailorScript_0x76767, EVENT_FAST_SHIP_B1F_SAILOR_LEFT
	person_event SPRITE_SAILOR, 4, 27, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SailorScript_0x76767, EVENT_FAST_SHIP_B1F_SAILOR_RIGHT
	person_event SPRITE_SAILOR, 9, 5, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 3, TrainerSailorJeff, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	person_event SPRITE_LASS, 2, 2, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 1, TrainerPicnickerDebra, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	person_event SPRITE_SUPER_NERD, 7, 22, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 1, TrainerJugglerFritz, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	person_event SPRITE_SAILOR, 2, 13, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 4, TrainerSailorGarrett, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	person_event SPRITE_FISHER, 6, 21, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerFisherJonah, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	person_event SPRITE_BLACK_BELT, 9, 11, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_TRAINER, 3, TrainerBlackbeltWai, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	person_event SPRITE_SAILOR, 2, 19, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 4, TrainerSailorKenneth, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	person_event SPRITE_TEACHER, 9, 5, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 3, TrainerTeacherShirley, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	person_event SPRITE_YOUNGSTER, 7, 10, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 1, TrainerSchoolboyNate, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	person_event SPRITE_YOUNGSTER, 9, 10, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TRAINER, 1, TrainerSchoolboyRicky, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
