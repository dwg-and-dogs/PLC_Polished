AnarresDorms_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  4,  5, ANARRES_TOWN, 6
	warp_event  5,  5, ANARRES_TOWN, 6

	def_coord_events


	def_bg_events
	bg_event  0,  2, BGEVENT_READ, AnarresDormsBed 
	bg_event  0,  3, BGEVENT_READ, AnarresDormsBed 
	bg_event  0,  4, BGEVENT_READ, AnarresDormsBed 
	bg_event  0,  5, BGEVENT_READ, AnarresDormsBed 

	def_object_events
	object_event 2, 1, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AnarresDormsKurtScript, EVENT_BEAT_SANDRA
	object_event 5, 3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AnarresDormsNPC2Text, -1 ;
	object_event 3, 3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, AnarresDormsNPC3Text, -1 ;
	
	object_const_def
	

	
AnarresDormsNPC2Text:
	text "The Pineco are"
	line "not to blame."
	
	para "It's natural for"
	line "them to glom on"
	para "to as many as"
	line "they can."
	
	para "They don't know"
	line "that if they"
	para "eat the whole"
	line "forest, then"
	para "they won't have"
	line "anything to eat."
	done
	
AnarresDormsNPC3Text:
	text "We use Apricorns"
	line "to catch our"
	cont "#mon."

	para "They keep a"
	line "#mon as long"
	para "as you continue"
	line "to interact."
	done

AnarresDormsBed:
	showtext BedText1
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special Special_FadeInQuickly
	showtext BedText2
	end

BedText1:
	text "A comfy bed!"
	line "Time to sleep…"
	done

BedText2:
	text "Ah, refreshed and"
	line "restored!"
	done

AnarresDormsKurtScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_HOLLIS
	iftrue .AnarresKurtPC2
	writetext KurtAnarresDormsText
	yesorno
	iffalse .AnarresKurtPC
	winlosstext AnarresKurtBattleText, AnarresKurtBattleText
	loadtrainer KURT, 1 
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapafterbattle
	opentext
	jumpopenedtext AnarresKurtBattleText2

.AnarresKurtPC2
	writetext AnarresDormsKurtAfterHollisText
	waitbutton
.AnarresKurtPC
	writetext KurAnarresDormsText2
	promptbutton
	special PokemonCenterPC
	endtext
	end

AnarresDormsKurtAfterHollisText:
	text "Excellent. Now,"
	line "we can head North"
	para "to get to histo-"
	line "ric Olivine where"
	para "outside influence"
	line "will corrupt"
	cont "Johto!"
	done

KurtAnarresDormsText:
	text "<PLAYER>, these"
	line "dorms are a good"
	cont "place to rest."
	
	para "We need to see"
	line "the Elder about"
	cont "the Cut HM, but"
	cont "he's holed up!"
	
	para "I can run back to"
	line "our time for a PC"
	cont "if you need."
	
	para "Oh! I found some"
	line "neat #mon in"
	para "the wild areas"
	line "around here."

	para "Want to battle?"
	done
	
KurAnarresDormsText2:
	text "I can run back"
	line "to manage your"
	cont "party."
	done

AnarresKurtBattleText:
	text "You're becoming"
	line "quite a trainer!"
	done

AnarresKurtBattleText2:
	text "We can battle as"
	line "many times as"
	cont "you like."
	done
