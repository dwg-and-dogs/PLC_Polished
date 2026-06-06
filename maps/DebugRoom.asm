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
	object_event  4,  3, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED,  OBJECTTYPE_SCRIPT, 0, dwgDebugScript, -1 
	object_event  2,  3, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE,  OBJECTTYPE_SCRIPT, 0, Breeder1Script, -1 ; GIVE SUPERTEAM CHECK 
	object_event  7,  8, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE,  OBJECTTYPE_SCRIPT, 0, Breeder2Script, -1 ; GIVES VARIANTS CHECK 
	object_event  4,  8, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN,  OBJECTTYPE_SCRIPT, 0, Breeder5Script, -1 ; GIVES ALL CHECK 
	object_event  6,  4, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE,  OBJECTTYPE_SCRIPT, 0, Breeder6Script, -1 ; wonder gift CHECK
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN,  OBJECTTYPE_SCRIPT, 0, ItemVendorScript, -1 ; gives all items and TMs 
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN,  OBJECTTYPE_SCRIPT, 0, BreederTypeScript, -1 ; asks if you want fire, water, ... then gives you a first stage

	
	object_const_def
	const DEBUG_DWG

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
	waitbutton
	writethistext
		text "All TM+HM?"
		done
	yesorno
	iffalse .PokeBall
for x, NUM_TMS + NUM_HMS ; works 
if x != HM_WHIRLPOOL && x != HM_CUT
	givetmhm x
endc
endr
.PokeBall: ; todo seem to get some bad items like X items and potion?
	writethistext
		text "All #balls?"
		done
	yesorno
	iffalse .Medicines
	; all items 
for x, POKE_BALL, CHERISH_BALL + 1
if x != PARK_BALL && x != SAFARI_BALL && x != MASTER_BALL && x != ABILITYPATCH
	giveitem x, 99
endc
endr
.Medicines:
	writethistext
		text "All meds and"
		line "vitamins?"
		done
	yesorno
	iffalse .PokemonUpgrades
	giveitem FULL_RESTORE, 99
	giveitem MAX_REVIVE, 99
	giveitem PP_MAX, 99 
	giveitem MAX_ELIXIR, 99 
for x, HP_UP, ZINC + 1
	giveitem x, 99
endr
.PokemonUpgrades:
	writethistext
		text "Ability upgrades"
		line "and evo stones?"
		done
	yesorno
	iffalse .BattleItems
	giveitem ABILITYPATCH, 99
for x, ABILITY_CAP, ICE_STONE + 1
	giveitem x, 99
endr
for x, DRAGON_SCALE, ODD_SOUVENIR + 1
	giveitem x, 99
endr
.BattleItems:
	writethistext
		text "Battle items?"
		done
	yesorno
	iffalse .KeyItems
	giveitem CHOICE_BAND, 99
	giveitem CHOICE_SPECS, 99
	giveitem CHOICE_SCARF, 99
	giveitem FLAME_ORB, 99
	giveitem TOXIC_ORB, 99
	giveitem LEFTOVERS, 99
for x, SILK_SCARF, THICK_CLUB + 1
	giveitem x, 99
endr
.KeyItems:
	writethistext
		text "Key items?"
		done
	yesorno
	iffalse .Apricorns
	givekeyitem BICYCLE
	givekeyitem OLD_ROD	
	givekeyitem SUPER_ROD	
	givekeyitem GOOD_ROD	
	givekeyitem COIN_CASE
	givekeyitem ITEMFINDER
	givekeyitem SHINY_CHARM
.Apricorns:
	writethistext
		text "All apricorns?"
		done
	yesorno
	iffalse .Done
	; all apricorns 
	giveapricorn FIXED_CHARGE, 99
	giveapricorn SHORE_FOAM, 99
	giveapricorn RADIANT_OPAL, 99
	giveapricorn HOLLOW_ROCK, 99
	giveapricorn TOUGH_LEAVES, 99
	giveapricorn PNK_APRICORN, 99
	giveapricorn WHT_APRICORN, 99
	waitbutton
.Done:
	writethistext
		text "Enjoy!"
		done
	waitbutton
	closetext
	end

VendorQuestionAllText:
	text "I can give you"
	line "any items!"
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
	opentext
	writethistext
		text "Elder Hollis"
		line "wants to battle!"

		para "Elder Sandra"
		line "wants to battle!"

		para "Chronicler Sybil"
		line "wants to battle!"

		para "Elder Remy"
		line "wants to battle!"

		para "Hisui Petra"
		line "wants to battle!"

		para "Johto Amos"
		line "wants to battle!"		
	waitbutton
	closetext
; debug 
	loadtrainer BOBESH, 3 ; check normalmode or hardmode 
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
;	clearevent EVENT_AZALEA_BLACKBELT_POSTGAME ; debug  
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

	para "Just a reminder,"
	line "you can change"
	para "difficulty at any"
	line "time by pressing"
	para "Left + B at the"
	line "title screen and"
	cont "continuing your"
	cont "save file,"
	
	para "and you can reset"
	line "the clock at any"
	para "time by pressing"
	line "Down + Select + B"
	cont "at title screen"
	cont "and continuing"
	cont "your save file."
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
	givepoke x, NO_FORM, 5, NO_ITEM
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
	line "5?"
	done

BreederSayNoText:
	text "Come back any"
	line "time!"
	done

BreederText:
	text "Here you go!"
	done


BreederTypeScript:
RandomTypeNPCScript:
	faceplayer
	opentext
 
.AskGroup0:
	writetext WantBugText
	yesorno
	iffalse .AskGroup1
 
	random 9
	ifequal 0, .GiveBug_0
	ifequal 1, .GiveBug_1
	ifequal 2, .GiveBug_2
	ifequal 3, .GiveBug_3
	ifequal 4, .GiveBug_4
	ifequal 5, .GiveBug_5
	ifequal 6, .GiveBug_6
	ifequal 7, .GiveBug_7
	givepoke SHUCKLE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveBug_0:
	givepoke LEDYBA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveBug_1:
	givepoke SPINARAK, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveBug_2:
	givepoke PARAS, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveBug_3:
	givepoke PINECO, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveBug_4:
	givepoke YANMA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveBug_5:
	givepoke SCYTHER, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveBug_6:
	givepoke PINSIR, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveBug_7:
	givepoke HERACROSS, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup1:
	writetext WantDarkText
	yesorno
	iffalse .AskGroup2
 
	random 11
	ifequal 0, .GiveDark_0
	ifequal 1, .GiveDark_1
	ifequal 2, .GiveDark_2
	ifequal 3, .GiveDark_3
	ifequal 4, .GiveDark_4
	ifequal 5, .GiveDark_5
	ifequal 6, .GiveDark_6
	ifequal 7, .GiveDark_7
	ifequal 8, .GiveDark_8
	ifequal 9, .GiveDark_9
	givepoke LARVITAR, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDark_0:
	givepoke OSHAWOTT, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDark_1:
	givepoke PINSIR, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDark_2:
	givepoke GRIMER, ALOLAN_FORM, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDark_3:
	givepoke GIRAFARIG, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDark_4:
	givepoke QWILFISH, HISUIAN_FORM, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDark_5:
	givepoke EEVEE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDark_6:
	givepoke MURKROW, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDark_7:
	givepoke HOUNDOUR, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDark_8:
	givepoke SNEASEL, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDark_9:
	givepoke SPIRITOMB, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup2:
	writetext WantDragonText
	yesorno
	iffalse .AskGroup3
 
	random 8
	ifequal 0, .GiveDragon_0
	ifequal 1, .GiveDragon_1
	ifequal 2, .GiveDragon_2
	ifequal 3, .GiveDragon_3
	ifequal 4, .GiveDragon_4
	ifequal 5, .GiveDragon_5
	ifequal 6, .GiveDragon_6
	givepoke YANMA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDragon_0:
	givepoke DUNSPARCE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDragon_1:
	givepoke EXEGGCUTE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDragon_2:
	givepoke HORSEA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDragon_3:
	givepoke SHINX, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDragon_4:
	givepoke DRATINI, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDragon_5:
	givepoke GIBLE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveDragon_6:
	givepoke GOOMY, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup3:
	writetext WantElectricText
	yesorno
	iffalse .AskGroup4
 
	random 10
	ifequal 0, .GiveElectric_0
	ifequal 1, .GiveElectric_1
	ifequal 2, .GiveElectric_2
	ifequal 3, .GiveElectric_3
	ifequal 4, .GiveElectric_4
	ifequal 5, .GiveElectric_5
	ifequal 6, .GiveElectric_6
	ifequal 7, .GiveElectric_7
	ifequal 8, .GiveElectric_8
	givepoke ROTOM, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveElectric_0:
	givepoke PIKACHU, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveElectric_1:
	givepoke GEODUDE, ALOLAN_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveElectric_2:
	givepoke MAREEP, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveElectric_3:
	givepoke MAGNEMITE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveElectric_4:
	givepoke VOLTORB, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveElectric_5:
	givepoke ELECTABUZZ, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveElectric_6:
	givepoke CHINCHOU, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveElectric_7:
	givepoke EEVEE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveElectric_8:
	givepoke SHINX, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup4:
	writetext WantFairyText
	yesorno
	iffalse .AskGroup5
 
	random 10
	ifequal 0, .GiveFairy_0
	ifequal 1, .GiveFairy_1
	ifequal 2, .GiveFairy_2
	ifequal 3, .GiveFairy_3
	ifequal 4, .GiveFairy_4
	ifequal 5, .GiveFairy_5
	ifequal 6, .GiveFairy_6
	ifequal 7, .GiveFairy_7
	ifequal 8, .GiveFairy_8
	givepoke RALTS, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFairy_0:
	givepoke CLEFAIRY, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFairy_1:
	givepoke TOGETIC, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFairy_2:
	givepoke KOFFING, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFairy_3:
	givepoke MARILL, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFairy_4:
	givepoke SNUBBULL, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFairy_5:
	givepoke EEVEE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFairy_6:
	givepoke PONYTA, GALARIAN_FORM, 5
	jumpopenedtext GaveMonText
 
.GiveFairy_7:
	givepoke MISDREAVUS, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFairy_8:
	givepoke CHIKORITA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup5:
	writetext WantFightingText
	yesorno
	iffalse .AskGroup6
 
	random 12
	ifequal 0, .GiveFighting_0
	ifequal 1, .GiveFighting_1
	ifequal 2, .GiveFighting_2
	ifequal 3, .GiveFighting_3
	ifequal 4, .GiveFighting_4
	ifequal 5, .GiveFighting_5
	ifequal 6, .GiveFighting_6
	ifequal 7, .GiveFighting_7
	ifequal 8, .GiveFighting_8
	ifequal 9, .GiveFighting_9
	ifequal 10, .GiveFighting_10
	givepoke RALTS, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFighting_0:
	givepoke ROWLET, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFighting_1:
	givepoke POLIWAG, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFighting_2:
	givepoke HERACROSS, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFighting_3:
	givepoke MANKEY, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFighting_4:
	givepoke MACHOP, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFighting_5:
	givepoke HITMONLEE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFighting_6:
	givepoke HITMONCHAN, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFighting_7:
	givepoke HITMONTOP, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFighting_8:
	givepoke SNEASEL, HISUIAN_FORM, 5
	jumpopenedtext GaveMonText
 
.GiveFighting_9:
	givepoke RIOLU, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFighting_10:
	givepoke CROAGUNK, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup6:
	writetext WantFireText
	yesorno
	iffalse .AskGroup7
 
	random 11
	ifequal 0, .GiveFire_0
	ifequal 1, .GiveFire_1
	ifequal 2, .GiveFire_2
	ifequal 3, .GiveFire_3
	ifequal 4, .GiveFire_4
	ifequal 5, .GiveFire_5
	ifequal 6, .GiveFire_6
	ifequal 7, .GiveFire_7
	ifequal 8, .GiveFire_8
	ifequal 9, .GiveFire_9
	givepoke SLUGMA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFire_0:
	givepoke CYNDAQUIL, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFire_1:
	givepoke SUNKERN, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFire_2:
	givepoke VULPIX, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFire_3:
	givepoke GROWLITHE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFire_4:
	givepoke GROWLITHE, HISUIAN_FORM, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFire_5:
	givepoke MAGMAR, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFire_6:
	givepoke REMORAID, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFire_7:
	givepoke EEVEE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFire_8:
	givepoke PONYTA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFire_9:
	givepoke HOUNDOUR, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup7:
	writetext WantFlyingText
	yesorno
	iffalse .AskGroup8
 
	random 17
	ifequal 0, .GiveFlying_0
	ifequal 1, .GiveFlying_1
	ifequal 2, .GiveFlying_2
	ifequal 3, .GiveFlying_3
	ifequal 4, .GiveFlying_4
	ifequal 5, .GiveFlying_5
	ifequal 6, .GiveFlying_6
	ifequal 7, .GiveFlying_7
	ifequal 8, .GiveFlying_8
	ifequal 9, .GiveFlying_9
	ifequal 10, .GiveFlying_10
	ifequal 11, .GiveFlying_11
	ifequal 12, .GiveFlying_12
	ifequal 13, .GiveFlying_13
	ifequal 14, .GiveFlying_14
	ifequal 15, .GiveFlying_15
	givepoke RUFFLET, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_0:
	givepoke ROWLET, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_1:
	givepoke HOOTHOOT, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_2:
	givepoke LEDYBA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_3:
	givepoke ZUBAT, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_4:
	givepoke TOGETIC, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_5:
	givepoke HOPPIP, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_6:
	givepoke MAGIKARP, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_7:
	givepoke YANMA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_8:
	givepoke NATU, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_9:
	givepoke GLIGAR, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_10:
	givepoke MANTINE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_11:
	givepoke SKARMORY, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_12:
	givepoke MURKROW, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_13:
	givepoke STARLY, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_14:
	givepoke DRIFLOON, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveFlying_15:
	givepoke DRATINI, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup8:
	writetext WantGhostText
	yesorno
	iffalse .AskGroup9
 
	random 14
	ifequal 0, .GiveGhost_0
	ifequal 1, .GiveGhost_1
	ifequal 2, .GiveGhost_2
	ifequal 3, .GiveGhost_3
	ifequal 4, .GiveGhost_4
	ifequal 5, .GiveGhost_5
	ifequal 6, .GiveGhost_6
	ifequal 7, .GiveGhost_7
	ifequal 8, .GiveGhost_8
	ifequal 9, .GiveGhost_9
	ifequal 10, .GiveGhost_10
	ifequal 11, .GiveGhost_11
	ifequal 12, .GiveGhost_12
	givepoke BASCULIN, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGhost_0:
	givepoke CYNDAQUIL, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGhost_1:
	givepoke ROWLET, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGhost_2:
	givepoke HOOTHOOT, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGhost_3:
	givepoke GASTLY, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGhost_4:
	givepoke MANKEY, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGhost_5:
	givepoke CORSOLA, GALARIAN_FORM, 5
	jumpopenedtext GaveMonText
 
.GiveGhost_6:
	givepoke MISDREAVUS, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGhost_7:
	givepoke DRIFLOON, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGhost_8:
	givepoke SPIRITOMB, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGhost_9:
	givepoke DUSKULL, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGhost_10:
	givepoke SNORUNT, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGhost_11:
	givepoke ROTOM, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGhost_12:
	givepoke ZORUA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup9:
	writetext WantGrassText
	yesorno
	iffalse .AskGroup10
 
	random 12
	ifequal 0, .GiveGrass_0
	ifequal 1, .GiveGrass_1
	ifequal 2, .GiveGrass_2
	ifequal 3, .GiveGrass_3
	ifequal 4, .GiveGrass_4
	ifequal 5, .GiveGrass_5
	ifequal 6, .GiveGrass_6
	ifequal 7, .GiveGrass_7
	ifequal 8, .GiveGrass_8
	ifequal 9, .GiveGrass_9
	ifequal 10, .GiveGrass_10
	givepoke SNOVER, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGrass_0:
	givepoke ROWLET, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGrass_1:
	givepoke BELLSPROUT, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGrass_2:
	givepoke HOPPIP, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGrass_3:
	givepoke PARAS, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGrass_4:
	givepoke ODDISH, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGrass_5:
	givepoke SUNKERN, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGrass_6:
	givepoke EXEGGCUTE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGrass_7:
	givepoke VOLTORB, HISUIAN_FORM, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGrass_8:
	givepoke TANGELA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGrass_9:
	givepoke EEVEE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGrass_10:
	givepoke CHIKORITA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup10:
	writetext WantGroundText
	yesorno
	iffalse .AskGroup11
 
	random 12
	ifequal 0, .GiveGround_0
	ifequal 1, .GiveGround_1
	ifequal 2, .GiveGround_2
	ifequal 3, .GiveGround_3
	ifequal 4, .GiveGround_4
	ifequal 5, .GiveGround_5
	ifequal 6, .GiveGround_6
	ifequal 7, .GiveGround_7
	ifequal 8, .GiveGround_8
	ifequal 9, .GiveGround_9
	ifequal 10, .GiveGround_10
	givepoke GIBLE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGround_0:
	givepoke GEODUDE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGround_1:
	givepoke WOOPER, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGround_2:
	givepoke ONIX, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGround_3:
	givepoke NIDORAN, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGround_4:
	givepoke GLIGAR, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGround_5:
	givepoke SWINUB, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGround_6:
	givepoke TEDDIURSA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGround_7:
	givepoke PHANPY, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGround_8:
	givepoke RHYHORN, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGround_9:
	givepoke HIPPOPOTAS, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveGround_10:
	givepoke LARVITAR, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup11:
	writetext WantIceText
	yesorno
	iffalse .AskGroup12
 
	random 9
	ifequal 0, .GiveIce_0
	ifequal 1, .GiveIce_1
	ifequal 2, .GiveIce_2
	ifequal 3, .GiveIce_3
	ifequal 4, .GiveIce_4
	ifequal 5, .GiveIce_5
	ifequal 6, .GiveIce_6
	ifequal 7, .GiveIce_7
	givepoke BERGMITE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveIce_0:
	givepoke VULPIX, ALOLAN_FORM, 5
	jumpopenedtext GaveMonText
 
.GiveIce_1:
	givepoke JYNX, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveIce_2:
	givepoke EEVEE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveIce_3:
	givepoke SWINUB, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveIce_4:
	givepoke SNEASEL, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveIce_5:
	givepoke LAPRAS, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveIce_6:
	givepoke SNOVER, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveIce_7:
	givepoke SNORUNT, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup12:
	writetext WantNormalText
	yesorno
	iffalse .AskGroup13
 
	random 16
	ifequal 0, .GiveNormal_0
	ifequal 1, .GiveNormal_1
	ifequal 2, .GiveNormal_2
	ifequal 3, .GiveNormal_3
	ifequal 4, .GiveNormal_4
	ifequal 5, .GiveNormal_5
	ifequal 6, .GiveNormal_6
	ifequal 7, .GiveNormal_7
	ifequal 8, .GiveNormal_8
	ifequal 9, .GiveNormal_9
	ifequal 10, .GiveNormal_10
	ifequal 11, .GiveNormal_11
	ifequal 12, .GiveNormal_12
	ifequal 13, .GiveNormal_13
	ifequal 14, .GiveNormal_14
	givepoke RUFFLET, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_0:
	givepoke HOOTHOOT, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_1:
	givepoke SENTRET, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_2:
	givepoke DUNSPARCE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_3:
	givepoke DITTO, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_4:
	givepoke AIPOM, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_5:
	givepoke STANTLER, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_6:
	givepoke TAUROS, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_7:
	givepoke MILTANK, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_8:
	givepoke EEVEE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_9:
	givepoke TEDDIURSA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_10:
	givepoke PORYGON, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_11:
	givepoke CHANSEY, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_12:
	givepoke STARLY, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_13:
	givepoke ZORUA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveNormal_14:
	givepoke SNORLAX, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup13:
	writetext WantPoisonText
	yesorno
	iffalse .AskGroup14
 
	random 16
	ifequal 0, .GivePoison_0
	ifequal 1, .GivePoison_1
	ifequal 2, .GivePoison_2
	ifequal 3, .GivePoison_3
	ifequal 4, .GivePoison_4
	ifequal 5, .GivePoison_5
	ifequal 6, .GivePoison_6
	ifequal 7, .GivePoison_7
	ifequal 8, .GivePoison_8
	ifequal 9, .GivePoison_9
	ifequal 10, .GivePoison_10
	ifequal 11, .GivePoison_11
	ifequal 12, .GivePoison_12
	ifequal 13, .GivePoison_13
	ifequal 14, .GivePoison_14
	givepoke CROAGUNK, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePoison_0:
	givepoke SPINARAK, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePoison_1:
	givepoke ZUBAT, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePoison_2:
	givepoke GASTLY, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePoison_3:
	givepoke BELLSPROUT, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePoison_4:
	givepoke SLOWPOKE, GALARIAN_FORM, 5
	jumpopenedtext GaveMonText
 
.GivePoison_5:
	givepoke ODDISH, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePoison_6:
	givepoke NIDORAN, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePoison_7:
	givepoke KOFFING, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePoison_8:
	givepoke GRIMER, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePoison_9:
	givepoke GRIMER, ALOLAN_FORM, 5
	jumpopenedtext GaveMonText
 
.GivePoison_10:
	givepoke QWILFISH, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePoison_11:
	givepoke QWILFISH, HISUIAN_FORM, 5
	jumpopenedtext GaveMonText
 
.GivePoison_12:
	givepoke TENTACOOL, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePoison_13:
	givepoke SLUGMA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePoison_14:
	givepoke SNEASEL, HISUIAN_FORM, 5
	jumpopenedtext GaveMonText
 
.AskGroup14:
	writetext WantPsychicText
	yesorno
	iffalse .AskGroup15
 
	random 14
	ifequal 0, .GivePsychic_0
	ifequal 1, .GivePsychic_1
	ifequal 2, .GivePsychic_2
	ifequal 3, .GivePsychic_3
	ifequal 4, .GivePsychic_4
	ifequal 5, .GivePsychic_5
	ifequal 6, .GivePsychic_6
	ifequal 7, .GivePsychic_7
	ifequal 8, .GivePsychic_8
	ifequal 9, .GivePsychic_9
	ifequal 10, .GivePsychic_10
	ifequal 11, .GivePsychic_11
	ifequal 12, .GivePsychic_12
	givepoke RUFFLET, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePsychic_0:
	givepoke PIKACHU, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePsychic_1:
	givepoke UNOWN, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePsychic_2:
	givepoke SLOWPOKE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePsychic_3:
	givepoke ABRA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePsychic_4:
	givepoke EXEGGCUTE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePsychic_5:
	givepoke STANTLER, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePsychic_6:
	givepoke GIRAFARIG, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePsychic_7:
	givepoke JYNX, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePsychic_8:
	givepoke NATU, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePsychic_9:
	givepoke EEVEE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePsychic_10:
	givepoke PONYTA, GALARIAN_FORM, 5
	jumpopenedtext GaveMonText
 
.GivePsychic_11:
	givepoke BRONZOR, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GivePsychic_12:
	givepoke RALTS, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup15:
	writetext WantRockText
	yesorno
	iffalse .AskGroup16
 
	random 13
	ifequal 0, .GiveRock_0
	ifequal 1, .GiveRock_1
	ifequal 2, .GiveRock_2
	ifequal 3, .GiveRock_3
	ifequal 4, .GiveRock_4
	ifequal 5, .GiveRock_5
	ifequal 6, .GiveRock_6
	ifequal 7, .GiveRock_7
	ifequal 8, .GiveRock_8
	ifequal 9, .GiveRock_9
	ifequal 10, .GiveRock_10
	ifequal 11, .GiveRock_11
	givepoke LARVITAR, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveRock_0:
	givepoke GEODUDE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveRock_1:
	givepoke ONIX, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveRock_2:
	givepoke SUDOWOODO, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveRock_3:
	givepoke GROWLITHE, HISUIAN_FORM, 5
	jumpopenedtext GaveMonText
 
.GiveRock_4:
	givepoke NATU, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveRock_5:
	givepoke SHUCKLE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveRock_6:
	givepoke CORSOLA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveRock_7:
	givepoke RHYHORN, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveRock_8:
	givepoke SLUGMA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveRock_9:
	givepoke CRANIDOS, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveRock_10:
	givepoke SHIELDON, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveRock_11:
	givepoke BERGMITE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup16:
	writetext WantSteelText
	yesorno
	iffalse .AskGroup17
 
	random 9
	ifequal 0, .GiveSteel_0
	ifequal 1, .GiveSteel_1
	ifequal 2, .GiveSteel_2
	ifequal 3, .GiveSteel_3
	ifequal 4, .GiveSteel_4
	ifequal 5, .GiveSteel_5
	ifequal 6, .GiveSteel_6
	ifequal 7, .GiveSteel_7
	givepoke GOOMY, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveSteel_0:
	givepoke ONIX, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveSteel_1:
	givepoke PINECO, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveSteel_2:
	givepoke MAGNEMITE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveSteel_3:
	givepoke SKARMORY, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveSteel_4:
	givepoke SLUGMA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveSteel_5:
	givepoke SHIELDON, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveSteel_6:
	givepoke BRONZOR, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveSteel_7:
	givepoke RIOLU, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.AskGroup17:
	writetext WantWaterText
	yesorno
	iffalse .NoThanks
 
	random 17
	ifequal 0, .GiveWater_0
	ifequal 1, .GiveWater_1
	ifequal 2, .GiveWater_2
	ifequal 3, .GiveWater_3
	ifequal 4, .GiveWater_4
	ifequal 5, .GiveWater_5
	ifequal 6, .GiveWater_6
	ifequal 7, .GiveWater_7
	ifequal 8, .GiveWater_8
	ifequal 9, .GiveWater_9
	ifequal 10, .GiveWater_10
	ifequal 11, .GiveWater_11
	ifequal 12, .GiveWater_12
	ifequal 13, .GiveWater_13
	ifequal 14, .GiveWater_14
	ifequal 15, .GiveWater_15
	givepoke BASCULIN, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_0:
	givepoke OSHAWOTT, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_1:
	givepoke WOOPER, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_2:
	givepoke POLIWAG, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_3:
	givepoke MAGIKARP, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_4:
	givepoke SLOWPOKE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_5:
	givepoke MARILL, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_6:
	givepoke QWILFISH, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_7:
	givepoke TENTACOOL, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_8:
	givepoke CORSOLA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_9:
	givepoke REMORAID, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_10:
	givepoke CHINCHOU, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_11:
	givepoke EEVEE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_12:
	givepoke HORSEA, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_13:
	givepoke MANTINE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_14:
	givepoke LAPRAS, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.GiveWater_15:
	givepoke TOTODILE, NO_FORM, 5, NO_ITEM
	jumpopenedtext GaveMonText
 
.NoThanks:
	writetext NoThanksText
	closetext
	end
 
WantBugText:
	text "Want a random"
	line "Bug-type?"
	done
 
WantDarkText:
	text "Want a random"
	line "Dark-type?"
	done
 
WantDragonText:
	text "Want a random"
	line "Dragon-type?"
	done
 
WantElectricText:
	text "Want a random"
	line "Electric-type?"
	done
 
WantFairyText:
	text "Want a random"
	line "Fairy-type?"
	done
 
WantFightingText:
	text "Want a random"
	line "Fighting-type?"
	done
 
WantFireText:
	text "Want a random"
	line "Fire-type?"
	done
 
WantFlyingText:
	text "Want a random"
	line "Flying-type?"
	done
 
WantGhostText:
	text "Want a random"
	line "Ghost-type?"
	done
 
WantGrassText:
	text "Want a random"
	line "Grass-type?"
	done
 
WantGroundText:
	text "Want a random"
	line "Ground-type?"
	done
 
WantIceText:
	text "Want a random"
	line "Ice-type?"
	done
 
WantNormalText:
	text "Want a random"
	line "Normal-type?"
	done
 
WantPoisonText:
	text "Want a random"
	line "Poison-type?"
	done
 
WantPsychicText:
	text "Want a random"
	line "Psychic-type?"
	done
 
WantRockText:
	text "Want a random"
	line "Rock-type?"
	done
 
WantSteelText:
	text "Want a random"
	line "Steel-type?"
	done
 
WantWaterText:
	text "Want a random"
	line "Water-type?"
	done
 
GaveMonText:
	text "Take good care"
	line "of it!"
	done
 
NoThanksText:
	text "Maybe next time!"
	done