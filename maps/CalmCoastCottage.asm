CalmCoastCottage_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 2, 7, CALM_COAST, 3
	warp_event 3, 7, CALM_COAST, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 2, 4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CalmCoastCottageDayCareManScript, -1
	object_event 5, 5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CalmCoastCottageChildScript, -1
	object_event 5, 2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CalmCoastCottageDayCareWomanScript, -1
	object_event 5,  4, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SchoolgirlShellBellScript, -1


CalmCoastCottageDayCareManScript:
	jumptextfaceplayer CalmCoastCottageDayCareManText

CalmCoastCottageDayCareManText:
	text "A Hisuian left me"
	line "a Dartrix. It is"
	cont "interested in my"
	cont "wife's Pidgeotto."
	
	para "If they make an"
	line "egg, I wonder"
	cont "what #mon will"
	cont "come out?"
	done

CalmCoastCottageChildScript:
	jumptextfaceplayer CalmCoastCottageChildText

CalmCoastCottageChildText:
	text "Pidgey kept eat-"
	line "ing our berries."
	cont "So my parents"
	cont "hired a kid"
	cont "from the city"
	cont "to guard our"
	cont "garden."
	done

CalmCoastCottageDayCareWomanScript:
	faceplayer
	opentext
	writetext CalmCoastCottageDayCareWomanText
	waitbutton
	closetext
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special RestartMapMusic
	end

CalmCoastCottageDayCareWomanText:
	text "Do you need a"
	line "heal? Rest up."
	done

SchoolgirlShellBellScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SHELL_BELL
	iftrue .AlreadyGaveShellBell
	writetext SchoolgirlIntroText
	promptbutton
	verbosegiveitem SHELL_BELL
	iffalse .BagFull
	setevent EVENT_GOT_SHELL_BELL
	writetext SchoolgirlAfterText
	waitbutton
	closetext
	end

.AlreadyGaveShellBell:
	writetext SchoolgirlRemindText
	waitbutton
	closetext
	end

.BagFull:
	writetext SchoolgirlBagFullText
	waitbutton
	closetext
	end

SchoolgirlIntroText:
	text "Hi there! I love"
	line "going on adventures"
	cont "with my #mon."

	para "I always keep a"
	line "little bell on"
	cont "them so I can find"
	cont "them easily."

	para "It's really handy!"

	para "I've got an extra"
	line "one. Would you"
	cont "like to have it?"
	done

SchoolgirlAfterText:
	text "Great! That's a"
	line "Shell Bell."

	para "When your #mon"
	line "holds it, they'll"
	cont "recover a bit of"
	cont "HP when they deal"
	cont "damage in battle."

	para "It's like they're"
	line "being rewarded for"
	cont "their hard work!"

	para "I hope it helps"
	line "you on your own"
	cont "adventures!"
	done

SchoolgirlRemindText:
	text "How's that Shell"
	line "Bell working out?"

	para "Remember, it helps"
	line "your #mon"
	cont "recover HP in"
	cont "battle."

	para "It's like a little"
	line "reward for their"
	cont "efforts!"
	done

SchoolgirlBagFullText:
	text "Oh no! Your Bag"
	line "is full."

	para "Come back when you"
	line "have some room,"
	cont "and I'll give you"
	cont "the Shell Bell."
	done
