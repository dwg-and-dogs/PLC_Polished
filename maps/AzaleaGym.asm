AzaleaGym_MapScriptHeader: ;removed benny josh amy+may trainers
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 15, AZALEA_TOWN, 5
	warp_event  4, 15, AZALEA_TOWN, 5
	warp_event  5, 15, AZALEA_TOWN, 5

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, AzaleaGymStatue
	bg_event  6, 13, BGEVENT_READ, AzaleaGymStatue
	bg_event  0,  1, BGEVENT_READ, DebugRoomPortal

	def_object_events
	object_event  5, 7, SPRITE_BUGSY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaGymBugsyScript, -1
	pokemon_event  6,  7, SCYTHER, -1, -1, PAL_NPC_GREEN, ScytherBugsyText, -1

ScytherBugsyText:
	text "Manny: Scy!"
	done

AzaleaGymStatue:
	gettrainername BUGSY, 1, $1
	checkflag ENGINE_HIVEBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	jumpstd gymstatue2

DebugRoomPortal:
	opentext
	writetext AskWarpDebugText
	yesorno
	iffalse_jumpopenedtext NoWarpText
	writetext WarpingDebugText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp DEBUG_ROOM, 9, 1
	clearevent EVENT_TINDER_GARDEN_CELEBI_2
	end

AskWarpDebugText:
	text "To Debug Room?"
	done
	
NoWarpText:
	text "No warping."
	done

WarpingDebugText:
	text "Warping..."
	done

AzaleaGymBugsyScript:
	checkevent EVENT_BEAT_BUGSY
	iftrue_jumptextfaceplayer AfterTextBugsy
	faceplayer
	opentext
	writetext BranchedEvoText
	waitbutton
	checkevent EVENT_BEAT_HOLLIS
	iffalse_jumptextfaceplayer EndTextBugsy
	showtextfaceplayer .SeenText
	winlosstext .BeatenText, 0
	loadtrainer BUGSY, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BUGSY
	opentext
	writethistext
		text "<PLAYER> received"
		line "the Hive Badge."
		done
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_HIVEBADGE
	writethistext
		text "Here, I also want"
		line "you to have this."
		done
	promptbutton
	verbosegivetmhm TM_U_TURN
	setevent EVENT_GOT_TM69_U_TURN
	jumpthisopenedtext

	text "TM69 contains"
	line "U-turn."

	para "It lets your #-"
	line "mon attack, then"

	para "switch out right"
	line "away."

	para "Isn't that great?"
	line "I discovered it!"
	done

.SeenText:
	text "Oh? You have"
	line "news about a"
	cont "branched evol-"
	cont "ution of Scyther?"

	para "...A rock-bug"
	line "type, you say?"
	
	para "Incredible!" 
	
	para "I'm rejuvenated!"
	line "My hypothesis was"
	cont "correct!"
	
	para "I'm ready to be a"
	line "Gym Leader again!"
	
	para "Let's battle!"
	done

.BeatenText:
	text "Whoa, amazing!"

	para "I forgot the"
	line "thrill of disc-"
	cont "overy. I let my"
	
	para "own cynicism keep"
	line "me from sharing"
	cont "my talents."

	para "Please - take"
	line "this Badge."
	done

AfterTextBugsy:
	text "Bug #mon are"
	line "deep. There are"

	para "many mysteries to"
	line "be explored."
	done


BranchedEvoText:	
	text "Bugsy: <PLAYER>."
	line "I have an idea."
	
	para "Scyther's genes"
	line "are similar to"
	cont "Slowpoke's."
	
	para "Slowpoke has bra-"
	line "nching evolution."
	
	para "I wonder if Scy-"
	line "ther is the same?"
	done

EndTextBugsy:
	text "Ah, forget it."
	line "Who would care?"
	done
