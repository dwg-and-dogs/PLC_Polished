DebugRoom_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  9, 0, AZALEA_TOWN, 5
	warp_event  1, 8, HOLLYS_HOLT_CREDIT, 1


	def_coord_events


	def_bg_events
	bg_event  1,  2, BGEVENT_READ, DebugCPU ; check the items are all there 
	bg_event  5,  2, BGEVENT_READ, DebugCPU2
	bg_event  0,  2, BGEVENT_UP, DebugInteraction

	def_object_events
	object_event  4,  3, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE,  OBJECTTYPE_SCRIPT, 0, dwgDebugScript, -1
	object_event  2,  3, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE,  OBJECTTYPE_SCRIPT, 0, Breeder1Script, -1
	object_event  7,  8, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE,  OBJECTTYPE_SCRIPT, 0, Breeder2Script, -1 ; gives lots of mons
	object_event  4,  8, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE,  OBJECTTYPE_SCRIPT, 0, Breeder5Script, -1 ; gives lots of mons
	object_event  6,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE,  OBJECTTYPE_SCRIPT, 0, DebugWonderTradeScript, -1 ; wonder trade

	
	object_const_def
	const DEBUG_DWG

DebugInteraction: 
	opentext
	givepoke ENTEI, 100
	givepoke VICTREEBEL, 100
	givepoke RAIKOU, 100
	givepoke POLITOED, 100
	givepoke LUGIA, 100
	givepoke GOLEM, 25 
	waitbutton
;	setflag ENGINE_POKEGEAR
;	setflag ENGINE_PHONE_CARD
;	setflag ENGINE_MAP_CARD
	; pokedex
	setflag ENGINE_POKEDEX
for x, NUM_TMS + NUM_HMS
	givetmhm x
endr
for x, NUM_KEY_ITEMS
if x != MACHINE_PART
	givekeyitem x
endc
endr
	; useful items
	giveitem MASTER_BALL, 99
	giveitem GEODE, 99;
	giveitem JEZE_BALL, 99;
	giveitem HERB_BALL, 99;
	giveitem BUB_BALL, 99;
	giveitem DECI_BALL, 99;
	giveapricorn FIXED_CHARGE, 5
	giveapricorn SHORE_FOAM, 5
	giveapricorn RADIANT_OPAL, 5
	giveapricorn HOLLOW_ROCK, 5
	giveapricorn TOUGH_LEAVES, 5
	giveitem MAX_POTION, 99
	giveitem FULL_RESTORE, 99
	giveitem MAX_REVIVE, 99
	giveitem MAX_ELIXIR, 99
	giveitem HP_UP, 99
	giveitem PROTEIN, 99
	giveitem IRON, 99
	giveitem CARBOS, 99
	giveitem CALCIUM, 99
	giveitem ZINC, 99
	giveitem RARE_CANDY, 99
	giveitem PP_UP, 99
	giveitem PP_MAX, 99
	giveitem SACRED_ASH, 99
	giveitem MAX_REPEL, 99
	giveitem MAX_REPEL, 99
	giveitem ESCAPE_ROPE, 99
	giveitem ABILITY_CAP, 99
	giveitem LEAF_STONE, 99
	giveitem FIRE_STONE, 99
	giveitem WATER_STONE, 99
	giveitem THUNDERSTONE, 99
	giveitem MOON_STONE, 99
	giveitem SUN_STONE, 99
	giveitem DUSK_STONE, 99
	giveitem DAWN_STONE, 99
	giveitem SHINY_STONE, 99
	giveitem EXP_SHARE, 99
	giveitem LEFTOVERS, 99
	giveitem BIG_NUGGET, 99
	giveitem SILVER_LEAF, 99
	giveitem GOLD_LEAF, 99
	giveitem ODD_SOUVENIR, 99
	giveitem BIG_PEARL, 99
	giveitem FLOWER_MAIL, 1
	; max money
	givemoney $0, 1000000
	; all badges
;	setflag ENGINE_ZEPHYRBADGE
;	setflag ENGINE_HIVEBADGE
;	setflag ENGINE_PLAINBADGE
;	setflag ENGINE_FOGBADGE
;	setflag ENGINE_STORMBADGE
;	setflag ENGINE_MINERALBADGE
;	setflag ENGINE_GLACIERBADGE
;	setflag ENGINE_RISINGBADGE
	setflag ENGINE_BOULDERBADGE
;	setflag ENGINE_CASCADEBADGE
;	setflag ENGINE_THUNDERBADGE
;	setflag ENGINE_RAINBOWBADGE
;	setflag ENGINE_MARSHBADGE
;	setflag ENGINE_SOULBADGE
;	setflag ENGINE_VOLCANOBADGE
;	setflag ENGINE_EARTHBADGE
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
	closetext
;	setevent EVENT_BEAT_CHUCK
	warp SINJOH_CROSSROADS, 10, 14
	end

OverworldHallOfFame1: 
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot. the second index is 0 - 5, with 0 being the first party member, and 5 is the highest it can go for a party of 6 
	readmem wCurPartySpecies  ;
	opentext
	writethistext ; font is in vtiles1?
		text "lorem ipsum" ; Species name
		line "lorem ipsum" ; nickname 
		done
	waitbutton
	closetext
	pokepic 0	; pokepic2, actually 
	pause 60
	closepokepic
; repeat this 	for all the members of the party 
	halloffame
	end



DebugInteraction2: 
	refreshscreen
	readmem wPartyMon1Species
	pokepic 0
	pause 60
	closepokepic
	
	; Set Fighting HP pattern for Mon1
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ee
	
	; Set normal DVs for Mon2 (if exists)
;	loadmem wPartyMon2DVs+0, $aa
;	loadmem wPartyMon2DVs+1, $bb
;	loadmem wPartyMon2DVs+2, $cc

	
	opentext
	writethistext
		text "lorem ipsum" ; Species name
		line "lorem ipsum" ; nickname 
		done
	waitbutton
	closetext
	
	; Show Mon1 with new palette
	refreshscreen
	loadmem wCurForm, -1
	loadmem wCurPartyMon, 0    ; Select first party slot
	readmem wCurPartySpecies  ; or wCurPartySpecies
	pokepic 0	
	pause 60
	closepokepic
	
	halloffame
	end

DebugCPU:
	opentext
	writetext DebugCPUText
	; time
	special Special_SetDayOfWeek
;	special Special_InitialClearDSTFlag
	; full pokegear
	setflag ENGINE_POKEGEAR
;	setflag ENGINE_PHONE_CARD
;	setflag ENGINE_MAP_CARD
;	setflag ENGINE_RADIO_CARD
;	setflag ENGINE_EXPN_CARD
	; pokedex
	setflag ENGINE_POKEDEX
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
	; givepokes
	givepoke CYNDAQUIL, 5
	givepoke TOTODILE, 100
	givepoke CHIKORITA, 100
	givepoke LUGIA, 100
	givepoke ENTEI, 100
	givepoke RAIKOU, 100
	; useful items
	giveitem MASTER_BALL, 99
	giveitem GEODE, 99;
	giveitem JEZE_BALL, 99;
	giveitem HERB_BALL, 99;
	giveitem BUB_BALL, 99;
	giveitem DECI_BALL, 99;
	giveapricorn FIXED_CHARGE, 5
	giveapricorn SHORE_FOAM, 5
	giveapricorn RADIANT_OPAL, 5
	giveapricorn HOLLOW_ROCK, 5
	giveapricorn TOUGH_LEAVES, 5
	giveitem MAX_POTION, 99
	giveitem FULL_RESTORE, 99
	giveitem MAX_REVIVE, 99
	giveitem MAX_ELIXIR, 99
	giveitem HP_UP, 99
	giveitem PROTEIN, 99
	giveitem IRON, 99
	giveitem CARBOS, 99
	giveitem CALCIUM, 99
	giveitem ZINC, 99
	giveitem RARE_CANDY, 99
	giveitem PP_UP, 99
	giveitem PP_MAX, 99
	giveitem SACRED_ASH, 99
	giveitem MAX_REPEL, 99
	giveitem MAX_REPEL, 99
	giveitem ESCAPE_ROPE, 99
	giveitem ABILITY_CAP, 99
	giveitem LEAF_STONE, 99
	giveitem FIRE_STONE, 99
	giveitem WATER_STONE, 99
	giveitem THUNDERSTONE, 99
	giveitem MOON_STONE, 99
	giveitem SUN_STONE, 99
	giveitem DUSK_STONE, 99
	giveitem DAWN_STONE, 99
	giveitem SHINY_STONE, 99
	giveitem EXP_SHARE, 99
	giveitem LEFTOVERS, 99
	giveitem BIG_NUGGET, 99
	giveitem SILVER_LEAF, 99
	giveitem GOLD_LEAF, 99
	giveitem ODD_SOUVENIR, 99
	giveitem BIG_PEARL, 99
	giveitem FLOWER_MAIL, 1
	; max money
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 999999
	givecoins 50000
	loadmem wBattlePoints+0, 0
	loadmem wBattlePoints+1, 250
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
	setflag ENGINE_VOLCANOBADGE
	setflag ENGINE_EARTHBADGE
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
	setflag ENGINE_HAVE_SHINY_CHARM
	callasm FillPokedex
	closetext
	end


Breeder1Script:
	faceplayer
	opentext
	writetext Breeder1QuestionText
	yesorno
	iffalse_jumpopenedtext Breeder1SayNoText
	writetext Breeder1Text	
	; good party
	givepoke H__ZOROARK, NO_FORM, 50, LEFTOVERS
	loadmem wPartyMon1Moves+0, NASTY_PLOT
	loadmem wPartyMon1Moves+1, SHADOW_BALL
	loadmem wPartyMon1Moves+2, PSYCHIC_M
	loadmem wPartyMon1Moves+3, MOONBLAST
	; hm mules
;	givepoke H__SAMUROTT, NO_FORM, 100, LEFTOVERS
;	givepoke H__DECIDUEYE, NO_FORM, 100, LEFTOVERS
;	givepoke ALAKAZAM, NO_FORM, 100, LEFTOVERS
;	givepoke PIDGEY, NO_FORM, 5, NO_ITEM ; CHECK FAINTING BEHAVIOR 
;SPRITE CHECKS 
;	givepoke QWILFISH, NO_FORM, 5
;	givepoke VILEPLUME, NO_FORM, 5
; END SPRITE CHECKS 
;	loadmem wPartyMon2Moves+0, SURF
;	loadmem wPartyMon2Moves+1, CRUNCH
;	loadmem wPartyMon2Moves+2, STRENGTH
;	loadmem wPartyMon2Moves+3, WATERFALL
;	loadmem wPartyMon2PP+0, 15
;	loadmem wPartyMon2PP+1, 15
;	loadmem wPartyMon2PP+2, 15
;	loadmem wPartyMon2PP+3, 30
;	loadmem wPartyMon3Moves+0, ENERGY_BALL
;	loadmem wPartyMon3Moves+1, ROCK_SMASH
;	loadmem wPartyMon3Moves+2, CUT
;	loadmem wPartyMon3Moves+3, FLY
;	loadmem wPartyMon3PP+0, 20
;	loadmem wPartyMon3PP+1, 15
;	loadmem wPartyMon3PP+2, 15
;	loadmem wPartyMon3PP+3, 15
	; bug 
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	loadtrainer CHUCK, 1
	startbattle
	reloadmap
	showtext DWGTextAfter1
	special HealPartyEvenForNuzlocke
;	callasm FillPokedex
	closetext
	end

Breeder1QuestionText:
	text "I have four "
	line "#mon with"
	cont "good movesets."
	
	para "It might work"
	line "strangely if"
	cont "you already have"
	cont "a #mon."
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
;	givepoke EMPOLEON, 50
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
	givepoke LUCARIO, 50
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ee
	loadmem wPartyMon1DVs+2, $ff
; ROCK
	givepoke ENTEI, 50
	loadmem wPartyMon2DVs+0, $ff
	loadmem wPartyMon2DVs+1, $ee
	loadmem wPartyMon2DVs+2, $fe
; STEEL
	givepoke FORRETRESS, 50
	loadmem wPartyMon3DVs+0, $ff
	loadmem wPartyMon3DVs+1, $ff
	loadmem wPartyMon3DVs+2, $fe
; WATER 
	givepoke NATU, 50
	loadmem wPartyMon4DVs+0, $ff
	loadmem wPartyMon4DVs+1, $fe
	loadmem wPartyMon4DVs+2, $ef

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
	text "Oh! You made it"
	line "to the debug"
	cont "room."
	para "I hope you're"
	line "enjoying the"
	cont "game!"
	para "You can talk to"
	line "the patrons"
	cont "below to get a"
	cont "solid team,"
	para "wonder trade,"
	line "or get all the"
	cont "base forms of"
	cont "#mon."
	para "The generator"
	line "to the left has"
	cont "all the items"
	para "and flags if"
	line "you want them."
	para "The computer"
	line "next to me"
	cont "works to access"
	cont "your boxes."
	para "If you ever"
	line "encounter"
	cont "issues, you can"
	para "contact me on"
	line "reddit,"
	cont "u/dwg6m9."
	done

DWGQuestionText:
	text "I could use a"
	line "break from"
	cont "writing code."
	para "Want to battle?"
	done

DWGRefusedText:
	text "Sigh... OK,"
	line "back to work"
	cont "for me."
	done

DWGSeenText:
	text "Here we go!"
	done

DWGWinText:
	text "Wow! Nice team!"
	done

DWGLossText:
	text "gg"
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

DebugCPUText:
	text "Debug CPU"
	done

Breeder2Script:
	faceplayer
	opentext
	writetext BreederQuestionText
	yesorno
	iffalse_jumpopenedtext BreederSayNoText
	writetext BreederText	
	; a buncha mons
	givepoke CYNDAQUIL, 5
	givepoke ROWLET, 5	
	givepoke OSHAWOTT, 5	
	givepoke BUTTERFREE, 5	
	givepoke BEEDRILL, 5	
	givepoke PIDGEY, 5	
	givepoke EKANS, 5	
	givepoke PIKACHU, 5	
	givepoke NIDORINA, 5	
	givepoke NIDORINO, 5	
	givepoke CLEFAIRY, 5	
	givepoke VULPIX, 5	
	givepoke JIGGLYPUFF, 5	
	givepoke ZUBAT, 5	
	givepoke GLOOM, 5	
	givepoke PARAS, 5	
	givepoke VENONAT, 5	
	givepoke DIGLETT, 5	
	givepoke MEOWTH, 5
	givepoke MANKEY, 5
	givepoke GROWLITHE, 5
	givepoke POLIWAG, 5	
	givepoke ABRA, 5	
	givepoke MACHOP, 5	
	givepoke WEEPINBELL, 5	
	givepoke TENTACRUEL, 5	
	givepoke GEODUDE, 5	
	givepoke PONYTA, 5	
	givepoke SLOWPOKE, 5	
	givepoke MAGNEMITE, 5	
	givepoke FARFETCH_D, 5	
	givepoke GRIMER, 5	
	givepoke CLOYSTER, 5	
	givepoke GASTLY, 5	
	givepoke ONIX, 5	
	givepoke VOLTORB, 5	
	givepoke EXEGGCUTE, 5	
	givepoke HITMONLEE, 5	
	givepoke HITMONCHAN, 5
	givepoke HITMONTOP, 5
	givepoke WEEZING, 5
	givepoke MR__MIME, 5	
	givepoke RHYHORN, 5	
	givepoke CHANSEY, 5	
	givepoke TANGELA, 5	
	givepoke KANGASKHAN, 5	
	givepoke SEADRA, 5	
	givepoke STARYU, 5	
	givepoke SCYTHER, 5	
	givepoke JYNX, 5	
	givepoke FARFETCH_D, 5	
	givepoke MAGMAR, 5	
	givepoke PINSIR, 5	
	givepoke TAUROS, 5	
	givepoke MAGIKARP, 5	
	givepoke LAPRAS, 5	
	givepoke EEVEE, 5	
	givepoke PORYGON, 5	
	givepoke SNORLAX, 5
	givepoke CHIKORITA, 5
	closetext
	end
	
Breeder5Script:
	faceplayer
	opentext
	writetext BreederQuestionText
	yesorno
	iffalse_jumpopenedtext BreederSayNoText
	writetext BreederText	
	; a buncha mons
	givepoke TOTODILE, 5
	givepoke FURRET, 5	
	givepoke LEDIAN, 5	
	givepoke ARIADOS, 5	
	givepoke CHINCHOU, 5	
	givepoke TOGETIC, 5	
	givepoke NATU, 5	
	givepoke MAREEP, 5	
	givepoke MARILL, 5	
	givepoke SUDOWOODO, 5	
	givepoke SKIPLOOM, 5	
	givepoke SUNFLORA, 5	
	givepoke WOOPER, 5	
	givepoke MURKROW, 5	
	givepoke MISDREAVUS, 5	
	givepoke YANMA, 5	
	givepoke UNOWN, 5	
	givepoke GIRAFARIG, 5	
	givepoke PINECO, 5
	givepoke DUNSPARCE, 5
	givepoke GLIGAR, 5
	givepoke SNUBBULL, 5	
	givepoke QWILFISH, 5	
	givepoke SHUCKLE, 5	
	givepoke HERACROSS, 5	
	givepoke SNEASEL, 5	
	givepoke TEDDIURSA, 5	
	givepoke MAGCARGO, 5	
	givepoke PILOSWINE, 5	
	givepoke CORSOLA, 5	
	givepoke OCTILLERY, 5	
	givepoke MANTINE, 5	
	givepoke SKARMORY, 5	
	givepoke HOUNDOUR, 5	
	givepoke DONPHAN, 5	
	givepoke STANTLER, 5	
	givepoke MILTANK, 5	
	givepoke GROTLE, 5	
	givepoke MONFERNO, 5
	givepoke PRINPLUP, 5
	givepoke STARAVIA, 5
	givepoke LUXIO, 5	
	givepoke ROSELIA, 5	
	givepoke RAMPARDOS, 5	
	givepoke BASTIODON, 5	
	givepoke VESPIQUEN, 5	
	givepoke AMBIPOM, 5	
	givepoke DRIFBLIM, 5	
	givepoke LOPUNNY, 5	
	givepoke SKUNTANK, 5	
	givepoke BRONZOR, 5	
	givepoke SPIRITOMB, 5	
	givepoke GABITE, 5	
	givepoke LUCARIO, 5	
	givepoke HIPPOWDON, 5	
	givepoke DRAPION, 5	
	givepoke TOXICROAK, 5	
	givepoke SNOVER, 5	
	givepoke DUSCLOPS, 5
	givepoke FROSLASS, 5
	givepoke ROTOM, 5
	givepoke H__AVALUGG, 5	
	givepoke BASCULEGION, 5	
	givepoke H__BRAVIARY, 5	
	givepoke KIRLIA, 5	
	givepoke H__SLIGGOO, 5	
	givepoke H__ZOROARK, 5	
	givepoke DRATINI, 5	
	givepoke LARVITAR, 5	
	givepoke RAIKOU, 5	
	givepoke ENTEI, 5	
	givepoke SUICUNE, 5	
	givepoke HEATRAN, 5	
	givepoke LUGIA, 5	
	givepoke HO_OH, 5	
	givepoke CELEBI, 5	
	closetext
	end


BreederQuestionText:
	text "Hi! I've bred a "
	line "lotta #mon."

	para "You can have"
	line "them. But make"
	cont "sure you have"
	cont "a few boxes"
	cont "available in"
	cont "the PC."
	done

BreederSayNoText:
	text "If you come back"
	line "with your current"
	cont "box empty, I can"
	cont "give you some."
	done

BreederText:
	text "Here you go!"
	done

DebugWonderTradeScript: 
	faceplayer
	opentext
	giveegg CYNDAQUIL
	writetext DebugWonderTradeIntroText
	waitbutton
	writetext DebugWonderTradeExplanationText
	promptbutton
	special WonderTrade
	iffalse .done
	playmusic MUSIC_POKECOM_CENTER
	writetext DebugWonderTradeCompleteText
	playsound SFX_DEX_FANFARE_80_109
	waitsfx
	jumpopenedtext DebugWonderTradeGoodbyeText
	
.done
	jumpopenedtext DebugWonderTradeGoodbyeText
	
	

DebugWonderTradeIntroText:
	text "I can wonder"
	line "trade with you!"
	done
	
DebugWonderTradeExplanationText:
	text "Get a random"
	line "#mon traded to"
	cont "you."
	done
	
DebugWonderTradeCompleteText:
	text "It was a suc-"
	line "cess!"
	done
	
DebugWonderTradeGoodbyeText:
	text "See ya!"
	done
