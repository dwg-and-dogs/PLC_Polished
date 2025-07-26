; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm) ->done
; - BaseData (see data/pokemon/base_stats.asm) ->done
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm) ->done, fury_attack_users.asm->done, legendary_mons.asm->done, unique_wild_moves.asm->done, 
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm) ->done, egg_moves.asm->done
; - EvolutionMoves (see data/pokemon/evolution_moves.asm) ->done
; - PokemonCries (see data/pokemon/cries.asm)->done
; - IconPointers (see data/pokemon/menu_icon_pointers.asm) ->done
; - MenuMonIconColors (see data/pokemon/menu_icon_pals.asm)->done
; - FrontPicPointers (see data/pokemon/front_pic_pointers.asm)->done
; - BackPicPointers (see data/pokemon/back_pic_pointers.asm)->done
; - PokemonPalettes (see data/pokemon/palettes.asm); 
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)->done, also need to write the dex entries
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)->done
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)->done
; - ValidPokemonLevels (see data/pokemon/valid_levels.asm)->done, valid_variants.asm->done
; - Footprints (see gfx/pokemon/footprints.asm)->done, gfx/pokemon/anims.asm->done
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)->done, gfx/pokemon/extra_pointers.asm->done, gfx/pokemon/extras.asm
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm) did not find
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)->done, gfx/pokemon/bitmasks.asm->done, unown_words.asm->done
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)->done, pic_animations.asm->done, kanto_frames.asm and johto_frames.asm->done ; gfx/pics.asm-->t.d.
	const_def 1
	const CYNDAQUIL		  ; 01
	const QUILAVA  		  ; 02
	const TYPHLOSION  	  ; 03
	const H__TYPHLOSION   ; 04
	const ROWLET	      ; 05
	const DARTRIX         ; 06
	const DECIDUEYE       ; 07
	const H__DECIDUEYE    ; 08
	const OSHAWOTT  ; 09
	const DEWOTT   ; 0a
	const SAMUROTT    ; 0b
	const H__SAMUROTT ; 0c
	const BUTTERFREE     ; 0d
	const BEEDRILL     ; 0e
	const PIDGEY   ; 0f
	const PIDGEOTTO     ; 10
	const PIDGEOT  ; 11
	const NOCTOWL 
	const EKANS    ; 12
	const ARBOK    ; 13
	const PIKACHU   ; 14
	const RAICHU     ; 15
	const NIDORINA  ; 16
	const NIDOQUEEN      ; 17
	const NIDORINO      ; 18
	const NIDOKING    ; 19
	const CLEFAIRY     ; 1a
	const CLEFABLE  ; 1b
	const VULPIX  ; 1c
	const NINETALES  ; 1d
	const JIGGLYPUFF   ; 1e
	const WIGGLYTUFF  ; 1f
	const ZUBAT  ; 20
	const GOLBAT   ; 21
	const CROBAT   ; 22
	const GLOOM   ; 23
	const VILEPLUME   ; 24
	const BELLOSSOM     ; 25
	const PARAS  ; 26
	const PARASECT ; 27
	const VENONAT ; 28
	const VENOMOTH      ; 29
	const DIGLETT     ; 2a
	const DUGTRIO     ; 2b
	const MEOWTH      ; 2c
	const PERSIAN  ; 2d
	const MANKEY      ; 2e
	const PRIMEAPE   ; 2f
	const GROWLITHE    ; 30
	const ARCANINE   ; 31
	const H__ARCANINE    ; 32
	const POLIWAG    ; 33
	const POLIWHIRL     ; 34
	const POLIWRATH    ; 35
	const POLITOED    ; 36
	const ABRA    ; 37
	const KADABRA     ; 38
	const ALAKAZAM   ; 39
	const MACHOP  ; 3a
	const MACHOKE   ; 3b
	const MACHAMP    ; 3c
	const WEEPINBELL  ; 3d
	const VICTREEBEL  ; 3e
	const TENTACRUEL       ; 3f
	const GEODUDE    ; 40
	const GRAVELER   ; 41
	const GOLEM     ; 42
	const PONYTA    ; 43
	const RAPIDASH    ; 44
	const SLOWPOKE ; 45
	const SLOWBRO ; 46
	const SLOWKING ; 47
	const MAGNEMITE  ; 48
	const MAGNETON ; 49
	const MAGNEZONE    ; 4a
	const FARFETCH_D   ; 4b
	const GRIMER      ; 4c
	const MUK     ; 4d
	const CLOYSTER   ; 4e
	const GASTLY   ; 4f
	const HAUNTER    ; 50
	const GENGAR  ; 51
	const ONIX   ; 52
	const STEELIX ; 53
	const VOLTORB      ; 54
	const ELECTRODE     ; 55
	const H__ELECTRODE       ; 56
	const EXEGGCUTE    ; 57
	const EXEGGUTOR     ; 58
	const HITMONLEE        ; 59
	const HITMONCHAN   ; 5a
	const HITMONTOP   ; 5b
	const WEEZING     ; 5c
	const MR__MIME    ; 5d
	const RHYHORN     ; 5e
	const RHYDON       ; 5f
	const RHYPERIOR    ; 60
	const CHANSEY      ; 61
	const BLISSEY     ; 62
	const TANGELA    ; 63
	const TANGROWTH    ; 64
	const KANGASKHAN  ; 65
	const SEADRA  ; 66
	const KINGDRA  ; 67
	const STARYU     ; 68
	const STARMIE    ; 69
	const SCYTHER  ; 6a
	const SCIZOR ; 6b
	const KLEAVOR    ; 6c
	const JYNX    ; 6d
	const ELECTABUZZ    ; 6e
	const ELECTIVIRE     ; 6f
	const MAGMAR    ; 70
	const MAGMORTAR    ; 71
	const PINSIR ; 72
	const TAUROS     ; 73
	const MAGIKARP     ; 74
	const GYARADOS     ; 75
	const LAPRAS    ; 76
	const EEVEE   ; 77
	const VAPOREON     ; 78
	const JOLTEON    ; 79
	const FLAREON   ; 7a
	const ESPEON    ; 7b
	const UMBREON       ; 7c
	const LEAFEON ; 7d
	const GLACEON     ; 7e
	const SYLVEON     ; 7f
	const PORYGON     ; 80
	const PORYGON2   ; 81
	const PORYGON_Z   ; 82
	const SNORLAX     ; 83
	const CHIKORITA      ; 84
	const BAYLEEF      ; 85
	const MEGANIUM   ; 86
	const TOTODILE    ; 87
	const CROCONAW    ; 88
	const FERALIGATR    ; 89
	const FURRET    ; 8a
	const LEDIAN    ; 8b
	const ARIADOS     ; 8c
	const CHINCHOU   ; 8d
	const LANTURN ; 8e
	const TOGETIC    ; 8f
	const TOGEKISS   ; 90
	const NATU     ; 91
	const XATU    ; 92
	const MAREEP    ; 93
	const FLAAFFY  ; 94
	const AMPHAROS  ; 95
	const MARILL     ; 96
	const AZUMARILL        ; 97
	const SUDOWOODO  ; 98
	const SKIPLOOM    ; 99
	const JUMPLUFF   ; 9a
	const SUNFLORA  ; 9b
	const WOOPER    ; 9c
	const QUAGSIRE ; 9d
	const MURKROW   ; 9e
	const HONCHKROW   ; 9f
	const MISDREAVUS ; a0
	const MISMAGIUS    ; a1
	const YANMA     ; a2
	const YANMEGA   ; a3
	const UNOWN    ; a4
	const GIRAFARIG     ; a5
	const PINECO     ; a6
	const FORRETRESS   ; a7
	const DUNSPARCE    ; a8
	const GLIGAR     ; a9
	const GLISCOR   ; aa
	const SNUBBULL    ; ab
	const GRANBULL      ; ac
	const QWILFISH   ; ad
	const OVERQWIL  ; ae
	const SHUCKLE  ; af
	const HERACROSS  ; b0
	const SNEASEL       ; b1
	const WEAVILE       ; b2
	const SNEASLER     ; b3
	const TEDDIURSA    ; b4
	const URSARING   ; b5
	const URSALUNA  ; b6
	const MAGCARGO  ; b7
	const PILOSWINE   ; b8
	const MAMOSWINE    ; b9
	const CORSOLA   ; ba
	const OCTILLERY      ; bb
	const MANTINE    ; bc
	const SKARMORY     ; bd
	const HOUNDOUR   ; be
	const HOUNDOOM     ; bf
	const DONPHAN    ; c0
	const STANTLER    ; c1
	const WYRDEER  ; c2
	const MILTANK   ; c3
	const GROTLE ; c4
	const TORTERRA  ; c5
	const MONFERNO      ; c6
	const INFERNAPE  ; c7
	const PRINPLUP  ; c8
	const EMPOLEON     ; c9
	const STARAVIA ; ca
	const STARAPTOR  ; cb
	const LUXIO     ; cc
	const LUXRAY    ; cd
	const ROSELIA    ; ce
	const ROSERADE   ; cf
	const RAMPARDOS   ; d0
	const BASTIODON   ; d1
	const VESPIQUEN     ; d2
	const AMBIPOM    ; d3
	const DRIFBLIM  ; d4
	const LOPUNNY    ; d5
	const SKUNTANK    ; d6
	const BRONZOR  ; d7
	const BRONZONG   ; d8
	const SPIRITOMB     ; d9
	const GABITE   ; da
	const GARCHOMP     ; db
	const LUCARIO  ; dc
	const HIPPOWDON  ; dd
	const DRAPION    ; de
	const TOXICROAK   ; df
	const SNOVER  ; e0
	const ABOMASNOW    ; e1
	const DUSCLOPS   ; e2
	const DUSKNOIR   ; e3
	const FROSLASS   ; e4
	const ROTOM    ; e5
	const H__AVALUGG     ; e6
	const BASCULEGION    ; e7
	const H__BRAVIARY   ; e8
	const KIRLIA  ; e9
	const GARDEVOIR   ; ea
	const GALLADE    ; eb
	const H__SLIGGOO  ; ec
	const H__GOODRA     ; ed
	const H__ZOROARK ; ee
	const DRATINI      ; ef
	const DRAGONAIR  ; f0
	const DRAGONITE    ; f1
	const LARVITAR    ; f2
	const PUPITAR     ; f3
	const TYRANITAR      ; f4
	const RAIKOU    ; f5
	const ENTEI   ; f6
	const SUICUNE    ; f7
	const HEATRAN  ; f8
	const LUGIA      ; f9
	const HO_OH      ; fa
	const CELEBI     ; fb
NUM_POKEMON EQU const_value - 1 ; fc
	; room for up to two more? 
	const EGG        ; ff? seems to be the same as polished 

CANCEL EQU -1

; form values
; related to:
; - CosmeticSpeciesAndFormTable (see data/pokemon/variant_forms.asm)
; - ValidVariantRanges (see data/pokemon/valid_variants.asm)

ext_const_def: MACRO
	if _NARG >= 1
		def ext_const_value = \1
	else
		def ext_const_value = 0
	endc
	if _NARG >= 2
		DEF \2 EQU ext_const_value
		redef ext_const_value += const_inc
	endc
ENDM

ext_const: MACRO
	const_skip
	DEF \1 EQU ext_const_value
	redef ext_const_value += const_inc
ENDM

NO_FORM EQU 0
PLAIN_FORM EQU 1

FIRST_COSMETIC_FORM_MON EQU const_value ; 100

; unown
	ext_const_def 1, UNOWN_A_FORM    ;     (01)
	ext_const UNOWN_B_FORM           ; 100 (02)
	ext_const UNOWN_C_FORM           ; 101 (03)
	ext_const UNOWN_D_FORM           ; 102 (04)
	ext_const UNOWN_E_FORM           ; 103 (05)
	ext_const UNOWN_F_FORM           ; 104 (06)
	ext_const UNOWN_G_FORM           ; 105 (07)
	ext_const UNOWN_H_FORM           ; 106 (08)
	ext_const UNOWN_I_FORM           ; 107 (09)
	ext_const UNOWN_J_FORM           ; 108 (0a)
	ext_const UNOWN_K_FORM           ; 109 (0b)
	ext_const UNOWN_L_FORM           ; 10a (0c)
	ext_const UNOWN_M_FORM           ; 10b (0d)
	ext_const UNOWN_N_FORM           ; 10c (0e)
	ext_const UNOWN_O_FORM           ; 10d (0f)
	ext_const UNOWN_P_FORM           ; 10e (10)
	ext_const UNOWN_Q_FORM           ; 10f (11)
	ext_const UNOWN_R_FORM           ; 110 (12)
	ext_const UNOWN_S_FORM           ; 111 (13)
	ext_const UNOWN_T_FORM           ; 112 (14)
	ext_const UNOWN_U_FORM           ; 113 (15)
	ext_const UNOWN_V_FORM           ; 114 (16)
	ext_const UNOWN_W_FORM           ; 115 (17)
	ext_const UNOWN_X_FORM           ; 116 (18)
	ext_const UNOWN_Y_FORM           ; 117 (19)
	ext_const UNOWN_Z_FORM           ; 118 (1a)
	ext_const UNOWN_EXCLAMATION_FORM ; 119 (1b)
	ext_const UNOWN_QUESTION_FORM    ; 11a (1c)
NUM_UNOWN EQU ext_const_value - 1

NUM_COSMETIC_FORMS EQU const_value - FIRST_COSMETIC_FORM_MON ; 34

FIRST_VARIANT_FORM_MON EQU const_value ; 134

NUM_VARIANT_FORMS EQU const_value - FIRST_VARIANT_FORM_MON ; 1d

FIRST_EXT_MON EQU const_value ; 151

NUM_EXT_SPECIES EQU const_value - FIRST_EXT_MON ; 0

; these constants include EGG as a species
;NUM_UNIQUE_POKEMON EQU const_value - 1 ; 150
;NUM_EXT_POKEMON EQU NUM_UNIQUE_POKEMON - NUM_COSMETIC_FORMS ; 11c
;NUM_SPECIES EQU NUM_UNIQUE_POKEMON - NUM_COSMETIC_FORMS - NUM_VARIANT_FORMS ; ff
