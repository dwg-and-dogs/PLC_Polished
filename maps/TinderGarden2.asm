TinderGarden2_MapScriptHeader:
	def_scene_scripts
	scene_script TinderGarden2Script ; warp in at 4, 2

	def_callbacks


	def_warp_events
	

	def_coord_events


	def_bg_events


	def_object_events
	object_event  4,  3, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_UP, 	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  1, SPRITE_BLACK_BELT, 	SPRITEMOVEDATA_STANDING_DOWN, 	0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  3, SPRITE_SCHOOLBOY, 	SPRITEMOVEDATA_STANDING_UP, 	0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  1, SPRITE_WHITNEY, 	SPRITEMOVEDATA_STANDING_DOWN, 	0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	pokemon_event   7, 2, PINECO, 		-1, -1, PAL_NPC_BLUE, 	TG2Text, -1 ; POISON VS GRASS VS ROCK/GND
	pokemon_event   8, 2, TANGELA, 		-1, -1, PAL_NPC_GREEN, 	TG2Text, -1
	pokemon_event   9, 2, GEODUDE, 		-1, -1, PAL_NPC_BROWN, 	TG2Text, -1	
	

	object_const_def
	const TINDER_GARDEN_2_SCHOOLGIRL
	const TINDER_GARDEN_2_PRYCE	
	
TG2Text:
	text "..."
	end

TinderGarden2Script:
	opentext
	showtext TG2_Text1
	waitbutton
	closetext
	pause 30
	opentext
	writetext TG2_Text2
	waitbutton
	closetext
	showemote EMOTE_HEART, TINDER_GARDEN_2_PRYCE, 10
	applyonemovement TINDER_GARDEN_2_PRYCE, step_down
	turnobject TINDER_GARDEN_2_PRYCE, RIGHT
	opentext 
	writetext TG2_Text_Kurt5
	pause 30
	waitbutton
	writetext TG2_Text_Kurt5_2
	pause 30
	waitbutton
	writetext TG2_Text_Kurt5_3
	pause 30
	waitbutton
	closetext

	clearevent EVENT_KURTS_HOUSE_BOOK_1
	clearevent EVENT_KURTS_HOUSE_BOOK_2
	clearevent EVENT_KURTS_HOUSE_BOOK_3
	clearevent EVENT_KURTS_HOUSE_BOOK_4
	clearevent EVENT_KURTS_HOUSE_BOOK_5
	clearevent EVENT_KURTS_HOUSE_BOOK_6
	
	applyonemovement TINDER_GARDEN_2_PRYCE, step_up
	turnobject TINDER_GARDEN_2_PRYCE, DOWN
	
	showemote EMOTE_HAPPY, TINDER_GARDEN_2_SCHOOLGIRL, 15
	opentext
	writetext TG2_Text3
	waitbutton
	closetext
	halloffame
	end


TG2_Text1:
	text "Twenty years"
	line "later:"
	done
	
TG2_Text2:
	text_high
    text " <PLAYER>: " 
	next
	text_start
	text "Children. We're"	
	line "here to honor"
	cont "nature's cycles."
	
	para "We are not above"
	line "or below it, but"
	cont "a part of it."
	
	para "Just as a forest"
	line "needs growth and"
	cont "decay,"
	
	para "We need tradition"
	line "and innovation."
	
	para "We are all part"
	line "of an endless"
	cont "cycle."
	done

TG2_Text_Kurt5:
	text "<RIVAL>'s Father:"
	line "Ah, <PLAYER>. The"
	para "Kimono Girls in"
	line "Ecruteak found a"
	para "journal in the"
	line "rubble of the"
	cont "Burned Tower."
	
	para "It says it was"
	line "your grandpa's,"
	
	para "and addressed"
	line "to you."
	
	para "I don't know how"
	line "it got there, but"
	cont "it's genuine."
	
	para "I'd like to read"
	line "it to you."
		
	para "Eh-Hem."
	done

TG2_Text_Kurt5_2: ; todo 
	text_high
    text " Kurt's Journal: " 
	next
	text_start		
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


TG2_Text_Kurt5_3: ; todo 
	text "<RIVAL>'s Father:"
	line "Kurt would be so"
	para "proud of you,"
	line "<PLAYER>."
	done

TG2_Text3:
	text "Um, <PLAYER>, can"
	line "you please tell"
	cont "us one more time"
	
	para "about the hero on"
	line "the Burned Tower?"
	done
