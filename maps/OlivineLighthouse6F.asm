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
	coord_event 11, 10, 1, Lighthouse6FScene1
	coord_event 11, 11, 1, Lighthouse6FScene2


	
	def_bg_events
	; TODO add bg_event reads for all the way around, 'toxic sludge, don't go in!"
	; todo change the color of the water to purple with a palette change 

	def_object_events
	object_event 14, 10, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LighthouseKurtScript, EVENT_BEAT_CHUCK
	object_event 9, 10, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_CHUCK	
	object_event 10, 10, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_CHUCK	

	pokemon_event 12, 9, SLOWKING, -1, -1, PAL_NPC_RED, SlowkingLighthouseText, EVENT_SLOWKING_DREAMS
	pokemon_event 12, 8, TENTACRUEL, -1, -1, PAL_NPC_BLUE, TentacruelLighthouseText, EVENT_SLOWKING_DREAMS

	object_event 18,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Lighthouse6FScientistScript, -1
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
	applyonemovement PLAYER, step_left 
	showemote EMOTE_SAD, LIGHTHOUSE_JASMINE, 30
	showtext LighthouseJasmineText1
	showemote EMOTE_BOLT, LIGHTHOUSE_CHUCK, 30
	showtext LighthouseChuckText1
	showemote EMOTE_BOLT, LIGHTHOUSE_KURT1, 30 
	turnobject LIGHTHOUSE_KURT1, LEFT
	showtext LighthouseKurtText1
	closetext
	applyonemovement PLAYER, step_left
	turnobject PLAYER, UP
	special HealParty
	warp SLOWPOKE_DREAMS, 5, 8
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

Lighthouse6FScene3:
	applyonemovement PLAYER, step_up
Lighthouse6FScene2:
	applyonemovement PLAYER, step_left
	applyonemovement PLAYER, step_left
	applyonemovement PLAYER, step_left
	applyonemovement PLAYER, step_left  
Lighthouse6FScene1:
	turnobject PLAYER, LEFT
	turnobject LIGHTHOUSE_CHUCK, RIGHT
	showemote EMOTE_BOLT, LIGHTHOUSE_CHUCK, 10
	showtext LighthouseChuckText2
	showemote EMOTE_QUESTION, LIGHTHOUSE_JASMINE, 10
	showtext LighthouseJasmineText2
	showemote EMOTE_BOLT, LIGHTHOUSE_CHUCK, 10
	showtext LighthouseChuckText3
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
	showtext LighthouseJasmineText3
	promptbutton
	writetext LighthouseChuckText4
	waitbutton
	closetext
	applymovement LIGHTHOUSE_CHUCK, LighthouseChuckLeavesMovement
	disappear LIGHTHOUSE_CHUCK
	applyonemovement LIGHTHOUSE_JASMINE, step_right
	showemote EMOTE_HAPPY, LIGHTHOUSE_JASMINE, 10
	showtext LighthouseJasmineText4
	waitbutton
	closetext
	applymovement LIGHTHOUSE_JASMINE, LighthouseChuckLeavesMovement
	disappear LIGHTHOUSE_JASMINE
	
	
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
	text "Bested by you?"
	line "I thought I knew"
	cont "it all..."
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
	showtext LighthouseKurtText0
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 30
	special RestartMapMusic
	special Special_FadeInQuickly
	end 

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
	