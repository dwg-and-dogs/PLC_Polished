GauldenrodDorms_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  7, GAULDENROD, 1
	warp_event  5,  7, GAULDENROD, 1

	def_coord_events

	def_bg_events
	bg_event  10,  2, BGEVENT_READ, GauldenrodDormsBed
	bg_event  10,  3, BGEVENT_READ, GauldenrodDormsBed
	bg_event  12,  2, BGEVENT_READ, GauldenrodDormsBed
	bg_event  12,  3, BGEVENT_READ, GauldenrodDormsBed


	def_object_events
	object_event 10, 4, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GauldenrodDormsKurtScript, EVENT_BEAT_BOBESH_STADIUM
	object_event 2, 3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, GauldenrodDormsNPC1Text, -1
	object_event 2, 4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, GauldenrodDormsNPC2Text, -1
	object_event 7, 5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, GauldenrodDormsNPC3Text, -1
	object_event   9, 4, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, NATU, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NatuScriptGauldenrodDorms, -1
	

NatuScriptGauldenrodDorms:
	blackoutmod GAULDENROD
	opentext
	writetext Gauldenrod_NatuText_1
	promptbutton
	special PokemonCenterPC
	endtext
	end

Gauldenrod_NatuText_1:
	text "It's Kurt's Natu!"
	line "It can teleport"
	para "to the present to"
	line "manage the party."

	para "It also sets the"
	line "waypoint here."

	done


GauldenrodDormsNPC1Text:
	text "I wish the protest"
	line "wouldn't be so"
	cont "violent."

	para "When they were"
	line "blocking the gate,"
	cont "I saw a Flareon"
	cont "brought out!"
	done

GauldenrodDormsNPC2Text:
	text "I still remember"
	line "the lessons I"
	para "learned on my"
	line "ritual. It's"
	para "too bad that the"
	line "brigaders have"
	para "blocked us from"
	line "carrying it on."
	done

GauldenrodDormsNPC3Text:
	text "Here, take a rest."
	
	para "The fighting on"
	line "both sides wears"
	cont "me out."
	done

GauldenrodDormsBed:
	showtext GauldenrodBedText1
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special Special_FadeInQuickly
	showtext GauldenrodBedText2
	blackoutmod GAULDENROD
	end

GauldenrodBedText1:
	text "A comfy bed!"
	line "Time to sleep…"
	done

GauldenrodBedText2:
	text "Ah, refreshed and"
	line "restored!"

	para "Waypoint set to"
	line "Gauldenrod."
	done

GauldenrodDormsKurtScript:
	blackoutmod GAULDENROD
	faceplayer
	opentext
	checkevent EVENT_BEAT_SANDRA
	iftrue .BeatSandra
	writetext KurtGauldenrodDormsText
	yesorno
	iffalse .GauldenrodKurtPC
	winlosstext GauldenrodKurtBattleText, GauldenrodKurtBattleText
	loadtrainer KURT, 2 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext GauldenrodKurtBattleText2

.BeatSandra:
	writetext KurtGauldenrodDormsTextSandra
	yesorno
	iffalse .GauldenrodKurtPC
	winlosstext GauldenrodKurtBattleText, GauldenrodKurtBattleText
	loadtrainer KURT, 2 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext GauldenrodKurtBattleText2

.GauldenrodKurtPC
	writetext KurtGauldenrodDormsText2
	waitbutton
	closetext
	end

KurtGauldenrodDormsText:
	text "<PLAYER>. We need"
	line "to get to Olivine,"
	cont "which means we"
	cont "will have to pass"
	cont "through Ecruteak."

	para "Maybe we can pass"
	line "through whatever"
	cont "used to be at the"
	cont "National Park?"
	
	para "Oh! I found some"
	line "neat #mon in"
	para "the wild areas"
	line "around here."

	para "Want to battle?"
	done
	
KurtGauldenrodDormsTextSandra:
	text "<PLAYER>, the"
	line "Elder here was"
	para "taken by General"
	line "Bobesh's troops"
	cont "to the stadium!"
	
	para "We have to help."
	line "If you want to"
	para "train, you can"
	line "spar with me from"
	para "#mon in the"
	line "wild near here."
	done

GauldenrodKurtBattleText:
	text "You're getting to"
	line "be so strong!"
	done

GauldenrodKurtBattleText2:
	text "Just let me know"
	line "what you need."
	done

KurtGauldenrodDormsText2:
	text "We have to find a"
	line "way north!"
	done
