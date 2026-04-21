AnarresHouse_MapScriptHeader:
	def_scene_scripts
	scene_script AnarresHouseTinyMushroomTrigger 

	def_callbacks


	def_warp_events
	warp_event  3,  7, ANARRES_TOWN, 3
	warp_event  4,  7, ANARRES_TOWN, 3

	def_coord_events


	def_bg_events 


	def_object_events
	object_event  5,  4, SPRITE_NOMAD_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AnarresHouseMushroomScript, -1 
	object_event  2,  4, SPRITE_NOMAD_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AnarresHouseHexManiacScript, -1 ; show spell tag, twistedspoon, blackglasses

	object_const_def
	const ANARRES_HOUSE_CHEF

AnarresHouseTinyMushroomTrigger:
	sdefer .TinyMushroomScript
	end
	
.TinyMushroomScript:
	showemote EMOTE_FISH, ANARRES_HOUSE_CHEF, 30
	setscene $1
	end
	

AnarresHouseMushroomScript:
; reset events 
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
	checkevent EVENT_GAVE_TINYMUSHROOM
	iftrue_jumpopenedtext GiveTinyMushroomText
	writetext NeedAMintLeafText
	waitbutton
	checkkeyitem MINT_LEAF_K
	iffalse_jumpopenedtext Text_NoMintLeaf
	writetext Text_MintLeafQuestion 
	yesorno
	iffalse_jumpopenedtext Text_NoMintLeaf
	takekeyitem MINT_LEAF_K
	verbosegivekeyitem TINYMUSHROOM_K
	setevent EVENT_GAVE_TINYMUSHROOM
	jumpopenedtext GiveTinyMushroomText 

NeedAMintLeafText: 
	text "We immigrated"
	line "here from the"
	cont "Landing."
	
	para "I want to help"
	line "these people to"
	para "appreciate the"
	line "taste of fish,"
	para "but they say my"
	line "breath smells."
	
	para "No one wants to"
	line "come over to eat."
	para "I even picked so"
	line "many mushrooms!"
	
	para "Do you have any"
	line "item that might"
	para "make my breath"
	line "smell better?"	

	para "I'll give you a"
	line "Tinymushroom"
	cont "if you do."
	done

Text_MintLeafQuestion:
	text "Oh! I smell it!"
	
	para "Would you please"
	line "trade me that"
	cont "Mint Leaf?"
	done

	
GiveTinyMushroomText: 
	text "Give that Tiny-"
	line "mushroom to"
	para "someone who"
	line "needs to make"
	cont "a great dish."
	done

Text_NoMintLeaf:
	text "No? That stinks."
	done

AnarresHouseHexManiacScript:
    faceplayer
    opentext
    checkevent EVENT_INTRODUCED_HEX_MANIAC
    iftrue .CheckPokemon
    writetext HexManiacIntroText
    setevent EVENT_INTRODUCED_HEX_MANIAC
    promptbutton
.CheckPokemon
    checkevent EVENT_GAVE_SPELL_TAG_ANARRES
    iftrue .CheckNatu
    writetext HexManiacAskGastlyText
    promptbutton
    checkpoke GASTLY
    iftrue .GiveSpellTag
    writetext HexManiacNoGastlyText
    waitbutton
    closetext
    end

.GiveSpellTag
    writetext HexManiacGiveSpellTagText
    promptbutton
    verbosegiveitem SPELL_TAG
    iffalse .BagFull
    setevent EVENT_GAVE_SPELL_TAG_ANARRES

.CheckNatu
    checkevent EVENT_GAVE_TWISTEDSPOON_ANARRES
    iftrue .CheckMurkrow
    writetext HexManiacAskNatuText
    promptbutton
    checkpoke NATU
    iftrue .GiveTwistedSpoon
    writetext HexManiacNoNatuText
    waitbutton
    closetext
    end

.GiveTwistedSpoon
    writetext HexManiacGiveTwistedSpoonText
    promptbutton
    verbosegiveitem TWISTEDSPOON
    iffalse .BagFull
    setevent EVENT_GAVE_TWISTEDSPOON_ANARRES

.CheckMurkrow
    checkevent EVENT_GAVE_BLACKGLASSES_ANARRES
    iftrue .AllDone
    writetext HexManiacAskMurkrowText
    promptbutton
    checkpoke MURKROW
    iftrue .GiveBlackGlasses
    writetext HexManiacNoMurkrowText
    waitbutton
    closetext
    end

.GiveBlackGlasses
    writetext HexManiacGiveBlackGlassesText
    promptbutton
    verbosegiveitem BLACKGLASSES
    iffalse .BagFull
    setevent EVENT_GAVE_BLACKGLASSES_ANARRES

.AllDone
    writetext HexManiacThankYouText
    waitbutton
    closetext
    end

.BagFull
    writetext HexManiacBagFullText
    waitbutton
    closetext
    end

HexManiacIntroText:
    text "I once guided"
    line "others through"
	cont "perilous waters."
	
    para "But I left that"
	line "all behind."	
	
	para "If you remind me"
	line "of those days,"
	para "I may have some"
	line "gifts for you."
    done

HexManiacAskGastlyText:
    text "I long to see the"
    line "ghost type #-"
    para "mon that avoids"
    line "the wind."
    done

HexManiacNoGastlyText:
    text "Oh, how I long"
	line "to see it!"
    done

HexManiacGiveSpellTagText:
    text "Ah, Gastly! A"
    line "true specter."
    para "This Spell Tag"
    line "is now yours."
    done

HexManiacAskNatuText:
    text "I long to see the"
    line "psychic #mon"
    para "that hops and"
    line "stares."
    done

HexManiacNoNatuText:
    text "Oh, how I long"
	line "to see it!"
    done

HexManiacGiveTwistedSpoonText:
    text "Natu! It sees"
    line "past and future."
    para "This TwistedSpoon"
    line "is yours now."
    done

HexManiacAskMurkrowText:
    text "I long to see the"
    line "dark #mon that"
    para "stashes shiny"
    line "objects."
    done

HexManiacNoMurkrowText:
    text "Oh, how I long"
	line "to see it!"
    done

HexManiacGiveBlackGlassesText:
    text "Murkrow! Ornery"
	line "creature that"
	cont "led me down many"
	cont "circular paths!"
		
    para "For you, these"
	line "Blackglasses."
    done

HexManiacThankYouText:
    text "Thank you. I feel"
    line "more at home now."
    done

HexManiacBagFullText:
    text "Your Bag is full."
    done
	