LandingHouse2_MapScriptHeader: 
	def_scene_scripts
	scene_script LandingHouse2Trigger 

	def_callbacks


	def_warp_events
	warp_event  3,  7, TRADERS_LANDING, 6
	warp_event  4,  7, TRADERS_LANDING, 6


	def_coord_events


	def_bg_events


	def_object_events
	object_event  5,  4, SPRITE_NOMAD_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LandingHouse2PearlScript, -1 
	object_event  2,  4, SPRITE_NOMAD_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LandingHouse2AssaultVestScript, -1 
	object_event  6,  5, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, LandingHouse2CuteGirlText, -1

	object_const_def
	const LANDING_HOUSE_2_NOMAD

LandingHouse2Trigger:
	sdefer .TradeQuest
	end
	
.TradeQuest:
	showemote EMOTE_HAPPY, LANDING_HOUSE_2_NOMAD, 30
	setscene $1
	end
	

LandingHouse2CuteGirlText:
	text "I miss my auntie"
	line "and uncle."
	
	para "They snuck away."
	line "I wonder if they"
	cont "miss us?"
	done


LandingHouse2PearlScript:
	faceplayer
	opentext	
	writetext NeedALightBallText
	waitbutton
	checkitem LIGHT_BALL
	iffalse_jumpopenedtext NoLightBallText
	writetext Text_LightBallQuestion ;;
	yesorno
	iffalse_jumpopenedtext NoLightBallText
	takeitem LIGHT_BALL
	verbosegiveitem PEARL
	setscene $1
	iffalse_endtext
	jumpopenedtext GivePearlText 

NeedALightBallText: 
	text "Some #mon"
	line "adore certain"
	cont "items."
	
	para "Cloyster, for"
	line "example, will"
	cont "gather Pearls."
	
	para "Oh, but my sea-"
	line "faring days are"
	para "over. Yet - I"
	line "still adore"
	cont "#mon!"
	
	para "I have seen some"
	line "little electric"
	para "mice running"
	line "around."
	
	para "Do you have the"
	line "yellow ball that"
	cont "makes them glow?"	
	done

Text_LightBallQuestion:
	text "Oh! I see it"
	line "shining in your"
	cont "bag!"

	para "Please, trade"
	line "me, I will give"
	para "the rarest of all"
	line "pearls!"
	done

GivePearlText: 
	text "Give that pearl"
	line "to someone who"
	cont "needs some help"
	cont "fishing."
	done

NoLightBallText:
	text "Oh, I'll have to"
	line "keep dreaming."
	done


LandingHouse2AssaultVestScript:
	checkevent EVENT_GOT_ASSAULT_VEST
	iftrue_jumptextfaceplayer GotAssaultVestText
	faceplayer
	opentext
	writetext GiveAssaultVestText
	promptbutton
	verbosegiveitem ASSAULT_VEST
	iffalse_endtext
	setevent EVENT_GOT_ASSAULT_VEST
	jumpthisopenedtext

	text "That's not a life"
	line "saving device."
	done

GotAssaultVestText:
	text "That's not a life"
	line "saving device."
	done


GiveAssaultVestText:
	text "Did you know the"
	line "Brigaders can't"
	cont "surf or swim?"
	
	para "They need to wear"
	line "life vests when"
	cont "near the water."
	
	para "But I'm sneaky."
	
	para "I do a little"
	line "switcheroo with"
	cont "one of mine."
	
	para "... Don't let 'em"
	line "keep you down."	
	done
