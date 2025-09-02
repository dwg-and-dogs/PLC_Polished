StadiumGrounds_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, StadiumGroundsFloodCallback
	callback MAPCALLBACK_OBJECTS, StadiumGroundsCallback_MoveNPCs
	
	def_warp_events
	warp_event  4, 23, STADIUM_UNDERGROUND, 1
	warp_event 26,  5, STADIUM_BOX, 1
	warp_event  8, 39, SERENE_SPRINGS, 3
	warp_event  7, 39, SERENE_SPRINGS, 4
	warp_event  49, 3, STADIUM_CAPITAL_GATE, 1
	
	def_coord_events 
	coord_event 26,  6, 0, StadiumGroundsToxicroakScene
	coord_event 26,  6, 1, StadiumGroundsBobeshScene 

	def_bg_events
	bg_event  6, 34, BGEVENT_JUMPTEXT, Text_StadiumSign1
	bg_event 20, 32, BGEVENT_JUMPTEXT, Text_StadiumSign2
	bg_event  6, 34, BGEVENT_JUMPTEXT, Text_ToWCSign;
	bg_event 42, 36, BGEVENT_ITEM + ENERGY_ROOT, EVENT_STADIUM_HIDDEN_1
	bg_event 33, 2, BGEVENT_ITEM + REVIVAL_HERB, EVENT_STADIUM_HIDDEN_2
	bg_event  8, 14, BGEVENT_ITEM + HEAL_POWDER, EVENT_STADIUM_HIDDEN_3

	def_object_events
	object_event 29,  9, SPRITE_BOBESH, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_BOBESH_STADIUM
	object_event 30,  10, SPRITE_SANDRA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StadiumGroundsSandraScript, EVENT_BEAT_BOBESH_STADIUM
	pokemon_event  28, 10, TOXICROAK, -1, -1, PAL_NPC_BLUE, ToxicroakChallengeText, EVENT_TOXICROAK_STADIUM
	object_event 46, 28, SPRITE_SANDRA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StadiumGroundsSandra2Script, EVENT_STADIUM_GROUNDS_SANDRA	
	object_event 49, 14, SPRITE_BRIGADER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader8, EVENT_BEAT_BOBESH_STADIUM
	object_event 49, 11, SPRITE_BRIGADER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader9, EVENT_BEAT_BOBESH_STADIUM
	object_event 42,  3, SPRITE_BRIGADER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader10, EVENT_BEAT_BOBESH_STADIUM
	object_event 34, 37, SPRITE_BRIGADER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader11, EVENT_BEAT_BOBESH_STADIUM
	object_event  7,  9, SPRITE_BRIGADER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader12, EVENT_BEAT_BOBESH_STADIUM
	object_event 49, 17, SPRITE_BRIGADER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader6, EVENT_BEAT_BOBESH_STADIUM 
	object_event 48, 34, SPRITE_BRIGADER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBrigader7, EVENT_BEAT_BOBESH_STADIUM
	tmhmball_event 53, 35, TM_FLAME_CHARGE, EVENT_BURNED_TOWER_B1F_TM_FLAME_CHARGE
	itemball_event 14,  8, BLACK_BELT, 1, EVENT_GOT_BLACK_BELT_FROM_WESLEY

	
	object_const_def
	const STADIUMGROUNDS_BOBESH
	const STADIUMGROUNDS_SANDRA
	const STADIUMGROUNDS_TOXICROAK
	const STADIUMGROUNDS_SANDRA_2


StadiumGroundsFloodCallback:
	checkevent EVENT_STADIUM_GROUNDS_FIRST_FLOOD
	iffalse .Done
	changeblock 26, 10, $35
	changeblock 26, 14, $35
	changeblock 24, 12, $35	
	changeblock 28, 12, $35
	changeblock 26, 12, $86
	checkevent EVENT_STADIUM_GROUNDS_SECOND_FLOOD
	iffalse .Done
	changeblock 28, 10, $35
	changeblock 24, 10, $35
	changeblock 22, 12, $35
	changeblock 30, 12, $35
	changeblock 24, 14, $35
	changeblock 28, 14, $35	
.Done:
	endcallback

StadiumGroundsCallback_MoveNPCs:
	checkscene
	iffalse .Skip
	moveobject STADIUMGROUNDS_BOBESH, 26, 8
	turnobject STADIUMGROUNDS_BOBESH, DOWN
	moveobject STADIUMGROUNDS_SANDRA, 27, 8
	turnobject STADIUMGROUNDS_SANDRA, LEFT
.Skip:
	endcallback

StadiumGroundsBobeshScene:
	applymovement PLAYER, PlayerWalksDownMovement2
	turnobject STADIUMGROUNDS_BOBESH, LEFT
	turnobject STADIUMGROUNDS_SANDRA, LEFT
	sjump PickupStadiumScene
	
StadiumGroundsToxicroakScene:
	applymovement PLAYER, PlayerWalksDownMovement
	pause 60
	special Special_FadeOutMusic
	pause 60
	playmusic MUSIC_ELITE_FOUR_BATTLE_BW
	turnobject STADIUMGROUNDS_BOBESH, DOWN
	turnobject STADIUMGROUNDS_SANDRA, DOWN
	showemote EMOTE_SHOCK, STADIUMGROUNDS_BOBESH, 60
	refreshscreen
	trainerpic BOBESH
	waitbutton
	closepokepic
	opentext
	writetext BobeshIntroText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 60
	applymovement PLAYER, PlayerMovesToToxicroak
	turnobject STADIUMGROUNDS_BOBESH, DOWN
	turnobject STADIUMGROUNDS_SANDRA, DOWN
	opentext
	writetext ToxicroakChallengeText
	waitbutton
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon TOXICROAK, 20
	startbattle
	ifequal $1, .Continue
.Continue:
	disappear STADIUMGROUNDS_TOXICROAK
	special Special_FadeOutMusic
	pause 60
	playmusic MUSIC_ELITE_FOUR_BATTLE_BW
	reloadmapafterbattle
	playsound SFX_EGG_CRACK
	waitsfx
	changeblock 26, 12, $86
	reloadmappart
	pause 60
	changeblock 26, 14, $35
	reloadmappart
	playsound SFX_WATER_GUN
	waitsfx
	pause 60
	changeblock 24, 12, $35	
	changeblock 28, 12, $35
	reloadmappart
	pause 60
	changeblock 26, 10, $35
	reloadmappart
	setevent EVENT_STADIUM_GROUNDS_FIRST_FLOOD
	applymovement STADIUMGROUNDS_BOBESH, BobeshBlocksStairs
	applyonemovement STADIUMGROUNDS_SANDRA, step_left
	applyonemovement STADIUMGROUNDS_SANDRA, step_left
	turnobject STADIUMGROUNDS_SANDRA, DOWN
	opentext
	writetext SandraThankYouText
	pause 60

	writetext SandraHealsText
	waitbutton
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special RestartMapMusic
	writetext SandraNegotiateText
	waitbutton
	closetext
	applymovement STADIUMGROUNDS_SANDRA, SandraWalkToBobeshMovement
	applymovement PLAYER, PlayerWalkToBobeshMovement
	turnobject STADIUMGROUNDS_BOBESH, LEFT
	setscene $1
	setevent EVENT_TOXICROAK_STADIUM
	; fallthrough 
PickupStadiumScene:
	opentext
	writetext BobeshBattleText
	waitbutton
	closetext
	winlosstext BobeshWinText, 0
	loadtrainer BOBESH, BOBESH1
	startbattle
	ifequal $1, .Continue2
.Continue2:
	reloadmapafterbattle
	pause 60
	changeblock 24, 10, $35
	changeblock 28, 10, $35
	reloadmappart
	playsound SFX_WATER_GUN
	waitsfx
	pause 60
	changeblock 24, 14, $35
	changeblock 28, 14, $35	
	reloadmappart
	playsound SFX_WATER_GUN
	waitsfx
	pause 60
	changeblock 22, 12, $35
	changeblock 30, 12, $35
	reloadmappart
	playsound SFX_WATER_GUN
	waitsfx
	pause 60
	setevent EVENT_STADIUM_GROUNDS_SECOND_FLOOD	
	opentext
	writetext BobeshDefeatText
	waitbutton
	closetext
	applyonemovement STADIUMGROUNDS_BOBESH, teleport_from
	disappear STADIUMGROUNDS_BOBESH
	applyonemovement STADIUMGROUNDS_SANDRA, step_left
	opentext
	writetext SandraInvitesToBoxText
	waitbutton
	closetext	
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special RestartMapMusic

	setevent EVENT_BEAT_BOBESH_STADIUM
	clearevent EVENT_STADIUM_BOX_ADRINNA
	clearevent EVENT_GAULDENROD_ELDER 
	setscene $2
	setmapscene STADIUM_BOX, $1
	end

StadiumGroundsBobeshScript:
	end ; unable to talk to 

StadiumGroundsSandraScript:
	faceplayer
	opentext
	writetext SandraInvitesToBoxText
	waitbutton
	closetext
	end 

PlayerMovesToToxicroak:
	step_left
	turn_head_up
	step_end

BobeshBlocksStairs:
	step_up
	step_left
	step_left
	turn_head_down
	step_end

BobeshExitMovement:
	step_left
	step_down
	step_down
	step_down
	step_end

SandraExitMovement:
	step_up
	step_up
	step_up
	step_up
	step_end

BobeshIntroText:
	text_high
    text " Bobesh: "
	next
	text_start
	text "Eh? Who are you?"
	
	para "I am General"
	line "Bobesh, sent to"
	para "bring order by"
	line "my strength."

	para "This woman - she"
	line "naively believes"
	para "all #mon have"
	line "equal value."

	para "This Toxicroak"
	line "will show her she"
	cont "is wrong."

	para "Order will"
	line "prevail!"
	done


ToxicroakChallengeText:
	text "Toxicroak:"
	line "Croak!"
	done

SandraThankYouText:
	text_high
    text " Sandra: "
	next
	text_start
	text "Oh, is the Stad-"
	line "ium getting some"
	cont "renovations?"
	
	para "Thank you for a"
	line "dazzling display,"
	cont "<PLAYER>." 
	done

SandraHealsText:
	text_high
    text " Sandra: "
	next
	text_start
	text "Let me heal your"
	line "#mon."
	done

SandraNegotiateText:
	text_high
    text " Sandra: "
	next
	text_start
	text "Now, let's go"
	line "negotiate."
	done

BobeshBattleText:
	text_high
    text " Bobesh: "
	next
	text_start
	text "Grr, I thought"
	line "that would rip"
	cont "you to shreds."

	para "Whoa- where"
	line "did that water"
	cont "come from?"

	para "I'm not letting"
	line "you escape!"
	done


BobeshWinText:
	text "Impossible!"
	line "How could I lose?"
	done

BobeshDefeatText:
	text_high
    text " Bobesh: "
	next
	text_start
	text "Grr, I wish I"
	line "could battle you"
	para "again, but my"
	line "fire types don't"
	cont "like this water…"

	para "You haven't seen"
	line "the last of me!"
	done
	
GenericTrainerBrigader8:
	generictrainer BRIGADER, 8, EVENT_BEAT_ROCKET_GRUNTM_8, Brigader8SeenText, Brigader8BeatenText

	text "This place was a"
	line "haven for bug"
	cont "#mon."
	done

Brigader8SeenText:
	text "We drained a marsh"
	line "to make this. We"
	cont "can take on a"
	cont "pesky kid like"
	cont "you!"
	done

Brigader8BeatenText:
	text "Swamped."
	done

GenericTrainerBrigader9:
	generictrainer BRIGADER, 9, EVENT_BEAT_ROCKET_GRUNTM_9, Brigader9SeenText, Brigader9BeatenText

	text "General Bobesh has"
	line "a plan to change"
	cont "Gauldenrod tradi-"
	cont "tions to favor"
	cont "Consul Urgaust."
	done

Brigader9SeenText:
	text "Intruder!"
	done

Brigader9BeatenText:
	text "Your elder is in"
	line "the stadium. I"
	cont "don't think she's"
	cont "going back…"
	done

GenericTrainerBrigader10: ; manolete, tauros 
	generictrainer BRIGADER, 10, EVENT_BEAT_ROCKET_GRUNTM_10, Brigader10SeenText, Brigader10BeatenText

	text "We find really"
	line "strong wild"
	cont "#mon to battle"
	cont "trainers at the"
	cont "stadium."
	done

Brigader10SeenText:
	text "Don't mess with"
	line "me, I got mine"
	cont "from the stadium!"
	done

Brigader10BeatenText:
	text "Now I'm seeing"
	line "red."
	done

GenericTrainerBrigader11:
	generictrainer BRIGADER, 11, EVENT_BEAT_ROCKET_GRUNTM_11, Brigader11SeenText, Brigader11BeatenText

	text "The gladiators are"
	line "usually rebels"
	para "against the"
	line "Consul. We make"
	para "sure they're weak,"
	line "so that they just"
	para "sound crazy to the"
	line "crowd in battle."
	done

Brigader11SeenText:
	text "Are you an escapee"
	line "from the stadium?"
	done

Brigader11BeatenText:
	text "No, you don't look"
	line "like it."
	done

GenericTrainerBrigader12:
	generictrainer BRIGADER, 12, EVENT_BEAT_ROCKET_GRUNTM_12, Brigader12SeenText, Brigader12BeatenText

	text "Why do I smell"
	line "sulfur?"
	done

Brigader12SeenText:
	text "I'm the last one!"
	line "You won't get"
	cont "past!"
	done

Brigader12BeatenText:
	text "I've been hearing"
	line "a strange sound"
	cont "from underground."
	done

Text_StadiumSign1:
	text "National Stadium"
	done
	
Text_StadiumSign2:
	text "Stadium brought"
	line "to you by"
	cont "Consul Urgaust"
	done

SandraInvitesToBoxText:
	text "<PLAYER>. Excel-"
	line "lent battle"
	cont "against General"
	cont "Bobesh."

	para "I have much admir-"
	line "ation for your"
	para "bond with your"
	line "#mon."

	para "Please, meet me in"
	line "the Stadium Box"
	para "above, and we can"
	line "discuss your"
	cont "journey."
	
	para "I'll heal your"
	line "#mon again."
	done

StadiumGroundsSandra2Script:
	faceplayer
	opentext
	writetext StadiumGroundsSandraAsksToTimeTravel
	yesorno
	iffalse_jumpopenedtext StadiumGroundsNoTimeTravel
	waitbutton
	closetext
	turnobject STADIUMGROUNDS_SANDRA_2, UP
	turnobject PLAYER, UP	
	opentext
	writetext StadiumGroundsTimeTravel
	waitbutton
	closetext
	special Special_CelebiShrineEvent
	setevent EVENT_SANDRA_WARPED
	setevent EVENT_WHITNEY_GYM
	special FadeOutPalettes
	waitsfx
	warp ROUTE_36, 22, 4
	end

StadiumGroundsSandraAsksToTimeTravel:
	text_high
    text " Sandra: "
	next
	text_start

	text "<PLAYER>."
	para "Would you like to"
	line "pray to Celebi to"
	cont "bring you forward"
	cont "to your time?"
	done



StadiumGroundsNoTimeTravel:
	text_high
    text " Sandra: "
	next
	text_start
	text "I see."
	done


StadiumGroundsTimeTravel:
	text_high
    text " Sandra: "
	next
	text_start
	text "Celebi, in this"
	line "place of super-"
	para "iority, help us "
	line "to recognize the"
	para "importance of the"
	line "highest branch"
	cont "and deepest root."
	done


PlayerWalksDownMovement:
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right	
	turn_head_up
	step_end
	
PlayerWalkToBobeshMovement:
	step_up	
	step_up		
	step_left
	step_left
	step_up	
	turn_head_right
	step_end
	
SandraWalkToBobeshMovement:
	step_up
	step_up
	turn_head_left
	step_end


GenericTrainerBrigader6:
	generictrainer BRIGADER, 6, EVENT_BEAT_ROCKET_GRUNTM_6, Brigader6SeenText, Brigader6BeatenText

	text "Want to know a"
	line "secret? Sometimes"
	para "we inflict a"
	line "fighter's #MON"
	para "with status before"
	line "they have to"
	cont "battle."
	done

Brigader6SeenText:
	text "You're in my"
	line "sights!"
	done

Brigader6BeatenText:
	text "Mind blown."
	done

GenericTrainerBrigader7:
	generictrainer BRIGADER, 7, EVENT_BEAT_ROCKET_GRUNTM_7, Brigader7SeenText, Brigader7BeatenText

	text "There used to be"
	line "Slugma here,"
	cont "before we drained"
	cont "these hot springs."
	done

Brigader7SeenText:
	text "Begone!"
	done

Brigader7BeatenText:
	text "I need to alert"
	line "the stadium"
	cont "brigade."
	done

PanLeftMovementStadium:
	step_down
	step_down
	step_down
	step_left
	step_left
	step_left
	step_left
	step_end
	
PanRightMovementStadium:
	step_right
	step_right
	step_right
	step_right
	step_up
	step_up
	step_up
	step_end

PlayerWalksDownMovement2:
	step_left
	step_down
	step_down
	turn_head_right
	step_end


Text_ToWCSign:
	text "North to Western"
	line "Capital"
	
	para "Visa required"
	line "from Chronicler"
	cont "Vespera"
	done
