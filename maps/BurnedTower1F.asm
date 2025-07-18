BurnedTower1F_MapScriptHeader:
	def_scene_scripts
	

	def_callbacks


	def_warp_events
	warp_event  7, 15, ECRUTEAK_CITY, 13
	warp_event  8, 15, ECRUTEAK_CITY, 13


	def_coord_events

	def_bg_events
	bg_event  6,  7, BGEVENT_ITEM + ETHER, EVENT_BURNED_TOWER_1F_HIDDEN_ETHER
	bg_event 11, 11, BGEVENT_ITEM + ULTRA_BALL, EVENT_BURNED_TOWER_1F_HIDDEN_ULTRA_BALL

	def_object_events
	object_event  4, 6, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTower1FMortyScript, EVENT_BURNED_TOWER_MORTY

	smashrock_event 13, 4
	itemball_event 13,  1, HP_UP, 1, EVENT_BURNED_TOWER_1F_HP_UP

	object_event 12,  3, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerFirebreatherLyle, -1
	object_event  0,  6, SPRITE_FIREBREATHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerFirebreatherBill, -1

	object_event  7, 7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BurnedTower1FScientistText, EVENT_BURNED_TOWER_MORTY
	object_event  8, 7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BurnedTower1FSageText, EVENT_BURNED_TOWER_MORTY
	object_event  6, 14, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BurnedTower1FSage2Text, -1


	object_const_def
	const BURNED_TOWER_1F_MORTY

BurnedTower1FMortyScript:
	faceplayer
	opentext
	writetext Morty1FIntroText
	waitbutton
	checkpoke RAIKOU
	iftrue .MortyReturns
	checkpoke SUICUNE
	iftrue .MortyReturns
	checkpoke ENTEI
	iftrue .MortyReturns ;
	jumpopenedtext Text_MortyMorose ;; 
		
.MortyReturns:
	setevent EVENT_BURNED_TOWER_MORTY
	clearevent EVENT_MORTY_GYM 
	showemote EMOTE_SHOCK, BURNED_TOWER_1F_MORTY, 15
	jumpthisopenedtext

	text "Sublime! But..."
	line "That #mon."

	para "It was just..."
	line "being."

	para "Like an elite"
	line "gymnast who makes"
	para "the extraordinary"
	line "look routine."

	para "The profound is a"
	line "simple act."

	para "It's the daily"
	line "routines that"
	para "connect us to"
	line "something bigger."
	
	para "I will return"
	cont "to my Gym."
	done

Morty1FIntroText:
	text "Oh, have you come"
	line "for my badge? The"
	cont "gym is closed."

	para "I feel I need"
	line "something drama-"
	cont "tic to bring"
	para "people closer to"
	line "the sublime."

	para "A legendary"
	line "#mon would do."
	done

Text_MortyMorose:
	text "I'll have to keep"
	line "studying to find"
	cont "one."
	done

BurnedTower1FScientistText:
	text "The three are only"
	line "'legendary' in"
	cont "name. Their power"
	cont "matches Tyranitar."

	para "We consider it"
	line "rare, not revered."
	cont "These #mon"
	cont "might be of use!"
	done
	
BurnedTower1FSageText:
	text "The three #mon"
	line "are meant to"
	cont "inspire awe..."

	para "To study them"
	line "would remove the"
	para "mystery, even"
	line "make you think you"
	cont "can control them!"
	done
	
GenericTrainerFirebreatherLyle:
	generictrainer FIREBREATHER, LYLE, EVENT_BEAT_FIREBREATHER_LYLE, FirebreatherLyleSeenText, FirebreatherLyleBeatenText

	text "Are you looking"
	line "for the legend-"
	cont "ary beasts?"
	done
	
GenericTrainerFirebreatherBill:
	generictrainer FIREBREATHER, BILL, EVENT_BEAT_FIREBREATHER_BILL, FirebreatherBillSeenText, FirebreatherBillBeatenText

	text "Check the ground"
	line "for items."
	done

FirebreatherLyleSeenText:
	text "Boo!"
	done

FirebreatherLyleBeatenText:
	text "Now you scared"
	line "me..."
	done


FirebreatherBillSeenText:
	text "There's treasure"
	line "on the ground, but"
	cont "I found a trainer!"
	done

FirebreatherBillBeatenText:
	text "You found me!"
	done

BurnedTower1FSage2Text:
	text "When this tower"
	line "burned down,"
	para "Ho-Oh briefly"
	line "returned to"

	para "revive three"
	line "innocent #mon"
	para "to roam the"
	line "land, where"
	cont "they could"

	para "inspire people"
	line "to revere the"
	cont "natural world."
	done
