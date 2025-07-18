ROUTE43GATE_TOLL EQU 1000 ; need to keep 

Route43Gate_MapScriptHeader:
	def_scene_scripts


	def_callbacks

	def_warp_events
	warp_event  4,  0, ROUTE_43, 4
	warp_event  5,  0, ROUTE_43, 5
	warp_event  4,  7, ROUTE_43, 3
	warp_event  5,  7, ROUTE_43, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OfficerScript_GuardWithSludgeBomb, -1

	object_const_def



OfficerScript_GuardWithSludgeBomb:
	checkevent EVENT_GOT_TM_POISON_JAB
	iftrue_jumptextfaceplayer OfficerText_AvoidGrass
	faceplayer
	opentext
	writetext OfficerText_FoundTM
	yesorno
	iffalse_jumptextfaceplayer NotTheOne
	writetext PoisonJabbarText
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_SCARY_HOUSE_XY
	pause 120
	special Special_FadeInQuickly
	special RestartMapMusic
	opentext
	writetext IncredibleJabbarText
	waitbutton
	verbosegivetmhm TM_POISON_JAB
	writetext OfficerText_AvoidGrass
	waitbutton
	closetext
	setevent EVENT_GOT_TM_POISON_JAB
	end

OfficerText_FoundTM:
	text "Put your hand in"
	line "the box, to prove"
	cont "your humanity."	
	done

OfficerText_AvoidGrass:
	text "Face your fear!"
	done

NotTheOne:
	text "You are not"
	line "the one."
	done
	
PoisonJabbarText:
	text "This box contains"
	line "a Poison Jabbar,"
	cont "or instant death."
	
	para "An animal would"
	line "gnaw its hand off"
	cont "to ecape..."
	done

IncredibleJabbarText:
	text "But you remain to"
	line "face the fear."
	
	para "Please, take this"
	line "TM, Kwisatz."
	done
