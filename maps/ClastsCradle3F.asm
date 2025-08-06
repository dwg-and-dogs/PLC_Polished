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
; KURT TO HEAL YOU 
	object_event   3,  3, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtScriptCC, EVENT_BEAT_ADRINNA_MINE
	object_event   4,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, NATU, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NatuScriptCC, EVENT_BEAT_ADRINNA_MINE


KurtScriptCC:
	faceplayer
	opentext
	checkevent EVENT_KURT_INTRO_MINE
	iftrue .Heal
	writetext KurtCradleText1
	waitbutton
	setevent EVENT_KURT_INTRO_MINE
.Heal:
	writetext KurtHealsTextCC
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 20
	special RestartMapMusic
	special Special_FadeInQuickly
	showtext KurtCradleText2
	end 
	
KurtCradleText1:
	text "<PLAYER>, Amos is"
	line "in the mine."
	
	para "Adrinna is after"
	line "a powerful"
	cont "#mon."

	para "The brigaders"
	line "think there's"
	para "nothing that can"
	line "withstand it."

	para "We must stop her"
	line "to save Johto's"
	cont "traditions!"
	done
	


KurtHealsTextCC:
	text "Let me heal you"
	line "up."
	done

KurtCradleText2:
	text "You can do it!"
	done

NatuScriptCC:
	opentext
	writetext CC_NatuText_1
	promptbutton
	special PokemonCenterPC
	endtext
	end

CC_NatuText_1:
	text "It's Kurt's Natu!"
	line "It can teleport"
	para "to the present to"
	line "manage the party."
	done
