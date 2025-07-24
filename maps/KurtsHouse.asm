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
;	bg_event  2,  1, BGEVENT_READ, PokemonJournalProfWestwoodScript
;	bg_event  3,  1, BGEVENT_READ, PokemonJournalProfWestwoodScript
	bg_event 14,  2, BGEVENT_READ, ApricornBenchScript
	bg_event  4,  1, BGEVENT_JUMPTEXT, KurtsHouseCelebiStatueText

	def_object_events
	object_event    6,  3, SPRITE_KURT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtHouseScript, EVENT_KURTS_HOUSE_KURT_0 ;
	object_event  7,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IlexExcelsiorV5Script, EVENT_KURTS_HOUSE_NOTEBOOK
	object_event  8,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FiddlerBookScript, -1	
	pokemon_event  14,  4, SHUCKLE, -1, -1, PAL_NPC_RED, KurtsHouseShuckleText, -1
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
	getstring GearName, $1
	callstd receiveitem
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
;	setflag ENGINE_MAP_CARD
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

KurtsJournal1Text: ; calm coast 
	text "So this is how"
	line "Route 34 looked"
	cont "160 years ago."

	para "Your father helped"
	line "at the day care"
	cont "when he was young."

	para "Once, on the way"
	line "back to Azalea, he"
	cont "was playing with"
	para "an apricorn and"
	line "caught"
	cont "a Cyndaquil."
	
	para "The apricorn had"
	line "a soft glow in"
	cont "his hands with the"
	cont "#mon inside!"

	para "It was so simple."
	line "He caught it the"
	cont "right way."
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
	cont "an apricorn - "
	para "#balls were just"
	line "becoming common."
	
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
	cont "his apricorn."

	para "The other kids had"
	line "#seals for their"
	cont "#balls,"

	para "So we decorated"
	line "the Apricorn with"
	cont "vibrant paints!"

	para "Each scrape and"
	line "chip in the coat"
	para "was a memory of"
	line "an adventure."
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
	line "for Silph's #-"
	para "ball R&D in"
	cont "Kanto, he left"
	para "Cyndaquil for me"
	line "to take care of."

	para "Cyndaquil and I"
	line "watched him sail"
	cont "away from."
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
	para "work on #-"
	line "balls."

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
	line "celebration befo-"
	cont "re you were born."

	para "Your dad and I "
	line "were going to"
	cont "meet here."

	para "We hadn't talked"
	line "in a while, but"
	para "I thought we'd"
	line "come to a stable"
	para "silence about our"
	line "disagreements."

	para "I wanted to rem-"
	line "ind him of his "
	cont "first #mon,"
	
	para "since he was abo-"
	line "ut to have you."
	
	para "While I waited,"
	line "I looked in the "
	para "bag and found his"
	line "apricorn."
	
	para "The paint was ne-"
	line "arly all chipped"
	para "off, so only he "
	line "and I would know"
	cont "what it once was." 
	
	para "When I picked it"
	line "up it was cold"
	para "and still."
	
	para "When I opened it,"
	line "the inside was "
	para "dark. I tried re-"
	line "opening it to no"
	cont "avail."	

	para "I closed it for"
	line "the last time,"
	para "marking the end"
	line "of that part of"
	cont "my life."

	para "Now, looking back, I"
	line "had been so rigid"
	para "in my thinking."

	para "I should have said,"
	line "'I am sorry.' I"
	para "should have said,"
	line "'I support your"
	cont "dreams.'"

	para "I should have said,"
	line "'I love you and"
	para "accept you as"
	line "you are.'"

	para "Instead of trying"
	line "to make you into"
	para "what I thought"
	line "you should be."

	para "I still think of"
	line "those good days"
	cont "whenever I see"
	cont "an apricorn,"

	para "but now I also"
	line "think of all the"
	para "good days we could"
	line "have had if I'd"
	cont "been wiser."

	para "If you're listening,"
	line "I hope you"
	para "can forgive a"
	line "stubborn old man."

	para "And I hope you'll"
	line "do better with"
	para "<PLAYER> than I"
	line "did with you."
	done
