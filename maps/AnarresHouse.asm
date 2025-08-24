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
	faceplayer
	opentext	
	writetext NeedAMintLeafText
	waitbutton
	checkitem MINT_LEAF
	iffalse_jumpopenedtext Text_NoMintLeaf
	writetext Text_MintLeafQuestion ;;
	yesorno
	iffalse_jumpopenedtext Text_NoMintLeaf
	takeitem MINT_LEAF
	verbosegiveitem TINYMUSHROOM
	setscene $1
	iffalse_endtext
	jumpopenedtext GiveTinyMushroomText 

NeedAMintLeafText: 
	text "I moved here"
	line "from the landing."
	
	para "I tried to get"
	line "these people to"
	para "appreciate the"
	line "taste of fish,"
	para "but they all say"
	line "my breath smells."
	
	para "No one wants to"
	line "come over to"
	para "eat. I picked"
	line "two buckets"
	cont "of mushrooms!"
	
	para "Do you have any"
	line "item that might"
	para "make my breath"
	line "smell better?"	

	para "I'll give you a"
	line "savory mushroom"
	cont "if you do."
	done

Text_MintLeafQuestion:
	text "Oh! I smell it!"
	
	para "Would you please"
	line "trade me that"
	cont "Mint Leaf?"
	done

	
GiveTinyMushroomText: 
	text "Give that tiny-"
	line "mushroom to"
	para "someone who"
	line "needs to make"
	cont "a great dish."
	done


Text_NoMintLeaf:
	text "You don't?"
	line "That's sad."
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
	
	para "Spirits used to"
	line "guide me through"
	cont "the rocks..."
		
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
	
	para "Ah, such memories."
	line "Thank you."
	
    para "These BlackGlass-"
    line "es are for you."
    done

HexManiacThankYouText:
    text "Thank you. I feel"
    line "more at home now."
    done

HexManiacBagFullText:
    text "Your Bag is full."
    done
	