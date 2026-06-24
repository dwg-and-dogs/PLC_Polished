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
	object_event 12,  16, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Lighthouse6FScientist3Text, -1	
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
	writetext LighthouseKurtText1
	waitbutton
	closetext
	applyonemovement PLAYER, step_left
	turnobject PLAYER, UP
	special HealParty
	pause 30 
	showtext Lighthouse6F_FathomText
	warpfacing UP, SLOWPOKE_DREAMS, 4, 5
	end
;
LighthouseJasmineText1:
	text_high
    text " Jasmine: "
	next
	text_start
	text "You're sick! How"
	line "can you do this?"
	done

LighthouseChuckText1:
	text_high
    text " Chuck: "
	next
	text_start
	text "Don't you see?"
	line "The greater its"
	cont "agony, then the"
	cont "more powerful the"
	cont "OMLAS becomes!"
	
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
	text_high
    text " OMLAS: "
	next
	text_start
	
	text "You could never"
	line "fathom what I"
	cont "endure for you."

	para "Take a deep breath"
	line "and come below."
	done

Lighthouse6FScene2:
	applyonemovement PLAYER, step_up
Lighthouse6FScene1:
	turnobject PLAYER, LEFT
	turnobject LIGHTHOUSE_CHUCK, RIGHT
	opentext
	writetext LighthouseChuckText2
	waitbutton
	writetext LighthouseJasmineText2
	waitbutton
	writetext LighthouseChuckText3
	waitbutton
	winlosstext ChuckLossText, 0
	; START 
	readdifficultymode
	ifequal DIFFICULTY_EASY, .easy
	ifequal DIFFICULTY_HARD, .hard
	loadtrainer CHUCK, CHUCK_NORMAL
	sjump .startbattle
.easy:
	loadtrainer CHUCK, CHUCK_EASY
	sjump .startbattle
.hard:
	loadtrainer CHUCK, CHUCK_HARD
.startbattle:	
	; END 
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
	setevent EVENT_KILN_BOSS
	setscene $2
	special RestartMapMusic
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
	
	para "I lost one home"
	line "to the whims of"
	cont "fate."
	
	para "I won't lose this"
	line "one. You child,"
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
	text "Cianwood is gone,"
	line "but not my honor."
	
	para "You deserve the"
	line "Storm Badge."
	done
	
LighthouseJasmineText3:
	text_high
    text " Jasmine: "
	next
	text_start
	text "You convinced"
	line "me progress was"
	cont "always good, but"
	cont "you limited us."
	
	para "Running the desal"
	line "at its original"
	cont "level, it may"
	
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
	line "say that I saw"
	para "some of myself"
	line "in Chuck, when I"
	cont "piloted Lugia at"
	cont "the port."
	
	para "I wasn't thinking"
	line "about what would"
	cont "be lost,"
	
	para "how hard it would"
	line "be to restore"
	cont "balance."
	
	para "Hopefully, Celebi"
	line "was watching, and"
	para "will see that I"
	line "have changed."
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

Lighthouse6FScientist3Text:
	text "I like to go up"
	line "one more floor to"
	cont "the roof."
	
	para "I need the fresh"
	line "air after being"
	cont "hard at work."
	
	done
	