NationalPark_MapScriptHeader: 
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 35, 18, ROUTE_36_NATIONAL_PARK_GATE, 1
	warp_event 35, 19, ROUTE_36_NATIONAL_PARK_GATE, 2
	warp_event 12, 47, ROUTE_35_NATIONAL_PARK_GATE, 1
	warp_event 13, 47, ROUTE_35_NATIONAL_PARK_GATE, 2

	def_coord_events
	coord_event 18, 36, 0, NationalParkTradeScene
	coord_event 19, 36, 0, NationalParkTradeScene
	coord_event 18, 38, 0, NationalParkTradeScene
	coord_event 19, 38, 0, NationalParkTradeScene	
	
	; n and s of the picnicker 

	def_bg_events
	bg_event 16, 44, BGEVENT_JUMPTEXT, NationalParkRelaxationSquareText
	bg_event 29, 31, BGEVENT_JUMPTEXT, NationalParkBattleNoticeText
	bg_event 14,  4, BGEVENT_JUMPTEXT, NationalParkTrainerTipsText
	bg_event  8, 47, BGEVENT_ITEM + FULL_HEAL, EVENT_NATIONAL_PARK_HIDDEN_FULL_HEAL

	def_object_events
	object_event  19, 37, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ThirstyCamperScript, -1
	object_event 17, 24, SPRITE_PICNICKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, NationalParkLassText, -1 ; ok
	object_event 16,  4, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NationalParkPokefanFText, -1 ; ok
	object_event 29, 40, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NationalParkTeacher1Script, -1 ; ok
	object_event 28,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NationalParkGameboyKidScript, -1 ; ok
	object_event 11, 24, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerSchoolboyJohnny, -1 ; ok
	object_event 19, 41, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, NationalParkTeacher2Text, -1 ; ok
	pokemon_event 28, 40, PERSIAN, -1, -1, PAL_NPC_BROWN, NationalParkPersianText, -1
	object_event 20, 29, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerPokefanfBeverly1, -1
	object_event 18,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerPokefanmWilliam, -1
	object_event 10, 14, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerLassKrise, -1
	object_event 28, 13, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBugManiacLou, -1
;	object_event  4, 19, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OfficermKeithScript, -1
	itemball_event 37, 12, SHINY_STONE, 1, EVENT_NATIONAL_PARK_SHINY_STONE
	itemball_event 37, 21, DESTINY_KNOT, 1, EVENT_NATIONAL_PARK_DESTINY_KNOT
	tmhmball_event  3, 43, TM_DIG, EVENT_NATIONAL_PARK_TM_DIG
    object_event 20, 44, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NationalParkWhtApricornScript, -1

	object_const_def
	const NATIONAL_PARK_PICNICKER

NationalParkTradeScene:
	showemote EMOTE_HAPPY, NATIONAL_PARK_PICNICKER, 30
	setscene $1 
	end

NationalParkTeacher1Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_QUICK_CLAW
	iftrue UnknownScript_0x5c01d
	writetext NationalParkTeacher1Text
	promptbutton
	verbosegiveitem QUICK_CLAW
	iffalse UnknownScript_0x5c021
	setevent EVENT_GOT_QUICK_CLAW
UnknownScript_0x5c01d:
	writetext NationalParkTeacher1Text_GotQuickClaw
	waitbutton
UnknownScript_0x5c021:
	endtext

OfficermKeithScript: ; ACTUALY DIRK
	checktime 1 << NITE
	iffalse_jumptextfaceplayer OfficermKeithDaytimeText
	checkevent EVENT_BEAT_OFFICERM_DIRK
	iftrue_jumptextfaceplayer OfficermKeithAfterText
	faceplayer
	opentext
	special SaveMusic
	playmusic MUSIC_OFFICER_ENCOUNTER
	writetext OfficermKeithSeenText
	waitbutton
	closetext
	winlosstext OfficermKeithWinText, 0
	loadtrainer OFFICERM, DIRK
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_OFFICERM_KEITH
	endtext

GenericTrainerBugManiacLou:
	generictrainer BUG_MANIAC, LOU, EVENT_BEAT_BUG_MANIAC_LOU, BugManiacLouSeenText, BugManiacLouBeatenText

	text "My girlfriend"
	line "wanted to go camp-"
	para "ing, but she is"
	line "so squeamish of"
	cont "bug #mon."
	done
	
GenericTrainerSchoolboyJohnny:
	generictrainer SCHOOLBOY, JOHNNY, EVENT_BEAT_SCHOOLBOY_JOHNNY, SchoolboyJohnnySeenText, SchoolboyJohnnyBeatenText

	text "I need more"
	line "experiments."
	done

NationalParkGameboyKidScript:
    faceplayer
    opentext
    checkevent EVENT_YELLOW_FOREST_TM_LEECH_LIFE
    iftrue .AlreadyGotTM
    writetext GameboyKidComplainText
    promptbutton
    verbosegivetmhm TM_LEECH_LIFE
    setevent EVENT_YELLOW_FOREST_TM_LEECH_LIFE
    jumptext GameboyKidGaveTMText
.AlreadyGotTM
    jumptext GameboyKidAfterText


GameboyKidComplainText:
    text "Ugh!"
    line "These bugs keep"
    cont "biting me!"
	
    para "I'm trying to"
    line "beat this level,"
    para "but I can't"
    line "focus!"
	
    para "Hey, you're a"
    line "#mon trainer,"
    para "right? Take"
    line "this!"
    done

GameboyKidGaveTMText:
    text "That's Leech"
    line "Life. Give those"
    para "bugs a taste of"
    line "their own"
    cont "medicine!"
    done

GameboyKidAfterText:
    text "The bugs aren't"
    line "as bad now."

    para "Maybe they"
    line "learned their"
    cont "lesson?"
    done

GameboyKidBagFullText:
    text "Your bag is full."
    done

GenericTrainerPokefanmWilliam:
	generictrainer POKEFANM, WILLIAM, EVENT_BEAT_POKEFANM_WILLIAM, PokefanmWilliamSeenText, PokefanmWilliamBeatenText

	text "I lost the battle,"
	line "but my #mon win"

	para "the prize for"
	line "being most lovely."
	done

TrainerPokefanfBeverly1:
	trainer POKEFANF, BEVERLY1, EVENT_BEAT_POKEFANF_BEVERLY, PokefanfBeverly1SeenText, PokefanfBeverly1BeatenText, 0, PokefanfBeverly1Script

PokefanfBeverly1Script:
	loadvar VAR_CALLERID, PHONE_POKEFAN_BEVERLY
	opentext
	checkflag ENGINE_BEVERLY_HAS_NUGGET
	iftrue UnknownScript_0x5c177
	checkcellnum PHONE_POKEFAN_BEVERLY
	iftrue UnknownScript_0x5c19b
	checkpoke MARILL
	iffalse UnknownScript_0x5c189
	checkevent EVENT_BEVERLY_ASKED_FOR_PHONE_NUMBER
	iftrue UnknownScript_0x5c160
	writetext PokefanBeverlyCuteMonText
	promptbutton
	setevent EVENT_BEVERLY_ASKED_FOR_PHONE_NUMBER
	scall UnknownScript_0x5c18f
	sjump UnknownScript_0x5c163

UnknownScript_0x5c160:
	scall UnknownScript_0x5c193
UnknownScript_0x5c163:
	askforphonenumber PHONE_POKEFAN_BEVERLY
	ifequal $1, UnknownScript_0x5c1a3
	ifequal $2, UnknownScript_0x5c19f
	gettrainername POKEFANF, BEVERLY1, $0
	scall UnknownScript_0x5c197
	sjump UnknownScript_0x5c19b

UnknownScript_0x5c177:
	scall UnknownScript_0x5c1a7
	verbosegiveitem NUGGET
	iffalse UnknownScript_0x5c186
	clearflag ENGINE_BEVERLY_HAS_NUGGET
	sjump UnknownScript_0x5c19b

UnknownScript_0x5c186:
	sjump UnknownScript_0x5c1ab

UnknownScript_0x5c189:
	jumpopenedtext PokefanFBeverlyMarillFriendText

UnknownScript_0x5c18f:
	jumpstd asknumber1f

UnknownScript_0x5c193:
	jumpstd asknumber2f

UnknownScript_0x5c197:
	jumpstd registerednumberf

UnknownScript_0x5c19b:
	jumpstd numberacceptedf

UnknownScript_0x5c19f:
	jumpstd numberdeclinedf

UnknownScript_0x5c1a3:
	jumpstd phonefullf

UnknownScript_0x5c1a7:
	jumpstd giftf

UnknownScript_0x5c1ab:
	jumpstd packfullf

GenericTrainerLassKrise:
	generictrainer LASS, KRISE, EVENT_BEAT_LASS_KRISE, LassKriseSeenText, LassKriseBeatenText

	text "I thought you were"
	line "staring at me"
	cont "because I'm cute!"
	done

NationalParkLassText:
	text "I decorated my"
	line "#mon to be"
	cont "just like Whitney!"	
	done

NationalParkPokefanFText:
	text "Whitney comes off"
	line "as kinda fake."
	
	para "But maybe it's"
	line "just me?"	
	done

NationalParkTeacher1Text:
	text "I've been a tea-"
	line "cher for many"
	cont "years, but I"
	
	para "can still keep"
	line "up! How?"
	
	para "With this Quick"
	line "Claw!"
	done

NationalParkTeacher1Text_GotQuickClaw:
	text "Let a #mon hold"
	line "that Quick Claw."

	para "Sometimes it will"
	line "strike first"
	cont "during battle."
	done

SchoolboyJohnnySeenText:
	text "Look what I"
	line "learned!"
	done

SchoolboyJohnnyBeatenText:
	text "I need to do"
	line "more experiments."
	done

NationalParkTeacher2Text:
	text "The drought has"
	line "caused the water"
	para "to be shut off"
	line "from the fountain."
	
	para "But I heard that"
	line "Falkner may have"
	para "some way to get"
	line "more water."
	done

NationalParkPersianText:
	text "Persian: Fufushaa!"
	done

PokefanfBeverly1SeenText:
	text "My #mon are"
	line "simply darling."

	para "Let me tell you"
	line "how proud my"
	cont "darlings make me."
	done

PokefanfBeverly1BeatenText:
	text "I can beat you in"
	line "pride, but…"
	done

PokefanBeverlyCuteMonText:
	text "I must say, your"
	line "#mon are quite"
	cont "cute, too."
	done

PokefanmWilliamSeenText:
	text "We adore our #-"
	line "mon, even if they"
	cont "dislike us."

	para "That's what being"
	line "a fan is about."
	done

PokefanmWilliamBeatenText:
	text "M-my #mon!"
	done

PokefanFBeverlyMarillFriendText:
	text "My friend keeps a"
	line "Marill!"

	para "I find them very"
	line "endearing."

	para "Oh, I wish for a"
	line "Marill of my own…"
	done

LassKriseSeenText:
	text "Hello? Why are you"
	line "staring at me?"

	para "Oh, a battle?"
	done

LassKriseBeatenText:
	text "…Hmmm…"
	done

BugManiacLouSeenText:
	text "Arg, I can't"
	line "get this tent set"
	cont "up myself!"
	
	para "I'll take it out"
	line "on you!"
	done

BugManiacLouBeatenText:
	text "Could you at"
	line "least help me"
	cont "with the spokes?"
	done

OfficermKeithSeenText:
	text "Halt! What are"
	line "you doing out"
	cont "this late?"
	done

OfficermKeithWinText:
	text "You know how to"
	line "defend yourself!"
	done

OfficermKeithAfterText:
	text "The park stays"
	line "open at night,"

	para "because Officers"
	line "like me keep it"
	cont "safe!"
	done

OfficermKeithDaytimeText:
	text "Enjoying the"
	line "park, are you?"

	para "Always take a"
	line "#mon with you"

	para "if you go in the"
	line "tall grass!"
	done

NationalParkRelaxationSquareText:
	text "Relaxation Square"
	line "National Park"
	done

NationalParkBattleNoticeText:
	text "What is this"
	line "notice?"

	para "Please battle only"
	line "in the grass."

	para "National Park"
	line "Warden's Office"
	done

NationalParkTrainerTipsText:
	text "Trainer Tips"

	para "#mon become"
	line "happier from"

	para "haircuts, bless-"
	line "ings, photographs,"
	cont "and other treats."
	done



ThirstyCamperScript:
	faceplayer
	opentext
	checkevent EVENT_TRADED_BRICK_PIECE
	iftrue_jumpopenedtext GiveBrickPieceText
	writetext ThirstyCamperIntroText
	waitbutton
	checkkeyitem LEMONADE_K
	iffalse_jumpopenedtext Text_NoLemonade
	writetext Text_LemonadeQuestion
	yesorno
	iffalse_jumpopenedtext Text_NoLemonade
	takekeyitem LEMONADE_K
	verbosegivekeyitem BRICK_PIECE_K
	setevent EVENT_TRADED_BRICK_PIECE
	jumpopenedtext GiveBrickPieceText

GiveBrickPieceText:
	text "Hope you find a"
	line "good use for that"
	cont "old Brick Piece."
	
	para "Seems historic."
	done

Text_NoLemonade:
	text "You don't have"
	line "any Lemonade?"

	para "That's too bad."
	line "I'm so thirsty."
	done

ThirstyCamperIntroText:
	text "Whew! Setting up"
	line "this tent really"
	cont "got me thirsty."
	done

Text_LemonadeQuestion:
	text "Hey, you wouldn't"
	line "happen to have a"
	para "Lemonade, would"
	line "you?"

	para "I found this old"
	line "Brick Piece while"
	para "digging. I'll"
	line "trade you for it!"
	done


NationalParkWhtApricornScript:
	faceplayer
	opentext
	writetext PearlForWhtApricornText
	waitbutton
	checkitem BIG_PEARL
	iffalse .NoBigPearl
	writetext PearlForWhtApricornQuestionText
	yesorno
	iffalse .NoBigPearl
	takeitem BIG_PEARL
	giveapricorn WHT_APRICORN, 5
	jumpopenedtext PearlForWhtApricornEndText

.NoBigPearl
	jumpopenedtext NoPearlForWhtApricornText

PearlForWhtApricornText:
	text "I wanted to make"
	line "pearl jewelry, "
	para "but all I have"
	line "are these white"
	cont "apricorns."
	done

PearlForWhtApricornQuestionText:
	text "Do you have a"
	line "big pearl? I'll"
	cont "trade you!"
	done

PearlForWhtApricornEndText:
	text "<PLAYER> got 5"
	line "WHT APRICORN."
	
	para "Thanks! Now I "
	line "can make my "
	cont "jewelry!"
	done

NoPearlForWhtApricornText:
	text "You can find big"
	line "pearls just by "
	cont "fishing anywhere."
	done
