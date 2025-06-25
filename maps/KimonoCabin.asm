KimonoCabin_MapScriptHeader: ; these people have all fled Capital for fear of losing their knowledge
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  3, 9, HOLLYS_HOLT, 5
	warp_event  4, 9, HOLLYS_HOLT, 6

	def_coord_events



	def_bg_events
	bg_event  0, 0, BGEVENT_JUMPTEXT, KimonoCabinBookshelfText


	def_object_events ; sprites: cute_girl, lass, ace_trainer_f, matron, granny
	object_event  5,  6, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE,  OBJECTTYPE_SCRIPT, 0, KimonoCabin1Script, -1 ; "Vera" , revise dialogue to be a scared little girl
	object_event  2,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN,  OBJECTTYPE_SCRIPT, 0, KimonoCabin2Script, -1 ; " Piper", a young girl who wants to save the garden
	object_event  9,  4, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN,  OBJECTTYPE_SCRIPT, 0, KimonoCabin3Script, -1 ; "Samaria" , a  woman who is ready to face fears
	object_event  6,  3, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED,  OBJECTTYPE_SCRIPT, 0, KimonoCabin4Script, -1 ; "Shiji" , an older woman who wants her vision to be accepted
	object_event  3,  2, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE,  OBJECTTYPE_SCRIPT, 0, KimonoCabin5Script, -1 

	; books 
	object_event  7,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptext, KimonoCabinShijiNotebook1, EVENT_KIMONO_CABIN_LAPRAS
	object_event  8,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptext, KimonoCabinSamariaNotebook1, EVENT_KIMONO_CABIN_LAPRAS

	object_event  3,  5, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptext, KimonoCabinPiperNotebook1, EVENT_KIMONO_CABIN_LAPRAS
	object_event  4,  6, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, KimonoCabinVeraNotebook1, EVENT_KIMONO_CABIN_LAPRAS

	object_event  2,  2, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptext, KimonoCabinMorpheaNotebook1, EVENT_KIMONO_CABIN_MORPHEA_NOTEBOOK

	object_const_def


KimonoCabin1Script:
	faceplayer
	opentext
	checkevent EVENT_KIMONO_CABIN_DRATINI
	iftrue_jumpopenedtext Kimono1HelpedText
	writetext Kimono1AskHelpText
	yesorno
	iffalse_jumpopenedtext Kimono1DeclinedText
	writetext Kimono1ThanksForHelpingText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp KIMONO_CABIN_1, 18, 18
	end

Kimono1HelpedText:
	text "Vera: Hey cool"
	line "trainer!"
	para "Thanks for your"
	line "help."
	para "Great-grandma"
	line "Shiji is proud"
	para "that I can rock"
	line "smash now."
	done
	
Kimono1AskHelpText:
	text "Vera: Hi! My"
	line "name is Vera."
	para "Are you from"
	line "Anarres?"
	para "Can you tell me"
	line "if it gets more"
	cont "fun here?"
	para "My great-"
	line "grandma Shiji"
	para "made us move"
	line "here, and now"
	para "I have chores."
	line "For instance I"
	para "have to go down"
	line "to fuh-reezing"
	para "cellar to clear"
	line "rocks."
	para "And there's a"
	line "big scary worm"
	para "just writhing"
	line "around."
	para "Would you help"
	line "me? Pleeease?"
	done

Kimono1DeclinedText:
	text "Vera: Oh"
	line "brother... I'm"
	para "never gonna"
	line "make it here."
	done

Kimono1ThanksForHelpingText:
	text "Vera: Thanks!"
	line "Here, I'll show"
	cont "you the way."
	done
	

KimonoCabin2Script:
	faceplayer
	opentext
	checkevent EVENT_BATTLED_CABIN_LARVITAR
	iftrue_jumpopenedtext Kimono2HelpedText
	checkevent EVENT_BEAT_HOLLIS
	iffalse_jumpopenedtext Kimono2NotStrongEnoughText
	checkevent EVENT_KIMONO_CABIN_DRATINI
	iffalse_jumpopenedtext Kimono2NotStrongEnoughText
	writetext Kimono2AskHelpText
	yesorno
	iffalse_jumpopenedtext Kimono2DeclinedText
	writetext Kimono2ThanksForHelpingText
	waitbutton
	closetext
	; clearevents
	clearevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_1
	clearevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_2
	clearevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_3
	clearevent EVENT_KIMONO_CABIN_2_LARVITAR_MOVED_4	
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp KIMONO_CABIN_2,  8, 11
	end

Kimono2HelpedText:
	text "Piper: Thanks"
	line "for your help"
	cont "out there."

	para "Maybe people"
	line "can learn,"
	cont "after all."
	done
	
Kimono2NotStrongEnoughText: ; TODO REWRITE 
	text "Piper: It's so"
	line "unfair. I was"
	para "about to be prom-"
	line "oted, but now I'm"
	para "here thanks to"
	line "that dumb Consul."

	para "Why does"
	line "grandma Shiji"
	cont "even bother?"

	para "Hey, tell you"
	line "what. I'm"
	para "setting up a"
	line "garden, but"
	para "have to coax"
	line "this hedgehog"
	cont "out of the dirt."
	
	para "I would show"
	line "you how, but"
	para "you don't look"
	line "like you could"
	cont "handle it."
	done
	
Kimono2AskHelpText: ; TODO REWRITE 
	text "Piper: It's so"
	line "unfair. I was"
	para "about to be prom-"
	line "oted, but now I'm"
	para "here thanks to"
	line "that dumb Consul."

	para "Why does"
	line "grandma Shiji"
	cont "even bother?"

	para "Hey, tell you"
	line "what. I'm"
	para "setting up a"
	line "garden, but"
	para "have to coax"
	line "this hedgehog"
	cont "out of the dirt."
	
	para "If I can teach"
	line "you, an outsider,"
	
	para "how to use her"
	line "method, then"
	para "maybe there's hope"
	line "for others."
	done

Kimono2DeclinedText:
	text "Piper: No?"
	line "Figures, enjoy"
	para "living under"
	line "the Consul's"
	para "boots. We'll"
	line "still be here,"
	para "living off the"
	line "land."
	done
	
Kimono2ThanksForHelpingText:
	text "Piper: OK,"
	line "Great! I'll"
	cont "take you there."
	para "Don't screw"
	line "this up, OK?"
	done



	
KimonoCabin3Script: ; samaria 
	faceplayer
	opentext
	checkevent EVENT_KIMONO_CABIN_SNEASEL
	iftrue_jumpopenedtext Kimono3HelpedText
	checkevent EVENT_BEAT_BOBESH_STADIUM
	iffalse_jumpopenedtext Kimono3NotStrongEnoughText
	checkevent EVENT_KIMONO_CABIN_LARVITAR
	iffalse_jumpopenedtext Kimono3NotStrongEnoughText
	checkevent EVENT_KIMONO_CABIN_LARVITAR
	writetext Kimono3AskHelpText
	yesorno
	iffalse_jumpopenedtext Kimono3DeclinedText
	writetext Kimono3ThanksForHelpingText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp KIMONO_CABIN_3,  5, 28
	end

Kimono3HelpedText:
	text "It was a feisty"
	line "Sneasel making"
	cont "that racket!"
	
	para "Thanks for your"
	line "help. It's scary,"
	para "being in the dark"
	line "unsure of your"
	cont "next steps."
	line 

Kimono3NotStrongEnoughText:
	text "Samaria: Oh,"
	line "hello. Welcome"
	cont "to our cabin."
	para "Sorry if we"
	line "smell, my"
	para "daughter Piper"
	line "keeps taking"
	para "all the hot"
	line "water."
	para "Say, I stashed"
	line "some soaps in"
	para "the attic, but"
	line "I hear some-"
	para "thing scratch-"
	line "ing around up"
	cont "there."
	para "Oh, you look"
	line "pretty green..."
	para "I doubt you"
	line "could help."
	done
	
Kimono3AskHelpText:
	text "Samaria: Oh,"
	line "hello. Welcome"
	cont "to our cabin."
	para "Sorry if we"
	line "smell, my"
	para "daughter Piper"
	line "keeps taking"
	para "all the hot"
	line "water."
	para "Say, I stashed"
	line "some soaps in"
	para "the attic, but"
	line "I hear some-"
	para "thing scratch-"
	line "ing around up"
	cont "there."
	para "You look brave."
	line "Can you help me"
	cont "investigate?"
	done
	
Kimono3DeclinedText:
	text "Samaria: No?"
	line "Well, I suppose"
	cont "we can always"
	done

Kimono3ThanksForHelpingText:
	text "Samaria:"
	line "Thanks! I'll"
	cont "take you up"
	cont "there now."
	done

KimonoCabin4Script: ; shiji 
	; todo: after completing this, clear the event for morphea's notebook 
	faceplayer
	opentext
	checkevent EVENT_KIMONO_CABIN_LAPRAS
	iftrue_jumpopenedtext Kimono4HelpedText
	checkevent EVENT_BEAT_REI ; chronicler vespera 
	iffalse_jumpopenedtext Kimono4NotStrongEnoughText
	checkevent EVENT_KIMONO_CABIN_SNEASEL
	iffalse_jumpopenedtext Kimono4NotStrongEnoughText
	writetext Kimono4AskHelpText
	yesorno
	iffalse_jumpopenedtext Kimono4DeclinedText
	writetext Kimono4ThanksForHelpingText
	clearevent EVENT_SOLVED_KIMONO_4_SUDOKU ; 
	clearevent EVENT_EXPLAINED_SUDOKU
	waitbutton
	closetext
	; clearevents for the switches
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp KIMONO_CABIN_4,  6, 8
	end

Kimono4HelpedText:
	text "Shiji: Darling!"
	para "Thanks again"
	line "for your help"
	cont "in the garden."
	para "When you get"
	line "old and grey"
	para "like me, make"
	line "sure you teach"
	para "someone else,"
	line "hear?"
	done

Kimono4NotStrongEnoughText:
	text "Shiji: Darling!"
	line "A visitor!"
	para "I knew we would"
	line "have some soon"
	cont "enough."
	para "Have you come"
	line "to learn how to"
	para "work with"
	line "nature?"
	para "I'm setting up"
	line "a garden, but"
	para "I'm not strong"
	line "enough to move"
	para "the landscaping"
	line "around."
	para "Oh, but you"
	line "don't look"
	cont "strong enough."
	para "..."
	line "..."
	para "Maybe this"
	line "whole move was"
	cont "a bad idea."
	done

Kimono4AskHelpText:
	text "Shiji: Darling!"
	line "A visitor!"
	para "I knew we would"
	line "have some soon"
	cont "enough."
	para "Have you come"
	line "to learn how to"
	para "work with"
	line "nature?"
	para "I'm setting up"
	line "a garden, but"
	para "I'm not strong"
	line "enough to move"
	para "the landscaping"
	line "around."
	para "I can teach you"
	line "some landscap-"
	cont "ing to attract"
	cont "rare #mon."
	done

Kimono4DeclinedText:
	text "Really? That is"
	line "quite sad..."
	para "maybe the last"
	line "garden in Johto"
	para "has already"
	line "been tilled."
	done

Kimono4ThanksForHelpingText:
	text "Wonderful! You"
	line "won't regret"
	cont "it."
	para "Please come"
	line "with me!"
	done

KimonoCabin5Script:
	faceplayer
	opentext
	checkevent EVENT_KIMONO_CABIN_EEVEE
	iftrue_jumpopenedtext Kimono5HelpedText
	checkevent EVENT_BEAT_KENSEY_DOCKS ; plot check 
	iffalse_jumpopenedtext Kimono5NotStrongEnoughText
	checkevent EVENT_KIMONO_CABIN_LAPRAS ; from kimono cabin 4
	iffalse_jumpopenedtext Kimono5NotStrongEnoughText
	writetext Kimono5AskHelpText
	yesorno
	iffalse_jumpopenedtext Kimono5DeclinedText
	writetext Kimono5ThanksForHelpingText
	waitbutton
	closetext
	; clear events for the warps
	setevent EVENT_KIMONO_CABIN_5_GRANNY
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp KIMONO_CABIN_5,  8, 16
	end

Kimono5HelpedText:
	text "Morphea:"
	line "Thank you again"
	cont "for your help."
	para "We will be"
	line "leaving this"
	para "cabin very"
	line "soon..."
	para "my great-"
	line "grandson Amos"
	para "tells me that"
	line "the time is nigh"
	para "to inscribe our"
	line "knowledge"
	cont "across Johto."
	para "Others like us"
	line "are already"
	cont "started."
	done

Kimono5NotStrongEnoughText:
	text "Morphea:"
	line "stay still, my"
	para "eyes are so"
	line "bad."
	para "The only time I"
	line "see clearly is"
	cont "in my dreams."
	para "Every night, I"
	line "dream that I am"
	para "adrift in the"
	line "winds of fate."
	para "But who has"
	line "time for dreams"
	para "when my family"
	line "still has such"
	cont "strife?"
	done
	
Kimono5AskHelpText:
	text "Morphea:"
	line "stay still, my"
	para "eyes are so"
	line "bad."
	para "The only time I"
	line "see clearly is"
	cont "in my dreams."
	para "Every night, I"
	line "dream that I am"
	para "adrift in the"
	line "winds of fate."
	para "Do you think"
	line "you can help me"
	cont "interpret it?"
	done

Kimono5DeclinedText:
	text "Morphea: Who "
	line "could blame"
	para "you... We can't"
	line "force anyone to"
	para "choose any"
	line "path."
	done

Kimono5ThanksForHelpingText:
	text "Morphea: "
	line "Oh, thank you."

	para "Here, rest your"
	line "hand on my head"
	cont "as I drift off..."
	done


KimonoCabinShijiNotebook1:
	text "Shiji's Journal: "
	line "Only a few months"
	para "with access to"
	line "#balls, and I"

	para "haven't seen a"
	line "single apricorn "
	para "being crafted by"
	line "anyone outside the"
	cont "Dance Theatre."

	para "Something must be"
	line "done to preserve"
	para "this knowledge, in"
	line "case we ever need"
	cont "it again!"
	done
	
KimonoCabinSamariaNotebook1:
	text "Samaria's Jour-"
	line "nal: I had forgot-"
	para "ten just how hard"
	line "manual labor is,"
	
	para "prior to the new"
	line "comforts he emp-"
	cont "eror delivered."
	
	para "Perhaps Shiji has"
	line "made a mistake in"
	para "leaving..."
	done
	
KimonoCabinPiperNotebook1:
	text "Piper's Journal:"
	line "Ugh! The Consul!"
	para "I was just about"
	line "to be promoted!"
	
	para "He tries to build"
	line "up the city, but"
	para "his methods make"
	line "everyone reliant"
	cont "on him."
	
	para "My Amos and I, we"
	line "will not grow old"
	para "without learning"
	line "how to thrive in-"
	para "depently of his"
	line "exploitation."
	done

KimonoCabinVeraNotebook1:
	text "Vera's Journal:"
	line "At the cabin, ev-"
	para "eryone but mom"
	line "smells bad."
	
	para "And no one ever"
	line "dances anymore."
	
	para "And there isn't"
	line "any candy."
	
	para "Oh, the other day"
	line "I saw a cute Cyn-"
	cont "daquil!"
	done
	
KimonoCabinMorpheaNotebook1:
	text "Morphea's Journ-"
	line "al: My daughter"
	cont "is so headstrong."
	
	para "Did she overreact,"
	line "were things really"
	cont "so bad there?"
	
	para "Did I raise her "
	line "properly to adapt"
	cont "to the world?"

	para "Is she adrift in"
	line "the world, or is"
	cont "she navigating it"
	cont "adeptly?"
	
	para "And now, this hum-"
	line "ble holt seems to"
	cont "be afflicted by "
	cont "the same tyranny"
	cont "as the capital."
	done

KimonoCabinBookshelfText:
	text "There's a lot"
	line "of books..."
	
	para "Sewing with silk,"
	line "Apricorn craft,"
	
	para "Dancing apart"
	line "from time..."
	done
