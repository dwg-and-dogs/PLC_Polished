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
	const QUILAVA       ; 02
	const TYPHLOSION       ; 03
	const ROWLET       ; 04
	const DARTRIX       ; 05
	const DECIDUEYE       ; 06
	const OSHAWOTT       ; 07
	const DEWOTT       ; 08
	const SAMUROTT       ; 09
	const HOOTHOOT       ; 10
	const NOCTOWL       ; 11
	const SENTRET       ; 12
	const FURRET       ; 13
	const PIKACHU       ; 14
	const RAICHU       ; 15
	const LEDYBA       ; 16
	const LEDIAN       ; 17
	const SPINARAK       ; 18
	const ARIADOS       ; 19
	const GEODUDE       ; 20
	const GRAVELER       ; 21
	const GOLEM       ; 22
	const ZUBAT       ; 23
	const GOLBAT       ; 24
	const CROBAT       ; 25
	const CLEFAIRY       ; 26
	const CLEFABLE       ; 27
	const TOGETIC       ; 28
	const TOGEKISS       ; 29
	const DUNSPARCE       ; 30
	const DUDUNSPARCE       ; 31
	const MAREEP       ; 32
	const FLAAFFY       ; 33
	const AMPHAROS       ; 34
	const WOOPER       ; 35
	const QUAGSIRE       ; 36
	const GASTLY       ; 37
	const HAUNTER       ; 38
	const GENGAR       ; 39
	const UNOWN       ; 40
	const ONIX       ; 41
	const STEELIX       ; 42
	const BELLSPROUT       ; 43
	const WEEPINBELL       ; 44
	const VICTREEBEL       ; 45
	const HOPPIP       ; 46
	const SKIPLOOM       ; 47
	const JUMPLUFF       ; 48
	const PARAS       ; 49
	const PARASECT       ; 50
	const POLIWAG       ; 51
	const POLIWHIRL       ; 52
	const POLIWRATH       ; 53
	const POLITOED       ; 54
	const MAGIKARP       ; 55
	const GYARADOS       ; 56
	const SLOWPOKE       ; 57
	const SLOWBRO       ; 58
	const SLOWKING       ; 59
	const ODDISH       ; 60
	const GLOOM       ; 61
	const VILEPLUME       ; 62
	const BELLOSSOM       ; 63
	const ABRA       ; 64
	const KADABRA       ; 65
	const ALAKAZAM       ; 66
	const DITTO       ; 67
	const PINECO       ; 68
	const FORRETRESS       ; 69
	const NIDORAN       ; 70
	const NIDORINA       ; 71
	const NIDOQUEEN       ; 72
	const NIDORINO       ; 73
	const NIDOKING       ; 74
	const YANMA       ; 75
	const YANMEGA       ; 76
	const SUNKERN       ; 77
	const SUNFLORA       ; 78
	const EXEGGCUTE       ; 79
	const EXEGGUTOR       ; 80
	const SUDOWOODO       ; 81
	const SCYTHER       ; 82
	const SCIZOR       ; 83
	const KLEAVOR       ; 84
	const PINSIR       ; 85
	const MINSIR       ; 86
	const HERACROSS       ; 87
	const KOFFING       ; 88
	const WEEZING       ; 89
	const GRIMER       ; 90
	const MUK       ; 91
	const MAGNEMITE       ; 92
	const MAGNETON       ; 93
	const MAGNEZONE       ; 94
	const VOLTORB       ; 95
	const ELECTRODE       ; 96
	const AIPOM       ; 97
	const AMBIPOM       ; 98
	const SNUBBULL       ; 99
	const GRANBULL       ; 100
	const VULPIX       ; 101
	const NINETALES       ; 102
	const GROWLITHE       ; 103
	const ARCANINE       ; 104
	const STANTLER       ; 105
	const WYRDEER       ; 106
	const MARILL       ; 107
	const AZUMARILL       ; 108
	const MANKEY       ; 109
	const PRIMEAPE       ; 110
	const ANNIHILAPE       ; 111
	const MACHOP       ; 112
	const MACHOKE       ; 113
	const MACHAMP       ; 114
	const HITMONLEE       ; 115
	const HITMONCHAN       ; 116
	const HITMONTOP       ; 117
	const GIRAFARIG       ; 118
	const FARIGIRAF       ; 119
	const TAUROS       ; 120
	const MILTANK       ; 121
	const MAGMAR       ; 122
	const MAGMORTAR       ; 123
	const JYNX       ; 124
	const ELECTABUZZ       ; 125
	const ELECTIVIRE       ; 126
	const NATU       ; 127
	const XATU       ; 128
	const QWILFISH       ; 129
	const OVERQWIL       ; 130
	const TENTACOOL       ; 131
	const TENTACRUEL       ; 132
	const SHUCKLE       ; 133
	const CORSOLA       ; 134
	const REMORAID       ; 135
	const OCTILLERY       ; 136
	const CHINCHOU       ; 137
	const LANTURN       ; 138
	const TANGELA       ; 139
	const TANGROWTH       ; 140
	const EEVEE       ; 141
	const VAPOREON       ; 142
	const JOLTEON       ; 143
	const FLAREON       ; 144
	const ESPEON       ; 145
	const UMBREON       ; 146
	const LEAFEON       ; 147
	const GLACEON       ; 148
	const SYLVEON       ; 149
	const HORSEA       ; 150
	const SEADRA       ; 151
	const KINGDRA       ; 152
	const GLIGAR       ; 153
	const GLISCOR       ; 154
	const SWINUB       ; 155
	const PILOSWINE       ; 156
	const MAMOSWINE       ; 157
	const TEDDIURSA       ; 158
	const URSARING       ; 159
	const URSALUNA       ; 160
	const PHANPY       ; 161
	const DONPHAN       ; 162
	const MANTINE       ; 163
	const SKARMORY       ; 164
	const PONYTA       ; 165
	const RAPIDASH       ; 166
	const RHYHORN       ; 167
	const RHYDON       ; 168
	const RHYPERIOR       ; 169
	const MURKROW       ; 170
	const HONCHKROW       ; 171
	const HOUNDOUR       ; 172
	const HOUNDOOM       ; 173
	const SLUGMA       ; 174
	const MAGCARGO       ; 175
	const SNEASEL       ; 176
	const WEAVILE       ; 177
	const SNEASLER       ; 178
	const MISDREAVUS       ; 179
	const MISMAGIUS       ; 180
	const PORYGON       ; 181
	const PORYGON2       ; 182
	const PORYGON_Z       ; 183
	const CHANSEY       ; 184
	const BLISSEY       ; 185
	const LAPRAS       ; 186
	const SNORLAX       ; 187
	const CHIKORITA       ; 188
	const BAYLEEF       ; 189
	const MEGANIUM       ; 190
	const TOTODILE       ; 191
	const CROCONAW       ; 192
	const FERALIGATR       ; 193
	const STARLY       ; 194
	const STARAVIA       ; 195
	const STARAPTOR       ; 196
	const SHINX       ; 197
	const LUXIO       ; 198
	const LUXRAY       ; 199
	const CRANIDOS       ; 200
	const RAMPARDOS       ; 201
	const SHIELDON       ; 202
	const BASTIODON       ; 203
	const DRIFLOON       ; 204
	const DRIFBLIM       ; 205
	const BRONZOR       ; 206
	const BRONZONG       ; 207
	const SPIRITOMB       ; 208
	const RIOLU       ; 209
	const LUCARIO       ; 210
	const HIPPOPOTAS       ; 211
	const HIPPOWDON       ; 212
	const CROAGUNK       ; 213
	const TOXICROAK       ; 214
	const SNOVER       ; 215
	const ABOMASNOW       ; 216
	const DUSKULL       ; 217
	const DUSCLOPS       ; 218
	const DUSKNOIR       ; 219
	const SNORUNT       ; 220
	const GLALIE       ; 221
	const FROSLASS       ; 222
	const ROTOM       ; 223
	const BERGMITE       ; 224
	const AVALUGG       ; 225
	const BASCULIN       ; 226
	const BASCULEGION       ; 227
	const RUFFLET       ; 228
	const BRAVIARY       ; 229
	const RALTS       ; 230
	const KIRLIA       ; 231
	const GARDEVOIR       ; 232
	const GALLADE       ; 233
	const GOOMY       ; 234
	const SLIGGOO       ; 235
	const GOODRA       ; 236
	const ZORUA       ; 237
	const ZOROARK       ; 238
	const GIBLE       ; 239
	const GABITE       ; 240
	const GARCHOMP       ; 241
	const DRATINI       ; 242
	const DRAGONAIR       ; 243
	const DRAGONITE       ; 244
	const LARVITAR       ; 245
	const PUPITAR       ; 246
	const TYRANITAR       ; 247
	const RAIKOU       ; 248
	const ENTEI       ; 249
	const SUICUNE       ; 250
	const HEATRAN       ; 251
	const LUGIA       ; 252
	const HO_OH       ; 253
	const CELEBI       ; 254
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
	const_skip ; PONYTA
	const_skip ; RAPIDAS
	const_skip ; SLOWPOKE
	const_skip ; SLOWBRO
	const_skip ; SLOWKING 
	const_skip ; WEEZING
	const_skip ; CORSOLA 

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
OTHER_FORM EQU 2 
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
