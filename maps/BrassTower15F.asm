BrassTower15F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 0, 14, BRASS_TOWER_16F, 1
	warp_event 12, 12, BRASS_TOWER_16F, 2
	warp_event 6, 1, BRASS_TOWER_13F, 3 ; good 



	def_coord_events



	def_bg_events
	bg_event 6, 4, BGEVENT_READ, BrassTowerSwitchScript15F
;switch 


	def_object_events
	object_event   9, 12, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, VAPOREON, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BrassTower15FVaporeonScript, EVENT_BRASS_TOWER_VAPOREON
	pokemon_event  13, 6, GENGAR, -1, -1, PAL_NPC_RED, BrassTowerGuardText, EVENT_BRASS_TOWER_RIGHT_GUARD
	pokemon_event  0,  6, MISDREAVUS, -1, -1, PAL_NPC_RED, BrassTowerGuardText, EVENT_BRASS_TOWER_LEFT_GUARD
	pokemon_event  6,  6, MISDREAVUS, -1, -1, PAL_NPC_RED, BrassTowerGuardText, EVENT_BRASS_TOWER_LEFT_GUARD
	object_event  13, 2, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerElderAkira, -1 ; bright
	object_event   6,  8, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, CHANSEY, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BrassTower15FChanseyScript, -1
	itemball_event 5, 13, HYPER_POTION, 1, EVENT_BRASS_TOWER_HYPER_POTION

	object_const_def
	const BRASSTOWER_VAPOREON
	const BRASS_TOWER_15F_RIGHT_GENGAR_1
	const BRASS_TOWER_15F_LEFT_MISDREAVUS_1
	const BRASS_TOWER_15F_LEFT_MISDREAVUS_2


BrassTowerSwitchScript15F:
	checkevent EVENT_BRASS_TOWER_RIGHT_GUARD
	iftrue .AskSwitchToLeft
	opentext
	writetext SwitchSpiritsTextLeft
	yesorno
	iffalse_jumpopenedtext NotSwitchingText
	setevent EVENT_BRASS_TOWER_RIGHT_GUARD
	disappear BRASS_TOWER_15F_RIGHT_GENGAR_1
	clearevent EVENT_BRASS_TOWER_LEFT_GUARD
	appear BRASS_TOWER_15F_LEFT_MISDREAVUS_1
	appear BRASS_TOWER_15F_LEFT_MISDREAVUS_2	
	writetext SpiritsChangedText
	waitbutton
	closetext
	end

.AskSwitchToLeft:
	opentext
	writetext SwitchSpiritsTextRight
	yesorno
	iffalse_jumpopenedtext NotSwitchingText
	setevent EVENT_BRASS_TOWER_LEFT_GUARD
	disappear BRASS_TOWER_15F_LEFT_MISDREAVUS_1
	disappear BRASS_TOWER_15F_LEFT_MISDREAVUS_2
	clearevent EVENT_BRASS_TOWER_RIGHT_GUARD
	appear BRASS_TOWER_15F_RIGHT_GENGAR_1
	writetext SpiritsChangedText
	waitbutton
	closetext
	end

GenericTrainerElderAkira:
    generictrainer ELDER, AKIRA, EVENT_BEAT_ELDER_AKIRA, AkiraSeenText, AkiraBeatenText

	text "The stormclouds"
	line "on the horizon"
	para "are nothing to"
	line "Consul Urgaust."
	done

AkiraBeatenText:
	text "Oh, but I sense a"
	line "stormcloud in"
	cont "Urgaust's heart."
	done
	
AkiraSeenText:
    text "The Consul will"
	line "clear the sky, a"
	cont "bright new dawn!"
    done

BrassTower15FVaporeonScript:
	showtext VaporeonGuardianText
	cry VAPOREON
	pause 15
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon VAPOREON, 50
	startbattle
	disappear BRASSTOWER_VAPOREON
	setevent EVENT_BRASS_TOWER_VAPOREON
	reloadmapafterbattle
	end
	
VaporeonGuardianText:
	text "It's a guardian"
	line "Vaporeon!"
	done

BrassTower15FChanseyScript:
	opentext
	writetext BrassTowerHealQuestion
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	end

BrassTowerHealQuestion:
	text "Chansey heals"
	line "your #mon."
	done
