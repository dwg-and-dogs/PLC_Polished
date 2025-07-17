OlivineGoodRodHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 5
	warp_event  3,  7, OLIVINE_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoodRodGuru, -1

GoodRodGuru:
	faceplayer
	opentext
	checkevent EVENT_GOT_SUPER_ROD
	iftrue_jumpopenedtext HaveGoodRodText
	writetext OfferGoodRodText
	yesorno
	iffalse_jumpopenedtext DontWantGoodRodText
	writetext GiveGoodRodText
	promptbutton
	verbosegivekeyitem SUPER_ROD
	writetext GaveGoodRodText
	waitbutton
	closetext
	setevent EVENT_GOT_SUPER_ROD
	end

OfferGoodRodText:
	text "The sea is more"
	line "angry every day."
	
	para "Only an expert"
	line "fisher would dare"
	cont "go out there,"
	
	para "on the sandbar,"
	line "with only his"
	cont "rod and his wits."
	
	para "This super rod"
	line "catches the most"
	cont "angry fish in the"
	cont "whole ocean."
	
	para "Does that sound"
	line "like you, lad?"
	done

GiveGoodRodText:
	text "Ah, hahah!"
	line "I knew I smelled"
	cont "a new angler!"
	done

GaveGoodRodText:
	text "Don't take my"
	line "best fishing"
	cont "spots, hear?"
	done

DontWantGoodRodText:
	text "Suit yourself!"
	line "Stay salty!"
	done

HaveGoodRodText:
	text "How are things?"
	line "Land the big one?"
	done
