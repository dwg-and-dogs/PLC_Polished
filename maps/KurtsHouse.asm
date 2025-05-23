KurtsHouse_MapScriptHeader:
	def_scene_scripts
	scene_script KurtsHouseIntroTrigger

	def_callbacks

	def_warp_events
	warp_event  3,  7, AZALEA_TOWN, 4
	warp_event  4,  7, AZALEA_TOWN, 4
	
	def_coord_events


	def_bg_events
	bg_event  6,  1, BGEVENT_JUMPSTD, radio2 
	bg_event  8,  0, BGEVENT_JUMPTEXT, KurtsHouseOakPhotoText
	bg_event  9,  0, BGEVENT_JUMPTEXT, KurtsHouseOakPhotoText
	bg_event  5,  1, BGEVENT_READ, PokemonJournalProfWestwoodScript
	bg_event  2,  1, BGEVENT_READ, PokemonJournalProfWestwoodScript
	bg_event  3,  1, BGEVENT_READ, PokemonJournalProfWestwoodScript
	bg_event 14,  2, BGEVENT_READ, ApricornBenchScript
	bg_event  4,  1, BGEVENT_JUMPTEXT, KurtsHouseCelebiStatueText

	def_object_events
	object_event    6,  3, SPRITE_KURT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtHouseScript, EVENT_KURTS_HOUSE_KURT_0 ;
	object_event  7,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IlexExcelsiorV5Script, EVENT_KURTS_HOUSE_NOTEBOOK
	object_event  8,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FiddlerBookScript, -1	
	pokemon_event  14,  4, SHUCKLE, -1, -1, PAL_NPC_RED, KurtsHouseShuckleText, -1


	object_const_def
	const KURTSHOUSE_KURT
	const KURTSHOUSE_NOTEBOOK
	
KurtsHouseIntroTrigger:
	sdefer KurtsHouseScript1
	end
	
KurtsHouseScript1:
	playmusic MUSIC_PROF_OAK
	pause 30
	disappear KURTSHOUSE_NOTEBOOK
	setevent EVENT_KURTS_HOUSE_NOTEBOOK
	applymovement PLAYER, .kurts_house_player_moves_down
	applymovement KURTSHOUSE_KURT, .kurt_walks_to_you
	sjump KurtHouseEventScript

.kurts_house_player_moves_down:
	step_down
	turn_head_left
	step_end

.kurt_walks_to_you:
	step_up
	turn_head_right
	step_end

KurtHouseEventScript:
	opentext
	writetext KurtIntroText
	promptbutton
	getstring GearName, $1
	callstd receiveitem
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	addcellnum PHONE_MOM
	setscene $1 ; this should keep the event from playing in a loop?
	setevent EVENT_KURTS_HOUSE_KURT_0 ; changed from mom
	clearevent EVENT_PLAYERS_HOUSE_KURT_2 ; may not need this line? 
	promptbutton
	writetext MomPokegearText
	promptbutton
	special Special_SetDayOfWeek
.InitialSetDSTFlag:
	writetext MomDSTText
	yesorno
	iffalse .NotDST
	special Special_InitialSetDSTFlag
	yesorno
	iffalse .InitialSetDSTFlag
	sjump .InitializedDSTFlag
.NotDST:
	special Special_InitialClearDSTFlag
	yesorno
	iffalse .InitialSetDSTFlag
.InitializedDSTFlag:
	writetext MomRunningShoesText
	yesorno
	iftrue .NoInstructions
	writetext MomInstructionsText
	promptbutton
.NoInstructions:
	promptbutton
	givekeyitem APRICORN_BOX
	writetext KurtOutroText0
	promptbutton
	special SpecialNameRival
	writetext KurtOutroText	
	waitbutton
	closetext
	applymovement KURTSHOUSE_KURT, .kurt_walks_back
	disappear KURTSHOUSE_KURT
	special RestartMapMusic
	end

.kurt_walks_back:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

KurtIntroText: 
	text "Oh, <PLAYER>!"
	line "It's almost time."
	
	para "Before we go, I"
	line "want to give you"
	cont "a some gifts."
	done
	
KurtShuckleText:
	text "First of all, a"
	line "mighty Shuckle!"
	
	para "It will be with"
	line "you through"
	cont "anything."
	done

MomPokegearText:
	text "#mon Gear, or"
	line "just #gear."

	para "It's essential if"
	line "you want to be a"
	cont "good trainer."
	
	para "I also threw in"
	line "a new Apricorn"
	cont "box."
	
	para "You can use that"
	line "Apricorn kit at"
	cont "any bench."
	
	para "You're getting so"
	line "good. I think you"
	cont "could fashion a"
	cont "ball from almost"
	cont "anything!"

	para "Oh, the day of the"
	line "week isn't set."

	para "You mustn't forget"
	line "that!"
	done

MomDSTText:
	text "Is it Daylight"
	line "Saving Time now?"
	done

GearName:
	db "#gear@"

MomRunningShoesText:
	text "Isn't it so"
	line "convenient?"

	para "By the way, do"
	line "you know how to"

	para "use your new"
	line "Running Shoes?"
	done

MomInstructionsText:
	text "Just hold down the"
	line "B Button to run."
	done

KurtOutroText0:
	text "We're waiting on"
	line "the charcoal fam-"
	cont "ily. Do you know"
	cont "the boy's name?"
	done

KurtOutroText:
	text "Can you go see"
	line "what is holding"
	cont "up <RIVAL> and"
	cont "his dad?"
	
	para "I'll go outside"
	line "and wait."
	done

KurtHouseScript:
	faceplayer
	opentext
	writetext WhereIsCharcoalFamily
	promptbutton
	closetext
	end

WhereIsCharcoalFamily:
	text "Where is the "
	line "charcoal family?"
	done
	
KurtsHouseShuckleText:
	text "Shuckle:"
	line "Shucka!"
	done
	
PokemonJournalProfWestwoodScript:
	setflag ENGINE_READ_PROF_WESTWOOD_JOURNAL ; revised this? 
	jumpthistext

	text "Apricorn Journal"

	para "What else can"
	line "be used like"
	cont "Apricorns?"
	
	para "Maybe hollow"
	line "rocks like a"
	cont "geode could be"
	
	para "used to catch"
	line "rock types."
	done

KurtsHouseOakPhotoText:
	text "It's Grampa, Dad,"
	line "and a glowing"
	cont "Cyndaquil."
	done

KurtsHouseCelebiStatueText:
	text "It's a statue of"
	line "the forest's pro-"
	cont "tector."
	done


DebugRadio:
	opentext
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	setflag ENGINE_RADIO_CARD
	setflag ENGINE_EXPN_CARD
	; pokedex
	setflag ENGINE_POKEDEX
	; all key items
for x, NUM_KEY_ITEMS
if x != MACHINE_PART
	givekeyitem x
endc
endr
	; all tms+hms
for x, NUM_TMS + NUM_HMS
	givetmhm x
endr
	; useful items
for x, POKE_BALL, CHERISH_BALL + 1
if x != PARK_BALL && x != SAFARI_BALL
	giveitem x, 99
endc
endr
	giveitem MAX_POTION, 99
	giveitem FULL_RESTORE, 99
	giveitem MAX_REVIVE, 99
	giveitem MAX_ELIXIR, 99
	giveitem HP_UP, 99
	giveitem PROTEIN, 99
	giveitem IRON, 99
	giveitem CARBOS, 99
	giveitem CALCIUM, 99
	giveitem ZINC, 99
	giveitem RARE_CANDY, 99
	giveitem PP_UP, 99
	giveitem PP_MAX, 99
	giveitem SACRED_ASH, 99
	giveitem MAX_REPEL, 99
	giveitem MAX_REPEL, 99
	giveitem ESCAPE_ROPE, 99
	giveitem ABILITY_CAP, 99
	giveitem LEAF_STONE, 99
	giveitem FIRE_STONE, 99
	giveitem WATER_STONE, 99
	giveitem THUNDERSTONE, 99
	giveitem MOON_STONE, 99
	giveitem SUN_STONE, 99
	giveitem DUSK_STONE, 99
	giveitem DAWN_STONE, 99
	giveitem SHINY_STONE, 99
	giveitem EXP_SHARE, 99
	giveitem LEFTOVERS, 99
	giveitem BIG_NUGGET, 99
	giveitem SILVER_LEAF, 99
	; max money
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 999999
	givecoins 50000
	; all badges
	setflag ENGINE_ZEPHYRBADGE
	setflag ENGINE_HIVEBADGE
	setflag ENGINE_PLAINBADGE
	setflag ENGINE_FOGBADGE
	setflag ENGINE_STORMBADGE
	setflag ENGINE_MINERALBADGE
	setflag ENGINE_GLACIERBADGE
	setflag ENGINE_RISINGBADGE
	setflag ENGINE_BOULDERBADGE
	setflag ENGINE_CASCADEBADGE
	setflag ENGINE_THUNDERBADGE
	setflag ENGINE_RAINBOWBADGE
	setflag ENGINE_MARSHBADGE
	setflag ENGINE_SOULBADGE
	setflag ENGINE_VOLCANOBADGE
	setflag ENGINE_EARTHBADGE
	setevent EVENT_BEAT_FALKNER
	setevent EVENT_BEAT_BUGSY
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_BEAT_MORTY_GYM
	setevent EVENT_BEAT_CHUCK
	setevent EVENT_BEAT_JASMINE
	setevent EVENT_BEAT_PRYCE
	setevent EVENT_BEAT_CLAIR
	; fly anywhere
	setflag ENGINE_FLYPOINT_VIOLET
	setflag ENGINE_FLYPOINT_UNION_CAVE
	setflag ENGINE_FLYPOINT_AZALEA
	setflag ENGINE_FLYPOINT_GOLDENROD
	setflag ENGINE_FLYPOINT_ECRUTEAK
	setflag ENGINE_FLYPOINT_OLIVINE
	setflag ENGINE_FLYPOINT_CIANWOOD
	setflag ENGINE_FLYPOINT_MAHOGANY
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	; post-e4
	setflag ENGINE_HAVE_SHINY_CHARM
	; party
	givepoke SHUCKLE, NO_FORM, 25
	; hm slaves
;	givepoke DUSKNOIR, NO_FORM, 100, LEFTOVERS
;	givepoke H__AVALUGG, NO_FORM, 100, LEFTOVERS	
;	givepoke GABITE, NO_FORM, 100, LEFTOVERS
;	givepoke BASCULEGION, NO_FORM, 100, LEFTOVERS
;	givepoke H__BRAVIARY, NO_FORM, 100, LEFTOVERS
;	givepoke KIRLIA, NO_FORM, 100, LEFTOVERS
;	givepoke GARDEVOIR, NO_FORM, 100, LEFTOVERS
;	givepoke GALLADE, NO_FORM, 100, LEFTOVERS
;	givepoke H__SLIGGOO, NO_FORM, 100, LEFTOVERS
;	givepoke H__GOODRA, NO_FORM, 100, LEFTOVERS
;	givepoke H__ZOROARK, NO_FORM, 100, LEFTOVERS	
;	givepoke HEATRAN, NO_FORM, 100, LEFTOVERS	
;	loadmem wPartyMon2Moves+0, FLY
;	loadmem wPartyMon2Moves+1, SURF
;	loadmem wPartyMon2Moves+2, STRENGTH
;	loadmem wPartyMon2Moves+3, MAGMA_STORM
;	loadmem wPartyMon2PP+0, 15
;	loadmem wPartyMon2PP+1, 15
;	loadmem wPartyMon2PP+2, 15
;	loadmem wPartyMon2PP+3, 30
;	loadmem wPartyMon3Moves+0, FLASH
;	loadmem wPartyMon3Moves+1, ROCK_SMASH
;	loadmem wPartyMon3Moves+2, HEADBUTT
;	loadmem wPartyMon3Moves+3, WATERFALL
;	loadmem wPartyMon3PP+0, 20
;	loadmem wPartyMon3PP+1, 15
;	loadmem wPartyMon3PP+2, 15
;	loadmem wPartyMon3PP+3, 15
	; fill pokedex
	callasm FillPokedex
	closetext
	end

FillPokedex:
	ld a, 1
	ld hl, wPokedexSeen
	call .Fill
	ld hl, wPokedexCaught
.Fill:
	ld a, %11111111
	ld bc, 31 ; 001-248
	rst ByteFill
	ld [hl], %00111111 ; 249-254
	ret



ApricornBenchScript:
	opentext
	writetext CheckForApricornsText
	promptbutton
.ApricornBenchScript2:
	opentext
	checkevent EVENT_GAVE_KURT_RED_APRICORN
	iftrue .GiveLevelBall
	checkevent EVENT_GAVE_KURT_BLU_APRICORN
	iftrue .GiveLureBall
	checkevent EVENT_GAVE_KURT_YLW_APRICORN
	iftrue .GiveMoonBall
	checkevent EVENT_GAVE_KURT_GRN_APRICORN
	iftrue .GiveFriendBall
	checkevent EVENT_GAVE_KURT_WHT_APRICORN
	iftrue .GiveFastBall
	checkevent EVENT_GAVE_KURT_BLK_APRICORN
	iftrue .GiveHeavyBall
	checkevent EVENT_GAVE_KURT_PNK_APRICORN
	iftrue .GiveLoveBall
	callasm .CheckHaveAnyApricorns
	iftrue .AskApricorn
	jumpopenedtext KurtsHouseKurtThatsALetdownText

.CheckHaveAnyApricorns:
	xor a
	ld hl, wApricorns
	or [hl]
rept NUM_APRICORNS - 1
	inc hl
	or [hl]
endr
	ldh [hScriptVar], a
	ret

.AskApricorn:
	writetext KurtsHouseKurtAskYouHaveAnApricornText
	promptbutton
	special Special_SelectApricornForKurt
	iffalse_jumpopenedtext KurtsHouseKurtThatsALetdownText
	ifequal SHORE_FOAM, .Blu
	ifequal FIXED_CHARGE, .Ylw
	ifequal TOUGH_LEAVES, .Grn
	ifequal WHT_APRICORN, .Wht
	ifequal HOLLOW_ROCK, .Blk
	ifequal PNK_APRICORN, .Pnk
;.Red yes this should be commented out
	setevent EVENT_GAVE_KURT_RED_APRICORN
	sjump .GaveKurtApricorns

.Blu:
	setevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump .GaveKurtApricorns

.Ylw:
	setevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump .GaveKurtApricorns

.Grn:
	setevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump .GaveKurtApricorns

.Wht:
	setevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump .GaveKurtApricorns

.Blk:
	setevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump .GaveKurtApricorns

.Pnk:
	setevent EVENT_GAVE_KURT_PNK_APRICORN
.GaveKurtApricorns:
	writetext KurtsHouseKurtGetStartedText
	waitbutton
	closetext
	sjump .ApricornBenchScript2 ;Kurt1

.ThatTurnedOutGreat:
	jumpopenedtext KurtsHouseKurtTurnedOutGreatText

.GiveLevelBall:
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar JEZE_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_RED_APRICORN
	sjump .ThatTurnedOutGreat

.GiveLureBall:
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar BUB_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump .ThatTurnedOutGreat

.GiveMoonBall:
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar DECI_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump .ThatTurnedOutGreat

.GiveFriendBall:
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar HERB_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump .ThatTurnedOutGreat

.GiveFastBall:
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar FAST_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump .ThatTurnedOutGreat

.GiveHeavyBall:
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar GEODE, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump .ThatTurnedOutGreat

.GiveLoveBall:
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar LOVE_BALL, VAR_KURT_APRICORNS
	iffalse_endtext
	clearevent EVENT_GAVE_KURT_PNK_APRICORN
	sjump .ThatTurnedOutGreat

KurtsHouseKurtGetStartedText:
	text "Time to work on"
	line "this."
	done

KurtsHouseKurtJustFinishedYourBallText:
	text "All done!"
	done

KurtsHouseKurtTurnedOutGreatText:
	text "Looks like a"
	line "good one!"
	done
	
KurtsHouseKurtThatsALetdownText:
	text "Too bad. Need"
	line "to find some!"
	done

KurtsHouseKurtAskYouHaveAnApricornText:
	text "Which one?"
	done

CheckForApricornsText:
	text "Any items"
	line "in the bag?"
	done

ShuckieName:
	rawchar "Shuckie@"

ShuckieOTName:
	rawchar "Kirk@"

ShuckieOTIDAndCaughtGender:
	bigdw KIRK_SHUCKIE_ID
	db MALE


IlexExcelsiorV5Script:
	opentext
	writetext WeirdTextKurtsHouse
	waitbutton
	closetext
	unowntypeface
	showtext IlexExcelsiorV5Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

WeirdTextKurtsHouse:
	text "Hm? What's this"
	line "weird pamphlet?"
	
	para "It's scattered"
	line "all over."

	para "Trying to read..."
	done

IlexExcelsiorV5Text:
	text "Ilex Excelsior"
	
	para "When the tree"
	line "rings, will"
	cont "you answer"
	
	para "Fifth Edition"

	para "We must save"
	line "union cave"
	done

FiddlerBookScript:
	opentext
	writetext FiddlerBookText
	waitbutton
	closetext
	end

FiddlerBookText:
	text "What's this book?"
	line "The cover shows a"
	para "man on the roof"
	line "with a small str-"
	cont "ing instrument."
	done
