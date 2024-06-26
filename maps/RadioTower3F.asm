RadioTower3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CardKeyShutterCallback

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_2F, 1
	warp_event  7,  0, RADIO_TOWER_4F, 2
	warp_event 17,  0, RADIO_TOWER_4F, 4

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_JUMPTEXT, RadioTower3FPersonnelSignText
	bg_event  9,  0, BGEVENT_JUMPTEXT, RadioTower3FPokemonMusicSignText
	bg_event 14,  2, BGEVENT_UP, CardKeySlotScript

	def_object_events
	object_event  7,  4, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, RadioTower3FSuperNerdText, -1
	object_event  3,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower3FGymGuideScript, -1
	object_event 11,  3, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTower3FCooltrainerFScript, -1
	object_event  9,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerRocketScientistMarc, -1

CardKeyShutterCallback:
	changeblock 14, 2, $2a
	changeblock 14, 4, $1
	endcallback

RadioTower3FGymGuideScript:
	jumptextfaceplayer RadioTower3FGymGuideText_Rockets

RadioTower3FCooltrainerFScript:
	jumpthistextfaceplayer

	text "The Team Rocket"
	line "boss has locked"
	cont "himself in."

	para "But the Director"
	line "can open it."

	para "He's up on the"
	line "fifth floor."

	para "Please save him!"
	done

GenericTrainerRocketScientistMarc:
	generictrainer ROCKET_SCIENTIST, MARC, EVENT_BEAT_ROCKET_SCIENTIST_MARC, RocketScientistMarcSeenText, RocketScientistMarcBeatenText

	text "Bwahahaha…"

	para "I can transmit as"
	line "strong a signal as"
	cont "I need from here."
	done

CardKeySlotScript:: ;SHOULD THIS HAVE ONLY ONE COLON?
	opentext
	writetext RadioTower3FCardKeySlotText
	waitbutton
	endtext


RadioTower3FSuperNerdText:
	text "We have recordings"
	line "of the cries of"

	para "all #mon that"
	line "have been found."

	para "We must have about"
	line "200 kinds."
	done

RadioTower3FGymGuideText_Rockets:
	text "To trainers, #-"
	line "mon are their"
	cont "beloved partners."

	para "It's terrible how"
	line "Team Rocket is"

	para "trying to control"
	line "#mon."
	done

RadioTower3FGymGuideText:
	text "We run 24 hours a"
	line "day to broadcast"

	para "entertaining pro-"
	line "grams."

	para "I'll do my best to"
	line "run around the"
	cont "clock too!"
	done

RadioTower3FCooltrainerFIsDirectorSafeText:
	text "Is the Director"
	line "safe?"
	done

RadioTower3FCooltrainerFYoureMyHeroText:
	text "Thank you!"
	line "You're my hero!"

	para "This is a token of"
	line "my appreciation."
	done

RadioTower3FCooltrainerFItsAHeatRockText:
	text "It's a Heat Rock."
	line "It makes the move"
	cont "Sunny Day last"
	cont "longer."
	done

RadioTower3FCooltrainerFYouWereMarvelousText:
	text "You were simply"
	line "marvelous!"
	done

RocketScientistMarcSeenText:
	text "An unknown child"
	line "wandering here?"

	para "Who are you?"
	done

RocketScientistMarcBeatenText:
	text "Tch! I took you"
	line "too lightly!"
	done

RadioTower3FCardKeySlotText:
	text "It's the Card Key"
	line "slot."
	done

InsertedTheCardKeyText:
	text "<PLAYER> inserted"
	line "the Card Key."
	done

RadioTower3FPersonnelSignText:
	text "3F Personnel"
	done

RadioTower3FPokemonMusicSignText:
	text "#mon Music with"
	line "Host DJ Ben"
	done
