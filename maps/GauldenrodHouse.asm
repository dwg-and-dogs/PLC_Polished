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
	line "Pink Lemonade I"
	para "squeezed fresh"
	line "from my garden."
	done

GivingLemonadeText:
	text "Thank you for the"
	line "Tinymushroom!"
	
	para "Enjoy that Pink"
	line "Lemonade, it hits"
	para "the spot when I'm"
	line "out on a hike"
	cont "north of here."
	done

Text_NoMushroom:
	text "Really? That's"
	line "too bad."
	done
