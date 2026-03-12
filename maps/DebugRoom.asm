DebugRoom_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  9, 0, AZALEA_TOWN, 5
	warp_event  1, 8, UNION_CAVE_1F, 1


	def_coord_events


	def_bg_events
	bg_event  5,  2, BGEVENT_READ, DebugCPU2
	bg_event  0,  2, BGEVENT_UP, DebugInteraction ; all flags, etc. 

	def_object_events
	object_event  4,  3, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED,  OBJECTTYPE_SCRIPT, 0, dwgDebugScript, -1 ; REVISE TEXT TODO 
	object_event  2,  3, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE,  OBJECTTYPE_SCRIPT, 0, Breeder1Script, -1 ; GIVE SUPERTEAM CHECK 
	object_event  7,  8, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE,  OBJECTTYPE_SCRIPT, 0, Breeder2Script, -1 ; GIVES VARIANTS CHECK 
	object_event  4,  8, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN,  OBJECTTYPE_SCRIPT, 0, Breeder5Script, -1 ; GIVES ALL CHECK 
	object_event  6,  4, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE,  OBJECTTYPE_SCRIPT, 0, Breeder6Script, -1 ; wonder gift CHECK
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN,  OBJECTTYPE_SCRIPT, 0, ItemVendorScript, -1 ; gives all items and TMs 
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN,  OBJECTTYPE_SCRIPT, 0, BreederTypeScript, -1 ; asks if you want fire, water, ... then gives you a first stage

	
	object_const_def
	const DEBUG_DWG

BreederTypeScript:
	faceplayer
	opentext

	; Ask about Group 1
	writetext WantGroup1Text
	yesorno
	iffalse .AskGroup2

	; Pick a random mon from Group 1 (3 mons)
	random 3
	ifequal 0, .GiveGroup1_0
	ifequal 1, .GiveGroup1_1
	; must be 2
	givepoke HOUNDOUR, 5
	jumpopenedtext GaveMonText

.GiveGroup1_0:
	givepoke CYNDAQUIL, 5
	jumpopenedtext GaveMonText

.GiveGroup1_1:
	givepoke MAGMAR, 5
	jumpopenedtext GaveMonText

.AskGroup2:
	; Ask about Group 2
	writetext WantGroup2Text
	yesorno
	iffalse .NoThanks

	; Pick a random mon from Group 2 (3 mons)
	random 3
	ifequal 0, .GiveGroup2_0
	ifequal 1, .GiveGroup2_1
	; must be 2
	givepoke POLIWAG, 5
	jumpopenedtext GaveMonText

.GiveGroup2_0:
	givepoke TOTODILE, 5
	jumpopenedtext GaveMonText

.GiveGroup2_1:
	givepoke OSHAWOTT, 5
	jumpopenedtext GaveMonText

.NoThanks:
	writetext NoThanksText
	closetext
	end

WantGroup1Text:
	text "Want a Fire-type"
	line "POKéMON?"
	done

WantGroup2Text:
	text "How about a"
	line "Water-type POKéMON?"
	done

GaveMonText:
	text "Take good care"
	line "of it!"
	done

NoThanksText:
	text "Maybe next time!"
	done

Breeder6Script: ; 
	faceplayer
	opentext
	writetext RandomPokemonQuestionText
	yesorno
	iffalse_jumpopenedtext BreederSayNoText
	; Generate a random number from 0 to (CELEBI - CYNDAQUIL)
	; which covers the full range of pokemon
	random CELEBI - CYNDAQUIL + 1
	addval CYNDAQUIL

	; Now $1 holds a random pokemon constant.
	; Since there's no MON_FROM_MEM / givepoke-from-variable,
	; we check each value and jump to the matching givepoke.

for x, CYNDAQUIL, CELEBI + 1
	ifequal x, .Give_{d:x}
endr
	; fallback (should never happen)
	jumpopenedtext BreederSayNoText

for x, CYNDAQUIL, CELEBI + 1
.Give_{d:x}:
	givepoke x, 5
	jumpopenedtext BreederText
endr

RandomPokemonQuestionText:
	text "Want a random"
	line "POKéMON?"
	done

ItemVendorScript:
	faceplayer
	opentext
	writetext VendorQuestionAllText
	yesorno
	iffalse_jumpopenedtext BreederSayNoText
	writetext BreederText	
	; all items 
for x, POKE_BALL, ODD_SOUVENIR + 1
if x != PARK_BALL && x != SAFARI_BALL && x != POLYCHROME
	giveitem x, 99
endc
endr
	; all key items
for x, NUM_KEY_ITEMS
if x != MACHINE_PART
	givekeyitem x
endc
endr
	; all tms+hms
for x, NUM_TMS + NUM_HMS
	givetmhm x
endr
	; all apricorns 
	giveapricorn FIXED_CHARGE, 5
	giveapricorn SHORE_FOAM, 5
	giveapricorn RADIANT_OPAL, 5
	giveapricorn HOLLOW_ROCK, 5
	giveapricorn TOUGH_LEAVES, 5
	giveapricorn PNK_APRICORN, 5
	giveapricorn WHT_APRICORN, 5
	closetext
	end

VendorQuestionAllText:
	text "All items and"
	line "key items?"
	done
	
VendorYesText:
	text "Here you go!"
	done

DebugInteraction: 
	opentext
	setflag ENGINE_POKEDEX
	callasm FillPokedex
	special Special_SetDayOfWeek
	setflag ENGINE_POKEGEAR
	setflag ENGINE_HAVE_SHINY_CHARM
	; useful items
for x, POKE_BALL, ODD_SOUVENIR + 1
if x != PARK_BALL && x != SAFARI_BALL && x != POLYCHROME
	giveitem x, 99
endc
endr
	; all key items
for x, NUM_KEY_ITEMS
if x != MACHINE_PART
	givekeyitem x
endc
endr
	; all tms+hms
for x, NUM_TMS + NUM_HMS
	givetmhm x
endr
	; all badges
	setflag ENGINE_ZEPHYRBADGE
	setflag ENGINE_HIVEBADGE
	setflag ENGINE_PLAINBADGE
	setflag ENGINE_FOGBADGE
	setflag ENGINE_STORMBADGE
	setflag ENGINE_MINERALBADGE
	setflag ENGINE_GLACIERBADGE
	setflag ENGINE_RISINGBADGE
	setflag ENGINE_BOULDERBADGE
	setflag ENGINE_CASCADEBADGE
	setflag ENGINE_THUNDERBADGE
	setflag ENGINE_RAINBOWBADGE
	setflag ENGINE_MARSHBADGE
	setflag ENGINE_SOULBADGE
	; fly anywhere
	setflag ENGINE_FLYPOINT_AZALEA
	setflag ENGINE_FLYPOINT_GOLDENROD
	setflag ENGINE_FLYPOINT_VIOLET
	setflag ENGINE_FLYPOINT_UNION_CAVE
	setflag ENGINE_FLYPOINT_ECRUTEAK
	setflag ENGINE_FLYPOINT_OLIVINE
	setflag ENGINE_FLYPOINT_CIANWOOD
	setflag ENGINE_FLYPOINT_MAHOGANY
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
; historic johto
	setflag ENGINE_FLYPOINT_ANARRES_TOWN
	setflag ENGINE_FLYPOINT_GAULDENROD
	setflag ENGINE_FLYPOINT_WESTERN_CAPITAL
	setflag ENGINE_FLYPOINT_TRADERS_LANDING
	setflag ENGINE_FLYPOINT_SHELTERED_SHORES
	setflag ENGINE_FLYPOINT_CIANWOOD_COVE
	setflag ENGINE_FLYPOINT_TRANQUIL_TARN
	setflag ENGINE_FLYPOINT_EERIE_HAMLET
	setflag ENGINE_FLYPOINT_SULFUR_STY
	setflag ENGINE_FLYPOINT_TIMELESS_TAPESTRY
	; givepokes
	givepoke LUGIA, 100
	givepoke ENTEI, 100
	givepoke RAIKOU, 100
	; useful items
	loadtrainer HOLLIS, 1 ; check normalmode or hardmode 
	startbattle
	end

Breeder1Script:
	faceplayer
	opentext
	writetext Breeder1QuestionText
	yesorno
	iffalse_jumpopenedtext Breeder1SayNoText
	writetext Breeder1Text	
	; good party
	givepoke TYPHLOSION, HISUIAN_FORM, 100, LEFTOVERS
	loadmem wPartyMon1Moves+0, FLAMETHROWER
	loadmem wPartyMon1Moves+1, SHADOW_BALL
	loadmem wPartyMon1Moves+2, EARTH_POWER
	loadmem wPartyMon1Moves+3, EXPLOSION
	givepoke SAMUROTT, HISUIAN_FORM, 100, LEFTOVERS
	loadmem wPartyMon2Moves+0, SURF
	loadmem wPartyMon2Moves+1, CRUNCH
	loadmem wPartyMon2Moves+2, STRENGTH
	loadmem wPartyMon2Moves+3, WATERFALL
	givepoke DECIDUEYE, HISUIAN_FORM, 100, LEFTOVERS
	loadmem wPartyMon3Moves+0, ENERGY_BALL
	loadmem wPartyMon3Moves+1, SPORE
	loadmem wPartyMon3Moves+2, CUT
	loadmem wPartyMon3Moves+3, FLY
	givepoke GARCHOMP, NO_FORM, 100, LEFTOVERS
	loadmem wPartyMon4Moves+0, EARTHQUAKE
	loadmem wPartyMon4Moves+1, DRAGON_CLAW
	loadmem wPartyMon4Moves+2, STRENGTH
	loadmem wPartyMon4Moves+3, SWORDS_DANCE
	givepoke LUGIA, NO_FORM, 100, LEFTOVERS  
	loadmem wPartyMon5Moves+0, SURF
	loadmem wPartyMon5Moves+1, PSYCHIC
	loadmem wPartyMon5Moves+2, HURRICANE
	loadmem wPartyMon5Moves+3, WHIRLPOOL
	givepoke HEATRAN, NO_FORM, 100, LEFTOVERS  
	loadmem wPartyMon6Moves+0, FLASH_CANNON
	loadmem wPartyMon6Moves+1, FLAMETHROWER
	loadmem wPartyMon6Moves+2, FLASH
	loadmem wPartyMon6Moves+3, ROCK_SMASH
	closetext
	end

Breeder1QuestionText:
	text "Lv 100"
	line "superteam?"
	done

Breeder1Text:
	text "OK!"
	done

Breeder1SayNoText:
	text "No prob."
	done

dwgDebugScript:
	faceplayer
	opentext
	writetext DWGIntroText
	waitbutton
	writetext DWGQuestionText
	yesorno
	iffalse_jumpopenedtext DWGRefusedText
;	writetext DWGSeenText
; BUG
;	givepoke SUNFLORA, 50
;	loadmem wPartyMon1DVs+0, $ff
;	loadmem wPartyMon1DVs+1, $fe
;	loadmem wPartyMon1DVs+2, $fe
; DARK 
;	givepoke HAUNTER, 50
;	loadmem wPartyMon2DVs+0, $fe
;	loadmem wPartyMon2DVs+1, $ff
;	loadmem wPartyMon2DVs+2, $ff
; DRAGON 
;	givepoke LUXIO, 50
;	loadmem wPartyMon3DVs+0, $ff
;	loadmem wPartyMon3DVs+1, $ef
;	loadmem wPartyMon3DVs+2, $ff
; ELECTRIC
;	givepoke CLEFAIRY, 50
;	loadmem wPartyMon4DVs+0, $ff
;	loadmem wPartyMon4DVs+1, $ff
;	loadmem wPartyMon4DVs+2, $ef
; FIGHTING
;	givepoke STARAPTOR, 50
;	loadmem wPartyMon5DVs+0, $ff
;	loadmem wPartyMon5DVs+1, $ee
;	loadmem wPartyMon5DVs+2, $ee
; FIRE 
;	givepoke DRATINI, 50
;	loadmem wPartyMon6DVs+0, $ff
;	loadmem wPartyMon6DVs+1, $ee
;	loadmem wPartyMon6DVs+2, $ef

; FLYING
;	givepoke TOTODILE, 50
;	loadmem wPartyMon1DVs+0, $ff
;	loadmem wPartyMon1DVs+1, $fe
;	loadmem wPartyMon1DVs+2, $ee
; GHOST 
;	givepoke NINETALES, 50
;	loadmem wPartyMon2DVs+0, $ff
;	loadmem wPartyMon2DVs+1, $ef
;	loadmem wPartyMon2DVs+2, $fe
; GRASS 
;	givepoke TANGELA, 50
;	loadmem wPartyMon3DVs+0, $ff
;	loadmem wPartyMon3DVs+1, $ef
;	loadmem wPartyMon3DVs+2, $ef
; GROUND
;	givepoke WEEPINBELL, 50
;	loadmem wPartyMon4DVs+0, $ff
;	loadmem wPartyMon4DVs+1, $ff
;	loadmem wPartyMon4DVs+2, $ee
; ICE
;	givepoke GYARADOS, 50
;	loadmem wPartyMon5DVs+0, $ff
;	loadmem wPartyMon5DVs+1, $fe
;	loadmem wPartyMon5DVs+2, $ff
; POISON 
;	givepoke GRIMER, 50
;	loadmem wPartyMon6DVs+0, $ff
;	loadmem wPartyMon6DVs+1, $ef
;	loadmem wPartyMon6DVs+2, $ee
; PSYCHIC 
;	givepoke LUCARIO, 50
;	loadmem wPartyMon1DVs+0, $ff
;	loadmem wPartyMon1DVs+1, $ee
;	loadmem wPartyMon1DVs+2, $ff
; ROCK
;	givepoke ENTEI, 50
;	loadmem wPartyMon2DVs+0, $ff
;	loadmem wPartyMon2DVs+1, $ee
;	loadmem wPartyMon2DVs+2, $fe
; STEEL
;	givepoke FORRETRESS, 50
;	loadmem wPartyMon3DVs+0, $ff
;	loadmem wPartyMon3DVs+1, $ff
;	loadmem wPartyMon3DVs+2, $fe
; WATER 
;	givepoke NATU, 50
;	loadmem wPartyMon3DVs+0, $ff
;	loadmem wPartyMon3DVs+1, $fe
;	loadmem wPartyMon3DVs+2, $ef
	winlosstext DWGWinText, DWGLossText
	setlasttalked DEBUG_DWG
	loadtrainer ENGINEER, DWG
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	showtext DWGTextAfter1
	special HealPartyEvenForNuzlocke
	end

DWGIntroText:
	text "I hope you're"
	line "enjoying the"
	cont "game!"
	
	para "There's a PC and"
	line "NPCs to give you"
	cont "whatever team"
	cont "you want."

	para "You can contact"
	line "me on Reddit,"
	cont "u/dwg6m9."
	done

DWGQuestionText:
	text "I could use a"
	line "break from"
	cont "writing code."
	para "Want to battle?"
	done

DWGRefusedText:
	text "Back to work!"
	done

DWGWinText:
	text "Wow! Nice team!"
	done

DWGLossText:
	text "GG"
	done

DWGTextAfter1:
	text "Thanks for"
	line "playing!"
	done

DebugCPU2:
	opentext
	special PokemonCenterPC
	endtext
	end

Breeder2Script:
	faceplayer
	opentext
	writetext BreederQuestionText
	yesorno
	iffalse_jumpopenedtext BreederSayNoText
	writetext BreederText	
	; a buncha mons
	givepoke RAICHU, ALOLAN_FORM, 5, NO_ITEM
	givepoke VULPIX, ALOLAN_FORM, 5, NO_ITEM
	givepoke NINETALES, ALOLAN_FORM, 5, NO_ITEM
	givepoke GEODUDE, ALOLAN_FORM, 5, NO_ITEM
	givepoke GRAVELER, ALOLAN_FORM, 5, NO_ITEM
	givepoke GOLEM, ALOLAN_FORM, 5, NO_ITEM
	givepoke GRIMER, ALOLAN_FORM, 5, NO_ITEM
	givepoke MUK, ALOLAN_FORM, 5, NO_ITEM
	givepoke EXEGGUTOR, ALOLAN_FORM, 5, NO_ITEM
	; galarian 	
	givepoke PONYTA,    GALARIAN_FORM, 5, NO_ITEM
	givepoke RAPIDASH,  GALARIAN_FORM, 5, NO_ITEM
	givepoke SLOWPOKE, GALARIAN_FORM, 5, NO_ITEM
	givepoke SLOWBRO, GALARIAN_FORM, 5, NO_ITEM
	givepoke SLOWKING, GALARIAN_FORM, 5, NO_ITEM
	givepoke WEEZING, GALARIAN_FORM, 5, NO_ITEM
	givepoke CORSOLA, GALARIAN_FORM, 5, NO_ITEM
	; HISUIAN 
	givepoke GROWLITHE, HISUIAN_FORM, 5, NO_ITEM
	givepoke ARCANINE, HISUIAN_FORM, 5, NO_ITEM
	givepoke VOLTORB,   HISUIAN_FORM, 5, NO_ITEM
	givepoke ELECTRODE, HISUIAN_FORM, 5, NO_ITEM
	givepoke TYPHLOSION, HISUIAN_FORM, 5, NO_ITEM
	givepoke QWILFISH, HISUIAN_FORM, 5, NO_ITEM
	givepoke SNEASEL, HISUIAN_FORM, 5, NO_ITEM
	givepoke SAMUROTT, HISUIAN_FORM, 5, NO_ITEM
	givepoke DECIDUEYE, HISUIAN_FORM, 5, NO_ITEM
	; OTHERS
	givepoke NOCTOWL, OTHER_FORM, 5, NO_ITEM ; IMMORTAL 
	givepoke URSALUNA, OTHER_FORM, 5, NO_ITEM ; BLOODMOON 
	givepoke FERALIGATR, OTHER_FORM, 5, NO_ITEM ; SWAMP KING 
	givepoke MEGANIUM, OTHER_FORM, 5, NO_ITEM ; SAURO FORM 
	givepoke MAGCARGO, OTHER_FORM , 5, NO_ITEM; DEEP CRUST 
	givepoke XATU, OTHER_FORM, 5, NO_ITEM ; TOWER FORM 
	closetext
	end
	
Breeder5Script:
	faceplayer
	opentext
	writetext BreederQuestionAllText
	yesorno
	iffalse_jumpopenedtext BreederSayNoText
	writetext BreederText	
for x, CYNDAQUIL, CELEBI + 1
	givepoke x, 5
endr
	closetext
	end

BreederQuestionText:
	text "All variants?"
	done

BreederQuestionAllText:
	text "All species?"
	line "10 mins of"
	cont "mashing buttons."
	
	para "Fills up most"
	line "of your PC."
	done

BreederQuestionRandomText:
	text "Random level"
	line "5 #mon?"
	done

BreederSayNoText:
	text "Come back any"
	line "time!"
	done

BreederText:
	text "Here you go!"
	done
