CharcoalKiln_MapScriptHeader:
	def_scene_scripts
	scene_script CharcoalKilnGettingReadyTrigger

	def_callbacks

	def_warp_events
	warp_event  3,  7, AZALEA_TOWN, 2
	warp_event  4,  7, AZALEA_TOWN, 2

	def_coord_events

	
	def_bg_events
	bg_event  1,  3, BGEVENT_JUMPTEXT, CharcoalKilnStillText

	def_object_events
	object_event  3,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CharcoalKilnBoss, EVENT_GOT_A_POKEMON
	object_event  4,  4, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnApprentice, EVENT_GOT_A_POKEMON ; should not appear after you get a mon
	object_event  8,  6, SPRITE_FARFETCH_D, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnFarfetchdScript, EVENT_GOT_A_POKEMON
	object_event  8,  6, SPRITE_FARFETCH_D, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnFarfetchdScript, EVENT_KILN_BOSS
	object_event  2,  3, SPRITE_CHEMISTRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 	PAL_NPC_BROWN, 	OBJECTTYPE_COMMAND, jumptext, KilnChemistryText, -1
	object_event  3,  3, SPRITE_CHEMISTRY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 	PAL_NPC_RED, 	OBJECTTYPE_COMMAND, jumptext, KilnChemistryText, -1	
	object_event  4,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CharcoalKilnBoss, EVENT_KILN_BOSS
	object_event  4,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RivalLetterScript, EVENT_AZALEA_BLACKBELT_POSTGAME


	object_const_def
	const CHARCOAL_BLACK_BELT
	const CHARCOAL_RIVAL

CharcoalKilnGettingReadyTrigger:
	sdefer .Script
	end

.Script:
	pause 30
	turnobject CHARCOAL_BLACK_BELT, LEFT
	waitsfx
	applymovement CHARCOAL_BLACK_BELT, .Movement1
	pause 60
	opentext
	writetext .CharcoalKilnLookingText
	waitbutton
	closetext
	applymovement CHARCOAL_BLACK_BELT, .Movement2
	applymovement CHARCOAL_RIVAL, .Movement3
	opentext
	writetext .CharcoalKilnSoonText
	waitbutton
	closetext
	setscene $1
	setevent EVENT_CHARCOAL_TALKED
	end

.Movement1:
	turn_head_left
	step_left
	step_left
	turn_head_up
	step_end

.CharcoalKilnLookingText

	text_high
    text " <RIVAL>'s Dad: " 
	next
	text_start 

	text "Where is it? Why"
	line "can't you ever"
	para "clean your stupid"
	line "chemistry kits?"
	done

.Movement2:
	turn_head_right
	step_right
	step_right
	turn_head_down
	step_end
	
.Movement3:
	turn_head_down
	step_end
	
.CharcoalKilnSoonText:
	text  "Ah, <PLAYER>. We"
	line "are almost ready."
	done
	
CharcoalKilnBoss:
	checkevent EVENT_GOT_A_POKEMON
	iftrue_jumptextfaceplayer .Text3
	jumpthistextfaceplayer

	text "Made any nice"
	line "Apricorns?"

	para "That's handy."
	
	para "I don't know how"
	line "we'll stay here,"
	para "with the drought"
	line "taking our trees."
	
	para "We'll never make"
	line "enough Charcoal"
	cont "to make a living."
	done

.Text3:
	text "I wonder where"
	line "my son went."
	
	para "I think I've been"
	line "too harsh to him."
	done

CharcoalKilnApprentice:
	faceplayer
	opentext
	writetext .Text1
	promptbutton
	endtext

.Text1:
	text "After my ceremony"
	line "I can finally be"
	cont "more independent."
	done

CharcoalKilnFarfetchdScript:
	faceplayer
	showcrytext .Text, NOCTOWL
	end

.Text:
	text "Farfetch'd: Kwaa!"
	
	para "It's one of the"
	line "last Farfetch'd"
	cont "in Johto!"
	done

CharcoalKilnStillText:
	text "A design for"
	line "extracting oil"
	cont "from Apricorns."
	
	para "Looks like a"
	line "lot of work!"
	done

KilnChemistryText:
	text "A complicated set"
	line "of beakers for"
	cont "extracting aroma"
	cont "from tree bark,"
	
	para "haphazardly"
	line "assembled by"
	cont "<RIVAL>."
	
	para "Smells like"
	line "Charcoal!"
	done


RivalLetterScript:
	italictypeface
	showtext RivalLetterText
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

RivalLetterText:
	text "Dad, I'm writing"
	line "from Blackthorn."
	
	para "Professor Elm"
	line "helped me get"
	cont "into Eastern"
	cont "Johto."
	
	para "I'm working on a"
	line "project with the"
	cont "elders here."
	
	para "The water in the"
	line "Dragon's Den makes"
	para "#mon remain"
	line "youthful and"
	cont "energetic."
	
	para "I'm going to study"
	line "it to help people"
	cont "for once."
	
	para "I know you wanted"
	line "me to take over"
	para "the Kiln, but I"
	line "resented the path"
	cont "laid out for me."
	
	para "I thought that I'd"
	line "found my calling"
	para "when Silph put me"
	line "in charge of the"
	cont "OMLAS project,"
	
	para "but that was just"
	line "another role for"
	cont "me to play."
	
	para "I wasn't going to"
	line "be another Part"
	cont "in their Machine."
	
	para "I was made for"
	line "this. In the"
	para "still waters of"
	line "the Dragon's Den"
	para "my reflection is"
	line "almost coming"
	cont "into focus."
	cont "-<RIVAL>"
	done
