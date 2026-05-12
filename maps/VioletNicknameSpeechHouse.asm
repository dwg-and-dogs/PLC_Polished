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
	object_event  1,  5, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, VioletPickyEaterScript, -1
	object_event  2,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, jumptextfaceplayer, VioletNicknameSpeechHouseTeacherScript, -1
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
	checkevent EVENT_GOT_GIGA_DRAIN 
	iftrue_jumptextfaceplayer VioletCity_GotGigaDrain
	faceplayer
	opentext
	writetext VioletCityGiveGigaDrainText
	promptbutton
	verbosegivetmhm TM_GIGA_DRAIN
	setevent EVENT_GOT_GIGA_DRAIN
	jumpthisopenedtext

	text "If you're thirsty"
	line "use that TM."
	done

VioletCity_GotGigaDrain:
	text "If you're thirsty"
	line "use that TM."
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

	para "Smells faintly of"
	line "ketchup."
	done
	
	
VioletPickyEaterScript:
	checkevent EVENT_GOT_MINT_LEAF
	iftrue .GotMintLeaf
	setmapscene AZALEA_POKECENTER_1F, $0 
.GotMintLeaf:
	checkevent EVENT_GAVE_TINYMUSHROOM
	iftrue .GotTinyMushroom
	setmapscene ANARRES_HOUSE, $0
.GotTinyMushroom: 
	checkevent EVENT_GOT_LEMONADE_FROM_LADY
	iftrue .GotLemonade
	setmapscene GAULDENROD_HOUSE, $0
.GotLemonade:
	checkevent EVENT_TRADED_BRICK_PIECE
	iftrue .GotBrick
	setmapscene NATIONAL_PARK, $0
.GotBrick:
	checkevent EVENT_TRADED_RAGECANDYBAR
	iftrue .GotRagecandybar
	setmapscene GOLDENROD_MUSEUM_2F, $0
.GotRagecandybar:
	checkevent EVENT_GAVE_BIG_MUSHROOM
	iftrue .GotMushroom
	setmapscene VIOLET_NICKNAME_SPEECH_HOUSE, $0
.GotMushroom:
	checkevent EVENT_GAVE_LITEBLUEMAIL
	iftrue .GotBlueMail
	setmapscene ECRUTEAK_DESTINY_KNOT_HOUSE, $0
.GotBlueMail:
	checkevent EVENT_GOT_GOLD_LEAF
	iftrue .GotGoldLeaf
	setmapscene ECRUTEAK_CHERISH_BALL_HOUSE, $0
.GotGoldLeaf:
	checkevent EVENT_GOT_PEARL_OLIVINE
	iftrue .GotPearl
	setmapscene OLIVINE_PUNISHMENT_SPEECH_HOUSE, $0
.GotPearl:
	checkevent EVENT_GOT_SURF_MAIL
	iftrue .GotSurfMail
	setmapscene OLIVINE_CAFE, $0
.GotSurfMail:
	checkevent EVENT_GOT_OLD_AMBER
	iftrue .GotOldAmber
	setmapscene MAHOGANY_TOWN, $0
.GotOldAmber:
	checkevent EVENT_GOT_SWEET_HONEY
	iftrue .GotHoney
	setmapscene EERIE_HAMLET, $0
.GotHoney:
	checkevent EVENT_GAVE_MASTER_BALL
	iftrue .DoneWithChecks
	setmapscene GAULDENROD_GUILD, $0
.DoneWithChecks:
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
