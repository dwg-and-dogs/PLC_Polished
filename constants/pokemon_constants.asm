; pokemon ids
; indexes for: 
; data files: 
; - PokemonNames (see data/pokemon/names.asm) -> done 
; - BaseData (see data/pokemon/base_stats.asm) -> done 
; 		; eventually need 
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm) -> done 
;			fury_attack_users.asm-> done 
;			legendary_mons.asm-> done 
;			unique_wild_moves.asm-> done 
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm) -> done 
;			egg_moves.asm-> eventually 
; - EvolutionMoves (see data/pokemon/evolution_moves.asm) -> DONE 
; - PokemonCries (see data/pokemon/cries.asm)-> done
; - IconPointers (see data/pokemon/menu_icon_pointers.asm) -> done
;
; - MenuMonIconColors (see data/pokemon/menu_icon_pals.asm)-> done
; - FrontPicPointers (see data/pokemon/front_pic_pointers.asm)-> done
; 			need todo add all the new pics front and back 
; - BackPicPointers (see data/pokemon/back_pic_pointers.asm)-> done 
; - PokemonPalettes (see data/pokemon/palettes.asm) --> done , may have an error related to hgss variants not in the table?, watch out for it  
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)-> done 
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)-> done 
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)-> done 
; - ValidPokemonLevels (see data/pokemon/valid_levels.asm)-> done 
; 			valid_variants.asm-> done 
; data/pokemon/dex_entries: done, need to check them all after building 
; gfx files: 
; - Footprints (see gfx/pokemon/footprints.asm)-> done,
; footprint pngs: blanked, done 
; 			gfx/pokemon/anims.asm-> done 
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)->done, gfx/pokemon/extra_pointers.asm-> done
		; gfx/pokemon/extras.asm->done 
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm) did not find
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)->done, 
; gfx/pokemon/bitmasks.asm->
		;, unown_words.asm-> no change 
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)->
;  pic_animations.asm->, 
; kanto_frames.asm and johto_frames.asm-> 
; gfx/pics.asm-->done


	const_def 1
	const CYNDAQUIL       ; 01
	const QUILAVA         ; 02
	const TYPHLOSION      ; 03 ; HTYPHLOSION -> HISUI FORM
	const ROWLET          ; 04
	const DARTRIX         ; 05
	const DECIDUEYE       ; 06 ; HDECIDUEYE -> HISUI FORM
	const OSHAWOTT        ; 07
	const DEWOTT          ; 08
	const SAMUROTT        ; 09 ; HSAMUROTT -> HISUI FORM
	const RUFFLET          ; 0a
	const STARLY       ; 0b
	const SNORUNT         ; 0c
	const HOOTHOOT        ; 0d
	const NOCTOWL         ; 0e ; HNOCTOWL -> HISUI FORM
	const SENTRET         ; 0f
	const FURRET          ; 10
	const PIKACHU         ; 11
	const RAICHU          ; 12 ; ARAICHU -> ALOLA FORM
	const LEDYBA          ; 13
	const LEDIAN          ; 14
	const SPINARAK        ; 15
	const ARIADOS         ; 16
	const GEODUDE         ; 17 ; AGEODUDE -> ALOLA FORM
	const GRAVELER        ; 18 ; AGRAVELER -> ALOLA FORM
	const GOLEM           ; 19 ; AGOLEM -> ALOLA FORM
	const ZUBAT           ; 1a
	const GOLBAT          ; 1b
	const CROBAT          ; 1c
	const CLEFAIRY        ; 1d
	const CLEFABLE        ; 1e
	const TOGETIC         ; 1f
	const TOGEKISS        ; 20
	const DUNSPARCE       ; 21
	const DUDUNSPARCE     ; 22
	const MAREEP          ; 23
	const FLAAFFY         ; 24
	const AMPHAROS        ; 25
	const WOOPER          ; 26
	const QUAGSIRE        ; 27
	const GASTLY          ; 28
	const HAUNTER         ; 29
	const GENGAR          ; 2a
	const UNOWN           ; 2b
	const ONIX            ; 2c
	const STEELIX         ; 2d
	const BELLSPROUT      ; 2e
	const WEEPINBELL      ; 2f
	const VICTREEBEL      ; 30
	const SKIPLOOM        ; 31
	const JUMPLUFF        ; 32
	const PARAS           ; 33
	const PARASECT        ; 34
	const POLIWAG         ; 35
	const POLIWHIRL       ; 36
	const POLIWRATH       ; 37
	const POLITOED        ; 38
	const MAGIKARP        ; 39
	const GYARADOS        ; 3a
	const SLOWPOKE        ; 3b ; GSLOWPOKE -> GALAR FORM
	const SLOWBRO         ; 3c ; GSLOWBRO -> GALAR FORM
	const SLOWKING        ; 3d ; GSLOWKING -> GALAR FORM
	const ODDISH          ; 3e
	const GLOOM           ; 3f
	const VILEPLUME       ; 40
	const BELLOSSOM       ; 41
	const ABRA            ; 42
	const KADABRA         ; 43
	const ALAKAZAM        ; 44
	const PINECO          ; 45
	const FORRETRESS      ; 46
	const NIDORAN         ; 47
	const NIDORINA        ; 48
	const NIDOQUEEN       ; 49
	const NIDORINO        ; 4a
	const NIDOKING        ; 4b
	const YANMA           ; 4c
	const YANMEGA         ; 4d
	const SUNFLORA        ; 4e
	const EXEGGCUTE       ; 4f
	const EXEGGUTOR       ; 50 ; AEXEGGUTOR -> ALOLA FORM
	const SUDOWOODO       ; 51
	const SCYTHER         ; 52
	const SCIZOR          ; 53
	const KLEAVOR         ; 54
	const PINSIR          ; 55
	const MINSIR          ; 56
	const HERACROSS       ; 57
	const KOFFING         ; 58
	const WEEZING         ; 59 ; GWEEZING -> GALAR FORM
	const GRIMER          ; 5a ; AGRIMER -> ALOLA FORM
	const MUK             ; 5b ; AMUK -> ALOLA FORM
	const MAGNEMITE       ; 5c
	const MAGNETON        ; 5d
	const MAGNEZONE       ; 5e
	const VOLTORB         ; 5f ; HVOLTORB -> HISUI FORM
	const ELECTRODE       ; 60 ; HELECTRODE -> HISUI FORM
	const AIPOM           ; 61
	const AMBIPOM         ; 62
	const SNUBBULL        ; 63
	const GRANBULL        ; 64
	const VULPIX          ; 65 ; AVULPIX -> ALOLA FORM
	const NINETALES       ; 66 ; ANINETALES -> ALOLA FORM
	const GROWLITHE       ; 67 ; HGROWLITHE -> HISUI FORM
	const ARCANINE        ; 68 ; HARCANINE -> HISUI FORM
	const STANTLER        ; 69
	const WYRDEER         ; 6a
	const MARILL          ; 6b
	const AZUMARILL       ; 6c
	const MANKEY          ; 6d
	const PRIMEAPE        ; 6e
	const ANNIHILAPE      ; 6f
	const MACHOP          ; 70
	const MACHOKE         ; 71
	const MACHAMP         ; 72
	const HITMONLEE       ; 73
	const HITMONCHAN      ; 74
	const HITMONTOP       ; 75
	const GIRAFARIG       ; 76
	const FARIGIRAF       ; 77
	const TAUROS          ; 78
	const MILTANK         ; 79
	const MAGMAR          ; 7a
	const MAGMORTAR       ; 7b
	const JYNX            ; 7c
	const ELECTABUZZ      ; 7d
	const ELECTIVIRE      ; 7e
	const NATU            ; 80
	const XATU            ; 81
	const QWILFISH        ; 82 ; HQWILFISH -> HISUI FORM
	const OVERQWIL        ; 83
	const TENTACOOL       ; 84
	const TENTACRUEL      ; 85
	const SHUCKLE         ; 86
	const CORSOLA         ; 87 ; GCORSOLA -> GALAR FORM
	const REMORAID        ; 88
	const OCTILLERY       ; 89
	const CHINCHOU        ; 8a
	const LANTURN         ; 8b
	const TANGELA         ; 8c
	const TANGROWTH       ; 8d
	const EEVEE           ; 8e
	const VAPOREON        ; 8f
	const JOLTEON         ; 90
	const FLAREON         ; 91
	const ESPEON          ; 92
	const UMBREON         ; 93
	const LEAFEON         ; 94
	const GLACEON         ; 95
	const SYLVEON         ; 96
	const SEADRA          ; 97
	const KINGDRA         ; 98
	const GLIGAR          ; 99
	const GLISCOR         ; 9a
	const SWINUB          ; 9b
	const PILOSWINE       ; 9c
	const MAMOSWINE       ; 9d
	const TEDDIURSA       ; 9e
	const URSARING        ; 9f
	const URSALUNA        ; a0 ; URSALUNA_BM -> BLOODMOON FORM
	const PHANPY          ; a1
	const DONPHAN         ; a2
	const MANTINE         ; a3
	const SKARMORY        ; a4
	const PONYTA          ; a5 ; GPONYTA -> GALAR FORM
	const RAPIDASH        ; a6 ; GRAPIDASH -> GALAR FORM
	const RHYHORN         ; a7
	const RHYDON          ; a8
	const RHYPERIOR       ; a9
	const MURKROW         ; aa
	const HONCHKROW       ; ab
	const HOUNDOUR        ; ac
	const HOUNDOOM        ; ad
	const SLUGMA          ; ae
	const MAGCARGO        ; af
	const SNEASEL         ; b0 ; HSNEASEL -> HISUI FORM
	const WEAVILE         ; b1
	const SNEASLER        ; b2
	const MISDREAVUS      ; b3
	const MISMAGIUS       ; b4
	const PORYGON         ; b5
	const PORYGON2        ; b6
	const PORYGON_Z       ; b7
	const CHANSEY         ; b8
	const BLISSEY         ; b9
	const LAPRAS          ; ba
	const SNORLAX         ; bb
	const CHIKORITA       ; bc
	const BAYLEEF         ; bd
	const MEGANIUM        ; be
	const TOTODILE        ; bf
	const CROCONAW        ; c0
	const FERALIGATR      ; c1
	const RIOLU          ; c2
	const HORSEA        ; c3
	const GLALIE        ; c4
	const BASCULIN       ; c5
	const HOPPIP        ; c6
	const SUNKERN        ; c7
	const STARAVIA        ; c8
	const STARAPTOR       ; c9
	const SHINX           ; ca
	const LUXIO           ; cb
	const LUXRAY          ; cc
	const CRANIDOS        ; cd
	const RAMPARDOS       ; ce
	const SHIELDON        ; cf
	const BASTIODON       ; d0
	const DITTO       ; d1
	const DRIFLOON        ; d2
	const DRIFBLIM        ; d3
	const BRONZOR         ; d4
	const BRONZONG        ; d5
	const SPIRITOMB       ; d6
	const LUCARIO         ; d7
	const HIPPOPOTAS      ; d8
	const HIPPOWDON       ; d9
	const CROAGUNK        ; da
	const TOXICROAK       ; db
	const SNOVER          ; dc
	const ABOMASNOW       ; dd
	const DUSKULL         ; de
	const DUSCLOPS        ; df
	const DUSKNOIR        ; e0
	const FROSLASS        ; e1
	const ROTOM           ; e2
	const BERGMITE        ; e3
	const AVALUGG      ; e4
	const BASCULEGION     ; e5
	const BRAVIARY     ; e6
	const RALTS           ; e7
	const KIRLIA          ; e8
	const GARDEVOIR       ; e9
	const GALLADE         ; ea
	const GOOMY           ; eb
	const SLIGGOO      ; ec
	const GOODRA       ; ed
	const ZORUA 			; 
	const ZOROARK      ; ee
	const GIBLE           ; f0
	const GABITE          ; ef
	const GARCHOMP        ; f1
	const DRATINI         ; f2
	const DRAGONAIR       ; f3
	const DRAGONITE       ; f4
	const LARVITAR        ; f5
	const PUPITAR         ; f6
	const TYRANITAR       ; f7
	const RAIKOU          ; f8
	const ENTEI           ; f9
	const SUICUNE         ; fa
	const HEATRAN         ; fb
	const LUGIA           ; fc
	const HO_OH           ; fd
	const CELEBI          ; fe
NUM_POKEMON EQU const_value - 1 ; 
	const EGG        ; ff matches clean 

CANCEL EQU -1 ; matches clean 

; form values
; related to:
; - CosmeticSpeciesAndFormTable (see data/pokemon/variant_forms.asm)-->DONE 
; - ValidVariantRanges (see data/pokemon/valid_variants.asm)--> done  

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
NUM_UNOWN EQU ext_const_value - 1 ; 1c, 28 decimal 

NUM_COSMETIC_FORMS EQU const_value - FIRST_COSMETIC_FORM_MON ; 27 decimal for the variants of unown 

FIRST_VARIANT_FORM_MON EQU const_value ; 11b, no variants

ALOLAN_FORM EQU 2
	const_skip ; RAICHU
	const_skip ; VULPIX 
	const_skip ; NINETALES 
	const_skip ; GEODUDE 
	const_skip ; GRAVELER 
	const_skip ; GOLEM 
	const_skip ; GRIMER
	const_skip ; MUK 
	const_skip ; EXEGGUTOR 

; galarian forms
GALARIAN_FORM EQU 2
	const_skip ; ponyta
	const_skip ; rapidash
	const_skip ; slowpoke
	const_skip ; slowbro
	const_skip ; slowking 
	const_skip ; weezing
	const_skip ; corsola 

; hisuian forms as a practice 
HISUIAN_FORM EQU 2
	const_skip ; GROWLITHE
	const_skip ; ARCANINE
	const_skip ; VOLTORB
	const_skip ; ELECTRODE 
	const_skip ; TYPHLOSION
	const_skip ; QWILFISH 
	const_skip ; SNEASEL 
	const_skip ; SAMUROTT
	const_skip ; DECIDUEYE

; other forms 
OTHER_FORMS EQU 2 
	const_skip ; NOCTOWL
	const_skip ; BLOODMOON 
	const_skip ; feraligatr 
	const_skip ; meganium
	const_skip ; MAGCARGO
	const_skip ; XATU 

NUM_VARIANT_FORMS EQU const_value - FIRST_VARIANT_FORM_MON ; 

FIRST_EXT_MON EQU const_value ; should be 151?

NUM_EXT_SPECIES EQU const_value - FIRST_EXT_MON ;  should be 0? 

; these constants include EGG as a species
NUM_UNIQUE_POKEMON EQU const_value - 1 ; should be 150?
NUM_EXT_POKEMON EQU NUM_UNIQUE_POKEMON - NUM_COSMETIC_FORMS ; includes variants  
NUM_SPECIES EQU NUM_UNIQUE_POKEMON - NUM_COSMETIC_FORMS - NUM_VARIANT_FORMS ; should be ff, 255
