ClastsCradle3F_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 5, 7, SULFUR_STY, 3
	warp_event 5, 5, CLASTS_CRADLE_2F, 1


	def_coord_events


	def_bg_events
	bg_event  3,  6, BGEVENT_ITEM + ELIXIR, EVENT_HIDDEN_CRADLE_1

	def_object_events
	object_event 3, 3, SPRITE_AMOS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmosScriptCC, EVENT_BEAT_ADRINNA_MINE
	pokemon_event  4, 3, GALLADE, -1, -1, PAL_NPC_BLUE, GalladeText, EVENT_BEAT_ADRINNA_MINE


GalladeText:
	text "Galloo!"
	done

AmosScriptCC:
	faceplayer
	checkevent EVENT_AMOS_INTRO_MINE
	iftrue .AmosHeals
	showtext AmosCradleText1
	setevent EVENT_AMOS_INTRO_MINE
	setflag ENGINE_FLYPOINT_SULFUR_STY
.AmosHeals:
	showtext AmosHealsText
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special Special_FadeInQuickly
	showtext AmosCradleText2
	end 


AmosCradleText1:
	text "<PLAYER>, Kurt is"
	line "in the mine."
	
	para "Adrinna is after"
	line "a powerful"
	cont "#mon."

	para "The brigaders"
	line "think there's"
	para "nothing that can"
	line "withstand it."

	para "I'm sorry that I"
	line "doubted you"
	cont "earlier."
	done

	
AmosHealsText:	
	text "Let me heal your"
	line "#mon."
	done
	
	
AmosCradleText2:
	text "Adrinna is deep"
	line "within the mine."
	
	para "We're counting on"
	line "you to disrupt"
	cont "her plans!"
	done
