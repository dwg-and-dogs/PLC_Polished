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
	object_event 1, 10, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AzaleaGymBugCollectorScript, -1


ScytherBugsyText:
	text "Manny: Scy!"
	done

AzaleaGymStatue:
	opentext
	writethistext
		text "Azalea Gym"
		line "Leader: Bugsy"
		para "The expert in"
		line "bug #mon!"
		done
	waitbutton
	closetext
	end

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
	readdifficultymode
	ifequal DIFFICULTY_EASY, .easy
	ifequal DIFFICULTY_HARD, .hard
	loadtrainer BUGSY, BUGSY_NORMAL
	sjump .startbattle
.easy:
	loadtrainer BUGSY, BUGSY_EASY
	sjump .startbattle
.hard:
	loadtrainer BUGSY, BUGSY_HARD
.startbattle:	
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


AzaleaGymBugCollectorScript: ; 5000 
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON
	iffalse_jumptextfaceplayer BugCollectorNoPokemonYetText
	writetext AzaleaGym1Text
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext AzaleaGymText4
	checkmoney $0, 5000
	ifequal $2, AzaleaGymNotEnoughMoney
	promptbutton
	loadmenu .AzaleaGym1PokemonMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GiveLedyba
	ifequal 2, .GiveSpinarak
	ifequal 3, .GiveParas
	ifequal 4, .GiveYanma
	jumptext AzaleaGymNoFishText

.GiveLedyba:
	givepoke LEDYBA, NO_FORM, 5, SITRUS_BERRY, POKE_BALL, COUNTER
	iffalse_jumpopenedtext Text_NoCarry_AzaleaGym
	playsound SFX_TRANSACTION
	takemoney $0, 5000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "You can count on"
	line "that one!"
	done

.GiveSpinarak:
	givepoke SPINARAK, NO_FORM, 5, LUM_BERRY, POKE_BALL, MEGA_DRAIN
	iffalse_jumpopenedtext Text_NoCarry_AzaleaGym
	playsound SFX_TRANSACTION
	takemoney $0, 5000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Don't let this"
	line "bed bug bite!"
	done


.GiveParas:
	givepoke PARAS, NO_FORM, 5, SITRUS_BERRY, POKE_BALL, AGILITY
	iffalse_jumpopenedtext Text_NoCarry_AzaleaGym
	playsound SFX_TRANSACTION
	takemoney $0, 5000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "That's my fastest"
	line "Paras!"
	done


.GiveYanma:
	givepoke YANMA, NO_FORM, 5, LUM_BERRY, POKE_BALL, REVERSAL
	iffalse_jumpopenedtext Text_NoCarry_AzaleaGym
	playsound SFX_TRANSACTION
	takemoney $0, 5000
	special PlaceMoneyTopRight
	jumpthisopenedtext

	text "Turn the tables"
	line "with this Yanma!"
	done


.AzaleaGym1PokemonMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 11, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "Ledyba@"
	db "Spinarak@"
	db "Paras@"
	db "Yanma@"
	db "Cancel@"
	
AzaleaGym1Text:
	text "I've been learning"
	line "from Bugsy all"
	para "about Bug-type"
	line "#mon!"
	
	para "I've even found a"
	line "way to teach them"
	cont "unique moves."
	
	para "A reflective"
	line "Ledyba,"
	
	para "Mega Spinarak,"
	line "An agile Paras,"
	para "And a Yanma that"
	line "flies backwards!"
	
	para "See what I mean"
	line "for ¥5000?"
	done

AzaleaGymText4:
	text "Come back any"
	line "time!"
	done

AzaleaGymNotEnoughMoney:
	jumpthisopenedtext

	text "You don't have"
	line "enough money…"
	done

AzaleaGymNoFishText:
	text "See you later."
	done

Text_NoCarry_AzaleaGym:
	text "You don't have"
	line "room."
	done

BugCollectorNoPokemonYetText:
	text "I've been learning"
	line "from Bugsy all"
	para "about Bug-type"
	line "#mon!"
	
	para "I've even found a"
	line "way to teach them"
	cont "unique moves."
	
	para "A reflective"
	line "Ledyba,"
	
	para "Mega Spinarak,"
	line "An agile Paras,"
	para "And a Yanma that"
	line "flies backwards!"
	
	para "Come back after"
	line "your ceremony and"
	para "you can get one"
	line "from me!"
	done
