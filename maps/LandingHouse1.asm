LandingHouse1_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  3,  7, TRADERS_LANDING, 5
	warp_event  4,  7, TRADERS_LANDING, 5


	def_coord_events



	def_bg_events



	def_object_events
	object_event  5,  4, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LandingHouse1MomScript, -1 
	object_event  2,  4, NOMAD_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LandingHouse1SonScript, EVENT_NOMAD_ISLANDS_HOUSE 



LandingHouse1MomScript:
	faceplayer
	opentext
	checkevent EVENT_NOMAD_NEXUS
	iffalse_jumpopenedtext LandingHouseWhereSonText
	checkevent EVENT_GOT_LIFE_ORB  
	iffalse_jumpopenedtext LandingHouse1_GotLifeOrb
	writetext LandingHouse1_GiveLifeOrb
	promptbutton
	verbosegiveitem LIFE_ORB
	setevent EVENT_GOT_LIFE_ORB
	jumpthisopenedtext

	text "Thank goodness my"
	line "son is back."
	
	para "Even though our"
	line "lives are diffe-"
	cont "rent, we can at"
	para "least depend on"
	line "our families."
	done

LandingHouse1_GotLifeOrb:
	text "Thank goodness my"
	line "son is back."
	
	para "Even though our"
	line "lives are diffe-"
	cont "rent, we can at"
	para "least depend on"
	line "our families."
	done

LandingHouse1_GiveLifeOrb:
	text "Thank you for"
	line "saving my son's"
	cont "life."
	
	para "We craft these"
	line "orbs when we"
	para "need strength to"
	line "break through a"
	cont "tough storm..."
	done
	
LandingHouseWhereSonText:
	text "Where is my son?"
	line "I told him he"
	para "shouldn't go to"
	line "the shores alone."
	done
	

LandingHouse1SonScript:
	checkevent EVENT_GOT_TM_FLASH ; CHECK 
	iftrue_jumptextfaceplayer LandingHouse1_GotFlash
	faceplayer
	opentext
	writetext LandingHouse1_GiveFlash
	promptbutton
	verbosegivetmhm TM_FLASH
	setevent EVENT_GOT_TM_FLASH
	jumpthisopenedtext

	text "I won't need that"
	line "anymore. I'm"
	cont "needed here."
	done

LandingHouse1_GotFlash:
	text "I won't need that"
	line "anymore. I'm"
	cont "needed here."
	done
	
LandingHouse1_GiveFlash:
	text "Thanks for help-"
	line "ing me out of the"
	cont "caves. Here, this"
	para "will help you if"
	line "you find any more"
	cont "dark areas."
	done
