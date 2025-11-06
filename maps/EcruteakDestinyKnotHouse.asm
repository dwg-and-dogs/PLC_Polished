EcruteakDestinyKnotHouse_MapScriptHeader: ; herbalist, part of trade quest 
	def_scene_scripts
	scene_script EcruteakDestinyKnotTrigger 

	def_callbacks

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 17
	warp_event  4,  7, ECRUTEAK_CITY, 17

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_JUMPSTD, radio2

	def_object_events
	object_event  2,  3, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakBlueMailScript, -1
	object_event  5,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, HerbalistWifeText, -1

	object_const_def
	const ECRUTEAK_DESTINY_HOUSE_SAGE

EcruteakDestinyKnotTrigger:
	sdefer .TradeQuestScript
	end
	
.TradeQuestScript:
	showemote EMOTE_HEART, ECRUTEAK_DESTINY_HOUSE_SAGE, 30
	setscene $1
	end



HerbalistWifeText:
	text "My husband's tea"
	line "is popular with"
	cont "young lovers."
	
	para "They want to see"
	line "if they will end"
	cont "up together."
	done

EcruteakBlueMailScript: ; TRADE QUEST 
	faceplayer
	opentext	
	checkevent EVENT_GAVE_LITEBLUEMAIL
	iftrue_jumpopenedtext TextReadingTheTeaLeaves2
	writetext NeedABigMushroomText
	waitbutton
	checkkeyitem BIG_MUSHROOM_K
	iffalse_jumpopenedtext NoBigMushroom
	writetext Text_BigMushroomQuestion ;;
	yesorno
	iffalse_jumpopenedtext NoBigMushroom
	writetext TextReadingTheTeaLeaves
	waitbutton
	takekeyitem BIG_MUSHROOM_K
	verbosegivekeyitem LITEBLUEMAIL_K
	setevent EVENT_GAVE_LITEBLUEMAIL
	jumpopenedtext TextReadingTheTeaLeaves2


NeedABigMushroomText:
	text "Have you come to"
	line "have your fortune"
	para "told? I can read"
	line "your tea leaves."

	para "The only thing I"
	line "need is a Big"
	cont "Mushroom."
	done

NoBigMushroom:
	text "Oh, you don't have"
	line "one? Please come"
	cont "back."
	done

Text_BigMushroomQuestion:
	text "Oh! That's a BIG"
	line "Mushroom! I can"
	para "show you your"
	line "future, if you"
	cont "let me brew it."
	done

TextReadingTheTeaLeaves:
	text "Hot water, Toe of"
	line "Politoed, Big"
	cont "Mushroom..."
	
	para "The broth is now"
	line "a lite blue..."
		
	para "Dunk the papers"
	line "in the broth..."

	para "Oh? It's blank."

	para "The spirits have"
	line "spoken! Your"
	para "future is"
	line "undecided!"

	para "My Litebluemail"
	line "is perfect if you"
	para "aren't sure what"
	line "the future holds."
	done

TextReadingTheTeaLeaves2:
	text "The spirits have"
	line "spoken! Your"
	para "future is"
	line "undecided!"
	
	para "My Litebluemail"
	line "is perfect if you"
	para "aren't sure what"
	line "the future holds."
	done
