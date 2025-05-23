Route35GoldenrodGate_MapScriptHeader:
	def_scene_scripts
	scene_script WhitneyRadioShowScript

	def_callbacks

	def_warp_events
	warp_event  4,  0, ROUTE_35, 1
	warp_event  5,  0, ROUTE_35, 2
	warp_event  4,  7, GOLDENROD_CITY, 12
	warp_event  5,  7, GOLDENROD_CITY, 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RandyScript, -1
	object_event  6,  4, SPRITE_BREEDER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGatePokefanFScript, -1
	object_event  3,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route35GoldenrodGateFisherText, -1
	object_event  4,  3, SPRITE_KURT,  SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtGoldenrodGateScript, -1


WhitneyRadioShowScript:
	showtext WhitneyRadioShowText
	end

WhitneyRadioShowText:
	text "Radio broadcast:"
	line "Whitney's show is"
	cont "taking charge!"
	
	para "ReArming Voice"
	line "is new this week"
	cont "with a very"
	
	para "special guest,"
	line "<RIVAL>."
	
	para "Listen in, and"
	line "remember - "
	
	para "stomp or get"
	line "stomped!"
	done


RandyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_KENYA
	iftrue .alreadyhavekenya
	writetext Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText
	yesorno
	iffalse .refused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .partyfull
	writetext Route35GoldenrodGateRandyThanksText
	promptbutton
	waitsfx
	writetext Route35GoldenrodGatePlayerReceivedAMonWithMailText
	playsound SFX_KEY_ITEM
	waitsfx
	givepoke SUDOWOODO, MALE | NO_FORM, 20, NO_ITEM, HERB_BALL, GROWTH, TRUE, GiftFarfetch_dName, GiftFarfetch_dOTName, GiftFarfetch_dOTIDAndCaughtGender
	givepokemail GiftFarfetch_dMail
	setevent EVENT_GOT_KENYA
.alreadyhavekenya
	jumpopenedtext Route35GoldenrodGateRandyWeirdTreeBlockingRoadText

.partyfull
	jumpopenedtext Route35GoldenrodGateRandyCantCarryAnotherMonText

.refused
	jumpopenedtext Route35GoldenrodGateRandyOhNeverMindThenText

.bagfull
	endtext

GiftFarfetch_dMail:
	db   FLOWER_MAIL
	db   "Don't ride the"
	next "train today@"

GiftFarfetch_dName:
	rawchar "Bonsai@"

GiftFarfetch_dOTName:
	rawchar "Guy@"

GiftFarfetch_dOTIDAndCaughtGender:
	bigdw 01001
	db MALE

Route35GoldenrodGatePokefanFScript:
	faceplayer
	opentext
	jumpopenedtext Route35GoldenrodGatePokefanFText


Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText:
	text "Psst, excuse me!"
	
	para "You there!"
	
	para "I've got a favor"
	line "to ask."
	
	para "I need you to"
	line "take this #mon"
	cont "with Mail to my"
	cont "brother."
	
	para "It's urgent."
	
	para "He's about to"
	line "board on the"
	cont "magnet train."

	done

Route35GoldenrodGateRandyThanksText:
	text "You will? Perfect!"
	line "Thanks, kid!"

	para "My brother is"
	line "a fancy guy in"
	cont "red clothes."

	para "You'll recognize"
	line "him right away!"
	
	para "And, uh, don't"
	line "tell anyone else"
	cont "where you got"
	cont "that mail, OK?"
	done

Route35GoldenrodGatePlayerReceivedAMonWithMailText:
	text "<PLAYER> received"
	line "#mon with Mail."
	done

Route35GoldenrodGateRandyWeirdTreeBlockingRoadText:
	para "My brother is"
	line "a fancy guy in"
	cont "red clothes."

	para "You'll recognize"
	line "him right away!"
	
	para "And, uh, don't"
	line "tell anyone else"
	cont "where you got"
	cont "that mail, OK?"
	done

Route35GoldenrodGateRandyCantCarryAnotherMonText:
	text "You can't carry"
	line "another #mon…"
	done

Route35GoldenrodGateRandyOhNeverMindThenText:
	text "Oh… Never mind,"
	line "then…"
	done

Route35GoldenrodGateRandySomethingForYourTroubleText:
	text "Thanks, kid! You"
	line "made the delivery"
	cont "for me!"

	para "Here's something"
	line "for your trouble!"
	done

Route35GoldenrodGateRandyMyPalWasSnoozingRightText:
	text "My pal was snooz-"
	line "ing, right? Heh,"
	cont "what'd I say?"
	done

Route35GoldenrodGatePokefanFText:
	text "Isn't it weird"
	line "how Whitney's"
	cont "friends don't have"
	cont "any cute #mon?"
	done


Route35GoldenrodGateFisherText:
	text "I wonder how many"
	line "kinds of #mon"

	para "there are in the"
	line "world."

	para "Three years ago,"
	line "Prof.Oak said that"

	para "there were 150"
	line "different kinds."
	
	para "Now, there are"
	line "hundreds more!"
	
	para "Science sure is"
	line "amazing."
	done

KurtGoldenrodGateScript:
	faceplayer
	opentext
	writetext HearAStory_2Text
	yesorno
	iffalse DontHearHearStory2
	writetext KurtGoldenrodGateText
	clearevent EVENT_KURTS_HOUSE_BOOK_2
	closetext
	end
	
DontHearHearStory2:
	writetext SomeOtherTime_2Text
	closetext
	end

HearAStory_2Text:
	text "<PLAYER>, would"
	line "you like to hear"
	cont "another story"
	cont "about your dad?"
	done

SomeOtherTime_2Text:
	text "Some other time."
	done

KurtGoldenrodGateText:
	text "Underground, we'd"
	line "come for haircuts."
	
	para "The trip from"
	line "Azalea was so"
	line "long. He would"
	cont "hold his apricorn"
	cont "all the way, its"
	cont "glow visible in"
	cont "his hands."
	
	para "At the haircut, "
	line "Cyndaquil's flame"
	cont "grew and shrank"
	cont "in the mirror,"
	
	para "and your dad lau-"
	line "ghed every time"
	cont "the barber had to"
	cont "work around it."
	
	para "If you ever want"
	line "to hear it again,"
	para "check the journal"
	line "in my house."
	done
