GoldenrodPokecomCenter1F_MapScriptHeader:
	def_scene_scripts


	def_callbacks

	def_warp_events
	warp_event  6, 15, GOLDENROD_CITY, 15
	warp_event  7, 15, GOLDENROD_CITY, 15


	def_coord_events

	def_bg_events
	bg_event 11,  7, BGEVENT_READ, PokemonJournalWhitneyScript
	bg_event 24,  5, BGEVENT_RIGHT, JudgeMachineScript
	bg_event 24,  6, BGEVENT_RIGHT, JudgeMachineScript
	bg_event 24,  7, BGEVENT_RIGHT, JudgeMachineScript
	bg_event 24,  8, BGEVENT_RIGHT, JudgeMachineScript
	bg_event 24,  9, BGEVENT_RIGHT, JudgeMachineScript
	bg_event 24, 10, BGEVENT_RIGHT, JudgeMachineScript
	bg_event 25, 11, BGEVENT_UP, JudgeMachineScript
	bg_event 26, 11, BGEVENT_UP, JudgeMachineScript
	bg_event 27, 11, BGEVENT_UP, JudgeMachineScript
	bg_event 28, 11, BGEVENT_UP, JudgeMachineScript
	bg_event 29,  5, BGEVENT_LEFT, JudgeMachineScript
	bg_event 29,  6, BGEVENT_LEFT, JudgeMachineScript
	bg_event 29,  7, BGEVENT_LEFT, JudgeMachineScript
	bg_event 29,  8, BGEVENT_LEFT, JudgeMachineScript
	bg_event 29,  9, BGEVENT_LEFT, JudgeMachineScript
	bg_event 29, 10, BGEVENT_LEFT, JudgeMachineScript
	bg_event 24,  3, BGEVENT_ITEM + RARE_CANDY, EVENT_GOLDENROD_POKECOM_CENTER_1F_HIDDEN_RARE_CANDY

	def_object_events
	object_event  5, 12, SPRITE_KURT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokecomKurtScript, EVENT_GOT_BASEMENT_KEY
	object_event  7,  7, SPRITE_BOWING_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FNurseScript, -1
	object_event  1,  9, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MapNameNPC1Script, -1
	object_event  9, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MapNameNPC2Script, -1
	object_event  3, 12, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MapNameNPC3Script, -1
	object_event 16,  8, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, WonderTradeReceptionistScript, -1
	object_event  12, 13, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IlexExcelsiorV3Script, -1

	object_const_def
	const POKECOM_KURT



PokecomKurtScript:
	faceplayer
	opentext
	writetext KurtHasSomeFansText
	waitbutton
	closetext
	checkevent EVENT_GOT_BASEMENT_KEY
	iftrue .end
	givekeyitem BASEMENT_KEY
	setevent EVENT_GOT_BASEMENT_KEY
.end
	end

GoldenrodPokecenter1FNurseScript:
	setevent EVENT_WELCOMING_TO_POKECOM_CENTER
	jumpstd pokecenternurse


InfoSignScript:
	jumpthistext

	text "#Com Center"
	line "1F Information"

	para "Left:"
	line "Administration"

	para "Center:"
	line "Wonder Trade Hub"

	para "Right:"
	line "<PK><MN> Judge Machine"
	done

PokemonJournalWhitneyScript:
	setflag ENGINE_READ_WHITNEY_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "Leader Whitney!"

	para "Whitney is said to"
	line "admire Bruno of"
	cont "the Elite Four."
	done

JudgeMachineScript:
	opentext
	special JudgeMachine
	waitendtext


MapNameNPC1Script:
	jumptextfaceplayer MapNameNPC1Text

MapNameNPC2Script:
	jumptextfaceplayer MapNameNPC2Text

MapNameNPC3Script:
	jumptextfaceplayer MapNameNPC3Text

MapNameNPC1Text:
	text "New technology"
	line "is so amazing."
	para "But I wish I"
	line "didn't have to"
	para "take out a loan"
	line "to get a new"
	para "#dex every"
	line "other year…"
	done

MapNameNPC2Text:
	text "With my new Bike"
	line "I can deliver"
	para "groceries so"
	line "much faster!"
	
	para "I got a loan, and"
	line "now I can make my"
	cont "dreams a reality!"
	done

MapNameNPC3Text:
	text "The Radio Tower"
	line "has increased its"
	para "security even"
	line "more."
	done

	

WonderTradeReceptionistScript:
	opentext
	writetext WonderTradeIntroText
	waitbutton
	checkevent EVENT_INTRODUCED_TEALA
	iftrue .introduced
	writetext IntroduceTealaText
	waitbutton
	setevent EVENT_INTRODUCED_TEALA
.introduced
	writetext WonderTradeExplanationText
	promptbutton
	special WonderTrade
	iffalse .done
	playmusic MUSIC_POKECOM_CENTER
	writetext DebugWonderTradeCompleteText
	playsound SFX_DEX_FANFARE_80_109
	waitsfx
.done:
	jumpopenedtext WonderTradeGoodbyeText

WonderTradeIntroText:
	text "Hello! Welcome to"
	line "#Com Center"
	cont "Wonder Trade Hub."
	done

IntroduceTealaText:
	text "I'm Teala, your"
	line "trade attendant."
	done

WonderTradeExplanationText:
	text "You can trade"
	line "#mon with other"
	cont "people far away."
	done

WonderTradeCompleteText:
	text "It's your new"
	line "partner."

	para "Please take care"
	line "of it with love."
	done

WonderTradeGoodbyeText:
	text "We hope to see you"
	line "again."
	done

WonderTradeForGSBallPichuText:
	text "…But what's this?"
	line "Is something wrong"

	para "with the Wonder"
	line "Trade machine?"

	para "It seems like you"
	line "just traded a"

	para "#mon with"
	line "yourself."

	para "But that can't be"
	line "right… You can't"

	para "be in two places"
	line "at once."

	para "Besides, the ma-"
	line "chine communicates"

	para "through space,"
	line "not time…"

	para "And what is that"
	line "strange Ball it's"

	para "holding? Is it an"
	line "Apricorn Ball?"

	para "Here, take a look…"
	done

WonderTradeForGSBallPichuText2:
	text "It may be unusual,"
	line "but a #mon"
	cont "is a #mon."

	para "Please look after"
	line "it carefully."
	done

KurtHasSomeFansText:
    text "<PLAYER>, I have"
	line "some contacts."
	
	para "They can get us"
	line "east of the city"
	cont "if we help them."

	para "They're concerned"
	line "with Whitney's"
	cont "show."
	
	para "It's so divisive."
	line "She tells them"
	para "that their"
	line "families and ne-"
	para "ighbors aren't"
	line "like them."

	para "So, my contacts"
	line "would like our"
	para "help stopping"
	line "her broadcast."

	para "Meet me in the"
	line "Underground."
    done

IlexExcelsiorV3Script:
	opentext
	writetext WeirdTextGoldenrodCenter
	closetext
	unowntypeface
	showtext IlexExcelsiorV3Text
	restoretypeface
	special MapCallbackSprites_LoadUsedSpritesGFX
	end

WeirdTextGoldenrodCenter:
	text "Hm? What's this"
	line "weird pamphlet?"
	done

IlexExcelsiorV3Text:
	text "Ilex Excelsior"
	
	para "When the tree"
	line "rings, will"
	cont "you answer"
	
	para "Third Edition"

	para "Stop the high"
	line "frequency radio"
	cont "by going low"	
	done
	