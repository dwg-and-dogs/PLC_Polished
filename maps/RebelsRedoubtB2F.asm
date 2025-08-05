RebelsRedoubtB2F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks
	callback MAPCALLBACK_TILES, RedoubtB2FDoorsCallback

	def_warp_events
	warp_event 2, 14, REBELS_REDOUBT_B1F, 3 
	warp_event 3, 7, REBELS_REDOUBT_B3F, 1
	warp_event 21, 15, REBELS_REDOUBT_B3F, 2
	warp_event 27, 7, REBELS_REDOUBT_B3F, 3
	warp_event 14, 1, REBELS_REDOUBT_B3F, 4 ; hole drop 
	warp_event 15, 1, REBELS_REDOUBT_B3F, 5 ; hole drop 


	def_coord_events



	def_bg_events
	bg_event 10,  9, BGEVENT_JUMPTEXT, RedoubtB2FStatue1Text
	bg_event 12,  7, BGEVENT_JUMPTEXT, RedoubtB2FStatue1Text
	bg_event 14,  5, BGEVENT_JUMPTEXT, RedoubtB2FStatue1Text


	def_object_events
	object_event  3, 11, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RedoubtKurtScript, EVENT_BEAT_AMOS;
	object_event 21,  6, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RedoubtAmosScript, EVENT_BEAT_AMOS;
	object_event 25,  3, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerNinja10, EVENT_BEAT_AMOS
	object_event  4,  1, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerNinja11, EVENT_BEAT_AMOS
	object_event 22, 14, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerNinja12, EVENT_BEAT_AMOS


RedoubtB2FDoorsCallback:
	checkevent EVENT_BEAT_HOLLIS_REDOUBT
	iffalse .Sandra
	changeblock 12, 8, $09
.Sandra:
	checkevent EVENT_BEAT_SANDRA_REDOUBT
	iffalse .Barbeau
	changeblock 14, 6, $09
.Barbeau:
	checkevent EVENT_BEAT_BARBEAU_REDOUBT
	iffalse .Done
	changeblock 16, 4, $09
.Done:
	endcallback



GenericTrainerNinja10: ; wraith
	generictrainer NINJA, NINJA10, EVENT_BEAT_NINJA10, .SeenText10, .BeatenText10

.BeatenText10:
	text "So you do have"
	line "something to"
	cont "share."
	done

.SeenText10:
	text "It was unwise of"
	line "you to enter."
	
	para "Do you belong?"
	done

GenericTrainerNinja11: ; vapor 
	generictrainer NINJA, NINJA11, EVENT_BEAT_NINJA11, .SeenText11, .BeatenText11

.BeatenText11:
	text "Amos will be"
	line "impressed."
	done

.SeenText11:
	text "Interruptions are"
	line "not tolerated!"
	done
	
GenericTrainerNinja12: ; mirage 
	generictrainer NINJA, NINJA12, EVENT_BEAT_NINJA12, .SeenText12, .BeatenText12

.BeatenText12:
	text "Your ill aura was"
	line "an illusion."
	done

.SeenText12:
	text "You are an ideal"
	line "foil for Amos!"
	done

RedoubtB2FStatue1Text:
	text "Its eyes seem to"
	line "stare back."
	done

RedoubtKurtScript:
	faceplayer
	opentext
	writetext KurtHealRedoubtText
	waitbutton
	playmusic MUSIC_HEAL
	special HealParty
	special SaveMusic	
	writetext KurtHealRedoubtText2
	waitbutton
	closetext
	playmusic MUSIC_NONE	
	special RestoreMusic
	end

KurtHealRedoubtText:
	text "<PLAYER>, there"
	line "is one source"
	cont "of Steel left for"
	para "Consul Urgaust:"
	line "in the mine."
	
	para "If we join forces"
	line "with Amos, we can"
	cont "end it for good,"
	
	para "and save Johto's"
	line "traditions."
	
	para "Here, let me heal"
	line "your #mon."
	done

KurtHealRedoubtText2:
	text "Keep exploring,"
	line "there's got to"
	para "be a way past"
	line "these statues."
	done

RedoubtAmosScript: 
	faceplayer
	opentext
	checkevent EVENT_BEAT_AMOS
	iftrue .FightDone
	writetext AmosText_Intro 
	waitbutton
	closetext
	winlosstext AmosText_Impressed, 0
	loadtrainer AMOS, 2
	startbattle
	reloadmapafterbattle
	opentext
	writetext Text_ReceivedVisionBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_SOULBADGE
	setevent EVENT_BEAT_AMOS
.FightDone:
	setevent EVENT_BEAT_NINJA7
	setevent EVENT_BEAT_NINJA8
	setevent EVENT_BEAT_NINJA9	
	setevent EVENT_BEAT_NINJA10
	setevent EVENT_BEAT_NINJA12
	setevent EVENT_BEAT_NINJA12
	writetext AmosText_LegacyBadgeSpeech
	waitbutton
	closetext
	end


AmosText_Intro:
	text_high
    text " Amos: " 
	next
	text_start
	text "...<PLAYER>. Each"
	line "time we meet, you"
	cont "cause some havoc."
	
	para "I've been trying"
	line "to organize an"
	para "opposition to "
	line "Urgaust."
	
	para "You've convinced"
	line "the Elders from"
	para "around Johto that"
	line "you're no spy."

	para "And through my"
	line "channels,"
	
	para "Vespera tells me"
	line "you impressed"
	cont "the Tower's sages."
	
	para "But I still see a"
	line "coin perched on"
	cont "its edge, unsure"
	
	para "unsure which way"
	line "it wants to fall."
	
	para "Battle me, so I"
	line "can see you!"
	done

AmosText_Impressed:
	text "You see the full"
	line "potential of your"
	cont "#mon."
	done

Text_ReceivedVisionBadge:
	text_high
    text " Amos: " 
	next
	text_start
	text "As proof of my"
	line "acceptance, take"
	cont "the Vision Badge."
	done

	
AmosText_LegacyBadgeSpeech:
	text_high
    text " Amos: " 
	next
	text_start
	text "That badge shows"
	line "our fighters that"
	cont "you're one of us."

	para "First, we need to"
	line "stop General Adr-"
	cont "inna at the mine."
	
	para "If she gets to"
	line "the powerful"
	para "#mon within,"
	line "who knows what"
	cont "she'd do."
	
	para "After that, we"
	line "will disrupt the"
	para "coronation of"
	line "Consul Urgaust."

	para "To the mine!"
	done
