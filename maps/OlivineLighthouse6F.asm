OlivineLighthouse6F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	

	def_warp_events
	warp_event  8, 14, OLIVINE_LIGHTHOUSE_3F, 2
	warp_event  9,  2, OLIVINE_LIGHTHOUSE_ROOF, 1

	def_coord_events 
	; 0 = go to the slowking
	coord_event 13, 11, 0, Lighthouse6FScene0 
	; after you warp, this'll have to be rewritten that you keep heading left until you see them 
	coord_event  8, 10, 1, Lighthouse6FScene1
	coord_event  8, 11, 1, Lighthouse6FScene2


	
	def_bg_events
	bg_event  6,  6, BGEVENT_JUMPTEXT, LighthousePoisonText
	bg_event  6,  7, BGEVENT_JUMPTEXT, LighthousePoisonText
	bg_event  6,  8, BGEVENT_JUMPTEXT, LighthousePoisonText
	bg_event  6,  9, BGEVENT_JUMPTEXT, LighthousePoisonText
	bg_event  7,  9, BGEVENT_JUMPTEXT, LighthousePoisonText
	bg_event  8,  9, BGEVENT_JUMPTEXT, LighthousePoisonText
	bg_event  9,  9, BGEVENT_JUMPTEXT, LighthousePoisonText
	bg_event 10,  9, BGEVENT_JUMPTEXT, LighthousePoisonText
	bg_event 11,  9, BGEVENT_JUMPTEXT, LighthousePoisonText
	bg_event 11,  8, BGEVENT_JUMPTEXT, LighthousePoisonText
	bg_event 11,  7, BGEVENT_JUMPTEXT, LighthousePoisonText
	bg_event 11,  6, BGEVENT_JUMPTEXT, LighthousePoisonText

	def_object_events
	object_event 14, 10, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LighthouseKurtScript, EVENT_BEAT_CHUCK
	object_event 6, 10, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_CHUCK	
	object_event 7, 10, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_CHUCK	
	pokemon_event 9, 9, SLOWKING, -1, -1, PAL_NPC_RED, SlowkingLighthouseText, EVENT_SLOWKING_DREAMS
	pokemon_event 9, 8, TENTACRUEL, -1, -1, PAL_NPC_BLUE, TentacruelLighthouseText, EVENT_SLOWKING_DREAMS
	object_event 18,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Lighthouse6FScientistScript, -1
	object_event 14,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Lighthouse6FScientist2Text, EVENT_BEAT_CHUCK
	itemball_event  2,  9, DUBIOUS_DISC, 1, EVENT_DUBIOUS_DISC

	object_const_def
	const LIGHTHOUSE_KURT1
	const LIGHTHOUSE_JASMINE
	const LIGHTHOUSE_CHUCK
	const LIGHTHOUSE_SLOWKING
	const LIGHTHOUSE_TENTACRUEL

Lighthouse6FScene0:
	applyonemovement PLAYER, step_up
Lighthouse6FScene:
<<<<<<< HEAD
	applyonemovement PLAYER, step_left
	applyonemovement PLAYER, step_left
	applyonemovement PLAYER, step_left ; now at 10, 10 
	showemote EMOTE_SAD, LIGHTHOUSE_JASMINE, 10
	showtext LighthouseJasmineText1
	showemote EMOTE_BOLT, LIGHTHOUSE_CHUCK, 10
	showtext LighthouseChuckText1
	turnobject LIGHTHOUSE_KURT1, LEFT
	showemote EMOTE_BOLT, LIGHTHOUSE_KURT1, 10 
	showtext LighthouseKurtText1
=======
	turnobject LIGHTHOUSE_KURT1, LEFT
	applyonemovement PLAYER, step_left 
	applyonemovement PLAYER, step_left 
	applyonemovement PLAYER, step_left 
	showemote EMOTE_SAD, LIGHTHOUSE_JASMINE, 30
	opentext
	writetext LighthouseJasmineText1
	waitbutton
	showemote EMOTE_BOLT, LIGHTHOUSE_CHUCK, 30
	writetext LighthouseChuckText1
	waitbutton
	showemote EMOTE_BOLT, LIGHTHOUSE_KURT1, 30 
	writetext LighthouseKurtText1
	waitbutton
>>>>>>> newgame_works_072725_c8be725
	closetext
	applyonemovement PLAYER, step_left
	turnobject PLAYER, UP
	special HealParty
	showtext Lighthouse6F_FathomText
	warpfacing UP, SLOWPOKE_DREAMS, 4, 5
	end
;
LighthouseJasmineText1:
	text_high
    text " Jasmine: "
	next
	text_start
	text "You're sick!"
	line "How can you do"
	cont "this?"
	done

LighthouseChuckText1:
	text_high
    text " Chuck: "
	next
	text_start
	text "Look. It doesn't"
	line "matter - The"
	cont "struggle is how"
	
	para "OMLAS Slowking's"
	line "brain gets more"
	cont "powerful!"
	
	para "It's our guardian"
	line "from the sea!"
	done

LighthouseKurtText1:
	text_high
    text " Kurt: "
	next
	text_start
	text "<PLAYER>, do"
	line "something!"
	done

Lighthouse6F_FathomText:
	text "Slowking: You"
	line "fathom what I am"
	cont "enduring for you."

	para "Step inside."
	done

Lighthouse6FScene2:
	applyonemovement PLAYER, step_up
Lighthouse6FScene1:
	turnobject PLAYER, LEFT
	turnobject LIGHTHOUSE_CHUCK, RIGHT
	showemote EMOTE_BOLT, LIGHTHOUSE_CHUCK, 30
	opentext
	writetext LighthouseChuckText2
	waitbutton
	showemote EMOTE_QUESTION, LIGHTHOUSE_JASMINE, 30
	writetext LighthouseJasmineText2
	waitbutton
	writetext LighthouseChuckText3
	waitbutton
	winlosstext ChuckLossText, 0
	loadtrainer CHUCK, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CHUCK
	opentext
	writetext GetStormBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_STORMBADGE
	promptbutton
	turnobject LIGHTHOUSE_CHUCK, LEFT
	opentext
	writetext LighthouseJasmineText3
	waitbutton
	writetext LighthouseChuckText4
	waitbutton
	closetext
	applymovement LIGHTHOUSE_CHUCK, LighthouseChuckLeavesMovement
	disappear LIGHTHOUSE_CHUCK
	applyonemovement LIGHTHOUSE_JASMINE, step_right
	showemote EMOTE_HAPPY, LIGHTHOUSE_JASMINE, 30
	showtext LighthouseJasmineText4
	applymovement LIGHTHOUSE_JASMINE, LighthouseChuckLeavesMovement
	disappear LIGHTHOUSE_JASMINE
	clearevent EVENT_JASMINE_GYM
	setscene $2
	end
	
	
LighthouseChuckText2:
	text_high
    text " Chuck: "
	next
	text_start
	text "What did you do?"
	line "That Slowking was"
	cont "our forecaster!"
	
	para "We had perfect"
	line "knowledge. I had"
	cont "perfect control!"
	done

LighthouseJasmineText2:
	text_high
    text " Jasmine: "
	next
	text_start
	text "Why did you keep"
	line "me blind to this?"
	
	para "That Slowking was"
	line "in such pain!"
	done

LighthouseChuckText3:
	text_high
    text " Chuck: "
	next
	text_start
	text "I'd have mapped"
	line "the future."
	para "You think you'd"
	line "be better alone?"
	
	para "I lost one home"
	line "to the whims of"
	cont "fate."
	
	para "I won't lose an-"
	line "other. You child,"
	cont "battle me!"
	done
	
ChuckLossText:
	text "I thought I knew"
	line "it all?"
	done

GetStormBadgeText:
	text_high
    text " Chuck: "
	next
	text_start
	text "Cianwood washed"
	line "away, but not my"
	cont "duty. You deserve"
	cont "this badge."
	done
	
LighthouseJasmineText3:
	text_high
    text " Jasmine: "
	next
	text_start
	text "You convinced"
	line "me progress was"
	cont "always good, but"
	
	para "you limited us."
	line "Running the desal"
	para "at its original"
	line "level, it may"
	
	para "take generations"
	line "for the shore to"
	cont "recover."
	
	para "Your Slowking did"
	line "not bring us into"
	para "balance, it made"
	line "us even more"
	cont "unsteady."
	done

LighthouseChuckText4:
	text_high
    text " Chuck: "
	next
	text_start
	text "Maybe you're"
	line "right. Let's go."
	done

LighthouseJasmineText4:
	text_high
    text " Jasmine: "
	next
	text_start
	text "That was very"
	line "brave. If you'd"
	para "like, you can"
	line "meet me at my"
	cont "gym."
	done

LighthouseChuckLeavesMovement:
	step_down
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

SlowkingLighthouseText:
	text "OMLAS: ..."
	done
	
TentacruelLighthouseText:
	text "Tentacruel:"
	line "Acruu!"
	done
	

LighthouseKurtScript:
	faceplayer
	checkevent EVENT_BEAT_CHUCK
	iftrue_jumptext LighthouseKurtAfterChuck
	checkevent EVENT_SLOWKING_DREAMS
	iftrue_jumptext LighthouseKurtAfterDreams
	showtext LighthouseKurtText0
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 30
	special RestartMapMusic
	special Special_FadeInQuickly
	end 

LighthouseKurtAfterDreams:
	text "The Slowking isn't"
	line "in pain any more,"
	
	para "but Chuck needs"
	line "to be stopped!"
	done

LighthouseKurtText0:
	text_high
    text " Kurt: "
	next
	text_start
	text "Do you hear what"
	line "Chuck is doing in"
	cont "there?"
	
	para "That Slowking,"
	line "locked up in the"
	cont "pool - I can't"
	
	para "fathom how that"
	line "could ever be OK."

	para "Let me heal your"
	line "#mon before"
	cont "we face Chuck."
	done
	
LighthouseKurtAfterChuck:
	text_high
    text " Kurt: "
	next
	text_start
	text "I'm ashamed to"
	line "say that I recog-"
	cont "nized the look in"
	cont "Chuck's eyes."
	
	para "It's the same one"
	line "that was in my"
	para "reflection, when"
	line "I commanded Lugia"
	cont "at the port."
	
	para "A lack of aware-"
	line "ness about what"
	cont "might be lost,"
	
	para "How difficult it"
	line "might be to rest-"
	cont "ore balance."
	
	para "Hopefully, Celebi"
	line "was watching, and"
	para "will see that I"
	line "have learned."
	done
	
Lighthouse6FScientistScript:
	checkevent EVENT_BEAT_CHUCK
	iftrue_jumptextfaceplayer Lighthouse6FScientistText2
	
	jumpthistext
	
	text "If the half life"
	line "of the toxin is X,"
	
	para "and the context"
	line "windows persist"
	cont "for Y, then we "
	para "need ... how many"
	line "Tentacruels for"
	cont "the forecast?"
	done
	
	
Lighthouse6FScientistText2:
	text "What will become"
	line "of this? I hope"
	cont "an infinity pool."
	done

Lighthouse6FScientist2Text:
	text "I can't remember"
	line "how this thing"
	cont "goes together!"
	
	para "Knowledge is of"
	line "no value, unless"
	para "it can be used"
	line "when occasion"
	cont "demands!"
	done

LighthousePoisonText:
	text "The water in the"
	line "pool has a foul"
	cont "odor. Stay clear!"
	done
