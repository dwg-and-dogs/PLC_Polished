AnarresDorms_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  4,  7, ANARRES_TOWN, 6
	warp_event  5,  7, ANARRES_TOWN, 6

	def_coord_events


	def_bg_events
	bg_event  10,  2, BGEVENT_READ, AnarresDormsBed 
	bg_event  10,  3, BGEVENT_READ, AnarresDormsBed 
	bg_event  12,  2, BGEVENT_READ, AnarresDormsBed 
	bg_event  12,  3, BGEVENT_READ, AnarresDormsBed 

	def_object_events
	object_event 10, 4, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AnarresDormsKurtScript, EVENT_BEAT_HOLLIS
	object_event 2, 4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AnarresDormsNPC2Text, -1 ;
	object_event 6, 3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, AnarresDormsNPC3Text, -1 ;
	object_event   9, 4, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, NATU, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NatuScriptAnarresDorms, -1
	

NatuScriptAnarresDorms:
	opentext
	blackoutmod ANARRES_TOWN
	writetext Anarres_NatuText_1
	promptbutton
	special PokemonCenterPC
	endtext
	end

Anarres_NatuText_1:
	text "It's Kurt's Natu!"
	line "It can teleport"
	para "to the present to"
	line "manage the party."
	
	para "It also sets the"
	line "waypoint here."
	done	
	
	
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
	line "anything to eat!"
	done
	
AnarresDormsNPC3Text:
	text "We use Apricorns"
	line "to catch our"
	cont "#mon."

	para "They keep a"
	line "#mon as long"
	cont "as you interact."

	para "If you stop, the"
	line "#mon will get"
	cont "bored and leave."
	
	para "But that'd take"
	line "years, I bet."
	done

AnarresDormsBed:
	showtext BedText1

	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	blackoutmod ANARRES_TOWN

	showtext BedText2
	end

BedText1:
	text "A comfy bed!"
	line "Time to sleep…"
	done

BedText2:
	text "Ah, refreshed and"
	line "restored!"
	
	para "Waypoint set to"
	line "Anarres Town."
	done

AnarresDormsKurtScript:
	blackoutmod ANARRES_TOWN
	faceplayer
	opentext
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


.AnarresKurtPC
	writetext KurAnarresDormsText2
	waitbutton
	closetext
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
	para "the Cut HM, but"
	line "he's holed up!"
	
	para "Natu can teleport"
	line "to the present if"
	para "you need to man-"
	line "age your party."
	
	para "Oh! I found some"
	line "neat #mon in"
	para "the wild areas"
	line "around here."

	para "Want to battle?"
	done
	
KurAnarresDormsText2:
	text "We must convince"
	line "Elder Hollis to"
	cont "let us North!"
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
