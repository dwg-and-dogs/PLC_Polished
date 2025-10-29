VioletNicknameSpeechHouse_MapScriptHeader:
	def_scene_scripts
	scene_script VioletHouseTrigger 

	def_callbacks

	def_warp_events
	warp_event  3,  7, VIOLET_CITY, 4
	warp_event  4,  7, VIOLET_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, VioletPickyEaterScript, -1
	object_event  2,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, jumptextfaceplayer, VioletNicknameSpeechHouseTeacherScript, -1
	object_event  5,  2, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletNicknameSpeechHouseLassText, -1
	pokemon_event  6,  2, TANGELA, -1, -1, PAL_NPC_BLUE, TangelaVioletText, -1
	pokemon_event  0,  3, PARASECT, -1, -1, PAL_NPC_RED, ParasectVioletText, -1

	object_const_def
	const VIOLET_HOUSE_TWIN

VioletHouseTrigger:
	sdefer .TradeQuestScript
	end
	
.TradeQuestScript:
	showemote EMOTE_HAPPY, VIOLET_HOUSE_TWIN, 30
	setscene $1 
	end


VioletNicknameSpeechHouseTeacherScript: 
	checkevent EVENT_GOT_GIGA_DRAIN ; 
	iftrue_jumptextfaceplayer VioletCity_GotGigaDrain
	faceplayer
	opentext
	writetext VioletCityGiveGigaDrainText
	promptbutton
	verbosegivetmhm TM_GIGA_DRAIN
	setevent EVENT_GOT_GIGA_DRAIN
	jumpthisopenedtext

	text "If you get thir-"
	line "sty, you can use"
	cont "that TM."
	done

VioletCity_GotGigaDrain:
	text "If you get thir-"
	line "sty, you can use"
	cont "that TM."
	done
	
VioletCityGiveGigaDrainText:
	text "The shorelines"
	line "in town recede"
	cont "more each day."
	
	para "That's why we use"
	line "this TM to get"
	cont "enough water."
	done

VioletNicknameSpeechHouseTeacherText:
	text "She uses the names"
	line "of her favorite"
	cont "things to eat."

	para "For the nicknames"
	line "she gives to her"
	cont "#mon, I mean."
	done

VioletNicknameSpeechHouseLassText:
	text "My Tangela gets"
	line "water from the"
	cont "mud!"
	done

TangelaVioletText:
	text "AngelHair:"
	line "La la laa!"
	
	para "It has a vibrant"
	line "disposition!"
	done

ParasectVioletText:
	text "Portobela: "
	line "... "
	
	para "It waddles with a"
	line "vacant smile."
		
	para "Condiment residue"
	line "is all over its"
	cont "mushroom."
	done
	
	
VioletPickyEaterScript:
    faceplayer
    opentext
	checkevent EVENT_GAVE_BIG_MUSHROOM
	iftrue_jumpopenedtext GiveBigMushroomText
	writetext NeedRageCandyBarText
	waitbutton
	checkkeyitem RAGECANDYBAR_K
	iffalse_jumpopenedtext Text_NoCandyBar
	writetext Text_BarQuestion
	yesorno
	iffalse_jumpopenedtext Text_NoCandyBar
	takekeyitem RAGECANDYBAR_K
	verbosegivekeyitem BIG_MUSHROOM_K
	setevent EVENT_GAVE_BIG_MUSHROOM
	jumpopenedtext GiveBigMushroomText
	

NeedRageCandyBarText:
    text "It's getting"
	line "dire here."
	
	para "Without water to"
	line "grow crops, we"
	para "might have to eat"
	line "...MUSHROOMS."
    done

Text_BarQuestion:
    text "Wait, I smell"
	line "it! Is that..."
	
	para "Ragecandybar?"
	line "Please, I'll give"
	cont "you the biggest"
	
	para "mushroom I've"
	line "harvested from"
	cont "ol' Portobela?"	
    done

Text_NoCandyBar:
    text "Ugh..."
    done

GiveBigMushroomText:
    text "Don't tell my sis"
	line "about that candy!"
	
	para "The mushroom has"
	line "a bitter taste."
	
	para "Maybe some old"
	line "man will want it"
	cont "to make tea."
    done
