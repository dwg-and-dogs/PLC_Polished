KurtsHouse_MapScriptHeader:
	def_scene_scripts
	scene_script KurtsHouseIntroTrigger

	def_callbacks

	def_warp_events
	warp_event  3,  7, AZALEA_TOWN, 4
	warp_event  4,  7, AZALEA_TOWN, 4
	
	def_coord_events


	def_bg_events
;	bg_event  6,  1, BGEVENT_JUMPSTD, radio2
	bg_event  6,  1, BGEVENT_READ, DebugRadioScriptKurt;	
;	bg_event  6,  1, BGEVENT_READ, TimeShiftRadio	
	bg_event  8,  0, BGEVENT_JUMPTEXT, KurtsHouseOakPhotoText
	bg_event  9,  0, BGEVENT_JUMPTEXT, KurtsHouseOakPhotoText
	bg_event  5,  1, BGEVENT_READ, PokemonJournalProfWestwoodScript
;	bg_event  2,  1, BGEVENT_READ, PokemonJournalProfWestwoodScript
;	bg_event  3,  1, BGEVENT_READ, PokemonJournalProfWestwoodScript
	bg_event 14,  2, BGEVENT_READ, ApricornBenchScript
	bg_event  4,  1, BGEVENT_JUMPTEXT, KurtsHouseCelebiStatueText

	def_object_events
	object_event    6,  3, SPRITE_KURT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtHouseScript, EVENT_KURTS_HOUSE_KURT_0 ;
	object_event  7,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IlexExcelsiorV5Script, EVENT_KURTS_HOUSE_NOTEBOOK
	object_event  8,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, JournalBookScript, -1	
	pokemon_event  14,  4, NATU, -1, -1, PAL_NPC_GREEN, KurtsHouseShuckleText, EVENT_GOT_A_POKEMON


; kurt's books 
	object_event  0,  1, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, KurtsJournal1Script, EVENT_KURTS_HOUSE_BOOK_1 ; INITIALLY SET  
	object_event  0,  2, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, KurtsJournal2Script, EVENT_KURTS_HOUSE_BOOK_2 ; INITIALLY SET  
	object_event  0,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, KurtsJournal3Script, EVENT_KURTS_HOUSE_BOOK_3 ; INITIALLY SET  
	object_event  0,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, KurtsJournal4Script, EVENT_KURTS_HOUSE_BOOK_4 ; INITIALLY SET  
	object_event 12,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, KurtsJournal5Script, EVENT_KURTS_HOUSE_BOOK_5 ; INITIALLY SET  
	object_event 12,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, KurtsJournal6Script, EVENT_KURTS_HOUSE_BOOK_6 ; INITIALLY SET  	
	
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
	verbosegivekeyitem KURTS_MAP
	verbosegivekeyitem APRICORN_BOX
	getstring GearName, $1
	callstd receiveitem
	setflag ENGINE_POKEGEAR
	setscene $1
	setevent EVENT_KURTS_HOUSE_KURT_0
	clearevent EVENT_PLAYERS_HOUSE_KURT_2
	promptbutton
	writetext MomPokegearText
	promptbutton
;	special Special_SetDayOfWeek
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
	step_left
	step_left
	step_down
	step_down
	step_down
	step_end

KurtIntroText: 
	text "Oh, <PLAYER>!"
	line "It's almost time."
	
	para "Before we go, I"
	line "want to give you"
	cont "some items."
	done


MomPokegearText:
	text "These gifts are"
	line "a new watch and"
	cont "a map of Johto."

	para "There's also an"
	line "Apricorn Box."
	
	para "You can use it at"
	line "any bench."
	
	para "Try making balls"
	line "from many things!"
;
;	para "Oh, say, remind"
;	line "me the day today?"
	done

MomDSTText:
	text "Is it Daylight"
	line "Saving Time now?"
	done

GearName:
	db "Watch@"

MomRunningShoesText:
	text "By the way, do"
	line "you know how to"

	para "use your"
	line "Running Shoes?"
	done

MomInstructionsText:
	text "Just hold down the"
	line "B Button to run."
	done

KurtOutroText0:
	text "We're waiting on"
	line "the charcoal boy."
	
	para "What's his name"
	line "again?"
	done

KurtOutroText:
	text "What's holding up"
	line "<RIVAL>? Go see."
	cont "I'll wait outside."
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
	text "Natu:"
	line "Atune!"
	done
	
PokemonJournalProfWestwoodScript:
	setflag ENGINE_READ_PROF_WESTWOOD_JOURNAL 
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
	
	para "Need to explore"
	line "Union Cave!"
	done

KurtsHouseOakPhotoText:
	text "It's Grandpa Kurt,"
	line "Dad, and a lively"
	cont "Cyndaquil."
	done

KurtsHouseCelebiStatueText:
	text "It's a statue of"
	line "Celebi."
	done


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
	text "Don't have any"
	line "materials!"
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
	
	para "If the tree rings"
	line "will you answer"
	
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
	line "The cover has a"
	para "man on the roof"
	line "with a fiddle."
	done

KurtsJournal1Script:
	opentext
	writetext ItsKurtsJournal1Text
	yesorno
	iffalse_jumpopenedtext NoReadKurtText
	closetext
	italictypeface
	showtext KurtsJournal1Text ; calm coast , done  
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end	
	
ItsKurtsJournal1Text:
	text "Kurt's Journal,"
	line "marked number 1."
	
	para "Read it?"
	done

NoReadKurtText:
	text "Put it down."
	done

KurtsJournal1Text: 
	text "So this is how"
	line "Route 34 looked"
	cont "160 years ago."

	para "Your father helped"
	line "at the Day Care"
	cont "when he was young."

	para "Once, on the way"
	line "back to Azalea, he"
	para "was playing with"
	line "an apricorn and"
	para "accidentally got"
	line "a Cyndaquil!"
	
	para "The apricorn had"
	line "a soft glow in"
	para "his hands with the"
	line "#mon inside!"
	
	para "He nicknamed the"
	line "Cyndaquil Puff."
	done


KurtsJournal2Script:
	opentext
	writetext ItsKurtsJournal2Text
	yesorno
	iffalse_jumpopenedtext NoReadKurtText
	closetext
	italictypeface
	showtext KurtsJournal2Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end	

ItsKurtsJournal2Text:
	text "Kurt's Journal,"
	line "marked number 2."
	
	para "Read it?"
	done

KurtsJournal2Text: ; route 35 gate? 
	text "Underground, we'd"
	line "come for haircuts."
	
	para "At the haircut, "
	line "Cyndaquil's flame"
	para "grew and shrank"
	line "in the mirror,"
	
	para "and your dad lau-"
	line "ghed every time"
	para "the barber had to"
	line "work around it."

	para "We got some funny"
	line "looks for having"
	cont "an Apricorn."
	para "#balls were"
	line "just getting"
	cont "popular."
	done


KurtsJournal3Script: ;earls academy 
	opentext
	writetext ItsKurtsJournal3Text
	yesorno
	iffalse_jumpopenedtext NoReadKurtText
	closetext
	italictypeface
	showtext KurtsJournal3Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end	

ItsKurtsJournal3Text:
	text "Kurt's Journal,"
	line "marked number 3."
	
	para "Read it?"
	done

KurtsJournal3Text: ; earls academy 
	text "This was your"
	line "dad's school."
	
	para "After class, we"
	line "walked around the"
	para "ponds, your dad"
	line "walking side by"
	para "side with his"
	line "partner, holding"
	cont "his Apricorn."

	para "The other kids had"
	line "#seals for "
	cont "their #balls,"

	para "So we decorated"
	line "the Apricorn with"
	cont "vibrant paints!"
	done


KurtsJournal4Script: ; cattle cull 39 
	opentext
	writetext ItsKurtsJournal4Text
	yesorno
	iffalse_jumpopenedtext NoReadKurtText
	closetext
	italictypeface
	showtext KurtsJournal4Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end	

ItsKurtsJournal4Text:
	text "Kurt's Journal,"
	line "marked number 4."
	
	para "Read it?"
	done

KurtsJournal4Text: 
	text "I keep thinking"
	line "about your dad's"
	cont "Apricorn."
	
	para "The problem was,"
	line "they don't hold"
	cont "forever."
	
	para "If you stop"
	line "interacting, "
	para "the #mon"
	line "inside will go."
	
	para "So when your Dad"
	line "went off to start"
	para "his career with"
	line "the Silph's #-"
	para "ball R&D in"
	line "Kanto, he left"
	cont "Cyndaquil for me."

	para "We watched his"
	line "ship sail beyond"
	cont "the horizon,"
	
	para "growing smaller"
	line "like a bonfire"
	cont "fading to embers."
	done

KurtsJournal5Script:
	opentext
	writetext ItsKurtsJournal5Text
	yesorno
	iffalse_jumpopenedtext NoReadKurtText
	closetext
	italictypeface
	showtext KurtsJournal5Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end	

ItsKurtsJournal5Text:
	text "Kurt's Journal,"
	line "marked number 5."
	
	para "Read it?"
	done

KurtsJournal5Text: ; mahogany town 
	text "I invited your"
	line "dad to celebrate"
	cont "winter festival."

	para "We'd had some big"
	line "fights about his"
	para "#ball work."

	para "I probably said"
	line "some things I"
	cont "shouldn't have."

	para "But this was the"
	line "first time he"
	para "didn't come for"
	line "the festival."

	para "When I got home,"
	line "I noticed some "
	para "paint was wearing"
	line "off the apricorn."
	done

	
KurtsJournal6Script:
	opentext
	writetext ItsKurtsJournal6Text
	yesorno
	iffalse_jumpopenedtext NoReadKurtText
	closetext
	italictypeface
	showtext KurtsJournal6Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end	

ItsKurtsJournal6Text:
	text "Kurt's Journal,"
	line "marked number 6."
	
	para "Read it?"
	done

KurtsJournal6Text: ; tinder garden 2
	text "Last I was at the"
	line "Burned Tower was"
	para "for the new year"
	line "festival before"
	cont "you were born."

	para "Your dad and I "
	line "were going to"
	cont "meet here."

	para "We hadn't talked"
	line "in a while, but"
	para "I thought we'd"
	line "come to a stable"
	para "silence about our"
	line "disagreements."

	para "I planned to"
	line "remind him of his"
	cont "first #mon,"
	
	para "since you were"
	line "about to be born." 
	
	para "While I waited,"
	line "I looked in the "
	para "bag and found his"
	line "Apricorn."
	
	para "The paint was ne-"
	line "arly all chipped"
	para "off, so only he "
	line "and I would know"
	cont "what it once was." 
	
	para "It was cold and"
	line "still in my hand."
	
	para "When I opened it,"
	line "it was dark. The"
	para "#mon inside"
	line "had fled due to"
	cont "neglect."

	para "I closed it for"
	line "the last time,"
	para "marking the end"
	line "of that part of"
	cont "my life."

	para "Now, looking back"
	line "I see all of my"
	cont "mistakes."

	para "You could've had"
	line "an inheritance"
	cont "of belonging, of"
	cont "belief that you"
	cont "could build a"
	cont "future here,"

	para "Instead of trying"
	line "to force you to"
	cont "live the way I"
	cont "wanted."
	
	para "I still think of"
	line "those good days"
	cont "whenever I see"
	cont "an Apricorn,"

	para "and how I never"
	line "know when my last"
	cont "chance to make it"
	cont "up to you was."

	para "If you read this,"
	line "I hope you can"
	para "forgive me, a"
	line "stubborn old man."

	para "And I hope you'll"
	line "do better with"
	para "<PLAYER> than I"
	line "did with you."
	done

DebugRadioScriptKurt: ; TODO ALWAYS CHECK BEFORE SUBMITTING 
	opentext
	; time
	special Special_SetDayOfWeek
	special Special_InitialClearDSTFlag
	; pokedex
	setflag ENGINE_POKEDEX
	; judge machine
	setflag ENGINE_JUDGE_MACHINE
	; all key items
for x, NUM_KEY_ITEMS
;if x != NATU_CALL
	givekeyitem x
;endc
endr
	; all tms+hms
for x, NUM_TMS + NUM_HMS
	givetmhm x
endr
	; useful items
for x, POKE_BALL, CHERISH_BALL + 1
if x != PARK_BALL && x != SAFARI_BALL && x != MASTER_BALL
	giveitem x, 99
endc
endr
	giveitem ODD_SOUVENIR, 99
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
	; all decorations except Diploma
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
	; fly anywhere
	setflag ENGINE_FLYPOINT_AZALEA
	setflag ENGINE_FLYPOINT_GOLDENROD
	setflag ENGINE_FLYPOINT_VIOLET
	setflag ENGINE_FLYPOINT_UNION_CAVE
	setflag ENGINE_FLYPOINT_ECRUTEAK
	setflag ENGINE_FLYPOINT_OLIVINE
	setflag ENGINE_FLYPOINT_CIANWOOD
	setflag ENGINE_FLYPOINT_MAHOGANY
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
; historic johto
	setflag ENGINE_FLYPOINT_ANARRES_TOWN
	setflag ENGINE_FLYPOINT_GAULDENROD
	setflag ENGINE_FLYPOINT_WESTERN_CAPITAL
	setflag ENGINE_FLYPOINT_TRADERS_LANDING
	setflag ENGINE_FLYPOINT_SHELTERED_SHORES
	setflag ENGINE_FLYPOINT_CIANWOOD_COVE
	setflag ENGINE_FLYPOINT_TRANQUIL_TARN
	setflag ENGINE_FLYPOINT_EERIE_HAMLET
	setflag ENGINE_FLYPOINT_SULFUR_STY
	setflag ENGINE_FLYPOINT_TIMELESS_TAPESTRY
	; good party

	givepoke SAMUROTT, HISUIAN_FORM, 100
	loadmem wPartyMon1Moves+0, SURF
	loadmem wPartyMon1Moves+1, ICE_BEAM
	loadmem wPartyMon1Moves+2, CEASELESS_EDGE 
	loadmem wPartyMon1Moves+3, REST
	loadmem wPartyMon1EVs+0, 252
	loadmem wPartyMon1EVs+1, 252
	loadmem wPartyMon1EVs+2, 252
	loadmem wPartyMon1EVs+3, 252
	loadmem wPartyMon1EVs+4, 252
	loadmem wPartyMon1EVs+5, 252
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff

	givepoke DECIDUEYE, HISUIAN_FORM, 100
	loadmem wPartyMon2Moves+0, EXTRASENSORY
	loadmem wPartyMon2Moves+1, CRUNCH
	loadmem wPartyMon2Moves+2, TRIPLE_ARROWS
	loadmem wPartyMon2Moves+3, THUNDERBOLT
	loadmem wPartyMon2EVs+0, 252
	loadmem wPartyMon2EVs+1, 252
	loadmem wPartyMon2EVs+2, 252
	loadmem wPartyMon2EVs+3, 252
	loadmem wPartyMon2EVs+4, 252
	loadmem wPartyMon2EVs+5, 252
	loadmem wPartyMon2DVs+0, $ff
	loadmem wPartyMon2DVs+1, $ff
	loadmem wPartyMon2DVs+2, $ff

	givepoke TYPHLOSION, 100
	loadmem wPartyMon3Moves+0, FLAMETHROWER
	loadmem wPartyMon3Moves+1, EARTH_POWER
	loadmem wPartyMon3Moves+2, INFERNAL_PARADE
	loadmem wPartyMon3Moves+3, BODY_SLAM
	loadmem wPartyMon3EVs+0, 252
	loadmem wPartyMon3EVs+1, 252
	loadmem wPartyMon3EVs+2, 252
	loadmem wPartyMon3EVs+3, 252
	loadmem wPartyMon3EVs+4, 252
	loadmem wPartyMon3EVs+5, 252
	loadmem wPartyMon3DVs+0, $ff
	loadmem wPartyMon3DVs+1, $ff
	loadmem wPartyMon3DVs+2, $ff	

	givepoke KLEAVOR, 15
	loadmem wPartyMon4Moves+0, STONE_AXE
	loadmem wPartyMon4Moves+1, FIRE_PUNCH
	loadmem wPartyMon4Moves+2, BODY_SLAM
	loadmem wPartyMon4Moves+3, EARTHQUAKE
;	loadmem wPartyMon4EVs+0, 252
;	loadmem wPartyMon4EVs+1, 252
;	loadmem wPartyMon4EVs+2, 252
;	loadmem wPartyMon4EVs+3, 252
;	loadmem wPartyMon4EVs+4, 252
;	loadmem wPartyMon4EVs+5, 252
;	loadmem wPartyMon4DVs+0, $ff
;	loadmem wPartyMon4DVs+1, $ff
;	loadmem wPartyMon4DVs+2, $ff	
	
	givepoke BASCULEGION, 15
	loadmem wPartyMon5Moves+0, PHANTOM_FORCE
	loadmem wPartyMon5Moves+1, DRAGON_CLAW
	loadmem wPartyMon5Moves+2, EARTHQUAKE
	loadmem wPartyMon5Moves+3, FIRE_PUNCH
;	loadmem wPartyMon5EVs+0, 252
;	loadmem wPartyMon5EVs+1, 252
;	loadmem wPartyMon5EVs+2, 252
;	loadmem wPartyMon5EVs+3, 252
;	loadmem wPartyMon5EVs+4, 252
;	loadmem wPartyMon5EVs+5, 252
;	loadmem wPartyMon5DVs+0, $ff
;	loadmem wPartyMon5DVs+1, $ff
;	loadmem wPartyMon5DVs+2, $ff	

;	givepoke BLISSEY, 100
;	loadmem wPartyMon6Moves+0, RECOVER
;	loadmem wPartyMon6Moves+1, SEISMIC_TOSS
;	loadmem wPartyMon6Moves+2, HEAL_BELL
;	loadmem wPartyMon6Moves+3, DOUBLE_TEAM
;	loadmem wPartyMon6EVs+0, 252
;	loadmem wPartyMon6EVs+1, 252
;	loadmem wPartyMon6EVs+2, 252
;	loadmem wPartyMon6EVs+3, 252
;	loadmem wPartyMon6EVs+4, 252
;	loadmem wPartyMon6EVs+5, 252
;	loadmem wPartyMon6DVs+0, $ff
;	loadmem wPartyMon6DVs+1, $ff
;	loadmem wPartyMon6DVs+2, $ff	

	setevent EVENT_REACHED_CREDITS_ONCE

	; fill pokedex
	callasm FillPokedex
	waitbutton
	closetext
; debug only
; debug 
	warp WHISPERS_WAY, 9, 4
	end

JournalBookScript: ; TODO ADD TRAINERPICS OR ITEMPICS TO ALL OF THESE 
	opentext
	writethistext
		text "It's notes from"
		line "the journey. Read"
		cont "from start?"
		done
	yesorno
	iffalse JournalFromEnd
	
;	closetext
;	refreshscreen
;	trainerpic KURT
;	waitbutton
;	closepokepic
;	opentext
	
	writetext JournalText_Intro
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

; todo add ability to jump forward up to ten pages at a time 

	checkevent EVENT_GOT_A_POKEMON
	iffalse_jumptext EndOfJournalText

	closetext
	refreshscreen
	trainerpic RIVAL1
	waitbutton
	closepokepic
	opentext

	writetext JournalText_GotAPokemon
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_CAMDEN ; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	writetext JournalText_BeatCamden
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_RIVAL_FOREST ; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	writetext JournalText_BeatIlexRival
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_URSULA ; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	writetext JournalText_BeatUrsula
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_HOLLIS ; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	closetext
	refreshscreen
	trainerpic HOLLIS
	waitbutton
	closepokepic
	opentext

	writetext JournalText_BeatHollis
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_SANDRA_TOWER ; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	closetext
	refreshscreen
	trainerpic SANDRA
	waitbutton
	closepokepic
	opentext

	writetext JournalText_BeatSandraTower
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_COOLTRAINER_BETH ; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	writetext JournalText_BeatBeth
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_BOBESH_STADIUM ; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	closetext
	refreshscreen
	trainerpic BOBESH
	waitbutton
	closepokepic
	opentext

	writetext JournalText_BeatBobeshStadium
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_SANDRA_WARPED ; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	writetext JournalText_SandraWarped
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_GOT_KURTS_BASEMENT_KEY; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	writetext JournalText_GotKurtsKey
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_WHITNEY; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	writetext JournalText_BeatWhitney
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_ELDER_LI; CHECK TODO 
	iffalse_jumptext EndOfJournalText
	
	writetext JournalText_BeatElderLi
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_FALKNER; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	writetext JournalText_BeatFalkner
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText
	
	checkevent EVENT_BEAT_KIMONO_GIRL_AKARI; CHECK TODO 
	iffalse_jumptext EndOfJournalText
	writetext JournalText_BeatEmi
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText
	
	checkevent EVENT_BEAT_AMOS_GARDEN; CHECK TODO 
	iffalse_jumptext EndOfJournalText
	
	closetext
	refreshscreen
	trainerpic MEJIMI
	waitbutton
	closepokepic
	opentext
	
	writetext JournalText_BeatAmosGarden
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_SAMSARA_TOWER; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	closetext
	refreshscreen
	trainerpic SAMSARA
	waitbutton
	closepokepic
	opentext

	writetext JournalText_BeatSamsara
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BARBEAU_WARPED; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	closetext
	refreshscreen
	trainerpic BARBEAU
	waitbutton
	closepokepic
	opentext

	writetext JournalText_BarbeauWarpedFromLanding
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_KURT_GOT_TO_LUGIA_FIRST; CHECK TODO 
	iffalse_jumptext EndOfJournalText
	writetext JournalText_KurtCatchesLugiaText
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_CIANWOOD_WARPED; CHECK TODO 
	iffalse_jumptext EndOfJournalText
	writetext JournalText_WarpedFromCianwood
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_KENSEY_DOCKS; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	closetext
	refreshscreen
	trainerpic KENSEY
	waitbutton
	closepokepic
	opentext

	writetext JournalText_BeatKenseyDocks
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_RIVAL_LIGHTHOUSE; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	writetext JournalText_BeatRivalLighthouse
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_CHUCK; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	writetext JournalText_BeatChuck
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_PRYCE; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	writetext JournalText_BeatPryce
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_RIVAL_LAKE; CHECK TODO 
	iffalse_jumptext EndOfJournalText
	writetext JournalText_BeatRivalLake
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_KANNA; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	closetext
	refreshscreen
	trainerpic KANNA
	waitbutton
	closepokepic
	opentext

	writetext JournalText_BeatKanna
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_AMOS_REDOUBT; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	closetext
	refreshscreen
	trainerpic AMOS
	waitbutton
	closepokepic
	opentext

	writetext JournalText_BeatAmosRedoubt
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_BEAT_ADRINNA_MINE; CHECK TODO 
	iffalse_jumptext EndOfJournalText

	closetext
	refreshscreen
	trainerpic ADRINNA
	waitbutton
	closepokepic
	opentext

	writetext JournalText_BeatAdrinnaMine
	waitbutton
	writetext KeepReadingJournalText
	yesorno
	iffalse_jumptext JournalOverText

	checkevent EVENT_AMOS_SENT_NINJAS_TO_TOWER ; CHECK TODO 
	iffalse_jumptext EndOfJournalText
	writetext JournalText_BrassTowerAmbiguous
	waitbutton
	closetext
	end


JournalFromEnd:
	opentext
	writethistext
		text "Read the last"
		line "entry?"
		done
	yesorno
	iffalse_jumptext ; TODO
	; todo check in reverse 
	done

JournalText_Intro:
	text_high
    text " Kurt's House: " 
	next
	text_start 


	text "Grandpa Kurt says"
	line "he's going to do"
	para "the Ilex Ceremony"
	line "without telling"
	cont "my parents."
	
	para "He asked me to go"
	line "get <RIVAL>, but"
	para "I thought they"
	line "didn't get along?"

	done

JournalText_GotAPokemon:
	text_high
    text " Tinder Garden: " 
	next
	text_start 


	text "Celebi appeared"
	line "at our ceremony!"
	
	para "It gave me and"
	line "<RIVAL> a gift"
	cont "#mon, the same"
	para "set that were"
	line "used by a hero"
	cont "long ago, and a"
	
	para "request to stop"
	line "an unnatural"
	cont "force. Hm?"
	
	para "<RIVAL> ran away"
	line "because he felt"
	para "like his Apricorn"
	line "oil distiller was"
	cont "not appreciated."
	
	para "We heard a loud"
	line "noise coming from"
	cont "Ilex Forest."
	done

JournalText_BeatCamden:
	text_high
    text " Ilex Shrine: " 
	next
	text_start 

	text "A Silph logger"
	line "nearly damaged"
	cont "the shrine."
	
	para "In the rubble,"
	line "Kurt found the"
	cont "GS Ball. He says"
	para "with a copy of"
	line "writing from the"
	cont "Ruins of Alph,"
	
	para "he can use it to"
	line "call Celebi to "
	para "go back in time"
	line "and stop Johto"
	cont "from modernizing."
	
	para "Then we would've"
	line "completed Celebi's"
	cont "request!"
	done

JournalText_BeatIlexRival:
	text_high
    text " Ilex Shrine: " 
	next
	text_start 

	text "<RIVAL> appeared"
	line "right was we were"
	para "going to insert"
	line "the GS Ball."
	
	para "He thinks that"
	line "Celebi's quest is"
	cont "for him!"
	
	para "Defeated him, and"
	line "Celebi appeared,"
	
	para "sending us back"
	line "in time. Met the"
	para "Elder of Anarres,"
	line "Hollis, who is"
	para "trying to handle"
	line "an infestation of"
	cont "Pineco without"
	cont "any input."

	para "I wonder what the"
	line "Slowpoke Well was"
	cont "like back then?"
	
	para "We need to get to"
	line "historic Olivine"
	para "to stop whatever"
	line "outside influence"
	para "is going to set"
	line "Johto on a path"
	cont "away from Celebi."
	done

JournalText_BeatUrsula:
	text_high
    text " Misty Basin: " 
	next
	text_start 

	text "Met an inventor"
	line "from Anarres. She"
	para "invented a method"
	line "to remove Pineco"
	para "without damaging"
	line "the trees!"
	
	para "She asked me to"
	line "confront Hollis"
	cont "with her."
	done

JournalText_BeatHollis:
	text_high
    text " Anarres: " 
	next
	text_start 
	
	text "Convinced Hollis"
	line "to use Ursula's"
	cont "invention."
	
	para "Gave me the Cut"
	line "HM, so now we can"
	para "go north to stop"
	line "the unnatural"
	cont "invention Celebi"
	cont "referenced."
	done

JournalText_BeatSandraTower:
	text_high
    text " Gauldenrod: " 
	next
	text_start 
	
	text "Explored historic"
	line "Goldenrod. Path"
	para "north blocked, so"
	line "I asked the Elder"
	para "atop the tower"
	line "to help get past."
		
	para "When our battle"
	line "ended, Brigaders"
	cont "from the Capital"
	para "arrived to take"
	line "her to General"
	cont "Tyrus' Stadium."
	
	para "Right after, a"
	line "mysterious woman"
	para "named General"
	line "Andrea warped in"
	para "and gave me the"
	line "Strength HM while"
	cont "mocking Tyrus."
	
	para "I had another run"
	line "in with Amos, who"
	para "also wanted to "
	line "see Sandra. Why"
	para "are there signs"
	line "calling for his"
	cont "arrest?"
	done
	
JournalText_BeatBobeshStadium:
	text_high
    text " Stadium: " 
	next
	text_start 
	
	text "Joined with an"
	line "Underground group"
	cont "in Gauldenrod to"
	para "confront General"
	line "Tyrus. Used the"
	para "Strength HM to"
	line "divert a spring"
	para "filling the Stad-"
	line "ium with water."
	done
	
JournalText_SandraWarped:
	text_high
    text " Stadium Grounds: " 
	next
	text_start ; todo fix
	
	text "Stopped Tyrus'"
	line "plan, and had"
	cont "another encounter"
	para "with the magnetic"
	line "General Andrea."

	cont "myself. Is that how"
	cont "how <RIVAL> feels?"
	
	para "Sandra warped me back"
	
	para "The drought has"
	line "hit the National"
	cont "Park fountain,"
	para "now just an empty"
	line "basin."
	done
	
JournalText_GotKurtsKey:
	text_high
    text " Route 35: " 
	next
	text_start 
	
	text "Met with Kurt at"
	line "the Goldenrod"
	cont "#com Center."
	
	para "He knows some"
	line "people who also"
	para "oppose what Silph"
	line "is doing, which"
	para "is easier to see"
	line "in Goldenrod than"
	cont "anywhere else."
	
	para "Whitney's show is"
	line "so different than"
	cont "I remember:"
	
	para "she has more att-"
	line "ention than ever,"
	
	para "but still says"
	line "she's slighted."
	
	para "Need to sneak out"
	line "the Radio Tower"
	para "onto the tracks"
	line "so we can find a"
	cont "way to Ecruteak."
	
	done
	
JournalText_BeatWhitney:
	text_high
    text " Goldenrod: " 
	next
	text_start 
	
	text "Encounted <RIVAL>"
	line "at the Tower."
	
	para "He was a guest"
	line "with Whitney,"
	para "going on about"
	line "how Kurt and his"
	cont "dad treated him."
	
	para "I guess he wants"
	line "to be adopted by"
	cont "Silph now to make"
	cont "his distiller for"
	cont "Olivine now."
	
	para "Had a battle with"
	line "Whitney. She said"
	para "no one comes to"
	line "the ceremonies"
	para "anymore because"
	line "they're boring."
	
	para "But I wonder if"
	line "it's not more"
	cont "related to what"
	cont "<RIVAL> said."
	
	para "Sneaking out the"
	line "Radio Tower to"
	cont "Route Ka-Jo."
	
	para "The route is so"
	line "steep, the only"
	cont "way it could be"
	para "accessed for many"
	line "years was from a"
	para "narrow cave from"
	line "the west."	
	
	done
	
JournalText_BeatFalkner:
	text_high
    text " Violet City: " 
	next
	text_start 
	
	text "Road to Ecruteak"
	line "was blocked from"
	cont "Violet side also."
	
	para "Falkner had a dig"
	line "to uncover a"
	cont "Bronzong to do a"
	cont "Rain Dance on his"
	cont "renovated Tower."
	
	para "Why is there a"
	line "Bronzong there,"
	cont "I wonder?"
	
	para "Elder Li told me"
	line "to remind him of"
	cont "his roots."
	
	para "After our battle"
	line "he saw that he"
	para "was taking nature"
	line "out of balance,"
	
	para "and destroying"
	line "what made Violet"
	cont "City special."

	done
	
JournalText_BeatEmi:
	text_high
    text " Bellchime Trail: " 
	next
	text_start 
	
	text "Another encounter"
	line "with <RIVAL> at "
	cont "the Theatre."
	
	para "He's going to make"
	line "his distiller for"
	para "Silph in Olivine"
	line "for some project"
	cont "related to water"
	cont "desalination."
	
	para "Sounds great, but"
	line "Silph has already"
	para "bungled the Lake"
	line "of Rage project"
	para "and the logging"
	line "in Ilex. Hope it"
	cont "goes better here."
	
	para "Dance Theatre had"
	line "an immersive show"
	para "about the events"
	line "of the Burned"
	cont "Tower."
	
	para "As a reward, we"
	line "were invited to"
	cont "Bellchime Trail."


	done
	
JournalText_BeatAmosGarden:
	text_high
    text " Royal Garden: " 
	next
	text_start 
	
	text "Chronicler Emi"
	line "prayed with me at"
	cont "Bellchime Trail"
	
	para "sending me back"
	line "to when Ecruteak"
	cont "was known as the"
	cont "Western Capital."
	
	para "I overheard the"
	line "Emperor talking"
	cont "to his Generals."
	
	para "The Emperor has a"
	line "plan to re-make"
	cont "Johto and squash"
	cont "its traditions."
	
	para "General Andrea"
	line "battled me, and"
	cont "gave me a Silver"
	cont "Wing, inviting me"
	cont "westward to the"
	cont "Trader's Landing."
	
	para "She gave me the"
	line "Strength HM the"
	cont "last time she met"
	cont "me - what is she"
	cont "up to?"
	
	para "Just afterward, I"
	line "was ambushed by"
	cont "Amos. He accused"
	para "me of being part"
	line "of Andrea's plot."
	
	para "Amos said the"
	line "Emperor will make"
	para "Johto closed off,"
	line "reliant on only"
	para "him, and set it"
	line "on a dark path."
	
	para "I have to find a"
	line "way out of the"
	para "Western Capital's"
	line "moat. Perhaps an"
	para "elder in the Tin"
	line "Tower will have"
	cont "a way to help."	
	done
	
JournalText_BeatSamsara:
	text_high
    text " W. Capital: " 
	next
	text_start 
	
	text "Chronicler Sybil"
	line "is deeply worried"
	cont "about Emperor"
	cont "Vesper's ambition."
	
	para "She and her Sages"
	line "have given me the"
	para "Surf HM to try to"
	line "stop his plans to"
	para "buy time for them"
	line "to convince him"
	para "that his plan is"
	line "against nature."
	
	para "Must head to the"
	line "Trader's Landing,"
	
	para "I wonder if the"
	line "Silver Wing will"
	cont "be of use?"
		
	done

JournalText_BarbeauWarpedFromLanding:
	text_high
    text " T. Landing: " 
	next
	text_start 
	
	text "General Nemo has"
	line "taken over the"
	para "Landing from"
	line "Elder Remy."
	
	para "It's now a place"
	line "where outsider"
	para "tech, like #balls"
	line "and items, are"
	cont "copied for Johto."
	
	para "The locals don't"
	line "seem to enjoy it,"
	
	para "since they're used"
	line "to sailing to and"
	cont "fro from shore to"
	cont "island, protected"
	cont "by Lugia."
	
	para "Elder Remy has"
	line "blessed Kurt's"
	para "plan to bring"
	line "Lugia from our"
	cont "timeline to them,"
	
	para "so that Lugia can"
	line "wreck Nemo's port."

	para "The caverns are a"
	line "maze, but I know"
	para "I can use the"
	line "Celebi Call if"
	cont "I get lost."
	
	done
	
JournalText_KurtCatchesLugiaText:
	text_high
    text " Whirl Islands: " 
	next
	text_start 
	
	text "..."
	done

JournalText_WarpedFromCianwood:
	text_high
    text " Cianwood: " 
	next
	text_start 
	
	text "..."
	done
	
JournalText_BeatKenseyDocks: 
	text_high
    text " Landing Docks: " 
	next
	text_start 
	
	text "..."
	done
	
JournalText_BeatChuck: 
	text_high
    text " Lighthouse: " 
	next
	text_start 
	
	text "..."
	done

JournalText_BeatPryce: 
	text_high
    text " Mahogany: " 
	next
	text_start 
	
	text "..."
	done

JournalText_BeatRivalLake:
	text_high
    text " Silph Springs: " 
	next
	text_start 
	
	text "..."
	done

JournalText_BeatKanna:
	text_high
    text " Sinjoh: " 
	next
	text_start 
	
	text "..."
	done

JournalText_BeatAmosRedoubt:
	text_high
    text " Eerie Hamlet: " 
	next
	text_start 
	
	text "..."
	done

JournalText_BeatAdrinnaMine:
	text_high
    text " Clast's Cradle: " 
	next
	text_start 
	
	text "..."
	done
	
JournalText_BrassTowerAmbiguous:
	text_high
    text " Brass Tower: " 
	next
	text_start 
	
	text "..."
	done

KeepReadingJournalText:
	text "Keep reading?"
	done

JournalOverText:
	text "Back to it!"
	done

EndOfJournalText:
	text "It's just blank"
	line "pages, waiting"
	cont "for a story to"
	cont "be written!"
	done
