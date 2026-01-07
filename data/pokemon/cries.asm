mon_cry: MACRO
; index, pitch, length
	dw \1, \2, \3
ENDM

PokemonCries::
; entries correspond to constants/pokemon_constants.asm
	table_width MON_CRY_LENGTH, PokemonCries
	mon_cry CRY_CYNDAQUIL,   $347,  $080 ; Cyndaquil       ; 01
	mon_cry CRY_CYNDAQUIL,   $321,  $120 ; Quilava         ; 02
	mon_cry CRY_TYPHLOSION,  $f00,  $0d4 ; Typhlosion      ; 03
	mon_cry CRY_BULBASAUR,   $080,  $081 ; Rowlet          ; 04
	mon_cry CRY_BULBASAUR,   $020,  $100 ; Dartrix         ; 05
	mon_cry CRY_BULBASAUR,   $000,  $140 ; Decidueye       ; 06
	mon_cry CRY_SQUIRTLE,    $060,  $0c0 ; Oshawott        ; 07
	mon_cry CRY_SQUIRTLE,    $020,  $0c0 ; Dewott          ; 08
	mon_cry CRY_BLASTOISE,   $000,  $100 ; Samurott        ; 09
	mon_cry CRY_PIDGEY,      $0df,  $084 ; Pidgey          ; 0a
	mon_cry CRY_PIDGEOTTO,   $028,  $140 ; Pidgeotto       ; 0b
	mon_cry CRY_PIDGEOTTO,   $011,  $17f ; Pidgeot         ; 0c
	mon_cry CRY_HOOTHOOT,    $091,  $0d8 ; Hoothoot
	mon_cry CRY_HOOTHOOT,    $000,  $1a0 ; Noctowl
	mon_cry CRY_SENTRET,     $08a,  $0b8 ; Sentret
	mon_cry CRY_SENTRET,     $06b,  $102 ; Furret
	mon_cry CRY_BULBASAUR,   $0ee,  $081 ; Pikachu         ; 11
	mon_cry CRY_RAICHU,      $0ee,  $088 ; Raichu          ; 12
	mon_cry CRY_LEDYBA,      $000,  $0de ; Ledyba
	mon_cry CRY_LEDYBA,     -$096,  $138 ; Ledian
	mon_cry CRY_SPINARAK,    $011,  $200 ; Spinarak
	mon_cry CRY_SPINARAK,   -$0ae,  $1e2 ; Ariados
	mon_cry CRY_VULPIX,      $0f0,  $090 ; Geodude         ; 17
	mon_cry CRY_VULPIX,      $000,  $100 ; Graveler        ; 18
	mon_cry CRY_GOLEM,       $0e0,  $0c0 ; Golem           ; 19
	mon_cry CRY_SQUIRTLE,    $0e0,  $100 ; Zubat           ; 1a
	mon_cry CRY_SQUIRTLE,    $0fa,  $100 ; Golbat          ; 1b
	mon_cry CRY_SQUIRTLE,   -$010,  $140 ; Crobat          ; 1c
	mon_cry CRY_CLEFAIRY,    $0cc,  $081 ; Clefairy        ; 1d
	mon_cry CRY_CLEFAIRY,    $0aa,  $0a0 ; Clefable        ; 1e
	mon_cry CRY_TOGETIC,     $03b,  $038 ; Togetic         ; 1f
	mon_cry CRY_TOGETIC,     $03b,  $038 ; Togekiss        ; 20
	mon_cry CRY_DUNSPARCE,   $1c4,  $100 ; Dunsparce       ; 21
	mon_cry CRY_DUNSPARCE,   $1c4,  $100 ; Dudunsparce     ; 22 ok 
	mon_cry CRY_MAREEP,      $022,  $0d8 ; Mareep          ; 23
	mon_cry CRY_MAREEP,     -$007,  $180 ; Flaaffy         ; 24
	mon_cry CRY_AMPHAROS,   -$07c,  $0e8 ; Ampharos        ; 25
	mon_cry CRY_WOOPER,      $093,  $0af ; Wooper          ; 26
	mon_cry CRY_WOOPER,     -$0c6,  $140 ; Quagsire        ; 27
	mon_cry CRY_METAPOD,     $000,  $100 ; Gastly          ; 28
	mon_cry CRY_METAPOD,     $030,  $0c0 ; Haunter         ; 29
	mon_cry CRY_MUK,         $000,  $17f ; Gengar          ; 2a
	mon_cry CRY_HOOTHOOT,    $162,  $100 ; Unown           ; 2b
	mon_cry CRY_EKANS,       $0ff,  $140 ; Onix            ; 2c
	mon_cry CRY_TYPHLOSION,  $0ef,  $0f7 ; Steelix         ; 2d
	mon_cry CRY_PSYDUCK,     $055,  $081 ; Bellsprout
	mon_cry CRY_WEEPINBELL,  $044,  $0a0 ; Weepinbell
	mon_cry CRY_WEEPINBELL,  $066,  $14c ; Victreebel
	mon_cry CRY_LEDYBA,      $000,  $0de ; Skiploom        ; 31
	mon_cry CRY_LEDYBA,      $000,  $0de ; Jumpluff        ; 32
	mon_cry CRY_PARAS,       $020,  $160 ; Paras           ; 33
	mon_cry CRY_PARAS,       $042,  $17f ; Parasect        ; 34
	mon_cry CRY_PIDGEY,      $0ff,  $17f ; Poliwag         ; 35
	mon_cry CRY_PIDGEY,      $077,  $0e0 ; Poliwhirl       ; 36
	mon_cry CRY_PIDGEY,      $000,  $17f ; Poliwrath       ; 37
	mon_cry CRY_BELLOSSOM,  -$2a3,  $1c8 ; Politoed        ; 38
	mon_cry CRY_EKANS,       $080,  $080 ; Magikarp        ; 39
	mon_cry CRY_EKANS,       $000,  $100 ; Gyarados        ; 3a
	mon_cry CRY_SLOWPOKE,    $000,  $100 ; Slowpoke        ; 3b
	mon_cry CRY_GROWLITHE,   $000,  $100 ; Slowbro         ; 3c
	mon_cry CRY_SLOWKING,    $104,  $200 ; Slowking        ; 3d
	mon_cry CRY_ODDISH,      $0dd,  $081 ; Oddish
	mon_cry CRY_ODDISH,      $0aa,  $0c0 ; Gloom
	mon_cry CRY_VILEPLUME,   $022,  $17f ; Vileplume
	mon_cry CRY_BELLOSSOM,   $084,  $150 ; Bellossom       ; 41
	mon_cry CRY_METAPOD,     $0c0,  $081 ; Abra            ; 42
	mon_cry CRY_METAPOD,     $0a8,  $140 ; Kadabra         ; 43
	mon_cry CRY_METAPOD,     $098,  $17f ; Alakazam        ; 44
	mon_cry CRY_SLOWKING,    $080,  $100 ; Pineco          ; 45
	mon_cry CRY_SLOWKING,    $000,  $180 ; Forretress      ; 46
	mon_cry CRY_NIDORAN_F,   $000,  $100 ; Nidoran
	mon_cry CRY_NIDORAN_F,   $02c,  $160 ; Nidorina        ; 48
	mon_cry CRY_NIDOQUEEN,   $000,  $100 ; Nidoqueen       ; 49
	mon_cry CRY_NIDORAN_M,   $02c,  $140 ; Nidorino        ; 4a
	mon_cry CRY_RAICHU,      $000,  $100 ; Nidoking        ; 4b
	mon_cry CRY_TOTODILE,    $031,  $0c8 ; Yanma           ; 4c
	mon_cry CRY_TOTODILE,    $031,  $0c8 ; Yanmega         ; 4d
	mon_cry CRY_REMORAID,   -$020,  $180 ; Sunflora        ; 4e
	mon_cry CRY_DIGLETT,     $000,  $100 ; Exeggcute       ; 4f
	mon_cry CRY_DROWZEE,     $000,  $100 ; Exeggutor       ; 50
	mon_cry CRY_BELLOSSOM,   $f40,  $180 ; Sudowoodo       ; 51
	mon_cry CRY_CATERPIE,    $000,  $100 ; Scyther         ; 52
	mon_cry CRY_AMPHAROS,    $000,  $160 ; Scizor          ; 53
	mon_cry CRY_AMPHAROS,    $000,  $160 ; Kleavor         ; 54
	mon_cry CRY_PIDGEOTTO,   $000,  $100 ; Pinsir          ; 55
	mon_cry CRY_PIDGEOTTO,   $000,  $100 ; Minsir          ; 56
	mon_cry CRY_AMPHAROS,    $035,  $0e0 ; Heracross       ; 57
	mon_cry CRY_GOLEM,       $0e6,  $15d ; Koffing
	mon_cry CRY_GOLEM,       $0ff,  $17f ; Weezing
	mon_cry CRY_GRIMER,      $000,  $100 ; Grimer          ; 5a
	mon_cry CRY_MUK,         $0ef,  $17f ; Muk             ; 5b
	mon_cry CRY_METAPOD,     $080,  $0e0 ; Magnemite       ; 5c
	mon_cry CRY_METAPOD,     $020,  $140 ; Magneton        ; 5d
	mon_cry CRY_METAPOD,     $020,  $140 ; Magnezone       ; 5e
	mon_cry CRY_VOLTORB,     $0ed,  $100 ; Voltorb         ; 5f
	mon_cry CRY_VOLTORB,     $0a8,  $110 ; Electrode       ; 60
	mon_cry CRY_TYROGUE,    -$051,  $0e8 ; Aipom
	mon_cry CRY_TYROGUE,    -$051,  $0e8 ; Ambipom
	mon_cry CRY_DUNSPARCE,   $112,  $0e8 ; Snubbull        ; 63
	mon_cry CRY_DUNSPARCE,   $000,  $180 ; Granbull        ; 64
	mon_cry CRY_VULPIX,      $04f,  $090 ; Vulpix          ; 65
	mon_cry CRY_VULPIX,      $088,  $0e0 ; Ninetales       ; 66
	mon_cry CRY_GROWLITHE,   $020,  $0c0 ; Growlithe       ; 67
	mon_cry CRY_WEEDLE,      $000,  $100 ; Arcanine        ; 68
	mon_cry CRY_PICHU,      -$21a,  $1f0 ; Stantler        ; 69
	mon_cry CRY_PICHU,      -$21a,  $1f0 ; Wyrdeer         ; 6a
	mon_cry CRY_MARILL,      $11b,  $120 ; Marill          ; 6b
	mon_cry CRY_MARILL,      $0b6,  $180 ; Azumarill       ; 6c
	mon_cry CRY_NIDOQUEEN,   $0dd,  $0e0 ; Mankey          ; 6d
	mon_cry CRY_NIDOQUEEN,   $0af,  $0c0 ; Primeape        ; 6e
	mon_cry CRY_NIDOQUEEN,   $0af,  $0c0 ; Annihilape      ; 6f
	mon_cry CRY_GROWLITHE,   $0ee,  $081 ; Machop          ; 70
	mon_cry CRY_GROWLITHE,   $048,  $0e0 ; Machoke         ; 71
	mon_cry CRY_GROWLITHE,   $008,  $140 ; Machamp         ; 72
	mon_cry CRY_GOLEM,       $080,  $140 ; Hitmonlee       ; 73
	mon_cry CRY_SEEL,        $0ee,  $140 ; Hitmonchan      ; 74
	mon_cry CRY_SLUGMA,      $000,  $100 ; Hitmontop       ; 75
	mon_cry CRY_GIRAFARIG,   $041,  $200 ; Girafarig       ; 76
	mon_cry CRY_GIRAFARIG,   $041,  $200 ; Farigiraf
	mon_cry CRY_SQUIRTLE,    $011,  $0c0 ; Tauros          ; 78
	mon_cry CRY_GLIGAR,     -$1cd,  $1a0 ; Miltank         ; 79
	mon_cry CRY_CHARMANDER,  $0ff,  $0b0 ; Magmar          ; 7a
	mon_cry CRY_CHARMANDER,  $0ff,  $0b0 ; Magmortar       ; 7b
	mon_cry CRY_DROWZEE,     $0ff,  $17f ; Jynx            ; 7c
	mon_cry CRY_VOLTORB,     $08f,  $17f ; Electabuzz      ; 7d
	mon_cry CRY_VOLTORB,     $08f,  $17f ; Electivire      ; 7e
	mon_cry CRY_NATU,       -$067,  $100 ; Natu            ; 80
	mon_cry CRY_NATU,       -$0a7,  $168 ; Xatu            ; 81
	mon_cry CRY_SLOWKING,    $160,  $0e0 ; Qwilfish        ; 82
	mon_cry CRY_SLOWKING,    $160,  $0e0 ; Overqwil        ; 83
	mon_cry CRY_VENONAT,     $000,  $100 ; Tentacool
	mon_cry CRY_VENONAT,     $0ee,  $17f ; Tentacruel
	mon_cry CRY_DUNSPARCE,   $290,  $0a8 ; Shuckle         ; 86
	mon_cry CRY_MAGCARGO,    $0a1,  $0e8 ; Corsola         ; 87
	mon_cry CRY_REMORAID,    $00d,  $100 ; Remoraid
	mon_cry CRY_TOTODILE,    $000,  $180 ; Octillery
	mon_cry CRY_CYNDAQUIL,   $3c9,  $140 ; Chinchou        ; 8a
	mon_cry CRY_CYNDAQUIL,   $2d0,  $110 ; Lanturn         ; 8b
	mon_cry CRY_GOLEM,       $000,  $100 ; Tangela         ; 8c
	mon_cry CRY_GOLEM,       $000,  $100 ; Tangrowth       ; 8d
	mon_cry CRY_VENONAT,     $088,  $0e0 ; Eevee           ; 8e
	mon_cry CRY_VENONAT,     $0aa,  $17f ; Vaporeon        ; 8f
	mon_cry CRY_VENONAT,     $03d,  $100 ; Jolteon         ; 90
	mon_cry CRY_VENONAT,     $010,  $0a0 ; Flareon         ; 91
	mon_cry CRY_TYROGUE,     $0a2,  $140 ; Espeon          ; 92
	mon_cry CRY_VENONAT,    -$0e9,  $0f0 ; Umbreon         ; 93
	mon_cry CRY_VENONAT,     $03d,  $160 ; Leafeon         ; 94
	mon_cry CRY_VENONAT,     $0b0,  $16f ; Glaceon         ; 95
	mon_cry CRY_VENONAT,     $0b0,  $16f ; Sylveon         ; 96
	mon_cry CRY_CLEFAIRY,    $03c,  $081 ; Seadra          ; 97
	mon_cry CRY_SLUGMA,      $2fb,  $100 ; Kingdra         ; 98
	mon_cry CRY_GLIGAR,     -$102,  $100 ; Gligar          ; 99
	mon_cry CRY_GLIGAR,     -$102,  $100 ; Gliscor         ; 9a
	mon_cry CRY_CYNDAQUIL,   $1fe,  $140 ; Swinub
	mon_cry CRY_MAGCARGO,   -$109,  $100 ; Piloswine
	mon_cry CRY_MAGCARGO,   -$109,  $100 ; Mamoswine       ; 9d
	mon_cry CRY_TEDDIURSA,   $7a2,  $06e ; Teddiursa       ; 9e
	mon_cry CRY_TEDDIURSA,   $640,  $0d8 ; Ursaring        ; 9f
	mon_cry CRY_TEDDIURSA,   $640,  $0d8 ; Ursaluna        ; a0
	mon_cry CRY_SENTRET,     $048,  $230 ; Phanpy
	mon_cry CRY_DONPHAN,     $000,  $1a0 ; Donphan
	mon_cry CRY_MANTINE,    -$0be,  $0f0 ; Mantine         ; a3
	mon_cry CRY_AMPHAROS,    $8a9,  $180 ; Skarmory        ; a4
	mon_cry CRY_WEEPINBELL,  $000,  $100 ; Ponyta          ; a5
	mon_cry CRY_WEEPINBELL,  $020,  $140 ; Rapidash        ; a6
	mon_cry CRY_CHARMANDER,  $000,  $100 ; Rhyhorn         ; a7
	mon_cry CRY_RHYDON,      $000,  $100 ; Rhydon          ; a8
	mon_cry CRY_RHYDON,      $000,  $100 ; Rhyperior       ; a9
	mon_cry CRY_MARILL,     -$01f,  $180 ; Murkrow         ; aa
	mon_cry CRY_MARILL,     -$01f,  $180 ; Honchkrow       ; ab
	mon_cry CRY_CYNDAQUIL,   $039,  $140 ; Houndour        ; ac
	mon_cry CRY_TOTODILE,   -$10a,  $100 ; Houndoom        ; ad
	mon_cry CRY_SLUGMA,     -$1d8,  $140 ; Slugma
	mon_cry CRY_MAGCARGO,   -$20d,  $1c0 ; Magcargo        ; af
	mon_cry CRY_WOOPER,      $053,  $0af ; Sneasel         ; b0
	mon_cry CRY_WOOPER,      $053,  $0af ; Weavile         ; b1
	mon_cry CRY_WOOPER,      $053,  $0af ; Sneasler        ; b2
	mon_cry CRY_HOOTHOOT,    $130,  $0e8 ; Misdreavus      ; b3
	mon_cry CRY_HOOTHOOT,    $130,  $0e8 ; Mismagius       ; b4
	mon_cry CRY_WEEPINBELL,  $0aa,  $17f ; Porygon         ; b5
	mon_cry CRY_GIRAFARIG,   $073,  $240 ; Porygon2        ; b6
	mon_cry CRY_GIRAFARIG,   $073,  $240 ; Porygon-Z       ; b7
	mon_cry CRY_PIDGEOTTO,   $00a,  $140 ; Chansey         ; b8
	mon_cry CRY_SLOWKING,    $293,  $140 ; Blissey         ; b9
	mon_cry CRY_LAPRAS,      $000,  $100 ; Lapras          ; ba
	mon_cry CRY_GRIMER,      $055,  $081 ; Snorlax         ; bb
	mon_cry CRY_CHIKORITA,  -$010,  $0b0 ; Chikorita       ; bc
	mon_cry CRY_CHIKORITA,  -$022,  $120 ; Bayleef         ; bd
	mon_cry CRY_CHIKORITA,  -$0b7,  $200 ; Meganium        ; be
	mon_cry CRY_TOTODILE,    $46c,  $0e8 ; Totodile        ; bf
	mon_cry CRY_TOTODILE,    $440,  $110 ; Croconaw        ; c0
	mon_cry CRY_TOTODILE,    $3fc,  $180 ; Feraligatr      ; c1
	mon_cry CRY_BULBASAUR,   $020,  $100 ; Grotle          ; c2
	mon_cry CRY_BULBASAUR,   $000,  $140 ; Torterra        ; c3
	mon_cry CRY_CHARMANDER,  $020,  $0c0 ; Monferno        ; c4
	mon_cry CRY_CHARMANDER,  $000,  $100 ; Infernape       ; c5
	mon_cry CRY_SQUIRTLE,    $020,  $0c0 ; Prinplup        ; c6
	mon_cry CRY_BLASTOISE,   $000,  $100 ; Empoleon        ; c7
	mon_cry CRY_DIGLETT,     $0bb,  $081 ; Staravia        ; c8
	mon_cry CRY_DIGLETT,     $099,  $0a0 ; Staraptor       ; c9
	mon_cry CRY_CLEFAIRY,    $077,  $090 ; Shinx           ; ca ok 
	mon_cry CRY_CLEFAIRY,    $077,  $090 ; Luxio           ; cb
	mon_cry CRY_CLEFAIRY,    $099,  $17f ; Luxray          ; cc
	mon_cry CRY_CLEFAIRY,    $000,  $100 ; Cranidos        ; cd ok 
	mon_cry CRY_CLEFAIRY,    $000,  $100 ; Rampardos       ; ce
	mon_cry CRY_ODDISH,      $04f,  $0e0 ; Shieldon        ; cf ok 
	mon_cry CRY_ODDISH,      $04f,  $0e0 ; Bastiodon       ; d0
	mon_cry CRY_BLASTOISE,   $060,  $100 ; Vespiquen       ; d1
	mon_cry CRY_HOOTHOOT,    $130,  $0e8 ; Drifloon        ; d2 ok 
	mon_cry CRY_HOOTHOOT,    $130,  $0e8 ; Drifblim        ; d3
	mon_cry CRY_METAPOD,     $020,  $140 ; Bronzor         ; d4
	mon_cry CRY_METAPOD,     $020,  $140 ; Bronzong        ; d5
	mon_cry CRY_HOOTHOOT,    $130,  $0e8 ; Spiritomb       ; d6
	mon_cry CRY_TYROGUE,     $02c,  $108 ; Lucario         ; d7
	mon_cry CRY_TOGEPI,      $010,  $100 ; Hippopotas      ; d8 ok 
	mon_cry CRY_TOGEPI,      $010,  $100 ; Hippowdon       ; d9
	mon_cry CRY_RATTATA,     $020,  $17f ; Croagunk        ; da ok 
	mon_cry CRY_RATTATA,     $020,  $17f ; Toxicroak       ; db
	mon_cry CRY_CYNDAQUIL,   $1fe,  $140 ; Snover          ; dc
	mon_cry CRY_CYNDAQUIL,   $1fe,  $140 ; Abomasnow       ; dd
	mon_cry CRY_METAPOD,     $000,  $100 ; Duskull         ; de 
	mon_cry CRY_METAPOD,     $000,  $100 ; Dusclops        ; df
	mon_cry CRY_METAPOD,     $000,  $100 ; Dusknoir        ; e0
	mon_cry CRY_METAPOD,     $000,  $100 ; Froslass        ; e1
	mon_cry CRY_METAPOD,     $020,  $140 ; Rotom           ; e2
	mon_cry CRY_EKANS,       $0ff,  $140 ; Bergmite        ; e3 
	mon_cry CRY_EKANS,       $0ff,  $140 ; Avalugg         ; e4
	mon_cry CRY_EKANS,       $000,  $100 ; Basculegion     ; e5
	mon_cry CRY_DIGLETT,     $099,  $0a0 ; Braviary        ; e6
	mon_cry CRY_PSYDUCK,     $020,  $0e0 ; Ralts           ; e7 
	mon_cry CRY_PSYDUCK,     $020,  $0e0 ; Kirlia          ; e8
	mon_cry CRY_PSYDUCK,     $0ff,  $0c0 ; Gardevoir       ; e9
	mon_cry CRY_PSYDUCK,     $0ff,  $0c0 ; Gallade         ; ea
	mon_cry CRY_HOOTHOOT,    $091,  $0d8 ; Goomy           ; eb 
	mon_cry CRY_HOOTHOOT,    $091,  $0d8 ; Sliggoo         ; ec
	mon_cry CRY_HOOTHOOT,    $000,  $1a0 ; Goodra          ; ed
	mon_cry CRY_NATU,       -$0a7,  $168 ; Zorua           ; ee ok 
	mon_cry CRY_NATU,       -$0a7,  $168 ; Zoroark         ; ef
	mon_cry CRY_SHELLDER,    $0ee,  $081 ; Gible           ; f0 ok 
	mon_cry CRY_SHELLDER,    $0ee,  $081 ; Gabite          ; f1
	mon_cry CRY_SHELLDER,    $0ee,  $081 ; Garchomp        ; f2
	mon_cry CRY_BULBASAUR,   $060,  $0c0 ; Dratini         ; f3
	mon_cry CRY_BULBASAUR,   $040,  $100 ; Dragonair       ; f4
	mon_cry CRY_BULBASAUR,   $03c,  $140 ; Dragonite       ; f5
	mon_cry CRY_RAIKOU,      $05f,  $0d0 ; Larvitar        ; f6
	mon_cry CRY_SPINARAK,   -$1db,  $150 ; Pupitar         ; f7
	mon_cry CRY_RAIKOU,     -$100,  $180 ; Tyranitar       ; f8
	mon_cry CRY_RAIKOU,      $22e,  $120 ; Raikou          ; f9
	mon_cry CRY_ENTEI,       $000,  $1a0 ; Entei           ; fa
	mon_cry CRY_MAGCARGO,    $000,  $180 ; Suicune         ; fb
	mon_cry CRY_ENTEI,       $000,  $1a0 ; Heatran         ; fc
	mon_cry CRY_TYPHLOSION,  $000,  $100 ; Lugia           ; fd
	mon_cry CRY_TYROGUE,     $000,  $180 ; Ho-Oh           ; fe
	mon_cry CRY_ENTEI,       $14a,  $111 ; Celebi          ; ff
	assert_table_length NUM_POKEMON
	mon_cry CRY_NIDORAN_M,      0,     0 ; Egg
	assert_table_length NUM_SPECIES
