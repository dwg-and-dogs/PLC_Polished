GauldenrodHouse_MapScriptHeader:
	def_scene_scripts
	scene_script GauldenrodHouseTradeQuestTrigger 

	def_callbacks

	def_warp_events
	warp_event  3,  7, GAULDENROD, 4
	warp_event  4,  7, GAULDENROD, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LemonadeHouseLadyScript, -1

	object_const_def
	const LEMONADE_HOUSE_LADY


GauldenrodHouseTradeQuestTrigger:
	sdefer .TradeQuestScript
	end
	
.TradeQuestScript:
	showemote EMOTE_HAPPY, LEMONADE_HOUSE_LADY, 30
	setscene $1
	end

	
LemonadeHouseLadyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_LEMONADE_FROM_LADY
	iftrue_jumpopenedtext GivingLemonadeText
	writetext WantLemonadeText
	waitbutton
	checkkeyitem TINYMUSHROOM_K
	iffalse_jumpopenedtext Text_NoMushroom
	writetext Text_MushroomQuestion
	yesorno
	iffalse_jumpopenedtext Text_NoMushroom
	takekeyitem TINYMUSHROOM_K
	verbosegivekeyitem LEMONADE_K
	setevent EVENT_GOT_LEMONADE_FROM_LADY
	jumpopenedtext GivingLemonadeText 
	

WantLemonadeText:
	text "I'm trying to kick"
	line "my caffeine habit"
	
	para "now that the bri-"
	line "gaders levy taxes"
	cont "on tea."
	
	para "My friends say"
	line "I should brew a"
	para "tinymushroom to"
	line "get a smoother"
	cont "buzz."
	done

Text_MushroomQuestion:
	text "Do you have a"
	line "tinymushroom?"

	para "I would give you"
	line "a fresh lemonade"
	cont "from my garden."
	done

GivingLemonadeText:
	text "Oh, wonderful!"
	line "Thank you so much!"

	para "Here, take this"
	line "lemonade!"
	done

Text_NoMushroom:
	text "Really? That's"
	line "too bad."
	done
