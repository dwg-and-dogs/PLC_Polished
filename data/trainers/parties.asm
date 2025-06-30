INCLUDE "data/trainers/party_pointers.asm" 

; All trainers follow a basic structure: 
	; Name
		; String in format "TEXT@"
	; Type
		; TRAINERTYPE_NORMAL:      level, species (2 bytes)
		; TRAINERTYPE_ITEM:        item (1 byte)
		; TRAINERTYPE_EVS:         EVs (1 byte, marks the setting of all EVs)
		; TRAINERTYPE_DVS:         DVs (3 bytes)
		; TRAINERTYPE_PERSONALITY: personality (2 bytes)
		; TRAINERTYPE_NICKNAME:    nickname (max 10 bytes)
		; TRAINERTYPE_MOVES:       moves (4 bytes)
	; party
		; Up to six monsters following the data type
	; $ff

; Do not use the byte $ff in trainer data, since it's the end marker.
; That means:
; * DVs cannot be $ff -- use $00 instead (ReadTrainerParty converts it to $ff)
; * "9" cannot be used in nicknames


SECTION "Enemy Trainer Parties 1", ROMX

CarrieGroup:
; ================================
; ================

	; CARRIE
	db "Carrie@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 60, MEGANIUM, SITRUS_BERRY
		db GIGA_DRAIN, PROTECT, LEECH_SEED, TOXIC
	db 60, TYPHLOSION, QUICK_CLAW
		db SUNNY_DAY, THUNDERPUNCH, FLAMETHROWER, SUBSTITUTE
	db 60, FERALIGATR, LUM_BERRY
		db SURF, CRUNCH, ICE_PUNCH, ROCK_SLIDE
	db 60, STEELIX, CHESTO_BERRY
		db IRON_TAIL, ROCK_SLIDE, EARTHQUAKE, REST
	db 60, WEAVILE, LEFTOVERS
		db CONFUSE_RAY, CURSE, FEINT_ATTACK, PROTECT
	db 60, CLEFABLE, PINK_BOW
		db SING, HEALINGLIGHT, METRONOME, MOONBLAST
	db -1 ; end

; ================
; ================================

CalGroup:
; ================================
; ================

	; CAL
	db "Cal@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 60, TYPHLOSION, QUICK_CLAW
		db SUNNY_DAY, THUNDERPUNCH, FLAMETHROWER, SUBSTITUTE
	db 60, MEGANIUM, SITRUS_BERRY
		db GIGA_DRAIN, PROTECT, LEECH_SEED, TOXIC
	db 60, FERALIGATR, LUM_BERRY
		db SURF, CRUNCH, ICE_PUNCH, ROCK_SLIDE
	db 60, STEELIX, CHESTO_BERRY
		db IRON_TAIL, ROCK_SLIDE, EARTHQUAKE, REST
	db 60, WEAVILE, LEFTOVERS
		db CONFUSE_RAY, CURSE, FEINT_ATTACK, PROTECT
	db 60, CLEFABLE, PINK_BOW
		db SING, HEALINGLIGHT, METRONOME, MOONBLAST
	db -1 ; end

; ================
; ================================

FalknerGroup:
; ================================
; ================

	; FALKNER
	db "Falkner@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 28, MANTINE, DAMP_ROCK, FAKE_PERFECT_DVS, "Catalina@"
		db RAIN_DANCE, WATER_PULSE, HURRICANE, ROOST
	db 30, PIDGEOTTO, EVIOLITE, DVS_HP_FLYING,"Hawker@"
		db AERIAL_ACE, MUD_SLAP, ROOST, HURRICANE
	db 29, GLIGAR, NO_ITEM, FAKE_PERFECT_DVS,"Stratofor@"
		db PROTECT, AERIAL_ACE, BULLDOZE, TOXIC
	db -1 ; end

; ================
; ================================

BugsyGroup:
; ================================
; ================

	; BUGSY
	db "Bugsy@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 14, BUTTERFREE, NO_ITEM, FAKE_PERFECT_DVS, "Petra@"
		db U_TURN, POISONPOWDER, SLEEP_POWDER, CONFUSION
	db 14, BEEDRILL, NO_ITEM, FAKE_PERFECT_DVS, "Vesper@"
		db POISON_STING, STRING_SHOT, U_TURN, FURY_STRIKES
	db 14, PARASECT, NO_ITEM, DVS_HP_BUG, "Mickey@" ; GREEN 
		db SLEEP_POWDER, SLASH, ABSORB, GROWTH
	db 14, MAGCARGO, NO_ITEM, FAKE_PERFECT_DVS, "Helix@"
		db EMBER, ROCK_THROW, AMNESIA, RECOVER
	db 16, SCYTHER, SITRUS_BERRY,DVS_HP_BUG,  "Manny@"
		db QUICK_ATTACK, SWORDS_DANCE, PURSUIT, U_TURN
	db -1 ; end

; ================
; ================================

WhitneyGroup:
; ================================

	; WHITNEY
	db "Whitney@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 24, WIGGLYTUFF, SITRUS_BERRY, FAKE_PERFECT_DVS, "Resonator@"
		db ATTRACT, HYPER_VOICE, METRONOME, SING
	db 24, NIDOQUEEN, CHESTO_BERRY, FAKE_PERFECT_DVS, "BriarRose@"
		db ATTRACT, REST, BODY_SLAM, BITE
	db 24, MILTANK, LUM_BERRY, DVS_HP_PSYCHIC, "UddrDefeat@"
		db ROLLOUT, DEFENSE_CURL, FRESH_SNACK, BODY_SLAM
	db -1 ; end


; ================================

MortyGroup:
; ================================
; ================

	; MORTY
	db "Morty@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 40, HAUNTER, EVIOLITE,  FAKE_PERFECT_DVS,"HarryPoltr@"
		db SUCKER_PUNCH, ICE_PUNCH, SHADOW_CLAW, POISON_JAB
	db 42, MISMAGIUS, SITRUS_BERRY,  FAKE_PERFECT_DVS,"Melisandre@"
		db ATTRACT, NASTY_PLOT, MOONBLAST, SHADOW_BALL
	db 40, VENOMOTH, SILVERPOWDER,  FAKE_PERFECT_DVS,"BeetleJuce@"
		db SLEEP_POWDER, BUG_BUZZ, DREAM_EATER, PSYBEAM
	db 42, WYRDEER, BLACK_BELT, FAKE_PERFECT_DVS, "NecroDancr@"
		db ZEN_HEADBUTT, DOUBLE_EDGE, AGILITY, DOUBLE_KICK	
	db 44, GENGAR, WIDE_LENS,  DVS_HP_DARK,"Jung-Gar@"
		db HEX, HYPNOSIS, SHADOW_BALL, DREAM_EATER
	db -1 ; end


; ================
; ================================

ChuckGroup:
; ================================
; ================

	; CHUCK
	db "Chuck@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 42, PRIMEAPE, LIFE_ORB,  FAKE_PERFECT_DVS,"Pepped@"
		db DYNAMICPUNCH, ROCK_SLIDE, SCREECH, NO_MOVE
	db 41, GALLADE, TWISTEDSPOON,  FAKE_PERFECT_DVS,"GladAle@"
		db ZEN_HEADBUTT, KARATE_CHOP, BULK_UP, NO_MOVE
	db 41, TOXICROAK, POISON_BARB,  FAKE_PERFECT_DVS,"Karana@"
		db SLASH, SWORDS_DANCE, POISON_JAB, SUCKER_PUNCH
	db 43, POLIWRATH, MYSTIC_WATER,  DVS_HP_GRASS,"TadSwole@"
		db SURF, HYPNOSIS, DYNAMICPUNCH, BODY_SLAM
	db -1 ; end


; ================
; ================================

JasmineGroup:
; ================================
; ================

	; JASMINE
	db "Jasmine@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 40, MAGNEZONE, MAGNET, FAKE_PERFECT_DVS, "Polaris@"
		db RAIN_DANCE, THUNDER, VOLT_SWITCH, FLASH_CANNON
	db 45, STEELIX, CHOICE_BAND, DVS_HP_FIGHTING, "ShinyHulud@"
		db STONE_EDGE, EARTHQUAKE, IRON_TAIL, NO_MOVE
	db 44, SKARMORY, LEFTOVERS,  FAKE_PERFECT_DVS,"Vultron@"
		db TOXIC, ROOST, STEEL_WING, DRILL_PECK
	db 43, RHYPERIOR, CHOICE_SCARF, FAKE_PERFECT_DVS, "Wrecker@"
		db ROCK_SLIDE, EARTHQUAKE, MEGAHORN, BODY_SLAM
	db -1 ; end


; ================
; ================================

PryceGroup:
; ================================
; ================

	; PRYCE ; meal themed because why not 
	db "Pryce@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 41, CLOYSTER, FOCUS_SASH, FAKE_PERFECT_DVS, "Aperifrizo@"
		db SPIKES, EXPLOSION, HAIL, NO_MOVE
	db 42, LAPRAS, NO_ITEM,  DVS_HP_ELECTRIC,"Raspberry@"
		db CALM_MIND, THUNDER_WAVE, THUNDERBOLT, ICE_BEAM
	db 43, SNEASEL, NEVERMELTICE,  FAKE_PERFECT_DVS,"SneaSalt@"
		db SWORDS_DANCE, ICICLE_CRASH, NIGHT_SLASH, ICE_SHARD
	db 44, MAMOSWINE, SOFT_SAND,  DVS_HP_ROCK,"Baconator@"
		db ICE_SHARD, EARTHQUAKE, STOMP, ROAR
	db -1 ; end

; ================
; ================================

ClairGroup:
; ================================
; ================

	; CLAIR
	db "Clair@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 47, DRAGONAIR, EVIOLITE, DVS_HP_WATER, "GordianRa@"
		db WRAP, FIRE_BLAST, REST, THUNDER_WAVE
	db 48, GYARADOS, CHOICE_BAND, FAKE_PERFECT_DVS, "DoAGyros@"
		db EARTHQUAKE, STRENGTH, WATERFALL, FLY
	db 50, KINGDRA, CHESTO_BERRY, DVS_HP_DRAGON, "DarkGin@"
		db DRAGON_DANCE, OUTRAGE, WATERFALL, REST
	db 46, KANGASKHAN, CHOICE_SCARF, FAKE_PERFECT_DVS, "ShankKanga@"
		db SLASH, NO_MOVE, NO_MOVE, NO_MOVE
	db 50, DRAGONAIR, EVIOLITE,  DVS_HP_ICE,"RaidGroan@"
		db DRAGON_DANCE, REST, SLEEP_TALK, DRAGON_CLAW
	db -1 ; end


; ================================

KurtGroup: 
; ================================
; ================

	; KURT1 ; rowlet pikachu teddiursa cyndaquil gastly lv 9 
	db "Kurt@"
	db TRAINERTYPE_NORMAL
	; party
	db 7, ROWLET
	db 8, PIKACHU
	db 9, TEDDIURSA
	db 8, CYNDAQUIL
	db 6, GASTLY
	db -1 ; end

	; KURT2  SANDRA
	db "Kurt@"
	db TRAINERTYPE_NORMAL
	; party
	db 14, OSHAWOTT
	db 13, YANMA
	db 10, CHIKORITA
	db 12, SKIPLOOM
	db 14, SNUBBULL
	db -1 ; end

	; KURT3 WHITNEY
	db "Kurt@"
	db TRAINERTYPE_NORMAL
	; party
	db 17, CLEFAIRY
	db 15, PINSIR
	db 16, NIDORINA
	db 14, MAREEP
	db 18, SUNFLORA
	db -1 ; end
	
	; KURT4 FALKNER 
	db "Kurt@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, HITMONTOP
	db 16, MAGMAR
	db 17, DRATINI
	db 16, ELECTABUZZ
	db 21, MAGNEMITE
	db -1 ; end

	; KURT5 REI
	db "Kurt@"
	db TRAINERTYPE_NORMAL
	; party
	db 18, STANTLER
	db 21, GROWLITHE
	db 21, POLIWHIRL
	db 20, DUGTRIO
	db 24, GRIMER
	db -1 ; end

	; KURT6 SAMSARA
	db "Kurt@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, EEVEE
	db 21, SKARMORY
	db 23, MISDREAVUS
	db 22, DUNSPARCE
	db 25, TOGETIC
	db -1 ; end

	; KURT7 BARBEAU 
	db "Kurt@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, GROTLE
	db 29, GLIGAR
	db 27, GIRAFARIG
	db 25, TAUROS
	db 29, SLOWPOKE
	db -1 ; end
	
	; KURT8 ; JASMINE
	db "Kurt@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, PERSIAN
	db 27, FROSLASS
	db 27, DRIFBLIM
	db 30, SEADRA
	db 33, SHUCKLE
	db -1 ; end
	
	; KURT9 ; PRYCE
	db "Kurt@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, TAUROS
	db 36, HOUNDOUR
	db 33, MILTANK
	db 34, MUK
	db 36, CORSOLA
	db -1 ; end

	; KURT10 ; SINJOH
	db "Kurt@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, DONPHAN
	db 37, AZUMARILL
	db 33, BASTIODON
	db 35, LOPUNNY
	db 40, KIRLIA
	db -1 ; end

	; KURT11 ; AMOS
	db "Kurt@"
	db TRAINERTYPE_NORMAL
	; party
	db 35, STARAVIA
	db 38, DRAPION
	db 43, ROSELIA
	db 40, LUCARIO
	db 43, H__BRAVIARY
	db -1 ; end
	
	; KURT12 ; whispering WAY 
	db "Kurt@"
	db TRAINERTYPE_NORMAL
	; party
	db 46, NIDOKING
	db 44, NIDOQUEEN
	db 44, YANMEGA
	db 45, URSARING
	db 46, SNORLAX
	db -1 ; end
	
	; KURT13 ; TIN TOWER, final battle 
	db "Kurt@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 57, HERACROSS, SCOPE_LENS, FAKE_PERFECT_DVS, "Ohmu@" ; nausicaa  ; hp bug 
		db MEGAHORN, SWORDS_DANCE, CLOSE_COMBAT, EARTHQUAKE
	db 56, UMBREON, LEFTOVERS, DVS_HP_DARK, "Howl@" ; moving castle  ; hp dark 
		db RECOVER, CURSE, SUCKER_PUNCH, TOXIC
	db 57, URSALUNA, FLAME_ORB, FAKE_PERFECT_DVS, "Okkoto@" ; mononoke  ; hp fire 
		db EARTHQUAKE, FACADE, REST, SLEEP_TALK
	db 58, WYRDEER, WIDE_LENS, FAKE_PERFECT_DVS, "Yubaba@" ; spirited away  ; hp psychic? 
		db HYPNOSIS, ZEN_HEADBUTT, HI_JUMP_KICK, BODY_SLAM
	db 59, KLEAVOR, HARD_STONE, DVS_HP_ROCK, "Piccolo@" ; porco rosso ; hp fighting 
		db ROCK_SLIDE, X_SCISSOR, QUICK_ATTACK, SWORDS_DANCE
	db 60, CELEBI, LEFTOVERS, FAKE_PERFECT_DVS, "@" ; no nickname?
		db CALM_MIND, PSYCHIC_M, ENERGY_BALL, RECOVER
	db -1 ; end

; ================
; ================================

MejimiGroup:
; ================================
; ================

	; MEJIMI ; TODO BETTER NICKNAMES 
	db "Urgaust@" ; fka mejimi 
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 60, LUGIA, NO_ITEM, DVS_HP_DARK, "Tsukitori@"
		db ROOST, AEROBLAST, WHIRLPOOL, SURF
	db 55, NIDOKING, POISON_BARB, FAKE_PERFECT_DVS, "Seigidoku@"
		db SLUDGE_BOMB, EARTHQUAKE, POISON_JAB, THUNDER		
	db 55, SKARMORY, LEFTOVERS, FAKE_PERFECT_DVS, "Youkiri@"
		db DRILL_PECK, IRON_HEAD, CURSE, ROOST
	db 56, DRAGONITE, LIFE_ORB, DVS_HP_FLYING, "Mahoryu@"
		db OUTRAGE, WATERFALL, FLY, ROOST
	db 57, SCIZOR, METAL_COAT, DVS_HP_BUG, "Tetsukai@"
		db BULLET_PUNCH, SWORDS_DANCE, X_SCISSOR, IRON_HEAD
	db 60, HO_OH, SITRUS_BERRY, DVS_HP_FIRE, "Akatori@"
		db ROOST, SACRED_FIRE, EARTHQUAKE, THUNDER
	db -1 ; end

; ================
; ================================

BrunoGroup:
; ================================
; ================

	; BRUNO ; unused 
	db "Bruno@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS |  TRAINERTYPE_MOVES
	; party
	db 51, HITMONTOP, QUICK_CLAW, 176
		db PURSUIT, CLOSE_COMBAT, DIG, PROTECT
	db -1 ; end


; ================================

SandraGroup:
; ================================
; ================

	; Sandra 
	db "Sandra@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 18, WIGGLYTUFF, NO_ITEM, DVS_HP_PSYCHIC, "Crescendo@"
		db COUNTER, SING, ROLLOUT, HYPER_VOICE
	db 19, TOGETIC, NO_ITEM, DVS_HP_FLYING, "Clutch@"
		db ROOST, DRAIN_KISS, EXTRASENSORY, METRONOME
	db 20, GRANBULL, NO_ITEM, FAKE_PERFECT_DVS, "Rusty@"
		db PLAY_ROUGH, BITE, SCARY_FACE, SCREECH
	db 20, CLEFAIRY, NO_ITEM, DVS_HP_ELECTRIC, "Supernova@"
		db MOONBLAST, THUNDER_WAVE, ENCORE, TRI_ATTACK
	db -1 ; end

; ================
	; Sandra ; at the rebel's redoubt 
	db "Sandra@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 48, WIGGLYTUFF, NO_ITEM, DVS_HP_PSYCHIC, "Crescendo@"
		db COUNTER, BLIZZARD, FIRE_BLAST, HYPER_VOICE
	db 49, TOGEKISS, NO_ITEM,DVS_HP_FLYING,  "Clutch@"
		db ROOST, AIR_SLASH, EXTRASENSORY, METRONOME
	db 50, GRANBULL, NO_ITEM, FAKE_PERFECT_DVS, "Rusty@"
		db PLAY_ROUGH, CRUNCH, BODY_SLAM, SCREECH
	db 50, CLEFABLE, NO_ITEM,DVS_HP_ELECTRIC,  "Supernova@"
		db MOONBLAST, THUNDERBOLT, CALM_MIND, TRI_ATTACK
	db -1 ; end

; ================

; ================================

ChampionGroup:
; ================================
; ================

	; CHAMPION ; unused 
	db "Lance@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 57, GYARADOS, MUSCLE_BAND, 208, ABIL_GYARADOS_INTIMIDATE | NAT_SPD_UP_SATK_DOWN, MALE
		db DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	db -1 ; end

; ================================

BrockGroup:
; ================================
; ================

	; BROCK unused 
	db "Brock@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 64, GOLEM, NO_ITEM, 224
		db DEFENSE_CURL, ROLLOUT, ROCK_SLIDE, EARTHQUAKE
	db -1 ; end


; ================================

SamsaraGroup:
; ================================
; ================

	; Samsara renamed to vespera 
	db "Vespera@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 31, STANTLER, ZOOM_LENS,FAKE_PERFECT_DVS, "Pallbearer@"
		db HI_JUMP_KICK, HYPNOSIS, STOMP, U_TURN
	db 28, GENGAR, LUM_BERRY, FAKE_PERFECT_DVS,"Te No Me@"
		db SHADOW_CLAW, DESTINY_BOND, MEAN_LOOK, SUCKER_PUNCH
	db 29, MISMAGIUS, SITRUS_BERRY,DVS_HP_ELECTRIC, "Sabrina@"
		db THUNDER_WAVE, PSYCHIC_M, SHADOW_BALL, HEX
	db 29, DUSKNOIR, LEFTOVERS,FAKE_PERFECT_DVS, "Yamaduta@"
		db SHADOW_CLAW, WILL_O_WISP, CURSE, PAIN_SPLIT
	db 36, H__TYPHLOSION, SPELL_TAG,FAKE_PERFECT_DVS, "Charon@"
		db FLAME_CHARGE, SHADOW_BALL, SWIFT, CALM_MIND
	db -1 ; end


; ================================

LtSurgeGroup:
; ================================
; ================

	; LT_SURGE unused
	db "Lt.Surge@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 58, ELECTABUZZ, EVIOLITE, 144
		db QUICK_ATTACK, THUNDERPUNCH, LIGHT_SCREEN, WILD_CHARGE
	db -1 ; end

; ================================

ErikaGroup:
; ================================
; ================

	; ERIKA unused 
	db "Erika@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 65, BELLOSSOM, SITRUS_BERRY, 192
		db SUNNY_DAY, HEALINGLIGHT, PETAL_DANCE, SOLAR_BEAM
	db -1 ; end

; ================================

JanineGroup:
; ================================
; ================

	; JANINE unused
	db "Janine@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 64, CROBAT, NO_ITEM, 208
		db SCREECH, TOXIC, CONFUSE_RAY, AERIAL_ACE
	db -1 ; end

; ================================

SabrinaGroup:
; ================================
; ================

	; SABRINA unused 
	db "Sabrina@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 61, ESPEON, NO_ITEM, 160
		db MUD_SLAP, QUICK_ATTACK, SWIFT, PSYCHIC_M
	db -1 ; end

; ================================

HollisGroup:
; ================================
; ================

	; Hollis 
	db "Hollis@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 13, LEDIAN, NO_ITEM, DVS_HP_BUG, "Tinnire@"
		db AIR_SLASH, SUPERSONIC, FURY_STRIKES, BUG_BITE
	db 13, SLOWPOKE, NO_ITEM, FAKE_PERFECT_DVS, "Speleo@"
		db CURSE, WATER_GUN, RAIN_DANCE, REST
	db 13, ARIADOS, NO_ITEM, DVS_HP_GHOST, "Inoscula@"
		db SCARY_FACE, POISON_STING, BUG_BITE, BATON_PASS
	db 14, KLEAVOR, METAL_COAT,FAKE_PERFECT_DVS,  "Logsidian@"
		db CUT, FOCUS_ENERGY, AGILITY, LEER
	db -1 ; end

	; Hollis  at the redoubt 
	db "Hollis@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 48, LEDIAN, NO_ITEM,  DVS_HP_BUG, "Tinnire@"
		db AIR_SLASH, CLOSE_COMBAT, X_SCISSOR, BUG_BITE
	db 46, SLOWBRO, NO_ITEM, FAKE_PERFECT_DVS, "Speleo@"
		db SHELL_SMASH, SURF, HEADBUTT, PSYCHIC_M
	db 48, ARIADOS, WIDE_LENS,DVS_HP_GHOST,  "Inoscula@"
		db HYPNOSIS, DREAM_EATER, GIGA_DRAIN, SCARY_FACE
	db 48, KLEAVOR, SILVERPOWDER, FAKE_PERFECT_DVS, "Logsidian@"
		db ROCK_SLIDE, AGILITY, X_SCISSOR, SWORDS_DANCE
	db -1 ; end

; ================
; ================================

BlueGroup:
; ================================
; ================

	; BLUE unused
	db "Blue@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 68, EXEGGUTOR, ROOM_SERVICE
		db PSYCHIC_M, LEECH_SEED, TRICK_ROOM, GIGA_DRAIN
	db -1 ; end


; ================
; ================================

RedGroup:
; ================================
; ================

	; RED unused
	db "Red@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 90, PIKACHU, LIGHT_BALL, ABIL_PIKACHU_STATIC | NAT_SPD_UP_SDEF_DOWN, MALE
		db THUNDERBOLT, SURF, IRON_TAIL, WILD_CHARGE
	db 84, ESPEON, TWISTEDSPOON, ABIL_ESPEON_MAGIC_BOUNCE | NAT_SATK_UP_ATK_DOWN, MALE
		db PSYCHIC_M, HEALINGLIGHT, REFLECT, SHADOW_BALL
	db 85, SNORLAX, LEFTOVERS, ABIL_SNORLAX_IMMUNITY | NAT_ATK_UP_SATK_DOWN, MALE
		db CURSE, REST, SLEEP_TALK, RETURN
	db 87, GYARADOS, QUICK_CLAW, SHINY_MASK | ABIL_GYARADOS_MOXIE | NAT_ATK_UP_SATK_DOWN, MALE
		db DRAGON_DANCE, WATERFALL, EARTHQUAKE, CRUNCH
	db -1 ; end

; ================
; ================================

LeafGroup:
; ================================
; ================

	; LEAF unused
	db "Green@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 96, LAPRAS, LEFTOVERS, FAKE_PERFECT_DVS, ABIL_LAPRAS_SHELL_ARMOR | NAT_SATK_UP_ATK_DOWN, FEMALE
		db ICE_BEAM, THUNDERBOLT, REST, SLEEP_TALK
	db 95, SYLVEON, BRIGHTPOWDER, FAKE_PERFECT_DVS, ABIL_SYLVEON_PIXILATE | NAT_SATK_UP_ATK_DOWN, FEMALE
		db MOONBLAST, LIGHT_SCREEN, CALM_MIND, HYPER_VOICE
	db -1 ; end

; ================
; ================================

Rival0Group:
; ================================
; ================

	; RIVAL0 1
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM
	; party
	db 5, ROWLET, NO_ITEM
	db -1 ; end

; ================

	; RIVAL0 2
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM
	; party
	db 5, CYNDAQUIL, NO_ITEM
	db -1 ; end

; ================

	; RIVAL0 3
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM
	; party
	db 5, OSHAWOTT, NO_ITEM
	db -1 ; end

; ================
; ================================

Rival1Group:
; ================================
; ================

	; RIVAL1 1 ; shrine
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS
	; party
	db 10, GROWLITHE, NO_ITEM, 16
	db 11, MURKROW, NO_ITEM, 16
	db 12, ROWLET, ORAN_BERRY, 16
	db -1 ; end

; ================

	; RIVAL1 2 shrine
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS
	; party
	db 10, SLOWPOKE, NO_ITEM, 16
	db 11, YANMA, NO_ITEM, 16
	db 12, QUILAVA, ORAN_BERRY, 16
	db -1 ; end

; ================

	; RIVAL1 3 shrine
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS
	; party
	db 10, TANGELA, NO_ITEM, 16
	db  8, TOGETIC, NO_ITEM, 16
	db 12, OSHAWOTT, ORAN_BERRY, 16
	db -1 ; end

; ================

	; RIVAL1 4 radio tower
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 20, SLOWPOKE, NO_ITEM, 16
		db CURSE, HEADBUTT, WATER_GUN, DISABLE
	db 21, GROWLITHE, NO_ITEM, 16
		db DOUBLE_KICK, EMBER, LEER, SAFEGUARD
	db 21, MURKROW, NO_ITEM, 16
		db NIGHT_SHADE, WING_ATTACK, PURSUIT, HAZE
	db 17, EEVEE, NO_ITEM, 16
		db BITE, QUICK_ATTACK, LEER, SWIFT
	db 23, DARTRIX, MIRACLE_SEED, 16
		db WING_ATTACK, ENERGY_BALL, ROOST, NIGHT_SHADE
	db -1 ; end

; ================

	; RIVAL1 5 radiotower
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 20, TANGELA, NO_ITEM, 16
		db SLEEP_POWDER, GROWTH, MEGA_DRAIN, POISONPOWDER
	db 21, SLOWPOKE, NO_ITEM, 16
		db CURSE, HEADBUTT, WATER_GUN, DISABLE
	db 21, YANMA, NO_ITEM, 16
		db SONIC_BOOM, DOUBLE_TEAM, PROTECT, BUG_BITE
	db 17, EEVEE, NO_ITEM, 16
		db BITE, QUICK_ATTACK, LEER, SWIFT
	db 23, QUILAVA, CHARCOAL, 16
		db FLAME_CHARGE, SMOKESCREEN, DIG, QUICK_ATTACK
	db -1 ; end

; ================

	; RIVAL1 ; 6 if you took CYNDAQUIL 6 radio tower
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 20, GROWLITHE, NO_ITEM, 16
		db DOUBLE_KICK, EMBER, LEER, SAFEGUARD
	db 21, TANGELA, NO_ITEM, 16
		db SLEEP_POWDER, GROWTH, MEGA_DRAIN, POISONPOWDER
	db 21, TOGETIC, NO_ITEM, 16
		db DIZZY_PUNCH, ENCORE, DISARM_VOICE, CHARM
	db 17, EEVEE, NO_ITEM, 16
		db BITE, QUICK_ATTACK, LEER, SWIFT
	db 23, DEWOTT, ORAN_BERRY, 32
		db LEER, RAGE, WATER_GUN, BITE
	db -1 ; end

; ================

	; RIVAL1 7 ; lighthouse
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 37, ARCANINE, NO_ITEM, 40
		db FLAME_CHARGE, BITE, ROAR, DOUBLE_KICK
	db 33, SLOWPOKE, NO_ITEM, 40
		db WATER_PULSE, PSYBEAM, CURSE, THUNDER_WAVE
	db 37, HONCHKROW, NO_ITEM, 40
		db DRILL_PECK, DARK_PULSE, ROOST, WHIRLPOOL
	db 38, MUK, NO_ITEM, 40
		db SLUDGE_BOMB, CURSE, ROCK_SMASH, PROTECT
	db 37, SYLVEON, SITRUS_BERRY, 40
		db DRAIN_KISS, CALM_MIND, SHADOW_BALL, CHARM
	db 40, DECIDUEYE, LUM_BERRY, 40
		db PETAL_DANCE, AIR_SLASH, ROOST, NIGHT_SHADE
	db -1 ; end

; ================

	; RIVAL1 8 lighthouse
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 37, SLOWBRO, NO_ITEM, 40
		db SURF, PSYCHIC_M, REST, SLEEP_TALK
	db 33, TANGELA, NO_ITEM, 40
		db RAZOR_LEAF, POISONPOWDER, PROTECT, GIGA_DRAIN
	db 37, YANMEGA, NO_ITEM, 40
		db BUG_BUZZ, AIR_SLASH, ANCIENTPOWER, NO_MOVE
	db 38, GRAVELER, NO_ITEM, 40
		db MAGNITUDE, ROCK_BLAST, BODY_SLAM, NO_MOVE
	db 37, GLACEON, SITRUS_BERRY, 40
		db ICY_WIND, MIRROR_COAT, SHADOW_BALL, BARRIER
	db 40, TYPHLOSION, SITRUS_BERRY, 40
		db SMOKESCREEN, FLAMETHROWER, DIG, SWIFT
	db -1 ; end

; ================

	; RIVAL1 9 lighthouse
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 37, TANGROWTH, NO_ITEM, 40
		db RAZOR_LEAF, TOXIC, PROTECT, ROCK_SLIDE	
	db 33, GROWLITHE, NO_ITEM, 40
		db FLAMETHROWER, DOUBLE_KICK, BITE, ROAR
	db 37, TOGETIC, NO_ITEM, 40
		db THUNDER_WAVE, AIR_SLASH, CHARM, METRONOME
	db 38, PILOSWINE, NO_ITEM, 40
		db MAGNITUDE, ICE_SHARD, BODY_SLAM, FURY_STRIKES
	db 37, ESPEON, SITRUS_BERRY, 40
		db PSYBEAM, CALM_MIND, SHADOW_BALL, MUD_SLAP
	db 40, SAMUROTT, SITRUS_BERRY, 40
		db SLASH, SURF, CRUNCH, NIGHT_SLASH
	db -1 ; end

; ================

	; RIVAL1 10 lake max level 46 
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 40, ARCANINE, NO_ITEM, 40
		db FLAME_CHARGE, CRUNCH, ROAR, EXTREMESPEED
	db 42, SLOWBRO, NO_ITEM, 40
		db SLEEP_TALK, ZEN_HEADBUTT, REST, THUNDER_WAVE
	db 43, HONCHKROW, FOCUS_BAND, 40
		db DRILL_PECK, DARK_PULSE, ROOST, WHIRLPOOL
	db 44, MUK, NO_ITEM, 40
		db SLUDGE_BOMB, PROTECT, FIRE_BLAST, TOXIC
	db 43, SYLVEON, SITRUS_BERRY, 40
		db MOONBLAST, CALM_MIND, SHADOW_BALL, CHARM
	db 46, DECIDUEYE, LUM_BERRY, 40
		db PETAL_DANCE, AIR_SLASH, ROOST, NIGHT_SHADE
	db -1 ; end

; ================

	; RIVAL1 lake 11 lake max level 46 
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 40, SLOWBRO, NO_ITEM, 40
		db SLEEP_TALK, ZEN_HEADBUTT, REST, THUNDER_WAVE
	db 42, TANGROWTH, NO_ITEM, 40
		db ROCK_SLIDE, SLEEP_POWDER, BODY_SLAM, GIGA_DRAIN
	db 43, YANMEGA, NO_ITEM, 40
		db BUG_BUZZ, AIR_SLASH, ANCIENTPOWER, GIGA_DRAIN
	db 44, GOLEM, FOCUS_BAND, 40
		db EARTHQUAKE, ROCK_SLIDE, BODY_SLAM, EXPLOSION
	db 43, GLACEON, SITRUS_BERRY, 40
		db ICY_WIND, MIRROR_COAT, SHADOW_BALL, BARRIER
	db 46, TYPHLOSION, SITRUS_BERRY, 40
		db THUNDERPUNCH, FLAMETHROWER, EARTH_POWER, FIRE_BLAST
	db -1 ; end

; ================

	; RIVAL1 lake 12 lake max level 46 
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 40, TANGROWTH, NO_ITEM, 40
		db ROCK_SLIDE, SLEEP_POWDER, BODY_SLAM, GIGA_DRAIN
	db 42, ARCANINE, NO_ITEM, 40
		db FLAME_CHARGE, CRUNCH, ROAR, EXTREMESPEED
	db 43, TOGEKISS, NO_ITEM, 40
		db THUNDER_WAVE, AIR_SLASH, CHARM, MOONBLAST
	db 44, MAMOSWINE, FOCUS_BAND, 40
		db EARTHQUAKE, ICE_SHARD, BODY_SLAM, BLIZZARD
	db 43, ESPEON, SITRUS_BERRY, 40
		db PSYCHIC_M, CALM_MIND, SHADOW_BALL, SWIFT
	db 46, SAMUROTT, SITRUS_BERRY, 40
		db AQUA_JET, AQUA_TAIL, CRUNCH, SWORDS_DANCE
	db -1 ; end

; ================

	; RIVAL1 13 theatre
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 27, SLOWPOKE, NO_ITEM, 16
		db CURSE, HEADBUTT, WATER_PULSE, DISABLE
	db 26, GROWLITHE, NO_ITEM, 16
		db DOUBLE_KICK, EMBER, LEER, BITE
	db 28, MURKROW, NO_ITEM, 16
		db NIGHT_SHADE, WING_ATTACK, PURSUIT, HAZE
	db 23, EEVEE, NO_ITEM, 16
		db BITE, QUICK_ATTACK, LEER, SWIFT
	db 29, DARTRIX, MIRACLE_SEED, 16
		db WING_ATTACK, ENERGY_BALL, ROOST, NIGHT_SHADE
	db -1 ; end

; ================

	; RIVAL1 14 theatre
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 26, TANGELA, NO_ITEM, 16
		db SLEEP_POWDER, GROWTH, MEGA_DRAIN, POISONPOWDER
	db 27, SLOWPOKE, NO_ITEM, 16
		db CURSE, HEADBUTT, WATER_PULSE, DISABLE
	db 27, YANMA, NO_ITEM, 16
		db SONIC_BOOM, DOUBLE_TEAM, PROTECT, AIR_SLASH
	db 23, EEVEE, NO_ITEM, 16
		db BITE, QUICK_ATTACK, LEER, SWIFT
	db 29, QUILAVA, CHARCOAL, 16
		db FLAME_CHARGE, SMOKESCREEN, DIG, QUICK_ATTACK
	db -1 ; end

; ================

	; RIVAL1 ; 15 theatre
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 26, GROWLITHE, NO_ITEM, 16
		db DOUBLE_KICK, EMBER, LEER, BITE
	db 27, TANGELA, NO_ITEM, 16
		db SLEEP_POWDER, GROWTH, MEGA_DRAIN, POISONPOWDER
	db 27, TOGETIC, NO_ITEM, 16
		db AIR_SLASH, ENCORE, THUNDER_WAVE, CHARM
	db 23, EEVEE, NO_ITEM, 16
		db BITE, QUICK_ATTACK, LEER, SWIFT
	db 29, DEWOTT, ORAN_BERRY, 32
		db AQUA_JET, BULK_UP, KARATE_CHOP, BITE
	db -1 ; end

; ================

; ================================

Rival2Group:
; ================================
; ================

	; RIVAL2
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 61, WEAVILE, KINGS_ROCK, 228
		db SWORDS_DANCE, ICE_PUNCH, SLASH, CRUNCH
	db 62, GOLBAT, EVIOLITE, 228
		db POISON_JAB, SUPER_FANG, CONFUSE_RAY, AERIAL_ACE
	db 61, MAGNEZONE, MAGNET, 228
		db TRI_ATTACK, ZAP_CANNON, THUNDER_WAVE, FLASH_CANNON
	db 63, GENGAR, SPELL_TAG, 228
		db MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 63, ALAKAZAM, BRIGHTPOWDER, 228
		db DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 65, MEGANIUM, MIRACLE_SEED, 228
		db SEED_BOMB, POISONPOWDER, BODY_SLAM, LIGHT_SCREEN
	db -1 ; end

; ================

	; RIVAL2
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 61, WEAVILE, KINGS_ROCK, 228
		db SWORDS_DANCE, ICE_PUNCH, SLASH, CRUNCH
	db 62, GOLBAT, EVIOLITE, 228
		db POISON_JAB, SUPER_FANG, CONFUSE_RAY, AERIAL_ACE
	db 61, MAGNEZONE, MAGNET, 228
		db TRI_ATTACK, ZAP_CANNON, THUNDER_WAVE, FLASH_CANNON
	db 63, GENGAR, SPELL_TAG, 228
		db MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 63, ALAKAZAM, BRIGHTPOWDER, 228
		db DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 65, TYPHLOSION, CHARCOAL, 228
		db FLAMETHROWER, EARTH_POWER, THUNDERPUNCH, SMOKESCREEN
	db -1 ; end

; ================

	; RIVAL2
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 61, WEAVILE, KINGS_ROCK, 228
		db SWORDS_DANCE, ICE_PUNCH, SLASH, CRUNCH
	db 62, GOLBAT, EVIOLITE, 228
		db POISON_JAB, SUPER_FANG, CONFUSE_RAY, AERIAL_ACE
	db 61, MAGNEZONE, MAGNET, 228
		db TRI_ATTACK, ZAP_CANNON, THUNDER_WAVE, FLASH_CANNON
	db 63, GENGAR, SPELL_TAG, 228
		db MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 63, ALAKAZAM, BRIGHTPOWDER, 228
		db DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 65, FERALIGATR, MYSTIC_WATER, 228
		db WATERFALL, CRUNCH, SLASH, SCARY_FACE
	db -1 ; end

; ================

	; RIVAL2
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 68, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE, ICE_PUNCH, SLASH, CRUNCH
	db 69, CROBAT, POISON_BARB
		db POISON_JAB, CRUNCH, CONFUSE_RAY, TOXIC
	db 68, MAGNEZONE, MAGNET
		db THUNDERBOLT, TRI_ATTACK, THUNDER_WAVE, FLASH_CANNON
	db 70, GENGAR, SPELL_TAG
		db THUNDERBOLT, FOCUS_BLAST, SHADOW_BALL, CONFUSE_RAY
	db 70, ALAKAZAM, BRIGHTPOWDER
		db RECOVER, TRI_ATTACK, PSYCHIC_M, REFLECT
	db 72, MEGANIUM, LEFTOVERS
		db PETAL_DANCE, MOONBLAST, LIGHT_SCREEN, ANCIENTPOWER
	db -1 ; end

; ================

	; RIVAL2
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 68, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE, ICE_PUNCH, SLASH, CRUNCH
	db 69, CROBAT, POISON_BARB
		db POISON_JAB, CRUNCH, CONFUSE_RAY, TOXIC
	db 68, MAGNEZONE, MAGNET
		db THUNDERBOLT, TRI_ATTACK, THUNDER_WAVE, FLASH_CANNON
	db 70, GENGAR, SPELL_TAG
		db THUNDERBOLT, FOCUS_BLAST, SHADOW_BALL, CONFUSE_RAY
	db 70, ALAKAZAM, BRIGHTPOWDER
		db RECOVER, TRI_ATTACK, PSYCHIC_M, REFLECT
	db 72, TYPHLOSION, LEFTOVERS
		db FIRE_BLAST, FOCUS_BLAST, EARTH_POWER, SMOKESCREEN
	db -1 ; end

; ================

	; RIVAL2
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 68, WEAVILE, KINGS_ROCK
		db SWORDS_DANCE, ICE_PUNCH, SLASH, CRUNCH
	db 69, CROBAT, POISON_BARB
		db POISON_JAB, CRUNCH, CONFUSE_RAY, TOXIC
	db 68, MAGNEZONE, MAGNET
		db THUNDERBOLT, TRI_ATTACK, THUNDER_WAVE, FLASH_CANNON
	db 70, GENGAR, SPELL_TAG
		db THUNDERBOLT, FOCUS_BLAST, SHADOW_BALL, CONFUSE_RAY
	db 70, ALAKAZAM, BRIGHTPOWDER
		db RECOVER, TRI_ATTACK, PSYCHIC_M, REFLECT
	db 72, FERALIGATR, LEFTOVERS
		db SURF, CRUNCH, SLASH, OUTRAGE
	db -1 ; end

; ================
; ================================

NinjaGroup:
; ================================
; ================

	; NINJA1
	db "Shadow@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, DUSCLOPS
	db 45, DUSKNOIR
	db -1 ; end


; ================

	; NINJA2
	db "Mist@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, QWILFISH
	db 44, TENTACRUEL
	db 45, OVERQWIL
	db -1 ; end


; ================

	; ninja3
	db "Twilight@"
	db TRAINERTYPE_NORMAL
	; party
	db 45, WYRDEER
	db 46, LUCARIO
	db -1 ; end


; ================

	; ninnja4
	db "Shimmer@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, DRAPION
	db 45, SNEASLER
	db 43, SKUNTANK
	db -1 ; end


; ================

	; ninja5
	db "Echo@"
	db TRAINERTYPE_NORMAL
	; party
	db 44, TOXICROAK
	db 47, UMBREON
	db -1 ; end


; ================

	; ninja6
	db "Dusk@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, GLOOM
	db 42, ROSERADE
	db 46, VILEPLUME
	db -1 ; end


; ================

	; ninja7
	db "Veil@"
	db TRAINERTYPE_NORMAL
	; party
	db 48, MISMAGIUS
	db -1 ; end

; ================

	; ninja8
	db "Shade@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, MISDREAVUS
	db 42, XATU
	db 46, ARIADOS
	db -1 ; end

; ================

	; ninja9
	db "Haze@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, HAUNTER
	db 44, ESPEON
	db 44, GENGAR
	db -1 ; end

; ================

	; ninja10
	db "Wraith@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, MUK
	db 42, JYNX
	db 46, VILEPLUME
	db -1 ; end

; ================

	; ninja11
	db "Vapor@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, GOLBAT
	db 47, VENOMOTH
	db 47, CROBAT
	db -1 ; end

; ================

	; ninja12
	db "Mirage@"
	db TRAINERTYPE_NORMAL
	; party
	db 45, MUK
	db 45, WEEZING
	db 45, JYNX
	db -1 ; end

; ================
; ================================

Lyra2Group:
; ================================
; ================

	; LYRA2
	db "Lyra@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_NICKNAME
	; party
	db 69, PIDGEOT, NO_ITEM, "@"
	db 70, ARCANINE, NO_ITEM, "@"
	db 70, AZUMARILL, NO_ITEM, "@"
	db 71, AMPHAROS, NO_ITEM, "@"
	db 68, GIRAFARIG, NO_ITEM, "@"
	db 72, MEGANIUM, SITRUS_BERRY, "Chicory@"
	db -1 ; end


; ================
; ================================

YoungsterGroup:
; ================================
; ================

	; YOUNGSTER
	db "Joey@" 
	db TRAINERTYPE_ITEM | TRAINERTYPE_NICKNAME
	; party
	db 4, TEDDIURSA, NO_ITEM, "@"
	db 4, MEOWTH, NO_ITEM, "@"
	db -1 ; end

; ================

	; YOUNGSTER
	db "Mikey@"
	db TRAINERTYPE_NORMAL
	; party
	db 5, EKANS
	db 5, PIDGEY
	db -1 ; end

; ================

	; YOUNGSTER
	db "Albert@" ; ROUTE 32
	db TRAINERTYPE_NORMAL
	; party
	db 24, FURRET
	db 24, GOLBAT
	db -1 ; end

; ================

	; YOUNGSTER
	db "Gordon@" ; ROUTE 32
	db TRAINERTYPE_NORMAL
	; party
	db 20, BAYLEEF
	db 20, QUILAVA
	db 20, CROCONAW
	db -1 ; end

; ================

	; YOUNGSTER ; CALM COAST 
	db "Warren@"
	db TRAINERTYPE_NORMAL
	; party
	db 10, TANGELA
	db 11, MAREEP
	db 12, NATU
	db -1 ; end

; ================

	; YOUNGSTER CALM COAST 
	db "Jimmy@"
	db TRAINERTYPE_NORMAL
	; party
	db 10, CYNDAQUIL
	db 10, EKANS
	db 12, DIGLETT
	db -1 ; end

; ================

	; YOUNGSTER
	db "Owen@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, GROWLITHE
	db 54, GROWLITHE
	db -1 ; end

; ================

	; YOUNGSTER
	db "Jason@"
	db TRAINERTYPE_NORMAL
	; party
	db 55, DUGTRIO
	db 55, CROBAT
	db -1 ; end

; ================

	; YOUNGSTER
	db "Josh@"
	db TRAINERTYPE_NORMAL
	; party
	db 60, FURRET
	db 62, GOLBAT
	db 60, FURRET
	db -1 ; end

; ================

	; YOUNGSTER
	db "Regis@"
	db TRAINERTYPE_NORMAL
	; party
	db 58, GOLBAT
	db 58, ELECTRODE
	db -1 ; end

; ================

	; YOUNGSTER
	db "Alfie@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, DUGTRIO
	db 55, QUAGSIRE
	db -1 ; end

; ================

	; YOUNGSTER
	db "Oliver@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, GOLBAT
	db 54, FURRET
	db -1 ; end

; ================

	; YOUNGSTER
	db "Chaz@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, DIGLETT
	db 55, FURRET
	db -1 ; end

; ================

	; YOUNGSTER
	db "Tyler@"
	db TRAINERTYPE_NORMAL
	; party
	db 58, WEEPINBELL
	db 59, QUAGSIRE
	db 58, DUGTRIO
	db -1 ; end

; ================
; ================================

BugCatcherGroup:
; ================================
; ================

	; BUG_CATCHER
	db "Wade@"
	db TRAINERTYPE_NORMAL
	; party
	db 4, VENONAT
	db 4, PARAS
	db -1 ; end

; ================

	; BUG_CATCHER
	db "Arnie@"
	db TRAINERTYPE_NORMAL
	; party
	db 5, YANMA
	db 5, PARAS	
	db -1 ; end

; ================


	; BUG_CATCHER
	db "Don@"
	db TRAINERTYPE_NORMAL
	; party
	db 10, BEEDRILL
	db 10, BUTTERFREE
	db -1 ; end

; ================

	; BUG_CATCHER
	db "Benny@"
	db TRAINERTYPE_NORMAL
	; party
	db 9, VENONAT
	db 10, VENONAT
	db 11, VENONAT
	db -1 ; end

; ================

	; BUG_CATCHER
	db "Scott@"
	db TRAINERTYPE_NORMAL
	; party
	db 12, VENOMOTH
	db -1 ; end

; ================

	; BUG_CATCHER
	db "Josh@"
	db TRAINERTYPE_NORMAL
	; party
	db 12, PINSIR
	db -1 ; end

; ================

	; BUG_CATCHER
	db "Ken@"
	db TRAINERTYPE_NORMAL
	; party
	db 13, PINECO
	db 13, BEEDRILL
	db -1 ; end

; ================

	; BUG_CATCHER
	db "Wayne@"
	db TRAINERTYPE_NORMAL
	; party
	db 12, VESPIQUEN
	db -1 ; end

; ================

	; BUG_CATCHER
	db "Oscar@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, LEDIAN
	db 25, SCYTHER
	db -1 ; end

; ================

	; BUG_CATCHER
	db "Callum@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, ARIADOS
	db 25, PINSIR
	db -1 ; end

; ================

	; BUG_CATCHER
	db "David@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, YANMA
	db 23, PARAS
	db 23, VENONAT
	db -1 ; end

; ================
; ================================

CamperGroup:
; ================================
; ================

	; CAMPER ; ROUTE 34?
	db "Todd@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, QUAGSIRE
	db -1 ; end

; ================

	; CAMPER
	db "Todd@"
	db TRAINERTYPE_NORMAL
	; party
	db 17, GEODUDE
	db 17, GEODUDE
	db 23, TOTODILE
	db -1 ; end

; ================

	; CAMPER
	db "Todd@"
	db TRAINERTYPE_NORMAL
	; party
	db 23, GEODUDE
	db 23, GEODUDE
	db 26, TOTODILE
	db -1 ; end

; ================

	; CAMPER
	db "Todd@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, GRAVELER
	db 30, GRAVELER
	db 30, MAGCARGO
	db 32, TOTODILE
	db -1 ; end

; ================

	; CAMPER
	db "Todd@"
	db TRAINERTYPE_MOVES
	; party
	db 34, GRAVELER
		db MUD_SLAP, BULLDOZE, SANDSTORM, ROCK_SLIDE
	db 34, GRAVELER
		db DEFENSE_CURL, ROLLOUT, MAGNITUDE, ROCK_SLIDE
	db 36, MAGCARGO
		db ROCK_THROW, DEFENSE_CURL, CALM_MIND, FLAMETHROWER
	db 34, CROCONAW
		db DISABLE, PSYCHIC_M, SURF, CALM_MIND
	db -1 ; end

; ================

	; CAMPER
	db "Roland@" ; route 35
	db TRAINERTYPE_NORMAL
	; party
	db 19, NIDORINO
	db -1 ; end

; ================

	; CAMPER ; ROUTE 35
	db "Ivan@"
	db TRAINERTYPE_NORMAL
	; party
	db 15, DIGLETT
	db 20, GOLBAT
	db 21, NIDORINO
	db -1 ; end

; ================

	; CAMPER
	db "Barry@" ; ROUTE KAJO
	db TRAINERTYPE_NORMAL
	; party
	db 22, NIDORINO
	db 22, NIDOKING
	db -1 ; end

; ================

	; CAMPER ; route 32
	db "Lloyd@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, ARBOK
	db 23, WEEPINBELL
	db 26, PIDGEOTTO
	db -1 ; end

; ================

	; CAMPER ; ROUTE 42 
	db "Dean@"
	db TRAINERTYPE_NORMAL
	; party
	db 33, GRAVELER
	db 36, DUGTRIO
	db -1 ; end

; ================

	; CAMPER; ROUTE 42 
	db "Sid@"
	db TRAINERTYPE_NORMAL
	; party
	db 35, NIDORINO
	db 35, RHYDON
	db 35, QUILAVA
	db -1 ; end

; ================

	; CAMPER
	db "Ted@"
	db TRAINERTYPE_NORMAL
	; party
	db 18, MANKEY
	db -1 ; end

; ================

	; CAMPER
	db "John@"
	db TRAINERTYPE_NORMAL
	; party
	db 33, GRAVELER
	db 36, GRAVELER
	db 40, GOLBAT
	db 42, CROCONAW
	db -1 ; end

; ================

	; CAMPER
	db "Jerry@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, RHYDON
	db -1 ; end

; ================

	; CAMPER
	db "Spencer@"
	db TRAINERTYPE_NORMAL
	; party
	db 28, DIGLETT
	db 29, DUGTRIO
	db 30, GOLBAT
	db -1 ; end

; ================

	; CAMPER
	db "Quentin@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, PIDGEOTTO
	db 30, PRIMEAPE
	db 30, TAUROS
	db -1 ; end

; ================

	; CAMPER
	db "Grant@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, SUNFLORA
	db 21, MARILL
	db -1 ; end

; ================

	; CAMPER
	db "Craig@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, PIDGEOTTO
	db 25, MANKEY
	db 26, DUGTRIO
	db -1 ; end

; ================

	; CAMPER
	db "Felix@"
	db TRAINERTYPE_NORMAL
	; party
	db 28, GROWLITHE
	db -1 ; end

; ================

	; CAMPER
	db "Tanner@"
	db TRAINERTYPE_NORMAL
	; party
	db 58, SUDOWOODO
	db -1 ; end

; ================

	; CAMPER
	db "Clark@"
	db TRAINERTYPE_NICKNAME
	; party
	db 56, QUILAVA, "Campfire@"
	db -1 ; end

; ================

	; CAMPER
	db "Pedro@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, FURRET
	db -1 ; end


; ================
; ================================

PicnickerGroup:
; ================================
; ================

	; PICNICKER
	db "Liz@"
	db TRAINERTYPE_NORMAL
	; party
	db 6, WOOPER
	db -1 ; end

; ================


	; PICNICKER
	db "Gina@" ; GAULDENROD TOWER
	db TRAINERTYPE_NORMAL
	; party
	db 14, CYNDAQUIL
	db 15, MEOWTH
	db 16, FURRET
	db -1 ; end

; ================

	; PICNICKER
	db "Gina@"
	db TRAINERTYPE_NORMAL
	; party
	db 14, SUNFLORA
	db 14, SUNFLORA
	db 17, BAYLEEF
	db -1 ; end

; ================

	; PICNICKER
	db "Gina@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, SUNFLORA
	db 27, SUNFLORA
	db 29, BAYLEEF
	db -1 ; end

; ================

	; PICNICKER
	db "Gina@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, SUNFLORA
	db 31, SUNFLORA
	db 32, BAYLEEF
	db -1 ; end

; ================

	; PICNICKER
	db "Gina@"
	db TRAINERTYPE_MOVES
	; party
	db 33, SUNFLORA
if DEF(FAITHFUL)
		db LEECH_SEED, GIGA_DRAIN, SUNNY_DAY, EARTH_POWER
else
		db LEECH_SEED, GIGA_DRAIN, SUNNY_DAY, FLAMETHROWER
endc
	db 34, SUNFLORA
if DEF(FAITHFUL)
		db GIGA_DRAIN, SOLAR_BEAM, SUNNY_DAY, EARTH_POWER
else
		db GIGA_DRAIN, SOLAR_BEAM, SUNNY_DAY, FLAMETHROWER
endc
	db 38, MEGANIUM
		db SOLAR_BEAM, RAZOR_LEAF, HEADBUTT, MUD_SLAP
	db -1 ; end

; ================

	; PICNICKER
	db "Erin@" ; ROUTE 34 
	db TRAINERTYPE_NORMAL
	; party
	db 20, CLEFAIRY
	db 20, GLOOM
	db -1 ; end

; ================

	; PICNICKER
	db "Erin@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, PONYTA
	db 32, GLOOM
	db -1 ; end

; ================

	; PICNICKER
	db "Erin@"
	db TRAINERTYPE_MOVES
	; party
	db 36, RAPIDASH
		db DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	db 34, RAICHU
		db SWIFT, MUD_SLAP, QUICK_ATTACK, THUNDERBOLT
	db 36, VILEPLUME
		db SLEEP_POWDER, ACID, HEALINGLIGHT, PETAL_DANCE
	db -1 ; end

; ================

	; PICNICKER
	db "Tiffany@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, CLEFAIRY
	db 25, JIGGLYPUFF
	db 20, PONYTA
	db -1 ; end

; ================

	; PICNICKER
	db "Tiffany@"
	db TRAINERTYPE_MOVES
	; party
	db 40, CLEFAIRY
		db REFLECT, TRI_ATTACK, MINIMIZE, METRONOME
	db -1 ; end

; ================

	; PICNICKER
	db "Tiffany@"
	db TRAINERTYPE_MOVES
	; party
	db 44, CLEFABLE
		db METRONOME, ENCORE, HEALINGLIGHT, MINIMIZE
	db -1 ; end

; ================

	; PICNICKER
	db "Tiffany@"
	db TRAINERTYPE_MOVES
	; party
	db 49, CLEFABLE
		db HEALINGLIGHT, TRI_ATTACK, MINIMIZE, METRONOME
	db -1 ; end

; ================

	; PICNICKER
	db "Kim@"
	db TRAINERTYPE_NORMAL
	; party
	db 15, VULPIX
	db -1 ; end

; ================

	; PICNICKER
	db "Cindy@"
	db TRAINERTYPE_NORMAL
	; party
	db 61, NIDOQUEEN
	db -1 ; end

; ================

	; PICNICKER
	db "Hope@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, FLAAFFY
	db -1 ; end

; ================

	; PICNICKER
	db "Sharon@"
	db TRAINERTYPE_NORMAL
	; party
	db 50, FURRET
	db 52, RAPIDASH
	db -1 ; end

; ================

	; PICNICKER
	db "Debra@"
	db TRAINERTYPE_NORMAL
	; party
	db 50, AZUMARILL
	db -1 ; end

; ================

	; PICNICKER
	db "Heidi@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, SUNFLORA
	db 53, SUNFLORA
	db -1 ; end

; ================

	; PICNICKER
	db "Edna@"
	db TRAINERTYPE_NORMAL
	; party
	db 51, NIDORINA
	db 55, RAICHU
	db -1 ; end

; ================

	; PICNICKER
	db "Tanya@"
	db TRAINERTYPE_NORMAL
	; party
	db 61, EXEGGUTOR
	db -1 ; end

; ================

	; PICNICKER
	db "Lily@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, NIDORINA
	db 22, WEEPINBELL
	db 26, WEEPINBELL
	db -1 ; end

; ================

	; PICNICKER
	db "Piper@"
	db TRAINERTYPE_NORMAL
	; party
	db 55, KADABRA
	db -1 ; end

; ================

	; PICNICKER
	db "Ginger@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, SNORLAX
	db -1 ; end

; ================

	; PICNICKER
	db "Cheyenne@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, RAICHU
	db -1 ; end

; ================

	; PICNICKER
	db "Adrian@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, PARASECT
	db -1 ; end

; ================
; ================================

TwinsGroup:
; ================================
; ================

	; TWINS
	db "Amy & Mimi@"
	db TRAINERTYPE_NORMAL
	; party
	db 10, ARIADOS
	db 10, LEDIAN
	db -1 ; end

; ================

	; TWINS
	db "Amy & Mimi@"
	db TRAINERTYPE_NORMAL
	; party
	db 10, LEDIAN
	db 10, ARIADOS
	db -1 ; end

; ================

	; TWINS ; route 37
	db "Leah & Lea@"
	db TRAINERTYPE_MOVES
	; party
	db 25, AZUMARILL
		db DEFENSE_CURL, ROLLOUT, BUBBLE_BEAM, DIZZY_PUNCH
	db 25, FLAAFFY
		db GROWL, THUNDER_WAVE, THUNDERBOLT, MUD_SLAP
	db -1 ; end

; ================

	; TWINS; route 37
	db "Leah & Lea@"
	db TRAINERTYPE_MOVES
	; party
	db 25, FLAAFFY
		db GROWL, THUNDER_WAVE, THUNDERBOLT, MUD_SLAP
	db 25, AZUMARILL
		db DEFENSE_CURL, ROLLOUT, BUBBLE_BEAM, DIZZY_PUNCH
	db -1 ; end

; ================

	; TWINS
	db "Lo & Zoe@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, VICTREEBEL
	db 59, VILEPLUME
	db -1 ; end

; ================

	; TWINS
	db "Lo & Zoe@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, VILEPLUME
	db 59, VICTREEBEL
	db -1 ; end

; ================

	; TWINS
	db "Meg & Peg@"
	db TRAINERTYPE_NORMAL
	; party
	db 45, TEDDIURSA
	db 45, DONPHAN
	db -1 ; end

; ================

	; TWINS
	db "Meg & Peg@"
	db TRAINERTYPE_NORMAL
	; party
	db 45, DONPHAN
	db 45, TEDDIURSA
	db -1 ; end

; ================

	; TWINS
	db "Lea & Pia@"
	db TRAINERTYPE_MOVES
	; party
	db 38, DRATINI
		db THUNDER_WAVE, DRAGON_PULSE, FLAMETHROWER, HEADBUTT
	db 38, DRATINI
		db THUNDER_WAVE, DRAGON_PULSE, ICE_BEAM, HEADBUTT
	db -1 ; end

; ================

	; TWINS
	db "Lea & Pia@"
	db TRAINERTYPE_MOVES
	; party
	db 38, DRATINI
		db THUNDER_WAVE, DRAGON_PULSE, ICE_BEAM, HEADBUTT
	db 38, DRATINI
		db THUNDER_WAVE, DRAGON_PULSE, FLAMETHROWER, HEADBUTT
	db -1 ; end

; ================

	; TWINS
	db "Day & Dani@"
	db TRAINERTYPE_NORMAL
	; party
	db 51, PIKACHU
	db 51, PIKACHU
	db -1 ; end

; ================

	; TWINS
	db "Day & Dani@"
	db TRAINERTYPE_NORMAL
	; party
	db 51, PIKACHU
	db 51, PIKACHU
	db -1 ; end

; ================

	; TWINS
	db "Kay & Tia@"
	db TRAINERTYPE_NORMAL
	; party
	db 56, QUAGSIRE
	db 56, QUAGSIRE
	db -1 ; end

; ================

	; TWINS
	db "Kay & Tia@"
	db TRAINERTYPE_NORMAL
	; party
	db 56, QUAGSIRE
	db 56, QUAGSIRE
	db -1 ; end

; ================
; ================================

FisherGroup:
; ================================
; ================

	; FISHER
	db "Ralph@" ; ALPH
	db TRAINERTYPE_NORMAL
	; party
	db 7, CHINCHOU
	db 7, STARYU
	db 6, TOTODILE
	db -1 ; end

; ================

	; FISHER
	db "Ralph@"
	db TRAINERTYPE_NORMAL
	; party
	db 17, LANTURN
	db -1 ; end

; ================

	; FISHER
	db "Ralph@"
	db TRAINERTYPE_NORMAL
	; party
	db 17, QWILFISH
	db 19, LANTURN
	db -1 ; end

; ================

	; FISHER
	db "Ralph@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, QWILFISH
	db 32, LANTURN
	db -1 ; end

; ================

	; FISHER
	db "Ralph@"
	db TRAINERTYPE_MOVES
	; party
	db 35, QWILFISH
		db TOXIC, MINIMIZE, SURF, PIN_MISSILE
	db 39, LANTURN
		db REVERSAL, WATERFALL, SPARK, CONFUSE_RAY
	db -1 ; end

; ================

	; FISHER
	db "Tully@" ; ROUTE 32
	db TRAINERTYPE_NORMAL
	; party
	db 22, STARYU
	db 23, SLOWPOKE
	db 26, LANTURN	
	db -1 ; end

; ================

	; FISHER
	db "Tully@"
	db TRAINERTYPE_NORMAL
	; party
	db 35, QWILFISH
	db -1 ; end

; ================

	; FISHER
	db "Tully@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, POLIWHIRL
	db 40, QWILFISH
	db 40, QWILFISH
	db -1 ; end

; ================

	; FISHER
	db "Tully@"
	db TRAINERTYPE_MOVES
	; party
	db 43, POLIWRATH
		db RAIN_DANCE, SWIFT, WATERFALL, CLOSE_COMBAT
	db 43, QWILFISH
		db ROLLOUT, SURF, PIN_MISSILE, TAKE_DOWN
	db 45, QWILFISH
		db ROLLOUT, WATERFALL, PIN_MISSILE, TAKE_DOWN
	db -1 ; end

; ================

	; FISHER
	db "Wilton@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, QWILFISH
	db 24, OCTILLERY
	db 26, GYARADOS
	db -1 ; end

; ================

	; FISHER
	db "Wilton@"
	db TRAINERTYPE_NORMAL
	; party
	db 36, QWILFISH
	db 36, OCTILLERY
	db 38, GYARADOS
	db -1 ; end

; ================

	; FISHER
	db "Wilton@"
	db TRAINERTYPE_MOVES
	; party
	db 38, QWILFISH
		db WATERFALL, TAKE_DOWN, PIN_MISSILE, ROLLOUT
	db 38, GYARADOS
		db WATERFALL, DRAGON_PULSE, DRAGON_RAGE, RAIN_DANCE
	db 42, OCTILLERY
		db PSYBEAM, AURORA_BEAM, OCTAZOOKA, HYPER_BEAM
	db -1 ; end

; ================

	; FISHER ; route 32
	db "Justin@"
	db TRAINERTYPE_MOVES
	; party
	db 26, QWILFISH
		db WATERFALL, TAKE_DOWN, PIN_MISSILE, ROLLOUT
	db 25, GYARADOS
		db WATERFALL, DRAGON_PULSE, DRAGON_RAGE, RAIN_DANCE
	db 27, OCTILLERY
		db PSYBEAM, AURORA_BEAM, OCTAZOOKA, FLAMETHROWER
	db -1 ; end

; ================

	; FISHER
	db "Arnold@"  ; route 42 
	db TRAINERTYPE_NORMAL
	; party
	db 40, CROCONAW
	db -1 ; end

; ================

	; FISHER ; route 42 
	db "Kyle@"
	db TRAINERTYPE_NORMAL
	; party
	db 38, LANTURN
	db 40, OCTILLERY
	db -1 ; end

; ================

	; FISHER
	db "Henry@" ; ROUTE 32
	db TRAINERTYPE_NORMAL
	; party
	db 22, POLITOED
	db 24, TENTACRUEL
	db -1 ; end

; ================

	; FISHER
	db "Marvin@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 30, GYARADOS, ABILITY_1 | NAT_NEUTRAL, MALE
	db -1 ; end

; ================

	; FISHER
	db "Andre@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, GYARADOS
	db -1 ; end

; ================

	; FISHER
	db "Raymond@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, GYARADOS
	db -1 ; end

; ================

	; FISHER
	db "Edgar@"
	db TRAINERTYPE_MOVES
	; party
	db 36, OCTILLERY
		db FLAMETHROWER, PSYBEAM, AURORA_BEAM, BUBBLE_BEAM
	db 36, OCTILLERY
		db ICE_BEAM, PSYBEAM, AURORA_BEAM, BUBBLE_BEAM
	db -1 ; end

; ================

	; FISHER
	db "Jonah@"
	db TRAINERTYPE_NORMAL
	; party
	db 44, CLOYSTER
	db 46, OCTILLERY
	db 44, OCTILLERY
	db 46, CLOYSTER
	db -1 ; end

; ================

	; FISHER
	db "Martin@"
	db TRAINERTYPE_NORMAL
	; party
	db 56, OCTILLERY
	db 58, OCTILLERY
	db -1 ; end

; ================

	; FISHER
	db "Stephen@"
	db TRAINERTYPE_NORMAL
	; party
	db 60, MAGIKARP
	db 58, QUAGSIRE
	db 55, QWILFISH
	db 55, TENTACRUEL
	db -1 ; end

; ================

	; FISHER
	db "Barney@"
	db TRAINERTYPE_NORMAL
	; party
	db 57, GYARADOS
	db 56, GYARADOS
	db 56, GYARADOS
	db -1 ; end

; ================

	; FISHER
	db "Scott@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, QWILFISH
	db 40, QWILFISH
	db 42, GYARADOS
	db -1 ; end

; ================

	; FISHER
	db "Paton@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, OCTILLERY
	db 20, MANTINE
	db -1 ; end

; ================

	; FISHER
	db "Kiley@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, GYARADOS	
	db -1 ; end

; ================

	; FISHER
	db "Francis@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, OCTILLERY
	db 25, LANTURN
	db 24, QWILFISH
	db -1 ; end

; ================

	; FISHER
	db "Virgil@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, GYARADOS
	db -1 ; end

; ================

	; FISHER
	db "Kyler@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, GYARADOS
	db -1 ; end

; ================

	; FISHER
	db "Murphy@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, CORSOLA
	db 56, CORSOLA
	db 58, CORSOLA
	db 60, CORSOLA
	db -1 ; end

; ================

	; FISHER
	db "Liam@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, SEADRA
	db -1 ; end

; ================

	; FISHER
	db "Gideon@"
	db TRAINERTYPE_NORMAL
	; party
	db 60, LANTURN
	db 56, MANTINE
	db -1 ; end

; ================

	; FISHER
	db "Dundee@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, CROCONAW
	db -1 ; end

; ================

	; FISHER
	db "Hall@"
	db TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME
	; party
	db 56, QWILFISH, %10000111, %11011000, %00101000, "Dopefish@" ; green
	db -1 ; end

; ================

	; FISHER
	db "Dallas@"
	db TRAINERTYPE_NORMAL
	; party
	db 61, QWILFISH
	db 63, LANTURN
	db 65, GYARADOS
	db -1 ; end

; ================
; ================================

BirdKeeperGroup:
; ================================
; ================

	; BIRD_KEEPER
	db "Vance@" ; GAULDENROD TOWER
	db TRAINERTYPE_NORMAL
	; party
	db 14, TOGETIC
	db 16, PIDGEOTTO
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Vance@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, PIDGEOTTO
	db 40, PIDGEOTTO
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Vance@"
	db TRAINERTYPE_MOVES
	; party
	db 45, PIDGEOT
		db TOXIC, QUICK_ATTACK, ROAR, FLY
	db 45, PIDGEOT
		db SWIFT, PROTECT, STEEL_WING, FLY
	db -1 ; end

; ================

	; BIRD_KEEPER ; UNDERGROUND RADIO TOWER
	db "Jose@"
	db TRAINERTYPE_NORMAL
	; party
	db 18, TOGETIC
	db 21, PIDGEOTTO
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Jose@"
	db TRAINERTYPE_NORMAL
	; party
	db 48, FARFETCH_D
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Jose@"
	db TRAINERTYPE_MOVES
	; party
	db 55, FARFETCH_D
		db SWORDS_DANCE, NIGHT_SLASH, PROTECT, BRAVE_BIRD
	db -1 ; end

; ================

	; BIRD_KEEPER ; violet tower
	db "Rod@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, PIDGEOTTO
	db 24, PIDGEOTTO
	db -1 ; end

; ================

	; BIRD_KEEPER ; violet tower 
	db "Abe@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, FARFETCH_D
	db 24, GOLBAT
	db -1 ; end

; ================

	; BIRD_KEEPER ; VIOLET TOWER 
	db "Theo@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, XATU
	db 23, SKIPLOOM
	db 25, MURKROW
	db -1 ; end

; ================

	; BIRD_KEEPER ; VIOLET TOWER 
	db "Toby@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, GYARADOS
	db 24, GLIGAR
	db -1 ; end

; ================

	; BIRD_KEEPER ; VIOLET TOWER 
	db "Denis@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, MURKROW
	db 23, MANTINE
	db 25, SKARMORY
	db -1 ; end

; ================

	; BIRD_KEEPER ; tranquil tarn 1
	db "Hank@" ; rule the sky 
	db TRAINERTYPE_NORMAL
	; party
	db 42, STARAVIA
	db 44, STARAPTOR
	db -1 ; end

; ================

	; BIRD_KEEPER ; TARN 
	db "Roy@"
	db TRAINERTYPE_NORMAL
	; party
	db 42, H__BRAVIARY
	db 44, EMPOLEON
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Boris@"
	db TRAINERTYPE_NORMAL
	; party
	db 56, PIDGEOTTO
	db 55, PIDGEOTTO
	db 58, PIDGEOT
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Bob@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, PIDGEOTTO
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Peter@" ; ROUTE 32
	db TRAINERTYPE_NORMAL
	; party
	db 25, SKARMORY
	db 25, GLIGAR
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Perry@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, FARFETCH_D
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Bret@"
	db TRAINERTYPE_NORMAL
	; party
	db 57, PIDGEOTTO
	db 57, FARFETCH_D
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Mick@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, PIDGEOT
	db 60, MURKROW
	db 60, PIDGEOTTO
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Powell@"
	db TRAINERTYPE_NORMAL
	; party
	db 28, PIDGEOT
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Tony@"
	db TRAINERTYPE_MOVES
	; party
	db 24, PIDGEOTTO
		db GUST, QUICK_ATTACK, RAGE, MUD_SLAP
	db 24, PIDGEOTTO
		db GUST, QUICK_ATTACK, RAGE, DOUBLE_TEAM
	db 27, CROCONAW
		db SURF, DISABLE, SCREECH, ZEN_HEADBUTT
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Julian@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, PIDGEY
	db 24, PIDGEOTTO
	db 25, MURKROW
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Justin@"
	db TRAINERTYPE_NORMAL
	; party
	db 57, XATU
	db 50, PIDGEOTTO
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Gail@"
	db TRAINERTYPE_NORMAL
	; party
	db 56, PIDGEOT
	db 53, PIDGEOTTO
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Josh@"
	db TRAINERTYPE_NORMAL
	; party
	db 55, PIDGEOT
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Bert@"
	db TRAINERTYPE_NORMAL
	; party
	db 60, SKARMORY
	db 57, PIDGEOT
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Ernie@"
	db TRAINERTYPE_NORMAL
	; party
	db 61, PIDGEOT
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Kinsey@"
	db TRAINERTYPE_NORMAL
	; party
	db 58, FARFETCH_D
	db 58, PIDGEOT
	db 58, PIDGEOTTO
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Easton@"
	db TRAINERTYPE_NORMAL
	; party
	db 57, PIDGEOTTO
	db 57, PIDGEOTTO
	db 59, PIDGEOT
	db 59, PIDGEOT
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Bryan@"
	db TRAINERTYPE_NORMAL
	; party
	db 16, PIDGEY
	db 18, PIDGEOTTO
	db -1 ; end

; ================

	; BIRD_KEEPER
	db "Trent@"
	db TRAINERTYPE_NORMAL
	; party
	db 33, PIDGEY
	db 44, PIDGEOTTO
	db 55, PIDGEOT
	db -1 ; end

; ================
; ================================

HikerGroup:
; ================================
; ================

	; HIKER
	db "Anthony@" ; route 33
	db TRAINERTYPE_NORMAL
	; party
	db 3, MACHOP
	db -1 ; end

; ================

	; HIKER
	db "Anthony@"
	db TRAINERTYPE_NORMAL
	; party
	db 16, GEODUDE
	db 18, MACHOKE
	db -1 ; end

; ================

	; HIKER
	db "Anthony@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, GRAVELER
	db 27, GRAVELER
	db 29, MACHOKE
	db -1 ; end

; ================

	; HIKER
	db "Anthony@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, GRAVELER
	db 30, GRAVELER
	db 32, MACHOKE
	db -1 ; end

; ================

	; HIKER
	db "Anthony@"
	db TRAINERTYPE_MOVES
	; party
	db 34, GRAVELER
		db MAGNITUDE, MUD_SLAP, SANDSTORM, ROCK_SLIDE
	db 36, GOLEM
		db BULLDOZE, EXPLOSION, DEFENSE_CURL, ROLLOUT
	db 34, MACHAMP
		db KARATE_CHOP, BULLET_PUNCH, HEADBUTT, DIG
	db -1 ; end

; ================

	; HIKER
	db "Parry@" ; union cave
	db TRAINERTYPE_NORMAL
	; party
	db 4, GEODUDE
	db 5, GEODUDE
	db 6, ONIX
	db -1 ; end

; ================

	; HIKER
	db "Parry@"
	db TRAINERTYPE_NORMAL
	; party
	db 36, ONIX
	db 35, PILOSWINE
	db -1 ; end

; ================

	; HIKER
	db "Parry@"
	db TRAINERTYPE_MOVES
	; party
	db 36, PILOSWINE
		db EARTHQUAKE, AVALANCHE, REST, TAKE_DOWN
	db 36, DUGTRIO
		db MAGNITUDE, DIG, MUD_SLAP, SLASH
	db 39, STEELIX
		db DIG, IRON_TAIL, SANDSTORM, HEADBUTT
	db -1 ; end

; ================

	; HIKER
	db "Russell@" ; union cave
	db TRAINERTYPE_NORMAL
	; party
	db 5, ONIX
	db 6, RHYHORN
	db 6, MACHOP
	db -1 ; end

; ================

	; HIKER
	db "Phillip@" ; union cave
	db TRAINERTYPE_NORMAL
	; party
	db 4, RHYHORN
	db 5, MACHOP
	db 6, WOOPER
	db -1 ; end

; ================

	; HIKER
	db "Leonard@" ; union cave 
	db TRAINERTYPE_NORMAL
	; party
	db 7, RHYHORN
	db 10, DIGLETT
	db -1 ; end

; ================

	; HIKER
	db "Benjamin@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, DIGLETT
	db 24, DUNSPARCE
	db 28, GLIGAR
	db -1 ; end

; ================

	; HIKER
	db "Erik@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, HITMONTOP
	db 23, DONPHAN
	db 25, GLIGAR
	db -1 ; end

; ================

	; HIKER ; kajo route 
	db "Michael@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, GEODUDE
	db 25, GRAVELER
	db 25, GOLEM
	db -1 ; end

; ================

	; HIKER ; timothy UNION CAVE B2F
	db "Leonard@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, RHYHORN
	db 40, DUGTRIO
	db -1 ; end

; ================

	; HIKER
	db "Bailey@"
	db TRAINERTYPE_NORMAL
	; party
	db 15, GEODUDE
	db 15, GEODUDE
	db 15, GEODUDE
	db 17, LARVITAR
	db -1 ; end

; ================

	; HIKER
	db "Eoin@"
	db TRAINERTYPE_NORMAL
	; party
	db 50, DIGLETT
	db 52, GRAVELER
	db 54, DUGTRIO
	db -1 ; end

; ================

	; HIKER
	db "Noland@"
	db TRAINERTYPE_NORMAL
	; party
	db 45, DUGTRIO
	db 47, GOLEM
	db -1 ; end

; ================

	; HIKER
	db "Clarke@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, DUGTRIO
	db 55, ONIX
	db -1 ; end

; ================

	; HIKER
	db "Kenny@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, DUGTRIO
	db 56, GRAVELER
	db 58, GOLEM
	db 56, GRAVELER
	db -1 ; end

; ================

	; HIKER
	db "Jim@"
	db TRAINERTYPE_NORMAL
	; party
	db 57, MACHAMP
	db -1 ; end

; ================

	; HIKER
	db "Daniel@"
	db TRAINERTYPE_NORMAL
	; party
	db 11, ONIX
	db -1 ; end

; ================

	; HIKER
	db "Edwin@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, GOLEM
	db -1 ; end

; ================

	; HIKER
	db "Devin@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, DUNSPARCE
	db 23, ONIX
	db 22, LARVITAR
	db -1 ; end

; ================

	; HIKER
	db "Seamus@"
	db TRAINERTYPE_NORMAL
	; party
	db 56, DUNSPARCE
	db 53, ONIX
	db 54, GOLEM
	db 53, ONIX
	db -1 ; end

; ================

	; HIKER
	db "Tony@"
	db TRAINERTYPE_NORMAL
	; party
	db 17, DUNSPARCE
	db 18, ONIX
	db 17, DUNSPARCE
	db -1 ; end

; ================

	; HIKER
	db "Marcos@"
	db TRAINERTYPE_NORMAL
	; party
	db 60, DUGTRIO
	db 59, DIGLETT
	db 62, MACHOKE
	db 62, ONIX
	db -1 ; end

; ================

	; HIKER
	db "Gerard@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, RHYHORN
	db 61, RHYDON
	db -1 ; end

; ================

	; HIKER
	db "Dent@"
	db TRAINERTYPE_NORMAL
	; party
	db 58, ONIX
	db 59, STEELIX
	db 59, GOLEM
	db -1 ; end

; ================

	; HIKER
	db "Bruce@"
	db TRAINERTYPE_NORMAL
	; party
	db 57, GRAVELER
	db 62, RHYDON
	db 63, CLEFAIRY
	db -1 ; end

; ================

	; HIKER
	db "Dwight@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, MAGNETON
	db 62, STEELIX
	db -1 ; end

; ================

	; HIKER
	db "Lester@"
	db TRAINERTYPE_NORMAL
	; party
	db 55, CLEFABLE
	db 53, SCYTHER
	db 54, MACHOKE
	db -1 ; end

; ================

	; HIKER
	db "Grady@"
	db TRAINERTYPE_NORMAL
	; party
	db 34, GRAVELER
	db 34, GRAVELER
	db 35, DUGTRIO
	db -1 ; end

; ================

	; HIKER
	db "Steve@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, STEELIX
	db -1 ; end

; ================

	; HIKER
	db "Derrick@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, QUAGSIRE
	db 53, DUGTRIO
	db 55, GOLEM
	db -1 ; end

; ================

	; HIKER
	db "Floyd@"
	db TRAINERTYPE_NORMAL
	; party
	db 57, STEELIX
	db -1 ; end

; ================
; ================================

BrigaderGroup:
; ================================
; ================


	; GRUNTM 1
	db "Grunt@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================

	; GRUNTM 2
	db "Smith@"
	db TRAINERTYPE_NORMAL
	; party
	db 13, MACHOP
	db 14, GROWLITHE
	db 15, NIDORINO
	db -1 ; end

; ================

	; GRUNTM 3
	db "Johnson@"
	db TRAINERTYPE_NORMAL
	; party
	db 15, EKANS
	db 15, NIDORINA
	db 15, NIDORINO
	db -1 ; end

; ================

	; GRUNTM 4
	db "Brown@"
	db TRAINERTYPE_NORMAL
	; party
	db 14, MANKEY
	db 15, MACHOP
	db 18, GROWLITHE
	db -1 ; end

; ================

	; GRUNTM 5
	db "Miller@"
	db TRAINERTYPE_NORMAL
	; party
	db 14, MACHOP
	db 18, HOUNDOUR
	db -1 ; end

; ================

	; GRUNTM 6
	db "Davis@"
	db TRAINERTYPE_NORMAL
	; party
	db 13, MANKEY
	db 13, SNEASEL
	db 13, MACHOP
	db -1 ; end

; ================

	; GRUNTM 7
	db "Garcia@"
	db TRAINERTYPE_NORMAL
	; party
	db 12, HITMONCHAN
	db 14, VULPIX
	db 14, PONYTA	
	db -1 ; end

; ================

	; GRUNTM 8
	db "Zhang@" ; SERENE SPRINGS
	db TRAINERTYPE_NORMAL
	; party
	db 12, GROWLITHE
	db 12, PONYTA	
	db 12, HOUNDOUR		
	db 12, MAGMAR		
	db 12, OCTILLERY
	db 12, SUNFLORA
	db -1 ; end

; ================

	; GRUNTM 9
	db "Patel@" ; START STADIUM GROUNDS
	db TRAINERTYPE_NORMAL
	; party
	db 12, HITMONLEE
	db 14, GROWLITHE
	db -1 ; end

; ================

	; GRUNTM 10
	db "Manolete@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 18, TAUROS, CHOICE_BAND, "Islero@"
		db THRASH, NO_MOVE, NO_MOVE, NO_MOVE
	db -1 ; end	


; ================

	; GRUNTM 11
	db "Kim@" 
	db TRAINERTYPE_NORMAL
	; party
	db 14, MACHOP
	db 16, HITMONTOP
	db -1 ; end
; ================

	; GRUNTM 12
	db "Chen@"
	db TRAINERTYPE_NORMAL
	; party
	db 14, HERACROSS
	db 14, MAGMAR
	db -1 ; end

; ================ ; ABOVE ENDS THE STADIUM GROUNDS


	; GRUNTM 13 ; Singhsulfur sty 
	db "Singh@" ; trainer name
	db TRAINERTYPE_NORMAL
	; party - Fighting/Rock focus
	db 45, HITMONCHAN
	db 45, SUDOWOODO
	db 47, HITMONLEE
	db 49, RHYPERIOR
	db -1 ; end
	
	; GRUNTM  14; Ali sulfur sty 
	db "Ali@" ; trainer name
	db TRAINERTYPE_NORMAL
	; party - Flying/Ground focus
	db 44, GLIGAR
	db 46, STARAPTOR
	db 48, GLISCOR
	db -1 ; end
	
	; GRUNTM 15 ; Suzuki ; clast cradle 2f 15
	db "Suzuki@" ; trainer name
	db TRAINERTYPE_NORMAL
	; party - Fire focus
	db 50, MONFERNO
	db 46, MAGCARGO
	db 48, HOUNDOOM
	db -1 ; end
	
	; GRUNTM 16 Marten cc 1f 
	db "Marten@" ; trainer name
	db TRAINERTYPE_NORMAL
	; party - Dragon/Ground focus
	db 43, GABITE
	db 45, DRAGONAIR
	db 47, PUPITAR
	db -1 ; end
	
	; GRUNTM 17 ; Lee cc 1f 17
	db "Lee@" ; trainer name
	db TRAINERTYPE_NORMAL
	; party - Poison focus
	db 44, ARBOK
	db 46, MUK
	db 48, WEEZING
	db -1 ; end
	
	; GRUNTM 18 ; Gupta cc 1f 
	db "Gupta@" ; trainer name
	db TRAINERTYPE_NORMAL
	; party - Steel/Rock focus
	db 49, KANGASKHAN
	db 48, HITMONTOP
	db 50, MISMAGIUS
	db -1 ; end
	
	; GRUNTM 19 ; Liu cc b1f 19
	db "Liu@" ; trainer name
	db TRAINERTYPE_NORMAL
	; party - Bug/Ghost focus
	db 45, PINSIR
	db 47, ARIADOS
	db 49, YANMEGA
	db 50, DUSKNOIR
	db -1 ; end
	
	; GRUNTM 20 ;  cc b1f
	db "Tyson@" ; trainer name
	db TRAINERTYPE_NORMAL
	; party - Poison focus
	db 46, STEELIX
	db 46, NIDOKING
	db 48, NIDOQUEEN
	db -1 ; end
	
	; GRUNTM 21 sulfur sty 
	db "Lopez@" ; trainer name
	db TRAINERTYPE_NORMAL
	; party - Ground focus
	db 43, HIPPOWDON
	db 45, QUAGSIRE
	db 47, DONPHAN
	db -1 ; end
	
; ================================

GruntFGroup:
; ================================
; ================

	; GRUNTF ; removed
	db "Grunt@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end


; ================
; ================================

PokefanMGroup:
; ================================
; ================

	; POKEFANM
	db "Derek@"
	db TRAINERTYPE_ITEM
	; party
	db 18, PIKACHU, ORAN_BERRY
	db -1 ; end

; ================

	; POKEFANM
	db "Derek@"
	db TRAINERTYPE_ITEM
	; party
	db 19, PIKACHU, ORAN_BERRY
	db -1 ; end

; ================

	; POKEFANM
	db "Derek@"
	db TRAINERTYPE_ITEM
	; party
	db 36, PIKACHU, SITRUS_BERRY
	db -1 ; end

; ================

	; POKEFANM
	db "William@" ; NATIONAL PARK 
	db TRAINERTYPE_ITEM
	; party
	db 18, RAICHU, ORAN_BERRY
	db 18, AZUMARILL, ORAN_BERRY	
	db -1 ; end

; ================

	; POKEFANM ; route kajo 
	db "Robert@"
	db TRAINERTYPE_ITEM
	; party
	db 38, QUAGSIRE, SITRUS_BERRY
	db 38, RAICHU, SITRUS_BERRY
	db -1 ; end

; ================

	; POKEFANM
	db "Joshua@"
	db TRAINERTYPE_ITEM
	; party
	db 38, QUAGSIRE, SITRUS_BERRY
	db 38, RAICHU, SITRUS_BERRY
	db -1 ; end

; ================

	; POKEFANM ; route 38 
	db "Carter@"
	db TRAINERTYPE_ITEM
	; party
	db 38, BAYLEEF, SITRUS_BERRY
	db 38, GROWLITHE, SITRUS_BERRY
	db 38, POLIWHIRL, SITRUS_BERRY
	db -1 ; end

; ================

	; POKEFANM
	db "Trevor@"
	db TRAINERTYPE_ITEM
	; party
	db 57, TOTODILE, SITRUS_BERRY
	db -1 ; end

; ================

	; POKEFANM
	db "Brandon@" ; ROUTE 34
	db TRAINERTYPE_ITEM
	; party
	db 20, SNUBBULL, ORAN_BERRY
	db 19, FLAAFFY, ORAN_BERRY
	db -1 ; end

; ================

	; POKEFANM
	db "Jeremy@"
	db TRAINERTYPE_ITEM
	; party
	db 44, MEOWTH, SITRUS_BERRY
	db 45, PERSIAN, SITRUS_BERRY
	db 44, MEOWTH, SITRUS_BERRY
	db -1 ; end

; ================

	; POKEFANM
	db "Colin@"
	db TRAINERTYPE_ITEM
	; party
	db 49, GLACEON, SITRUS_BERRY
	db -1 ; end

; ================

	; POKEFANM
	db "Alex@"
	db TRAINERTYPE_ITEM
	; party
	db 56, NIDOKING, KINGS_ROCK
	db 56, SLOWKING, KINGS_ROCK
	db 56, FERALIGATR, KINGS_ROCK
	db -1 ; end

; ================

	; POKEFANM
	db "Rex@"
	db TRAINERTYPE_ITEM
	; party
	db 53, DONPHAN, SITRUS_BERRY
	db -1 ; end

; ================

	; POKEFANM
	db "Allan@"
	db TRAINERTYPE_ITEM
	; party
	db 53, TEDDIURSA, SITRUS_BERRY
	db -1 ; end

; ================
; ================================

PokefanFGroup:
; ================================
; ================

	; POKEFANF
	db "Beverly@" ; NATIONAL PARK
	db TRAINERTYPE_ITEM
	; party
	db 20, SNUBBULL, ORAN_BERRY
	db -1 ; end

; ================

	; POKEFANF
	db "Beverly@"
	db TRAINERTYPE_ITEM
	; party
	db 18, SNUBBULL, ORAN_BERRY
	db -1 ; end

; ================

	; POKEFANF
	db "Beverly@"
	db TRAINERTYPE_ITEM
	; party
	db 30, GRANBULL, SITRUS_BERRY
	db -1 ; end

; ================

	; POKEFANF ; route 38 
	db "Ruth@"
	db TRAINERTYPE_ITEM
	; party
	db 36, FURRET, SITRUS_BERRY	
	db 40, AZUMARILL, SITRUS_BERRY
	db -1 ; end

; ================

	; POKEFANF
	db "Georgia@"
	db TRAINERTYPE_ITEM
	; party
	db 44, FURRET, ORAN_BERRY
	db 44, FURRET, ORAN_BERRY
	db 44, FURRET, ORAN_BERRY
	db 46, FURRET, SITRUS_BERRY
	db 44, FURRET, ORAN_BERRY
	db -1 ; end

; ================

	; POKEFANF ; route 38 
	db "Jaime@"
	db TRAINERTYPE_ITEM
	; party
	db 36, MEOWTH, SITRUS_BERRY
	db 36, PERSIAN, SITRUS_BERRY
	db -1 ; end

; ================

	; POKEFANF
	db "Boone@"
	db TRAINERTYPE_ITEM
	; party
	db 57, PERSIAN, SITRUS_BERRY
	db 55, WIGGLYTUFF, SITRUS_BERRY
	db -1 ; end

; ================

	; POKEFANF
	db "Eleanor@"
	db TRAINERTYPE_ITEM
	; party
	db 57, GRANBULL, SITRUS_BERRY
	db 55, CLEFABLE, SITRUS_BERRY
	db -1 ; end

; ================
; ================================

OfficerMGroup:
; ================================
; ================

	; OFFICERM ; ilex forest 
	db "Keith@"
	db TRAINERTYPE_NORMAL
	; party
	db 5, GROWLITHE
	db 5, HOUNDOUR
	db -1 ; end

; ================

	; OFFICERM
	db "Dirk@" ; route 38
	db TRAINERTYPE_NORMAL
	; party
	db 36, MACHOKE
	db 36, ARCANINE
	db 36, PRIMEAPE
	db -1 ; end

; ================
; ================================

OfficerFGroup:
; ================================
; ================

	; OFFICERF ; route 43
	db "Jamie@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, ARCANINE
	db 41, POLIWRATH
	db -1 ; end

; ================

	; OFFICERF
	db "Mara@" ; ROUTE 34 
	db TRAINERTYPE_NORMAL
	; party
	db 19, GROWLITHE
	db 18, HOUNDOUR
	db 19, MACHOP	
	db -1 ; end

; ================

	; OFFICERF
	db "Jenny@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, POLIWAG
	db 53, POLIWAG
	db 53, POLIWAG
	db 53, POLIWAG
	db -1 ; end

; ================
; ================================

NurseGroup:
; ================================
; ================

	; NURSE
	db "Joy@"
	db TRAINERTYPE_NORMAL
	; party
	db 50, CHANSEY
	db -1 ; end

; ================
; ================================

PokemaniacGroup:
; ================================
; ================

	; POKEMANIAC ; brent1, route 43
	db "Brent@"
	db TRAINERTYPE_NORMAL
	; party
	db 43, SUDOWOODO
	db -1 ; end

; ================

	; POKEMANIAC
	db "Brent@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, KANGASKHAN
	db -1 ; end

; ================

	; POKEMANIAC
	db "Brent@"
	db TRAINERTYPE_MOVES
	; party
	db 42, PORYGON
		db RECOVER, PSYCHIC_M, CONVERSION, TRI_ATTACK
	db -1 ; end

; ================

	; POKEMANIAC
	db "Brent@"
	db TRAINERTYPE_MOVES
	; party
	db 47, CHANSEY
		db ROLLOUT, ATTRACT, RETURN, FRESH_SNACK
	db -1 ; end

; ================

	; POKEMANIAC ;  route 43
	db "Larry@"
	db TRAINERTYPE_NORMAL
	; party
	db 42, DUNSPARCE
	db 40, PINSIR	
	db -1 ; end

; ================

	; POKEMANIAC route 43
	db "Andrew@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, YANMEGA
	db 39, URSARING
	db -1 ; end

; ================

	; POKEMANIAC ; lake of rage 
	db "Calvin@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, KANGASKHAN
	db 40, SNORLAX
	db 43, URSARING
	db -1 ; end

; ================

	; POKEMANIAC
	db "Shane@" ; lake of rage 
	db TRAINERTYPE_NORMAL
	; party
	db 42, NIDOKING
	db 43, NIDOQUEEN
	db 40, FORRETRESS
	db -1 ; end

; ================

	; POKEMANIAC
	db "Beckett@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, SLOWBRO
	db -1 ; end

; ================

	; POKEMANIAC
	db "Ron@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, NIDOKING
	db -1 ; end

; ================

	; POKEMANIAC
	db "Ethan@"
	db TRAINERTYPE_NORMAL
	; party
	db 45, RHYHORN
	db 46, RHYDON
	db -1 ; end

; ================

	; POKEMANIAC
	db "Issac@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, FLAAFFY
	db -1 ; end

; ================

	; POKEMANIAC ; UNDERGROUND
	db "Donald@"
	db TRAINERTYPE_NORMAL
	; party
	db 18, TANGELA
	db 22, TEDDIURSA
	db -1 ; end

; ================

	; POKEMANIAC
	db "Zach@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, RHYHORN
	db -1 ; end

; ================

	; POKEMANIAC
	db "Miller@"
	db TRAINERTYPE_NORMAL
	; party
	db 28, NIDOKING
	db 28, NIDOQUEEN
	db -1 ; end

; ================

	; POKEMANIAC
	db "Aidan@"
	db TRAINERTYPE_MOVES
	; party
	db 36, SNORLAX
		db HEADBUTT, DEFENSE_CURL, ROLLOUT, EXPLOSION
	db 36, PORYGON2
		db CONVERSION, RECOVER, PSYBEAM, TRI_ATTACK
	db -1 ; end

; ================

	; POKEMANIAC
	db "Clive@"
	db TRAINERTYPE_NORMAL
	; party
	db 23, SLOWPOKE
	db 23, WOOPER
	db 25, NIDORINO
	db -1 ; end

; ================
; ================================

CosplayerGroup:
; ================================
; ================

	; COSPLAYER ; UNDERGROUND
	db "Clara@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, VULPIX
	db 22, PIKACHU
	db -1 ; end

; ================

	; COSPLAYER
	db "Chloe@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, VULPIX
	db 25, PIKACHU
	db 25, VULPIX
	db -1 ; end

; ================

	; COSPLAYER
	db "Brooke@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, NINETALES
	db 60, VULPIX
	db -1 ; end

; ================

	; COSPLAYER
	db "Kuroko@"
	db TRAINERTYPE_ITEM
	; party
	db 60, VULPIX, EVIOLITE
	db 62, NINETALES, CHARCOAL
	db -1 ; end

; ================
; ================================

SuperNerdGroup:
; ================================
; ================

	; SUPER_NERD
	db "Stan@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, GRIMER
	db -1 ; end

; ================

	; SUPER_NERD
	db "Eric@" ; goldenrod underground
	db TRAINERTYPE_NORMAL
	; party
	db 20, NATU
	db 20, VOLTORB
	db -1 ; end

; ================

	; SUPER_NERD
	db "Sam@"
	db TRAINERTYPE_NORMAL
	; party
	db 55, GRIMER
	db 56, MUK
	db -1 ; end

; ================

	; SUPER_NERD
	db "Tyrone@"
	db TRAINERTYPE_NORMAL
	; party
	db 55, MAGNEMITE
	db 56, MAGNETON
	db 55, MAGNEMITE
	db -1 ; end

; ================

	; SUPER_NERD
	db "Pat@"
	db TRAINERTYPE_NORMAL
	; party
	db 56, PORYGON2
	db -1 ; end

; ================

	; SUPER_NERD
	db "Shawn@"
	db TRAINERTYPE_NORMAL
	; party
	db 44, MAGNEMITE
	db 46, MUK
	db 45, MAGNETON
	db -1 ; end

; ================

	; SUPER_NERD
	db "Teru@" ; UNDERGROUND
	db TRAINERTYPE_NORMAL
	; party
	db 20, SKUNTANK
	db 18, DRIFBLIM
	db -1 ; end

; ================

	; SUPER_NERD
	db "Hugh@"
	db TRAINERTYPE_MOVES
	; party
	db 39, SEADRA
		db SMOKESCREEN, OUTRAGE, SURF, WATERFALL
	db -1 ; end

; ================

	; SUPER_NERD
	db "Markus@"
	db TRAINERTYPE_MOVES
	; party
	db 30, SLOWBRO
		db CONFUSION, HEADBUTT, WATER_PULSE, STRENGTH
	db -1 ; end

; ================

	; SUPER_NERD
	db "Cary@"
	db TRAINERTYPE_NORMAL
	; party
	db 63, FLAREON
	db -1 ; end

; ================

	; SUPER_NERD
	db "Waldo@"
	db TRAINERTYPE_NORMAL
	; party
	db 65, ARCANINE
	db -1 ; end

; ================

	; SUPER_NERD
	db "Merle@"
	db TRAINERTYPE_NORMAL
	; party
	db 63, MAGCARGO
	db -1 ; end

; ================

	; SUPER_NERD
	db "Luis@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, MAGMAR
	db 63, WEEZING
	db 59, MAGMAR
	db -1 ; end

; ================

	; SUPER_NERD
	db "Jovan@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, MAGNETON
	db 60, VOLTORB
	db 61, ELECTRODE
	db -1 ; end

; ================

	; SUPER_NERD
	db "Miguel@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 62, CORSOLA, ABILITY_1 | NAT_NEUTRAL, MALE
	db 62, CORSOLA, ABILITY_1 | NAT_NEUTRAL, MALE
	db 64, UMBREON, SHINY_MASK | ABILITY_1 | NAT_NEUTRAL, MALE
	db -1 ; end

; ================

	; SUPER_NERD
	db "Rory@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, PORYGON
	db -1 ; end

; ================

	; SUPER_NERD
	db "Gregg@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, PORYGON
	db 55, PORYGON2
	db -1 ; end

; ================

	; SUPER_NERD
	db "Foote@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, SNORLAX
	db -1 ; end

; ================

	; SUPER_NERD
	db "Dave@"
	db TRAINERTYPE_NORMAL
	; party
	db 52, LARVITAR
	db 53, PUPITAR
	db 56, PORYGON_Z
	db -1 ; end

; ================

	; SUPER_NERD
	db "Mako@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, CROBAT
	db 53, POLITOED
	db 56, ARCANINE
	db -1 ; end

; ================
; ================================

LassGroup:
; ================================
; ================

	; LASS
	db "Dana@"
	db TRAINERTYPE_MOVES
	; party
	db 19, FLAAFFY
		db TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 19, TOTODILE
		db TACKLE, LEER, DISABLE, CONFUSION
	db -1 ; end

; ================

	; LASS
	db "Dana@"
	db TRAINERTYPE_MOVES
	; party
	db 21, FLAAFFY
		db TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 21, TOTODILE
		db TACKLE, LEER, DISABLE, CONFUSION
	db -1 ; end

; ================

	; LASS
	db "Dana@"
	db TRAINERTYPE_MOVES
	; party
	db 29, TOTODILE
		db TACKLE, DISABLE, CONFUSION, SCREECH
	db 29, FLAAFFY
		db TACKLE, THUNDERSHOCK, THUNDER_WAVE, THUNDERBOLT
	db -1 ; end

; ================

	; LASS
	db "Dana@"
	db TRAINERTYPE_MOVES
	; party
	db 32, TOTODILE
		db TACKLE, DISABLE, CONFUSION, SCREECH
if DEF(FAITHFUL)
	db 32, FLAAFFY
		db TACKLE, THUNDERPUNCH, THUNDER_WAVE, THUNDERBOLT
else
	db 32, AMPHAROS
		db TACKLE, THUNDERPUNCH, THUNDER_WAVE, THUNDERBOLT
endc
	db -1 ; end

; ================

	; LASS
	db "Dana@"
	db TRAINERTYPE_MOVES
	; party
	db 36, AMPHAROS
		db SWIFT, THUNDERPUNCH, THUNDER_WAVE, THUNDERBOLT
	db 36, CROCONAW
		db DISABLE, SURF, PSYCHIC_M, SCREECH
	db -1 ; end

; ================

	; LASS ; goldenrod gym
	db "Cathy@"
	db TRAINERTYPE_MOVES
	; party
	db 25, SNUBBULL
		db SCARY_FACE, CHARM, BITE, LICK
	db -1 ; end

; ================

	; LASS
	db "Amanda@"
	db TRAINERTYPE_NORMAL
	; party
	db 57, GLOOM
	db 60, ARBOK
	db 57, GLOOM
	db -1 ; end

; ================

	; LASS
	db "Krise@" ; NATIONAL PARK
	db TRAINERTYPE_NORMAL
	; party
	db 20, GLOOM
	db 22, DIGLETT
	db -1 ; end

; ================

	; LASS
	db "Connie@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, AZUMARILL
	db 21, MAGNETON
	db -1 ; end

; ================

	; LASS
	db "Linda@"
	db TRAINERTYPE_NORMAL
	; party
	db 57, CHIKORITA
	db 59, BAYLEEF
	db 61, MEGANIUM
	db -1 ; end

; ================

	; LASS
	db "Laura@"
	db TRAINERTYPE_ITEM
	; party
	db 52, GLOOM, SITRUS_BERRY
	db 54, PIDGEOTTO, NO_ITEM
	db 54, BELLOSSOM, NO_ITEM
	db -1 ; end

; ================

	; LASS
	db "Shannon@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, PARAS
	db 53, PARAS
	db 55, PARASECT
	db -1 ; end

; ================

	; LASS
	db "Michelle@"
	db TRAINERTYPE_NORMAL
	; party
	db 56, LEAFEON
	db 57, TANGELA
	db 58, SUNFLORA
	db -1 ; end

; ================

	; LASS
	db "Ellen@"
	db TRAINERTYPE_NORMAL
	; party
	db 52, WIGGLYTUFF
	db 54, GRANBULL
	db -1 ; end

; ================

	; LASS
	db "Iris@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, WEEPINBELL
	db 59, TANGELA
	db 60, JIGGLYPUFF
	db 61, BELLOSSOM
	db -1 ; end

; ================

	; LASS
	db "Miriam@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, CLEFAIRY
	db 61, CLEFABLE
	db 59, JIGGLYPUFF
	db 61, WIGGLYTUFF
	db -1 ; end

; ================

	; LASS
	db "Layla@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, CLEFAIRY
	db 25, TOGETIC
	db -1 ; end

; ================

	; LASS
	db "Rose@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 22, ESPEON, SHINY_MASK | ABILITY_1 | NAT_NEUTRAL, FEMALE
	db 22, TOGETIC, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db -1 ; end

; ================

	; LASS
	db "Meadow@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, MEOWTH
	db 53, MEOWTH
	db 55, PERSIAN
	db -1 ; end

; ================

	; LASS
	db "Jennifer@"
	db TRAINERTYPE_NORMAL
	; party
	db 52, CLEFAIRY
	db 52, MARILL
	db 54, CLEFABLE
	db 54, AZUMARILL
	db -1 ; end

; ================

	; LASS
	db "Gina@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 63, RAICHU, LEFTOVERS
		db THUNDERBOLT, SURF, THUNDER_WAVE, SUBSTITUTE
	db -1 ; end

; ================

	; LASS
	db "Alice@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 60, EEVEE, EVIOLITE, ABILITY_1 | NAT_SPD_UP_DEF_DOWN, FEMALE, "VuiVui@"
		db RETURN, SHADOW_BALL, PROTECT, ATTRACT
	db 61, UMBREON, LEFTOVERS, ABILITY_1 | NAT_SDEF_UP_SATK_DOWN, MALE, "Eon@"
		db CHARM, REST, TOXIC, PURSUIT
	db 61, ESPEON, SHELL_BELL, ABILITY_1 | NAT_SATK_UP_ATK_DOWN, MALE, "Vee@"
		db PSYCHIC_M, HEALINGLIGHT, GROWTH, BITE
	db -1 ; end

; ================

	; LASS
	db "Duplica@"
	db TRAINERTYPE_ITEM
	; party
	db 60, SNUBBULL, METAL_POWDER
	db 60, SNUBBULL, QUICK_POWDER
	db 60, SNUBBULL, FOCUS_SASH
	db -1 ; end

; ================
; ================================

BeautyGroup:
; ================================
; ================

	; BEAUTY
	db "Victoria@" ; goldenrod gym
	db TRAINERTYPE_NORMAL
	; party
	db 15, FURRET
	db 20, FURRET
	db 25, FURRET
	db -1 ; end

; ================

	; BEAUTY
	db "Samantha@"; UNDERGROUND
	db TRAINERTYPE_MOVES
	; party
	db 22, GLOOM
		db POISONPOWDER, ACID, MEGA_DRAIN, NO_MOVE
	db 25, WEEPINBELL
		db POISONPOWDER, WRAP, RAZOR_LEAF, GROWTH
	db -1 ; end

; ================

	; BEAUTY
	db "Cassie@"; UNDERGROUND
	db TRAINERTYPE_NORMAL
	; party
	db 22, VENOMOTH
	db 22, BUTTERFREE
	db -1 ; end

; ================

	; BEAUTY
	db "Julia@"; UNDERGROUND
	db TRAINERTYPE_NORMAL
	; party
	db 23, SEADRA
	db 23, VAPOREON
	db -1 ; end

; ================

	; BEAUTY
	db "Valencia@" ; RADIO TOWER 
	db TRAINERTYPE_NORMAL
	; party
	db 22, LOPUNNY
	db -1 ; end

; ================

	; BEAUTY ; route 41 
	db "Olivia@"
	db TRAINERTYPE_NORMAL
	; party
	db 34, VULPIX
	db 32, GROWLITHE
	db 36, PONYTA
	db -1 ; end

; ================

	; BEAUTY
	db "Callie@" ; ROUTE 37 
	db TRAINERTYPE_NORMAL
	; party
	db 26, CLEFABLE
	db 26, WIGGLYTUFF
	db -1 ; end

; ================

	; BEAUTY
	db "Cassandra@" ; ROUTE 37 
	db TRAINERTYPE_NORMAL
	; party
	db 26, PONYTA
	db 26, JYNX
	db -1 ; end

; ================

	; BEAUTY ; route 41 
	db "Charlotte@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, QUILAVA
	db 34, SUNFLORA
	db 36, TOGETIC
	db -1 ; end

; ================

	; BEAUTY
	db "Bridget@" ; route 41 
	db TRAINERTYPE_NORMAL
	; party
	db 34, NINETALES
	db 34, JUMPLUFF
	db -1 ; end

; ================

	; BEAUTY
	db "Veronica@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, WIGGLYTUFF
	db 54, MILTANK
	db 56, CLEFABLE
	db -1 ; end

; ================

	; BEAUTY
	db "Nicole@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY
	; party
	db 60, MARILL, EVIOLITE, ABIL_MARILL_HUGE_POWER | NAT_NEUTRAL, FEMALE
	db 63, AZUMARILL, LEFTOVERS, ABIL_AZUMARILL_HUGE_POWER | NAT_NEUTRAL, FEMALE
	db 60, MARILL, BLACK_BELT, ABIL_MARILL_HUGE_POWER | NAT_NEUTRAL, FEMALE
	db -1 ; end

; ================

	; BEAUTY
	db "Rachael@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 60, MACHAMP, ABILITY_1 | NAT_NEUTRAL, MALE
	db 58, CLEFABLE, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db -1 ; end

; ================

	; BEAUTY
	db "Ioana@"
	db TRAINERTYPE_NORMAL
	; party
	db 52, SNUBBULL
	db 55, GRANBULL
	db 52, JIGGLYPUFF
	db 54, SUNFLORA
	db -1 ; end

; ================
; ================================

BugManiacGroup:
; ================================
; ================

	; BUG_MANIAC
	db "Lou@" ; NATIONAL PARK 
	db TRAINERTYPE_MOVES
	; party
	db 18, YANMA
		db BUG_BITE, QUICK_ATTACK, DOUBLE_TEAM, SONIC_BOOM
	db 18, BUTTERFREE
		db CONFUSION, SUPERSONIC, GUST, DEFENSE_CURL
	db -1 ; end

; ================

	; BUG_MANIAC ; TARN 
	db "Rob@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, VESPIQUEN
	db 42, DRAPION
	db -1 ; end

; ================

	; BUG_MANIAC
	db "Ed@"
	db TRAINERTYPE_NORMAL
	; party
	db 61, YANMA
	db 62, BEEDRILL
	db 62, BUTTERFREE
	db -1 ; end

; ================

	; BUG_MANIAC
	db "Doug@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, BUTTERFREE
	db 57, ARIADOS
	db -1 ; end

; ================

	; BUG_MANIAC
	db "Dane@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, BEEDRILL
	db 61, BUTTERFREE
	db -1 ; end

; ================

	; BUG_MANIAC
	db "Dion@"
	db TRAINERTYPE_NORMAL
	; party
	db 63, ARIADOS
	db -1 ; end

; ================

	; BUG_MANIAC
	db "Stacey@"
	db TRAINERTYPE_NORMAL
	; party
	db 60, PARAS
	db 62, PARAS
	db 64, PARAS
	db -1 ; end

; ================

	; BUG_MANIAC
	db "Ellis@"
	db TRAINERTYPE_NORMAL
	; party
	db 58, PARAS
	db 60, VENONAT
	db 62, BEEDRILL
	db -1 ; end

; ================

	; BUG_MANIAC
	db "Abner@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, BUTTERFREE
	db 59, BEEDRILL
	db 59, PIKACHU
	db -1 ; end

; ================

	; BUG_MANIAC
	db "Kenta@"
	db TRAINERTYPE_NORMAL
	; party
	db 60, BEEDRILL
	db 60, BEEDRILL
	db 60, PARASECT
	db -1 ; end

; ================

	; BUG_MANIAC
	db "Robby@"
	db TRAINERTYPE_NORMAL
	; party
	db 60, BUTTERFREE
	db 60, BUTTERFREE
	db 60, PARASECT
	db -1 ; end

; ================

	; BUG_MANIAC
	db "Pierre@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, YANMA
	db 54, YANMA
	db 56, YANMEGA
	db -1 ; end

; ================

	; BUG_MANIAC
	db "Dylan@"
	db TRAINERTYPE_NORMAL
	; party
	db 55, LEDIAN
	db 55, BUTTERFREE
	db -1 ; end

; ================

	; BUG_MANIAC
	db "Kai@"
	db TRAINERTYPE_NORMAL
	; party
	db 58, VENONAT
	db 60, VENOMOTH
	db -1 ; end

; ================
; ================================

RuinManiacGroup:
; ================================
; ================

	; RUIN_MANIAC ; becomes dragon tamer , melting interest 
	db "Jones@"
	db TRAINERTYPE_NORMAL
	; party
	db 36, BRONZOR
	db 44, BRONZONG
	db -1 ; end

; ================

	; RUIN_MANIAC ; becomes dragon tamer 
	db "Leland@"
	db TRAINERTYPE_NORMAL
	; party
	db 36, TORTERRA
	db 40, HIPPOWDON
	db -1 ; end

; ================

	; RUIN_MANIAC ; UNION CAVE B1F NORTH 
	db "Petry@"
	db TRAINERTYPE_MOVES
	; party
	db 7, RAMPARDOS
		db ROCK_SMASH, SCARY_FACE, SCREECH, NO_MOVE
	db 7, BASTIODON
		db MIRROR_COAT, TACKLE, SCREECH, NO_MOVE
	db -1 ; end

; ================

	; RUIN_MANIAC ; GLYNN  B2F UNION CAVE 
	db "Petry@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 40, BASTIODON, LEFTOVERS, 40
		db REST, MIRROR_COAT, IRON_HEAD, ROCK_SLIDE
	db 40, RAMPARDOS, LIFE_ORB, 40
		db ROCK_SLIDE, FIRE_PUNCH, ZEN_HEADBUTT, EARTHQUAKE
	db -1 ; end

; ================

	; RUIN_MANIAC
	db "Smilte@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, DUGTRIO
	db 54, DUGTRIO
	db 56, DRAGONAIR
	db -1 ; end

; ================
; ================================

FirebreatherGroup:
; ================================
; ================

	; FIREBREATHER ; union cave
	db "Otis@"
	db TRAINERTYPE_NORMAL
	; party
	db 6, MAGMAR
	db 7, PONYTA
	db -1 ; end

; ================

	; FIREBREATHER ; gauldenrod
	db "Dan@"
	db TRAINERTYPE_NORMAL
	; party
	db 15, QUILAVA
	db 15, MAGCARGO
	db 13, WEEZING
	db -1 ; end

; ================

	; FIREBREATHER
	db "Ned@" ; USED
	db TRAINERTYPE_NORMAL
	; party
	db 16, PONYTA
	db 17, MAGMAR
;	db 16, MONFERNO
	db -1 ; end

; ================

	; FIREBREATHER
	db "Burt@" ; ROUTE 36 
	db TRAINERTYPE_NORMAL
	; party
	db 26, ARBOK
	db 28, GRIMER
	db 28, NIDORINO
	db -1 ; end

; ================

	; FIREBREATHER ; burned tower 1f
	db "Bill@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, GRIMER
	db 24, GRIMER
	db 25, MUK
	db -1 ; end

; ================

	; FIREBREATHER ; route 35
	db "Walt@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, PONYTA
	db 22, MAGMAR
	db -1 ; end

; ================

	; FIREBREATHER ; UNION CAVE 
	db "Ray@"
	db TRAINERTYPE_NORMAL
	; party
	db 5, GROWLITHE
	db 5, CYNDAQUIL
	db 5, GRIMER
	db -1 ; end

; ================

	; FIREBREATHER ; BURNED TOWER 1F??
	db "Lyle@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, GROWLITHE
	db 26, QUILAVA
	db -1 ; end

; ================

	; FIREBREATHER ; UNION CAVE B2F JAY 
	db "Ray@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, ARCANINE
	db 36, TYPHLOSION
	db 34, MUK
	db -1 ; end

; ================

	; FIREBREATHER ; oleg  ;  B2F UNION CAVE 
	db "Otis@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, RAPIDASH
	db 36, MAGMORTAR
	db -1 ; end

; ================

	; FIREBREATHER
	db "Tala@"
	db TRAINERTYPE_NORMAL
	; party
	db 61, WEEZING
	db 62, MAGMORTAR
	db -1 ; end

; ================
; ================================

JugglerGroup:
; ================================
; ================

	; JUGGLER
	db "Irwin@"
	db TRAINERTYPE_NORMAL
	; party
	db 12, VOLTORB
	db 16, VOLTORB
	db 18, VOLTORB
	db 20, VOLTORB
	db -1 ; end

; ==============
	; JUGGLER
	db "Fritz@"
	db TRAINERTYPE_NORMAL
	; party
	db 45, MR__MIME
	db 45, MAGMAR
	db 45, MACHOKE
	db -1 ; end

; ================

	; JUGGLER
	db "Horton@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, ELECTRODE
	db 53, ELECTRODE
	db 53, ELECTRODE
	db -1 ; end

; ================
; ================================

SchoolboyGroup:
; ================================
; ================

	; SCHOOLBOY
	db "Jack@" ; USED
	db TRAINERTYPE_NORMAL
	; party
	db 16, CYNDAQUIL
	db 16, EKANS
	db 16, DIGLETT
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Jack@"
	db TRAINERTYPE_NORMAL
	; party
	db 14, GLOOM
	db 17, VOLTORB
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Jack@"
	db TRAINERTYPE_NORMAL
	; party
	db 28, GLOOM
	db 31, ELECTRODE
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Jack@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, GLOOM
	db 33, GROWLITHE
	db 33, ELECTRODE
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Jack@"
	db TRAINERTYPE_MOVES
	; party
	db 35, ELECTRODE
		db SCREECH, SONIC_BOOM, ROLLOUT, LIGHT_SCREEN
	db 35, GROWLITHE
		db SUNNY_DAY, LEER, TAKE_DOWN, FLAME_CHARGE
	db 37, VILEPLUME
		db SOLAR_BEAM, SLEEP_POWDER, ACID, HEALINGLIGHT
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Alan@" ; ROUTE 36
	db TRAINERTYPE_MOVES
	; party
	db 17, MISDREAVUS
		db PAIN_SPLIT, CURSE, PSYBEAM, FUTURE_SIGHT
	db 17, TANGELA
		db REST, SLEEP_TALK, CURSE, VINE_WHIP
	db -1 ; end
; ================

	; SCHOOLBOY
	db "Alan@"
	db TRAINERTYPE_NORMAL
	; party
	db 17, TANGELA
	db 17, YANMA
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Alan@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, NATU
	db 22, TANGELA
	db 20, QUAGSIRE
	db 25, YANMA
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Alan@"
	db TRAINERTYPE_NORMAL
	; party
	db 27, NATU
	db 27, TANGELA
	db 30, QUAGSIRE
	db 30, YANMA
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Alan@"
	db TRAINERTYPE_MOVES
	; party
	db 35, XATU
		db PECK, NIGHT_SHADE, SWIFT, FUTURE_SIGHT
	db 38, TANGROWTH
		db ANCIENTPOWER, POISONPOWDER, VINE_WHIP, MEGA_DRAIN
	db 37, YANMA
		db QUICK_ATTACK, DOUBLE_TEAM, DRAGON_RAGE, WING_ATTACK
	db 35, QUAGSIRE
		db LEER, HEADBUTT, AMNESIA, EARTHQUAKE
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Chad@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, MR__MIME
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Chad@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, MR__MIME
	db 20, MAGNEMITE
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Chad@"
	db TRAINERTYPE_NORMAL
	; party
	db 27, MR__MIME
	db 31, MAGNETON
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Chad@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, MR__MIME
	db 34, MAGNETON
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Chad@"
	db TRAINERTYPE_MOVES
	; party
	db 34, MR__MIME
		db PSYCHIC_M, LIGHT_SCREEN, REFLECT, ENCORE
	db 38, MAGNETON
		db ZAP_CANNON, THUNDER_WAVE, SUPERSONIC, SWIFT
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Kipp@"
	db TRAINERTYPE_NORMAL
	; party
	db 55, VOLTORB
	db 58, VOLTORB
	db 55, MAGNEMITE
	db 58, MAGNETON
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Johnny@" ; national park 
	db TRAINERTYPE_NORMAL
	; party
	db 18, WEEPINBELL
	db 16, ARIADOS
	db 17, MEOWTH
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Danny@"
	db TRAINERTYPE_NORMAL
	; party
	db 61, JYNX
	db 61, ELECTABUZZ
	db 61, MAGMAR
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Tommy@"
	db TRAINERTYPE_NORMAL
	; party
	db 56, XATU
	db 57, ALAKAZAM
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Dudley@"
	db TRAINERTYPE_ITEM
	; party
	db 55, GLOOM, SITRUS_BERRY
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Joe@"
	db TRAINERTYPE_ITEM
	; party
	db 54, TANGROWTH, SITRUS_BERRY
	db 54, VAPOREON, NO_ITEM
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Billy@"
	db TRAINERTYPE_NORMAL
	; party
	db 57, PARAS
	db 59, PARASECT
	db 57, POLIWHIRL
	db 55, SNUBBULL
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Nate@"
	db TRAINERTYPE_NORMAL
	; party
	db 46, LEDIAN
	db 48, EXEGGUTOR
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Ricky@"
	db TRAINERTYPE_NORMAL
	; party
	db 44, GIRAFARIG
	db 46, SNUBBULL
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Sherman@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, FURRET
	db 61, PIDGEOT
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Connor@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, FURRET
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Torin@"
	db TRAINERTYPE_NORMAL
	; party
	db 58, DUGTRIO
	db 55, GOLBAT
	db -1 ; end

; ================

	; SCHOOLBOY
	db "Travis@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, GLOOM
	db -1 ; end

; ================
; ================================

SchoolgirlGroup:
; ================================
; ================

	; SCHOOLGIRL
	db "Molly@"
	db TRAINERTYPE_NICKNAME
	; party
	db 6, TEDDIURSA, "Teddy@"
	db 6, TANGELA, "Spaghetti@"
	db -1 ; end

; ================

	; SCHOOLGIRL
	db "Eliza@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_NICKNAME
	; party
	db 8, EEVEE, SILVER_LEAF, "Silver@"
	db 6, EXEGGCUTE, NO_ITEM, "SunnySide@"
	db 7, CHIKORITA, ORAN_BERRY, "Chica@"
	db -1 ; end

; ================

	; SCHOOLGIRL
	db "Faith@"
	db TRAINERTYPE_NICKNAME
	; party
	db 15, UNOWN, "Alphred@"
	db 20, DRATINI, "Hugs@"
	db 25, PRINPLUP, "Tuxie@"
	db -1 ; end

; ================

	; SCHOOLGIRL
	db "Sarah@"
	db TRAINERTYPE_NICKNAME
	; party
	db 25, GROWLITHE, "Charmer@"
	db 23, FURRET, "@"
	db 24, MARILL, "@"
	db -1 ; end

; ================

	; SCHOOLGIRL
	db "Isabel@"
	db TRAINERTYPE_NICKNAME
	; party
	db 25, POLIWAG, "Turtle@"
	db 23, PIDGEY, "@"
	db 24, PIKACHU, "@"
	db -1 ; end

; ================

	; SCHOOLGIRL
	db "Imogen@"
	db TRAINERTYPE_NICKNAME
	; party
	db 4, SNUBBULL, "ColdWater@"
	db -1 ; end

; ================
; ================================

PsychicGroup:
; ================================
; ================

	; PSYCHIC_T
	db "Nathan@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, GIRAFARIG
	db -1 ; end

; ================

	; PSYCHIC_T
	db "Franklin@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, KADABRA
	db 56, GIRAFARIG
	db -1 ; end

; ================

	; PSYCHIC_T
	db "Herman@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, EXEGGCUTE
	db 53, EXEGGCUTE
	db 55, EXEGGUTOR
	db -1 ; end

; ================

	; PSYCHIC_T
	db "Fidel@"
	db TRAINERTYPE_NORMAL
	; party
	db 57, XATU
	db -1 ; end

; ================

	; PSYCHIC_T
	db "Greg@"
	db TRAINERTYPE_MOVES
	; party
	db 27, HAUNTER
		db HYPNOSIS, DREAM_EATER, CURSE, NIGHT_SHADE
	db 27, SLOWPOKE
		db REST, SLEEP_TALK, CURSE, ZEN_HEADBUTT
	db -1 ; endf

; ================

	; PSYCHIC_T
	db "Norman@"
	db TRAINERTYPE_MOVES
	; party
	db 17, SLOWPOKE
		db TACKLE, GROWL, WATER_GUN, 0
	db 20, SLOWPOKE
		db CURSE, BODY_SLAM, WATER_GUN, CONFUSION
	db -1 ; end

; ================

	; PSYCHIC_T
	db "Mark@"
	db TRAINERTYPE_MOVES
	; party
	db 14, ABRA
		db TELEPORT, FLASH, 0, 0
	db 14, ABRA
		db TELEPORT, FLASH, 0, 0
	db 16, KADABRA
		db TELEPORT, CALM_MIND, CONFUSION, 0
	db -1 ; end

; ================

	; PSYCHIC_T
	db "Phil@"
	db TRAINERTYPE_NORMAL
	; party
	db 35, XATU
	db 36, KADABRA
	db -1 ; end

; ================

	; PSYCHIC_T
	db "Vernon@"
	db TRAINERTYPE_NORMAL
	; party
	db 44, ESPEON
	db -1 ; end

; ================

	; PSYCHIC_T
	db "Gilbert@"
	db TRAINERTYPE_NORMAL
	; party
	db 38, STARMIE
	db 36, EXEGGCUTE
	db 40, GIRAFARIG
	db -1 ; end

; ================

	; PSYCHIC_T
	db "Jared@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, MR__MIME
	db 55, EXEGGCUTE
	db 55, EXEGGCUTE
	db -1 ; end

; ================

	; PSYCHIC_T
	db "Rodney@"
	db TRAINERTYPE_NORMAL
	; party
	db 45, ABRA
	db 47, KADABRA
	db -1 ; end

; ================

	; PSYCHIC_T
	db "Leon@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, PIDGEOTTO
	db 55, KADABRA
	db 53, GIRAFARIG
	db -1 ; end



; ================
; ================================

HexManiacGroup:
; ================================
; ================

	; HEX_MANIAC
	db "Tamara@"
	db TRAINERTYPE_NORMAL
	; party
	db 16, GASTLY
	db 18, MISDREAVUS
	db -1 ; end

; ================

	; HEX_MANIAC
	db "Ashley@"
	db TRAINERTYPE_NORMAL
	; party
	db 35, HAUNTER
	db 36, MISMAGIUS
	db -1 ; end

; ================

	; HEX_MANIAC
	db "Amy@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, MISDREAVUS
	db 56, GENGAR
	db 53, HAUNTER
	db 56, MISMAGIUS
	db -1 ; end

; ================

	; HEX_MANIAC
	db "Luna@"
	db TRAINERTYPE_MOVES
	; party
	db 54, KADABRA
		db PSYCHIC_M, SHADOW_BALL, CONFUSE_RAY, FUTURE_SIGHT
	db 56, NINETALES
		db PSYCHIC_M, SHADOW_BALL, CONFUSE_RAY, FLAMETHROWER
	db -1 ; end

; ================

	; HEX_MANIAC
	db "Natalie@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, ABRA
	db 54, ABRA
	db 56, KADABRA
	db -1 ; end

; ================

	; HEX_MANIAC
	db "Vivian@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, HAUNTER
	db 52, HAUNTER
	db 54, HAUNTER
	db 56, ALAKAZAM
	db -1 ; end



; ================
; ================================

SageGroup:
; ================================
; ================

	; SAGE
	db "Chow@" ; used 
	db TRAINERTYPE_NORMAL
	; party
	db 8, ROWLET
	db 8, DARTRIX
	db 8, DUSCLOPS
	db -1 ; end

; ================

	; SAGE
	db "Nico@" ; used 
	db TRAINERTYPE_NORMAL
	; party
	db 10, JIGGLYPUFF
	db 9, CLEFAIRY
	db -1 ; end

; ================

	; SAGE
	db "Jin@" ;  ; tin tower old 3f
	db TRAINERTYPE_NORMAL
	; party
	db 27, HAUNTER
	db 30, MISDREAVUS
	db 32, MISMAGIUS
	db -1 ; end

; ================

	; SAGE
	db "Troy@" ; ACADEMY 
	db TRAINERTYPE_NORMAL
	; party
	db 21, WEEPINBELL
	db 21, MURKROW
	db -1 ; end

; ================

	; SAGE
	db "Jeffrey@" ; tin tower old 3f
	db TRAINERTYPE_NORMAL
	; party
	db 33, DUSCLOPS
	db 30, GENGAR
	db -1 ; end

; ================

	; SAGE
	db "Ping@" ;  ; tin tower old 3f
	db TRAINERTYPE_NORMAL
	; party
	db 30, NINETALES
	db 33, STANTLER
	db -1 ; end

; ================

	; SAGE ; ACADEMY ; ACADEMY
	db "Edmond@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, WEEPINBELL
	db 23, BAYLEEF
	db 24, GLOOM
	db -1 ; end

; ================

	; SAGE ; ACADEMY
	db "Neal@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, SUNFLORA
	db 25, MURKROW
	db -1 ; end

; ================
; ================

	; SAGE
	db "Uri@"
	db TRAINERTYPE_NORMAL
	; party
	db 43, ABOMASNOW
	db 45, H__AVALUGG
	db -1 ; end

; ================

	; SAGE
	db "Virgil@"
	db TRAINERTYPE_NORMAL
	; party
	db 44, H__BRAVIARY
	db 47, GALLADE
	db -1 ; end
	
; ================================

MediumGroup:
; ================================
; ================

	; MEDIUM
	db "Martha@"
	db TRAINERTYPE_NORMAL
	; party
	db 10, MURKROW
	db 10, MISDREAVUS
	db -1 ; end

; ================

	; MEDIUM
	db "Grace@" ; grottoed glacier 1f
	db TRAINERTYPE_NORMAL
	; party
	db 45, MISDREAVUS
	db 45, DUSKNOIR
	db -1 ; end

; ================

	; MEDIUM
	db "Rebecca@" ; morty gym 
	db TRAINERTYPE_NORMAL
	; party
	db 36, HAUNTER
	db 38, GENGAR
	db -1 ; end

; ================

	; MEDIUM
	db "Doris@" ; morty gym 
	db TRAINERTYPE_NORMAL
	; party
	db 36, MISDREAVUS
	db 38, MISMAGIUS
	db -1 ; end

; ================
; ================

	; HEX_MANIAC
	db "Esther@" ; grottoed glacier b1f
	db TRAINERTYPE_NORMAL
	; party
	db 47, SNEASEL
	db 46, MISMAGIUS
	db 48, SNEASLER
	db -1 ; end

; ================

	; HEX_MANIAC
	db "Matilda@"
	db TRAINERTYPE_NORMAL
	; party
	db 23, ABRA
	db 24, MISDREAVUS
	db 25, KADABRA
	db -1 ; end

; ================

	; HEX_MANIAC
	db "Bethany@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, HAUNTER
	db 55, GENGAR
	db 54, MISDREAVUS
	db -1 ; end
; ================================

KimonoGirl1Group:
; ================================
; ================

	; KIMONO_GIRL_1
	db "Sayo@"
	db TRAINERTYPE_MOVES
	; party
	db 27, FLAREON 
		db FLAME_CHARGE, DIG, DOUBLE_KICK, CHARM
	db -1 ; end
	
	; KIMONO_GIRL_1
	db "Akari@"
	db TRAINERTYPE_MOVES
	; party
	db 27, JOLTEON 
		db THUNDERBOLT, LIGHT_SCREEN, DOUBLE_KICK, SWIFT
	db -1 ; end
	
	; KIMONO_GIRL_1
	db "Masako@"
	db TRAINERTYPE_MOVES
	; party
	db 25, LUXIO 
		db BITE, THUNDERSHOCK, THUNDER_WAVE, SWAGGER
	db 27, ELECTABUZZ 
		db THUNDERPUNCH, QUICK_ATTACK, LOW_KICK, LIGHT_SCREEN	
	db 30, H__ELECTRODE 
		db LEECH_SEED, ROLLOUT, VINE_WHIP, THUNDERBOLT
	db -1 ; end


	; KIMONO_GIRL_1
	db "Kroma@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 5, EEVEE, NO_ITEM, DVS_HP_FIRE, "Wisp@"
		db HIDDEN_POWER, NO_MOVE, NO_MOVE, NO_MOVE	
	db 5, EEVEE, NO_ITEM, DVS_HP_GRASS, "Petal@"
		db HIDDEN_POWER, NO_MOVE, NO_MOVE, NO_MOVE		
	db 5, EEVEE, NO_ITEM, DVS_HP_WATER, "Spray@"
		db HIDDEN_POWER, NO_MOVE, NO_MOVE, NO_MOVE		
	db 5, EEVEE, NO_ITEM, DVS_HP_FLYING, "Zeph@"
		db HIDDEN_POWER, NO_MOVE, NO_MOVE, NO_MOVE		
	db 5, EEVEE, NO_ITEM, DVS_HP_FIGHTING, "Strike@"
		db HIDDEN_POWER, NO_MOVE, NO_MOVE, NO_MOVE		
	db 5, EEVEE, NO_ITEM, DVS_HP_ROCK, "Granite@"
		db HIDDEN_POWER, NO_MOVE, NO_MOVE, NO_MOVE				
	db -1 ; end

; ================
; ================================

KimonoGirl2Group:
; ================================
; ================

	; KIMONO_GIRL_2
	db "Zuki@"
	db TRAINERTYPE_MOVES
	; party
	db 27, ESPEON 
		db PSYBEAM, SHADOW_BALL, HEALINGLIGHT, REFLECT
	db -1 ; end
	
	; KIMONO_GIRL_2
	db "Emi@"
	db TRAINERTYPE_MOVES
	; party
	db 30, SYLVEON 
		db DRAIN_KISS, CALM_MIND, SWIFT, LIGHT_SCREEN
	db -1 ; end

; ================
; ================================

KimonoGirl3Group:
; ================================
; ================

	; KIMONO_GIRL_3
	db "Naoko@"
	db TRAINERTYPE_MOVES
	; party
	db 27, LEAFEON 
		db SWORDS_DANCE, SEED_BOMB, QUICK_ATTACK, HEALINGLIGHT
	db -1 ; end

; ================
; ================================

KimonoGirl4Group:
; ================================
; ================

	; KIMONO_GIRL_4
	db "Izumi@"
	db TRAINERTYPE_MOVES
	; party
	db 27, VAPOREON 
		db BARRIER, RECOVER, SCALD, TOXIC
	db -1 ; end

	; KIMONO_GIRL_4
	db "Kuni@"
	db TRAINERTYPE_MOVES
	; party
	db 27, GLACEON 
		db BARRIER, MIRROR_COAT, ICE_BEAM, SHADOW_BALL
	db -1 ; end
	
	; KIMONO_GIRL_4
	db "Haruko@"
	db TRAINERTYPE_MOVES
	; party
	db 25, PRINPLUP 
		db METAL_CLAW, BUBBLE_BEAM, CHARM, PECK
	db 25, JYNX 
		db ICE_PUNCH, CONFUSION, HYPNOSIS, REFLECT	
	db 32, FERALIGATR 
		db AQUA_JET, SWORDS_DANCE, SCARY_FACE, BITE
	db -1 ; end

; ================
; ================================

KimonoGirl5Group:
; ================================
; ================

	; KIMONO_GIRL_5
	db "Miki@"
	db TRAINERTYPE_MOVES
	; party
	db 27, UMBREON 
		db CURSE, CONFUSE_RAY, FEINT_ATTACK, HEALINGLIGHT
	db -1 ; end
	
	; KIMONO_GIRL_5
	db "Tamako@"
	db TRAINERTYPE_MOVES
	; party
	db 25, MONFERNO 
		db MACH_PUNCH, FLAME_CHARGE, NASTY_PLOT, SWIFT
	db 27, MAGMAR 
		db FIRE_PUNCH, SMOKESCREEN, CONFUSE_RAY, DOUBLE_EDGE	
	db 30, H__ARCANINE 
		db ROCK_THROW, FIRE_SPIN, ROAR, EXTREMESPEED
	db -1 ; end

; ================
; ================================

ElderGroup:
; ================================
; ================

	; ELDER ; ACADEMY
	db "Li@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 26, VICTREEBEL, FOCUS_SASH, "Dendron@"
		db LEECH_SEED, RAZOR_LEAF, POISON_JAB, WRAP
	db 27, SUDOWOODO, FOCUS_SASH, "Petrus@"
		db ROCK_THROW, COUNTER, LOW_KICK, FEINT_ATTACK
	db 28, NOCTOWL, FOCUS_SASH, "Mortalon@"
		db SHADOW_CLAW, WING_ATTACK, REFLECT, HYPNOSIS
	db -1 ; end

; ================

	; ELDER
	db "Gaku@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, PIDGEOTTO
	db 38, FLAREON
	db 38, WEEPINBELL
	db -1 ; end

; ================

	; ELDER
	db "Masa@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, PIDGEOTTO
	db 38, JOLTEON
	db 38, POLIWHIRL
	db -1 ; end

; ================

	; ELDER
	db "Koji@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, PIDGEOTTO
	db 38, VAPOREON
	db 38, NINETALES
	db -1 ; end
	
; ================

	; ELDER ; rise 12f 
	db "Noboru@"
	db TRAINERTYPE_NORMAL
	; party
	db 46, PIDGEOT
	db 48, GLISCOR
	db 48, JUMPLUFF	
	db 49, MANTINE
	db 50, STARAPTOR
	db -1 ; end

; ================

	; ELDER ; noble 12f
	db "Takashi@"
	db TRAINERTYPE_NORMAL
	; party
	db 48, DRAGONAIR
	db 49, YANMEGA
	db 49, KANGASKHAN
	db 51, KINGDRA
	db -1 ; end

; ================

	; ELDER
	db "Isamu@" ; courage 13f
	db TRAINERTYPE_NORMAL
	; party
	db 48, ARCANINE
	db 49, MAGCARGO
	db 49, HOUNDOOM
	db 52, EXEGGUTOR
	db 52, RAPIDASH
	db -1 ; end
	
; ================

	; ELDER
	db "Kaito@" ; sea , soar 13f
	db TRAINERTYPE_NORMAL
	; party
	db 48, LAPRAS
	db 49, QUAGSIRE
	db 49, AZUMARILL
	db 49, TENTACRUEL	
	db 51, LANTURN
	db -1 ; end
	
	; ================

	; ELDER
	db "Hiroshi@" ; generous  ; 14f
	db TRAINERTYPE_NORMAL
	; party
	db 46, MACHAMP
	db 48, POLIWRATH	
	db 49, SUDOWOODO	
	db 48, PERSIAN
	db 51, H__DECIDUEYE
	db -1 ; end
	
; ================

	; ELDER
	db "Akira@" ; bright ; 15f 
	db TRAINERTYPE_NORMAL
	; party
	db 48, H__BRAVIARY
	db 49, DRIFBLIM
	db 49, AMPHAROS	
	db 51, H__ELECTRODE
	db -1 ; end
	
	; ================

	; ELDER
	db "Tadao@" ; loyal ; 16f 
	db TRAINERTYPE_NORMAL
	; party
	db 46, TOGEKISS
	db 50, UMBREON
	db 48, BLISSEY	
	db 50, CROBAT
	db -1 ; end
	
; ================

	; ELDER
	db "Satoru@" ; wise ; 17f
	db TRAINERTYPE_NORMAL
	; party
	db 46, HITMONLEE
	db 48, HITMONCHAN
	db 48, DUSKNOIR
	db 48, BRONZONG	
	db 50, SPIRITOMB
	db -1 ; end
	
; ================

	; ELDER
	db "Yoshi@" ; virtous ; 19f 
	db TRAINERTYPE_NORMAL
	; party
	db 48, MEGANIUM
	db 49, XATU	
	db 50, GRANBULL
	db 51, URSARING
	db 52, FROSLASS
	db 53, H__AVALUGG
	db -1 ; end
	


; ================
; ================================

SrAndJrGroup:
; ================================
; ================

	; SR_AND_JR ; goldenrod gym
	db "Jo & Cath@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, TEDDIURSA
	db 20, JIGGLYPUFF
	db -1 ; end

; ================

	; SR_AND_JR
	db "Jo & Cath@"
	db TRAINERTYPE_NORMAL
	; party
	db 16, JIGGLYPUFF
	db 18, TEDDIURSA
	db -1 ; end

; ================

	; SR_AND_JR
	db "Ivy & Amy@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, FLAAFFY
	db 28, GLOOM
	db -1 ; end

; ================

	; SR_AND_JR
	db "Ivy & Amy@"
	db TRAINERTYPE_NORMAL
	; party
	db 28, GLOOM
	db 30, FLAAFFY
	db -1 ; end

; ================

	; SR_AND_JR
	db "Bea & May@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, BAYLEEF
	db 20, CHIKORITA
	db -1 ; end

; ================

	; SR_AND_JR
	db "Bea & May@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, CHIKORITA
	db 24, BAYLEEF
	db -1 ; end

; ================
; ================================

CoupleGroup:
; ================================
; ================

	; COUPLE
	db "Gail & Eli@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 13, DIGLETT, ABILITY_1 | NAT_NEUTRAL, MALE
	db 15, MARILL, ABILITY_1 | NAT_NEUTRAL, MALE
	db 15, PIKACHU, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db 13, POLIWAG, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db -1 ; end

; ================

	; COUPLE
	db "Gail & Eli@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 15, PIKACHU, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db 13, POLIWAG, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db 13, DIGLETT, ABILITY_1 | NAT_NEUTRAL, MALE
	db 15, MARILL, ABILITY_1 | NAT_NEUTRAL, MALE
	db -1 ; end

; ================

	; COUPLE
	db "Duff & Eda@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 25, CLOYSTER, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db 25, ONIX, ABILITY_1 | NAT_NEUTRAL, MALE
	db -1 ; end

; ================

	; COUPLE
	db "Duff & Eda@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 25, ONIX, ABILITY_1 | NAT_NEUTRAL, MALE
	db 25, CLOYSTER, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db -1 ; end

; ================

	; COUPLE
	db "Fox & Rae@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 26, FLAREON, ABILITY_1 | NAT_NEUTRAL, MALE
	db 26, GLACEON, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db -1 ; end

; ================

	; COUPLE
	db "Fox & Rae@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 26, GLACEON, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db 26, FLAREON, ABILITY_1 | NAT_NEUTRAL, MALE
	db -1 ; end

; ================

	; COUPLE
	db "Moe & Lulu@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 53, GLOOM, ABILITY_1 | NAT_NEUTRAL, MALE
	db 53, WEEPINBELL, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db -1 ; end

; ================

	; COUPLE
	db "Moe & Lulu@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 53, WEEPINBELL, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db 53, GLOOM, ABILITY_1 | NAT_NEUTRAL, MALE
	db -1 ; end

; ================

	; COUPLE
	db "Vic & Tara@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 54, MAGMAR, ABILITY_1 | NAT_NEUTRAL, MALE
	db 53, SUNFLORA, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db -1 ; end

; ================

	; COUPLE
	db "Vic & Tara@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 53, SUNFLORA, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db 54, MAGMAR, ABILITY_1 | NAT_NEUTRAL, MALE
	db -1 ; end

; ================

	; COUPLE
	db "Tim & Sue@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 53, KADABRA, ABILITY_1 | NAT_NEUTRAL, MALE
	db 57, CROCONAW, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db -1 ; end

; ================

	; COUPLE
	db "Tim & Sue@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 57, CROCONAW, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db 53, KADABRA, ABILITY_1 | NAT_NEUTRAL, MALE
	db -1 ; end

; ================

	; COUPLE
	db "Joe & Jo@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 56, ALAKAZAM, ABILITY_1 | NAT_NEUTRAL, MALE
	db 52, BUTTERFREE, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db -1 ; end

; ================

	; COUPLE
	db "Joe & Jo@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 52, BUTTERFREE, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db 56, ALAKAZAM, ABILITY_1 | NAT_NEUTRAL, MALE
	db -1 ; end

; ================
; ================================

GentlemanGroup:
; ================================
; ================

	; GENTLEMAN
	db "Preston@" ; radio tower 2f
	db TRAINERTYPE_NORMAL
	; party
	db 18, TEDDIURSA
	db 18, TEDDIURSA	
	db 25, TEDDIURSA
	db -1 ; end

; ================

	; GENTLEMAN
	db "Edward@" ; radio tower 2f
	db TRAINERTYPE_NORMAL
	; party
	db 22, PERSIAN
	db -1 ; end

; ================

	; GENTLEMAN
	db "Gregory@" ; radio tower 2f
	db TRAINERTYPE_NORMAL
	; party
	db 22, KANGASKHAN
	db -1 ; end

; ================

	; GENTLEMAN 
	db "Alfred@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, PIDGEOTTO
	db -1 ; end

; ================

	; GENTLEMAN
	db "Milton@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, GROWLITHE
	db 56, ARCANINE
	db -1 ; end

; ================

	; GENTLEMAN; route 41 
	db "Camus@"
	db TRAINERTYPE_NORMAL
	; party
	db 33, SKARMORY
	db 32, GRANBULL
	db 34, PERSIAN
	db -1 ; end

; ================

	; GENTLEMAN
	db "Geoffrey@"
	db TRAINERTYPE_NORMAL
	; party
	db 50, MEOWTH
	db -1 ; end

; ================
; ================================

RichBoyGroup:
; ================================
; ================

	; RICH_BOY
	db "Winston@"
	db TRAINERTYPE_NORMAL
	; party
	db 46, PIDGEOT
	db 44, FURRET
	db 45, AMPHAROS
	db -1 ; end

; ================

	; RICH_BOY
	db "Gerald@"
	db TRAINERTYPE_ITEM
	; party
	db 42, AZUMARILL, NUGGET
	db 40, BLISSEY, NUGGET
	db -1 ; end

; ================

	; RICH_BOY ; route_34
	db "Irving@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 24, EEVEE, NUGGET, "Eon@"
		db CHARM, BITE, CURSE, QUICK_ATTACK
	db 24, CHANSEY, NUGGET, "Clutch@"
		db FRESH_SNACK, SEISMIC_TOSS, COUNTER, TOXIC
	db 24, PORYGON, NUGGET, "Bill@"
		db THUNDERBOLT, ICE_BEAM, CONVERSION, PSYBEAM
	db -1 ; end
	
; ================
; ================================

LadyGroup:
; ================================
; ================

	; LADY
	db "Jessica@"
	db TRAINERTYPE_ITEM
	; party
	db 55, BLISSEY, NUGGET
	db 54, FURRET, NUGGET
	db -1 ; end

; ================
; ================================

BreederGroup:
; ================================
; ================

	; BREEDER ; route 34
	db "Julie@"
	db TRAINERTYPE_ITEM
	; party
	db 15, PIKACHU, EVIOLITE
	db 18, SNUBBULL, METAL_POWDER
	db 18, TOGETIC, EVIOLITE
	db -1 ; end

; ================

	; BREEDER ; used somewhere
	db "Theresa@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY
	; party
	db 14, MAGMAR, EVIOLITE, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db 14, ELECTABUZZ, EVIOLITE, SHINY_MASK | ABILITY_1 | NAT_NEUTRAL, FEMALE
	db -1 ; end

; ================

	; BREEDER
	db "Jody@"
	db TRAINERTYPE_ITEM
	; party
	db 24, SNUBBULL, EVIOLITE
	db 24, MACHOP, EVIOLITE
	db 24, TOGETIC, EVIOLITE
	db -1 ; end

; ================

	; BREEDER
	db "Carlene@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 58, CHANSEY, WISE_GLASSES, ABILITY_1 | NAT_NEUTRAL, FEMALE
		db SPORE, NASTY_PLOT, HYPER_VOICE, PSYCHIC_M
	db 58, CHANSEY, MUSCLE_BAND, ABILITY_1 | NAT_NEUTRAL, FEMALE
		db SPORE, SWORDS_DANCE, BODY_SLAM, EARTHQUAKE
	db 62, SNUBBULL, METAL_POWDER, SHINY_MASK | ABILITY_1 | NAT_NEUTRAL, FEMALE
		db TRANSFORM, NO_MOVE, NO_MOVE, NO_MOVE
	db -1 ; end

; ================

	; BREEDER
	db "Sophie@"
	db TRAINERTYPE_ITEM
	; party
	db 25, PIKACHU, EVIOLITE
	db 26, PIKACHU, LIGHT_BALL
	db 27, RAICHU, DESTINY_KNOT
	db -1 ; end

; ================

	; BREEDER
	db "Brenda@"
	db TRAINERTYPE_ITEM
	; party
	db 55, CLEFABLE
	db 54, WIGGLYTUFF
	db 56, SNORLAX
	db -1 ; end

; ================
; ================================

BakerGroup:
; ================================
; ================

	; BAKER
	db "Chelsie@"
	db TRAINERTYPE_NORMAL
	; party
	db 18, MILTANK
if DEF(FAITHFUL)
	db 18, MAGMAR
else
	db 18, SUNFLORA
endc
	db -1 ; end

; ================

	; BAKER
	db "Sharyn@"
	db TRAINERTYPE_NORMAL
	; party
	db 46, MILTANK
	db 46, TAUROS
	db -1 ; end

; ================

	; BAKER
	db "Margaret@"
	db TRAINERTYPE_NORMAL
	; party
	db 55, CHANSEY
	db 55, MILTANK
	db -1 ; end

; ================

	; BAKER
	db "Olga@"
	db TRAINERTYPE_NORMAL
	; party
	db 50, TEDDIURSA
	db 55, URSARING
	db 53, CHANSEY
	db -1 ; end

; ================
; ================================

CowgirlGroup:
; ================================
; ================

	; COWGIRL ; lost miltank 
	db "Annie@"
	db TRAINERTYPE_NORMAL
	; party
	db 35, ARCANINE
	db 35, RAPIDASH
	db 35, TAUROS
	db -1 ; end

; ================

	; COWGIRL ; route 39
	db "April@"
	db TRAINERTYPE_NORMAL
	; party
	db 35, TAUROS
	db 36, MILTANK
	db 37, GRANBULL
	db -1 ; end

; ================
; ================================

SailorGroup:
; ================================
; ================

	; SAILOR ; 
	db "Huey@"
	db TRAINERTYPE_NORMAL
	; party
	db 18, POLIWAG
	db 20, POLIWHIRL
	db -1 ; end

; ================

	; SAILOR; 
	db "Huey@"
	db TRAINERTYPE_NORMAL
	; party
	db 28, POLIWHIRL
	db 28, POLIWHIRL
	db -1 ; end

; ================

	; SAILOR; 
	db "Huey@"
	db TRAINERTYPE_NORMAL
	; party
	db 34, POLIWHIRL
	db 34, POLIWRATH
	db -1 ; end

; ================

	; SAILOR; 
	db "Huey@"
	db TRAINERTYPE_MOVES
	; party
	db 38, POLITOED
		db WHIRLPOOL, RAIN_DANCE, BODY_SLAM, PERISH_SONG
	db 38, POLIWRATH
		db SURF, STRENGTH, ICE_PUNCH, CLOSE_COMBAT
	db -1 ; end

; ================

	; SAILOR ; ; ANCHORAGE
	db "Eugene@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, POLIWHIRL
	db 32, FURRET
	db 34, QUAGSIRE
	db -1 ; end

; ================

	; SAILOR; ANCHORAGE
	db "Terrell@"
	db TRAINERTYPE_NORMAL
	; party
	db 36, MACHOKE
	db 36, HITMONTOP
	db -1 ; end

; ================

	; SAILOR; ANCHORAGE
	db "Kent@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, CORSOLA
	db 34, OCTILLERY
	db -1 ; end

; ================

	; SAILOR ; ANCHORAGE 
	db "Ernest@"
	db TRAINERTYPE_NORMAL
	; party
	db 34, MANTINE
	db 36, URSARING
	db 38, EMPOLEON
	db -1 ; end

; ================

	; SAILOR
	db "Jeff@"
	db TRAINERTYPE_NORMAL
	; party
	db 46, FURRET
	db 46, FURRET
	db -1 ; end

; ================

	; SAILOR
	db "Garrett@"
	db TRAINERTYPE_NORMAL
	; party
	db 48, FERALIGATR
	db -1 ; end

; ================

	; SAILOR
	db "Kenneth@"
	db TRAINERTYPE_NORMAL
	; party
	db 44, MACHOP
	db 45, MACHOKE
	db 46, POLIWRATH
	db 45, MACHOKE
	db -1 ; end

; ================

	; SAILOR
	db "Stanley@"
	db TRAINERTYPE_NORMAL
	; party
	db 45, MACHOP
	db 48, MACHOKE
	db 44, TOTODILE
	db -1 ; end

; ================

	; SAILOR
	db "Harry@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, WOOPER
	db -1 ; end

; ================

	; SAILOR
	db "Parker@"
	db TRAINERTYPE_NORMAL
	; party
	db 56, SEADRA
	db 57, SEADRA
	db -1 ; end

; ================

	; SAILOR
	db "Eddie@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, AZUMARILL
	db -1 ; end

; ================

	; SAILOR
	db "Harvey@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, MACHOP
	db 22, MACHOKE
	db -1 ; end

; ================
; ================================

SwimmerMGroup: ; scavengers 
; ================================
; ================

	; SWIMMERM ; route 40 
	db "Harold@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, OCTILLERY
	db 34, SEADRA
	db 34, FLAAFFY	
	db -1 ; end

; ================

	; SWIMMERM ; route 40 
	db "Simone@"
	db TRAINERTYPE_NORMAL
	; party
	db 35, QWILFISH
	db 36, LANTURN	
	db 30, STARMIE		
	db -1 ; end

; ================

	; SWIMMERM ; route 40 
	db "Randall@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, CLOYSTER
	db 32, FORRETRESS
	db 34, ELECTRODE
	db -1 ; end

; ================

	; SWIMMERM ; route 40 
	db "Karla@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, TENTACRUEL
	db 36, PIKACHU
	db 32, UMBREON
	db -1 ; end

; ================

	; SWIMMERM ; route 40 BOSS 
	db "George@"
	db TRAINERTYPE_PERSONALITY | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 38, LANTURN, SHINY_MASK | ABILITY_1 | NAT_NEUTRAL, FEMALE, "Candela@"
		db FLASH, SPARK, SURF, RAPID_SPIN
	db 38, UMBREON, SHINY_MASK | ABILITY_1 | NAT_NEUTRAL, MALE, "Abyss@"
		db DARK_PULSE, CHARM, RECOVER, CONFUSE_RAY
	db 38, AMBIPOM, SHINY_MASK | ABILITY_1 | NAT_NEUTRAL, MALE, "Dexter@"
		db DOUBLE_KICK, FURY_STRIKES, PURSUIT, ENCORE
	db -1 ; end

; ================

	; SWIMMERM ; route 41
	db "Berke@"
	db TRAINERTYPE_NORMAL
	; party
	db 34, QWILFISH
	db 33, CROCONAW
	db -1 ; end

; ================

	; SWIMMERM; route 41
	db "Kirk@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, GYARADOS
	db 30, GYARADOS
	db -1 ; end

; ================

	; SWIMMERM; route 41
	db "Marta@" ; mathew 
	db TRAINERTYPE_NORMAL
	; party
	db 33, AZUMARILL
	db 33, CORSOLA	
	db -1 ; end

; ================

	; SWIMMERM
	db "Hal@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, SLOWPOKE
	db 25, LAPRAS
	db 24, SLOWPOKE
	db -1 ; end

; ================

	; SWIMMERM
	db "Jerome@"
	db TRAINERTYPE_NORMAL
	; party
	db 57, SEADRA
	db 58, TENTACRUEL
	db 59, TENTACRUEL
	db 58, CROCONAW
	db -1 ; end

; ================

	; SWIMMERM
	db "Tucker@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, CLOYSTER
	db 61, CLOYSTER
	db -1 ; end

; ================

	; SWIMMERM
	db "Rick@"
	db TRAINERTYPE_NORMAL
	; party
	db 13, STARYU
	db 18, STARMIE
	db 16, SEADRA
	db -1 ; end

; ================

	; SWIMMERM
	db "Frankie@"
	db TRAINERTYPE_NORMAL
	; party
	db 61, AZUMARILL
	db -1 ; end

; ================

	; SWIMMERM
	db "Tyson@"
	db TRAINERTYPE_NORMAL
	; party
	db 58, QUAGSIRE
	db 58, OCTILLERY
	db 62, QUAGSIRE
	db -1 ; end

; ================

	; SWIMMERM
	db "James@"
	db TRAINERTYPE_NORMAL
	; party
	db 15, STARYU
	db 20, STARMIE
	db 18, SEADRA
	db -1 ; end

; ================

	; SWIMMERM
	db "Walter@"
	db TRAINERTYPE_NORMAL
	; party
	db 18, SEADRA
	db 18, SEADRA
	db 21, SEADRA
	db -1 ; end

; ================

	; SWIMMERM
	db "Lewis@"
	db TRAINERTYPE_NORMAL
	; party
	db 18, STARYU
	db 21, STARMIE
	db 20, SEADRA
	db -1 ; end

; ================

	; SWIMMERM
	db "Michel@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, STARYU
	db 24, STARMIE
	db -1 ; end

; ================

	; SWIMMERM
	db "Lucas@"
	db TRAINERTYPE_NORMAL
	; party
	db 28, VAPOREON
	db -1 ; end

; ================

	; SWIMMERM
	db "Frank@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, MANTINE
	db -1 ; end

; ================

	; SWIMMERM
	db "Nadar@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, SEADRA
	db 25, QUAGSIRE
	db -1 ; end

; ================

	; SWIMMERM
	db "Conrad@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, AZUMARILL
	db -1 ; end

; ================

	; SWIMMERM
	db "Romeo@"
	db TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 57, AZUMARILL, ABIL_AZUMARILL_HUGE_POWER | NAT_ATK_UP_SATK_DOWN, MALE
		db AQUA_TAIL, PLAY_ROUGH, ROLLOUT, CLOSE_COMBAT
	db -1 ; end

; ================

	; SWIMMERM
	db "Malcolm@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, CLOYSTER
	db 55, LAPRAS
	db 54, CLOYSTER
	db -1 ; end

; ================

	; SWIMMERM
	db "Armand@"
	db TRAINERTYPE_NORMAL
	; party
	db 55, FERALIGATR
	db 55, CLOYSTER
	db -1 ; end

; ================

	; SWIMMERM
	db "Thomas@"
	db TRAINERTYPE_MOVES
	; party
	db 20, POLIWHIRL
		db DEFENSE_CURL, BITE, SURF, RAPID_SPIN
	db -1 ; end

; ================

	; SWIMMERM
	db "Luis@"
	db TRAINERTYPE_NORMAL
	; party
	db 60, SEADRA
	db 56, QUAGSIRE
	db -1 ; end

; ================

	; SWIMMERM
	db "Elmo@"
	db TRAINERTYPE_NORMAL
	; party
	db 60, POLIWHIRL
	db 56, TENTACRUEL
	db -1 ; end

; ================

	; SWIMMERM
	db "Duane@"
	db TRAINERTYPE_NORMAL
	; party
	db 60, FERALIGATR
	db 60, CORSOLA
	db -1 ; end

; ================

	; SWIMMERM
	db "Esteban@"
	db TRAINERTYPE_NORMAL
	; party
	db 58, CROCONAW
	db 58, POLIWRATH
	db -1 ; end

; ================

	; SWIMMERM
	db "Ezra@"
	db TRAINERTYPE_NORMAL
	; party
	db 52, SEADRA
	db 56, KINGDRA
	db -1 ; end

; ================

	; SWIMMERM
	db "Ashe@"
	db TRAINERTYPE_NORMAL
	; party
	db 63, POLITOED
	db 63, POLIWRATH
	db -1 ; end

; ================
; ================================

SwimmerFGroup:
; ================================
; ================

	; SWIMMERF
	db "Elaine@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, STARYU
	db -1 ; end

; ================

	; SWIMMERF
	db "Paula@"
	db TRAINERTYPE_NORMAL
	; party
	db 19, STARYU
	db 19, CLOYSTER
	db -1 ; end

; ================

	; SWIMMERF
	db "Kaylee@"
	db TRAINERTYPE_NORMAL
	; party
	db 18, MARILL
	db 20, MARILL
	db 20, AZUMARILL
	db -1 ; end

; ================

	; SWIMMERF
	db "Susie@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, TOTODILE
	db 22, SLOWPOKE
	db -1 ; end

; ================

	; SWIMMERF
	db "Denise@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, SLOWPOKE
	db -1 ; end

; ================

	; SWIMMERF
	db "Kara@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, STARYU
	db 20, STARMIE
	db -1 ; end

; ================

	; SWIMMERF
	db "Wendy@"
	db TRAINERTYPE_MOVES
	; party
	db 21, SEADRA
		db WATER_GUN, SMOKESCREEN, LEER, BUBBLE_BEAM
	db 21, SEADRA
		db DRAGON_RAGE, SMOKESCREEN, LEER, BUBBLE_BEAM
	db -1 ; end

; ================

	; SWIMMERF
	db "Mary@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, GYARADOS
	db -1 ; end

; ================

	; SWIMMERF
	db "Debbie@"
	db TRAINERTYPE_NORMAL
	; party
	db 61, AZUMARILL
	db -1 ; end

; ================

	; SWIMMERF
	db "Nicole@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, MARILL
	db 59, MARILL
	db 62, LAPRAS
	db -1 ; end

; ================

	; SWIMMERF
	db "Lori@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, STARMIE
	db 62, STARMIE
	db 62, STARMIE
	db -1 ; end

; ================

	; SWIMMERF
	db "Nikki@"
	db TRAINERTYPE_NORMAL
	; party
	db 58, SLOWPOKE
	db 58, SLOWPOKE
	db 58, SLOWPOKE
	db 62, LAPRAS
	db -1 ; end

; ================

	; SWIMMERF
	db "Diana@"
	db TRAINERTYPE_NORMAL
	; party
	db 58, CROCONAW
	db -1 ; end

; ================

	; SWIMMERF
	db "Briana@"
	db TRAINERTYPE_NORMAL
	; party
	db 56, GYARADOS
	db 56, LAPRAS
	db -1 ; end

; ================

	; SWIMMERF
	db "Viola@"
	db TRAINERTYPE_NORMAL
	; party
	db 58, CLOYSTER
	db -1 ; end

; ================

	; SWIMMERF
	db "Lisa@"
	db TRAINERTYPE_NORMAL
	; party
	db 23, LANTURN
	db -1 ; end

; ================

	; SWIMMERF
	db "Jill@"
	db TRAINERTYPE_NORMAL
	; party
	db 23, LAPRAS
	db -1 ; end

; ================

	; SWIMMERF
	db "Katie@"
	db TRAINERTYPE_NORMAL
	; party
	db 19, SLOWPOKE
	db 21, LAPRAS
	db -1 ; end

; ================

	; SWIMMERF
	db "Alison@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, CORSOLA
	db 24, SLOWPOKE
	db -1 ; end

; ================

	; SWIMMERF
	db "Stephanie@"
	db TRAINERTYPE_NORMAL
	; party
	db 23, STARYU
	db 25, SEADRA
	db -1 ; end

; ================

	; SWIMMERF
	db "Caroline@"
	db TRAINERTYPE_NORMAL
	; party
	db 23, OCTILLERY
	db 23, OCTILLERY
	db 23, OCTILLERY
	db -1 ; end

; ================

	; SWIMMERF
	db "Natalia@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, STARYU
	db 24, STARYU
	db -1 ; end

; ================

	; SWIMMERF
	db "Barbara@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, STARMIE
	db -1 ; end

; ================

	; SWIMMERF
	db "Sally@"
	db TRAINERTYPE_NORMAL
	; party
	db 17, OCTILLERY
	db 18, MANTINE
	db -1 ; end

; ================

	; SWIMMERF
	db "Tara@"
	db TRAINERTYPE_NORMAL
	; party
	db 18, CORSOLA
	db 18, CORSOLA
	db -1 ; end


; ================
; ================================

BurglarGroup:
; ================================
; ================



; ================
; ================================

PIGroup:
; ================================
; ================


; ================
; ================================

ScientistGroup:
; ================================
; ================

	; SCIENTIST ;union cave
	db "Lowell@"
	db TRAINERTYPE_NORMAL
	; party
	db 7, GRIMER
	db 4, WEEPINBELL
	db 4, GLOOM
	db -1 ; end

; ================

	; SCIENTIST;union cave
	db "Dennett@"
	db TRAINERTYPE_NORMAL
	; party
	db 7, MAGNEMITE
	db 8, VOLTORB
	db 6, CHINCHOU
	db -1 ; end

; ================

	; SCIENTIST ; union cave b2f
	db "Lowell@" ; LINDEN 
	db TRAINERTYPE_NORMAL
	; party
	db 34, MUK
	db 35, VICTREEBEL
	db 35, VILEPLUME	
	db -1 ; end

; ================

	; SCIENTIST ; oskar  union cave b2f 
	db "Dennett@"
	db TRAINERTYPE_NORMAL
	; party
	db 33, MAGNETON
	db 34, ELECTRODE
	db 36, LANTURN	
	db -1 ; end

; ================

	; SCIENTIST ; route 41 
	db "Braydon@"
	db TRAINERTYPE_NORMAL
	; party
	db 28, MAGNETON
	db 32, MAGNEZONE
	db 30, ELECTRODE
	db -1 ; end

; ================

	; SCIENTIST ; route 41 
	db "Carl@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, PORYGON
	db 32, PORYGON2
	db 35, EEVEE
	db -1 ; end

; ================

	; SCIENTIST ; route 41 
	db "Dexter@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, DRIFBLIM
	db 34, DONPHAN
	db 36, SLOWBRO
	db -1 ; end

; ================

	; SCIENTIST ; LIGHTHOUSE 1F
	db "Joseph@"
	db TRAINERTYPE_NORMAL
	; party
	db 36, VOLTORB
	db 30, MAGNEMITE
	db 33, MAGNETON
	db -1 ; end

; ================

	; SCIENTIST ; LIGHTHOUSE 2F
	db "Nigel@"
	db TRAINERTYPE_NORMAL
	; party
	db 35, PORYGON
	db 35, PORYGON2
	db -1 ; end

; ================

	; SCIENTIST ; LIGHTHOUSE 3F
	db "Piotr@"
	db TRAINERTYPE_NORMAL
	; party
	db 38, DRIFBLIM
	db 38, ELECTABUZZ
	db -1 ; end

; ================
; ================================

RocketScientistGroup:
; ================================
; ================


; ================
; ================================

BoarderGroup:
; ================================
; ================

	; BOARDER ; pryce gym 
	db "Ronald@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, LAPRAS
	db 40, SNEASEL
	db -1 ; end

; ================

	; BOARDER ; pryce gym 
	db "Brad@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, PILOSWINE
	db 40, PILOSWINE
	db -1 ; end

; ================

	; BOARDER ; pryce gym 
	db "Douglas@"
	db TRAINERTYPE_NORMAL
	; party
	db 39, ABOMASNOW
	db 40, CLOYSTER
	db -1 ; end

; ================

	; BOARDER
	db "Shaun@"
	db TRAINERTYPE_NORMAL
	; party
	db 65, CLOYSTER
	db 60, LAPRAS
	db -1 ; end

; ================

	; BOARDER
	db "Bryce@"
	db TRAINERTYPE_NORMAL
	; party
	db 65, LAPRAS
	db 60, LAPRAS
	db -1 ; end

; ================

	; BOARDER
	db "Stefan@"
	db TRAINERTYPE_NORMAL
	; party
	db 36, PILOSWINE
	db 36, PILOSWINE
	db 38, SNEASEL
	db -1 ; end

; ================

	; BOARDER
	db "Max@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 36, PILOSWINE, ABILITY_1 | NAT_NEUTRAL, MALE
	db -1 ; end

; ================
; ================================

SkierGroup:
; ================================
; ================

	; SKIER
	db "Roxanne@" ; pryce 
	db TRAINERTYPE_NORMAL
	; party
	db 42, JYNX
	db -1 ; end

; ================

	; SKIER
	db "Clarissa@" ; pryce 
	db TRAINERTYPE_NORMAL
	; party
	db 44, PILOSWINE
	db -1 ; end

; ================

	; SKIER
	db "Cady@"
	db TRAINERTYPE_NORMAL
	; party
	db 63, MAMOSWINE
	db -1 ; end

; ================

	; SKIER
	db "Maria@"
	db TRAINERTYPE_NORMAL
	; party
	db 39, JYNX
	db -1 ; end

; ================

	; SKIER
	db "Becky@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 37, LAPRAS, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db 38, LAPRAS, ABILITY_1 | NAT_NEUTRAL, FEMALE
	db -1 ; end

; ================
; ================================

BlackbeltGroup:
; ================================
; ================

	; BLACKBELT_T ; underground radio tower
	db "Kenji@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, MACHOP
	db -1 ; end

; ===========
	; BLACKBELT_T ; CIANWOOD GYM 
	db "Yoshi@"
	db TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 34, HITMONLEE, "Bruce@"
		db DOUBLE_KICK, BULK_UP, HI_JUMP_KICK, FOCUS_ENERGY
	db -1 ; end

; ================

	; BLACKBELT_T ; CIANWOOD GYM 
	db "Lao@"
	db TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 34, HITMONCHAN, "Jackie@"
		db AERIAL_ACE, THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH
	db -1 ; end

; ================

	; BLACKBELT_T ; CIANWOOD GYM 
	db "Nob@"
	db TRAINERTYPE_MOVES
	; party
	db 32, MACHOKE
		db LEER, FOCUS_ENERGY, KARATE_CHOP, SEISMIC_TOSS
	db 36, MACHAMP
		db LEER, KARATE_CHOP, SEISMIC_TOSS, ROCK_SLIDE
	db -1 ; end

; ================

	; BLACKBELT_T ; CIANWOOD GYM 
	db "Lung@"
	db TRAINERTYPE_NORMAL
	; party
	db 35, PRIMEAPE
	db 35, HERACROSS
	db -1 ; end

; ================

	; BLACKBELT_T ; lighthouse 1f 
	db "Wai@"
	db TRAINERTYPE_NORMAL
	; party
	db 36, MACHOKE
	db 36, PRIMEAPE
	db -1 ; end

; ================

	; BLACKBELT_T
	db "Inigo@"
	db TRAINERTYPE_NORMAL
	; party
	db 59, PRIMEAPE
	db 59, PRIMEAPE
	db 60, MACHAMP
	db -1 ; end

; ================

	; BLACKBELT_T
	db "Manford@"
	db TRAINERTYPE_NORMAL
	; party
	db 63, POLIWRATH
	db -1 ; end

; ================

	; BLACKBELT_T
	db "Ander@"
	db TRAINERTYPE_NORMAL
	; party
	db 61, PRIMEAPE
	db 57, GRAVELER
	db 62, MACHOKE
	db -1 ; end

; ================

	; BLACKBELT_T
	db "Takeo@"
	db TRAINERTYPE_NORMAL
	; party
	db 52, HITMONTOP
	db 54, HERACROSS
	db 56, POLIWRATH
	db -1 ; end

; ================
; ================================

BattleGirlGroup:
; ================================
; ================

	; BATTLE_GIRL ' CALM COAST
	db "Subaru@"
	db TRAINERTYPE_NORMAL
	; party
	db 12, OSHAWOTT
	db 14, DEWOTT
	db -1 ; end

; ================

	; BATTLE_GIRL CALM COAST
	db "Diane@"
	db TRAINERTYPE_NORMAL
	; party
	db 10, MARILL
	db 12, AZUMARILL
	db -1 ; end

; ================

	; BATTLE_GIRL CALM COAST
	db "Kagami@"
	db TRAINERTYPE_NORMAL
	; party
	db 11, POLIWAG
	db 15, POLIWHIRL
	db -1 ; end

; ================

	; BATTLE_GIRL ; lighthouse 2f
	db "Nozomi@"
	db TRAINERTYPE_NORMAL
	; party
	db 36, POLIWRATH
	db 36, HITMONTOP
	db -1 ; end

; ================

	; BATTLE_GIRL ; lighthouse 3f 
	db "Ronda@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, LUCARIO
	db -1 ; end

; ================

	; BATTLE_GIRL
	db "Padma@"
	db TRAINERTYPE_NORMAL
	; party
	db 60, HITMONLEE
	db 60, HITMONCHAN
	db 60, HITMONTOP
	db -1 ; end

; ================

	; BATTLE_GIRL
	db "Emy@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 28, PRIMEAPE, PROTECT_PADS, FAKE_PERFECT_DVS, ABIL_PRIMEAPE_DEFIANT | NAT_ATK_UP_SATK_DOWN, FEMALE
		db CROSS_CHOP, GUNK_SHOT, BULK_UP, NIGHT_SLASH
	db 30, URSARING, PROTECT_PADS, FAKE_PERFECT_DVS, ABIL_URSARING_GUTS | NAT_ATK_UP_SATK_DOWN, MALE
		db PLAY_ROUGH, SLASH, BELLY_DRUM, NIGHT_SLASH
	db -1 ; end

; ================
; ================================

DragonTamerGroup:
; ================================
; ================

	; DRAGON_TAMER ; dragons den 
	db "Paul@"
	db TRAINERTYPE_NORMAL
	; party
	db 38, DRAGONAIR
	db 42, SEADRA
	db 43, KANGASKHAN
	db -1 ; end

; ================

	; DRAGON_TAMER ; dragons den 
	db "Darin@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, YANMA
	db 38, SEADRA
	db 39, DRATINI
	db -1 ; end

; ================

	; DRAGON_TAMER ; former hisuian BIRD KEEPER HANK2
	db "Hank@"
	db TRAINERTYPE_NORMAL
	; party
	db 44, STARAVIA
	db 50, DRAGONAIR
	db -1 ; end

; ================

	; DRAGON_TAMER ; JONES2
	db "Jones@"
	db TRAINERTYPE_NORMAL
	; party
	db 44, BRONZONG
	db 50, H__SLIGGOO
	db -1 ; end


; ================

	; DRAGON_TAMER
	db "Leland@" ; LELAND2
	db TRAINERTYPE_NORMAL
	; party
	db 47, HIPPOWDON
	db 47, GABITE
	db -1 ; end

; ================

	; DRAGON_TAMER
	db "Aegon@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES

	db 43, DRAGONITE, FOCUS_SASH, 132, ABIL_DRAGONITE_MULTISCALE | NAT_ATK_UP_SATK_DOWN, MALE
		db FOCUS_ENERGY, DRAGON_CLAW, EARTHQUAKE, ICE_PUNCH
	db 43, KINGDRA, FOCUS_SASH, 132, ABIL_KINGDRA_SNIPER | NAT_SATK_UP_ATK_DOWN, MALE
		db DOUBLE_TEAM, DRAGON_PULSE, SURF, ICE_BEAM
	db -1 ; end

; ================
; ================================

EngineerGroup:
; ================================
; ================

	; ENGINEER
	db "Smith@" ; ilex forest 
	db TRAINERTYPE_NORMAL
	; party
	db 2, MAGNEMITE
	db 3, MAGNEMITE
	db 4, MAGNEMITE	
	db -1 ; end
	
; ================

	; ENGINEER
	db "Camden@"
	db TRAINERTYPE_MOVES ; ILEX FOREXT 
	; party
	db 5, SCIZOR ;tried lv 10, way too hard
		db CUT, LEER, AGILITY, FOCUS_ENERGY
	db -1 ; end

; ================

	; ENGINEER ; LIGHTHOUSE 1F 
	db "Bernie@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, MAGNEMITE
	db 56, MAGNETON
	db 54, MAGNEMITE
	db -1 ; end

; ================

	; ENGINEER; LIGHTHOUSE 1F 
	db "Lang@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, MAGMAR
	db 33, SKARMORY
	db -1 ; end

; ================

	; ENGINEER; LIGHTHOUSE 2F 
	db "Hugo@"
	db TRAINERTYPE_NORMAL
	; party
	db 38, STEELIX
	db -1 ; end

; ================

	; ENGINEER; LIGHTHOUSE 3F 
	db "Howard@"
	db TRAINERTYPE_NORMAL
	; party
	db 34, MAGMAR
	db 37, KADABRA
	db -1 ; end

; ================

	; ENGINEER
	db "dwg@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 1, TYRANITAR, NO_ITEM, DVS_HP_POISON, "test@"
		db SPIKES, NO_MOVE, NO_MOVE, NO_MOVE	
	db 1, JOLTEON, NO_ITEM, DVS_HP_STEEL, "test2@"
		db SPIKES, NO_MOVE, NO_MOVE, NO_MOVE		
	db 1, KINGDRA, NO_ITEM, DVS_HP_ELECTRIC, "test2@"
		db SPIKES, NO_MOVE, NO_MOVE, NO_MOVE		
	db -1 ; end
	
	
;	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
;	; party
;	db 60, SKARMORY, LEFTOVERS, 50, ABIL_SKARMORY_STURDY | NAT_DEF_UP_ATK_DOWN, MALE
;		db SPIKES, TOXIC, ROAR, ROOST
;	db 60, YANMEGA, CHOICE_SPECS, 50, ABIL_YANMEGA_TINTED_LENS | NAT_SATK_UP_DEF_DOWN, MALE
;		db BUG_BUZZ, AIR_SLASH, AGILITY, DRAGONBREATH
;	db 60, QUAGSIRE, LEFTOVERS, 50, ABIL_QUAGSIRE_WATER_ABSORB | NAT_ATK_UP_SATK_DOWN, MALE
;		db CURSE, REST, EARTHQUAKE, WATERFALL
;	db 60, KINGDRA, LUM_BERRY, 50, ABIL_KINGDRA_SNIPER | NAT_SATK_UP_DEF_DOWN, MALE
;		db REST, OUTRAGE, WATERFALL, DRAGON_DANCE
;	db 60, XATU, LEFTOVERS, 50, ABIL_XATU_MAGIC_BOUNCE | NAT_SATK_UP_DEF_DOWN, MALE
;		db CALM_MIND, AIR_SLASH, PSYCHIC_M, ROOST
;	db 60, TYPHLOSION, CHOICE_SPECS, 50, ABIL_TYPHLOSION_BLAZE | NAT_SPD_UP_DEF_DOWN, MALE
;		db FIRE_BLAST, EARTH_POWER, FOCUS_BLAST, THUNDERPUNCH
;	db -1 ; end 



; ================

	; ENGINEER; clasts cradle 2f
	db "Goeth@"
	db TRAINERTYPE_NORMAL
	; party
	db 44, ELECTRODE
	db 47, SCIZOR
	db 44, NINETALES
	db 46, AMPHAROS
	db -1 ; end
	
	
	; ================

	; ENGINEER; clasts cradle 1f 
	db "Nobel@"
	db TRAINERTYPE_NORMAL
	; party
	db 44, MAGNETON
	db 46, MAGNEZONE
	db 48, FORRETRESS
	db -1 ; end
	
	; ================

	; ENGINEER; clasts cradle 1f 
	db "Ingsol@"
	db TRAINERTYPE_NORMAL
	; party
	db 48, MAGMORTAR
	db 47, RAICHU
	db 50, DUGTRIO
	db -1 ; end

; ================
; ================================

TeacherGroup:
; ================================
; ================ unused 


; ================================

GuitaristMGroup:
; ================================
; ================ unused 


; ================================

GuitaristFGroup:
; ================================
; ================ unused 

; ================================

BikerGroup:
; ================================
; ================ unused 


; ================================

RoughneckGroup:
; ================================
; ================ unused 

; ================================

TamerGroup:
; ================================
; ================

	; TAMER
	db "Brett@"
	db TRAINERTYPE_NORMAL ; GAULDENROD
	; party
	db 15, GABITE
	db -1 ; end

; ================

	; TAMER ; route 39
	db "Vince@"
	db TRAINERTYPE_NORMAL
	; party
	db 34, KANGASKHAN
	db 36, DONPHAN
	db -1 ; end

; ================

	; TAMER ; route 39 
	db "Oswald@"
	db TRAINERTYPE_NORMAL
	; party
	db 38, FARFETCH_D
	db 37, STANTLER
	db 39, KANGASKHAN
	db -1 ; end


; ================
; ================================

ArtistGroup:
; ================================
; ================

	; ARTIST
	db "Reina@"
	db TRAINERTYPE_NORMAL
	; party
	db 55, MR__MIME
	db 55, SUDOWOODO
	db -1 ; end


; ================
; ================================

AromaLadyGroup:
; ================================
; ================

	; AROMA_LADY ; UNDERGROUND
	db "Dahlia@"
	db TRAINERTYPE_NORMAL
	; party
	db 16, DARTRIX
	db 16, PARAS
	db 17, EXEGGCUTE
	db -1 ; end

; ================

	; AROMA_LADY ; gauldenrod tower 
	db "Bryony@"
	db TRAINERTYPE_NORMAL
	; party
	db 16, JIGGLYPUFF
	db 16, WIGGLYTUFF
	db 16, CLEFAIRY
	db -1 ; end

; ================

	; AROMA_LADY ; route 42
	db "Heather@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, BAYLEEF
	db -1 ; end

; ================

	; AROMA_LADY ; route 42 
	db "Holly@"
	db TRAINERTYPE_NORMAL
	; party
	db 36, SUNFLORA
	db 38, BELLOSSOM
	db -1 ; end

; ================

	; AROMA_LADY ; GAULDENROD TOWER 2F
	db "Peony@"
	db TRAINERTYPE_NORMAL
	; PARTY
	db 20, BAYLEEF
	db -1 ; end

; ================

	; AROMA_LADY ; GAULDENROD TOWER 2F
	db "Rosa@"
	db TRAINERTYPE_NORMAL
	; PARTY
	db 15, LEAFEON
	db -1 ; end

; ================
; ================================

WaiterGroup:
; ================================
; ================
; ================
; ================================

WaitressGroup:
; ================================
; ================
; ================
; ================================

SightseerMGroup:
; ================================
; ================

	; SIGHTSEERM ; route 43 
	db "Jaska@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, MONFERNO
	db 40, GROTLE
	db 40, FURRET
	db -1 ; end

; ================

	; SIGHTSEERM ; LAKE OF RAGE 
	db "Blaise@"
	db TRAINERTYPE_NORMAL
	; 
	db 40, LUXIO
	db 42, LUXRAY
	db 44, ROTOM
	db -1 ; end

; ================

	; SIGHTSEERM ; LAKE OF RAGE 
	db "Gareth@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, SKUNTANK
	db 43, GALLADE
	db 42, STARAVIA
	db -1 ; end

; ================
; ================================

SightseerFGroup:
; ================================
; ================

	; SIGHTSEERF ; ROUTE 43 
	db "Rosie@"
	db TRAINERTYPE_NORMAL
	; PARTY 
	db 40, PRINPLUP
	db 40, LOPUNNY
	db -1 ; end

; ================

	; SIGHTSEERF ; Lake of rage
	db "Kamila@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, SNOVER
	db 42, ABOMASNOW
	db 44, RAPIDASH
	db -1 ; end

; ================

	; SIGHTSEERF; Lake of rage
	db "Noelle@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, KIRLIA
	db 42, GARDEVOIR
	db 44, FROSLASS
	db -1 ; end

; ================

	; SIGHTSEERF
	db "Pilar@"
	db TRAINERTYPE_PERSONALITY | TRAINERTYPE_NICKNAME
	; party
	db 60, MAGMAR, ABILITY_1 | NAT_NEUTRAL, FEMALE, "Antorcha@"
	db 61, DIGLETT, ABILITY_1 | NAT_NEUTRAL, MALE, "Huesitos@"
	db 64, ESPEON, ABILITY_1 | NAT_NEUTRAL, FEMALE, "Luna@"
	db 65, LANTURN, ABILITY_1 | NAT_NEUTRAL, FEMALE, "Linterna@"
	db -1 ; end

; ================

	; SIGHTSEERF
	db "Lenie@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_DVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 32, ALAKAZAM, FLAME_ORB, 84, FAKE_PERFECT_DVS, ABIL_ALAKAZAM_SYNCHRONIZE | NAT_SATK_UP_ATK_DOWN, FEMALE
		db LIGHT_SCREEN, REFLECT, PSYCHIC_M, SHADOW_BALL
	db 32, MACHAMP, FLAME_ORB, 84, FAKE_PERFECT_DVS, ABIL_MACHAMP_GUTS | NAT_ATK_UP_SATK_DOWN, FEMALE
		db FACADE, MACH_PUNCH, BULLET_PUNCH, ICE_PUNCH
	db 32, JOLTEON, FLAME_ORB, 84, DVS_HP_ICE, ABIL_JOLTEON_QUICK_FEET | NAT_SATK_UP_ATK_DOWN, FEMALE
		db THUNDERBOLT, QUICK_ATTACK, HIDDEN_POWER, SHADOW_BALL
	db -1 ; end

; ================
; ================================

SightseersGroup:
; ================================
; ================

; ================
; ================================

CooltrainerMGroup:
; ================================
; ================

	; COOLTRAINERM ; CALM COAST
	db "Gaven@"
	db TRAINERTYPE_MOVES
	; party
	db 12, FLAREON
		db SUNNY_DAY, EMBER, QUICK_ATTACK, GROWTH
	db 12, GLOOM
		db GROWTH, ABSORB, POISONPOWDER, ACID
	db 12, LUXIO
		db THUNDER_WAVE, THUNDERSHOCK, BITE, NO_MOVE	
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Gaven@"
	db TRAINERTYPE_MOVES
	; party
	db 41, VICTREEBEL
		db WRAP, TOXIC, ACID, RAZOR_LEAF
	db 41, FERALIGATR
		db BUBBLE_BEAM, STOMP, DIG, PROTECT
	db 41, FLAREON
		db MUD_SLAP, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Gaven@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 15, VICTREEBEL, NO_ITEM
		db GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RAZOR_LEAF
	db 15, FERALIGATR, KINGS_ROCK
		db SURF, STOMP, DIG, BLIZZARD
	db 15, FLAREON, NO_ITEM
		db FLAMETHROWER, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Nick@"
	db TRAINERTYPE_MOVES ; route 35
	; party
	db 20, CLEFAIRY
		db METRONOME, ATTRACT, SING, CALM_MIND
	db 20, MACHOKE
		db KARATE_CHOP, FORESIGHT, BULK_UP, NO_MOVE
	db -1 ; end

; ================

	; COOLTRAINERM ; radio tower
	db "Aaron@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, STANTLER
	db 20, GIRAFARIG
	db -1 ; end

; ================

	; COOLTRAINERM ; RADIO TOWER
	db "Cody@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, AMBIPOM
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Mike@" ; RADIO TOWER
	db TRAINERTYPE_MOVES
	; party
	db 22, PORYGON2
		db CONVERSION, PSYBEAM, AGILITY, RECOVER
	db 20, CHANSEY
		db SWAGGER, TOXIC, PROTECT, FRESH_SNACK
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Ryan@"
	db TRAINERTYPE_MOVES
	; party
	db 35, PIDGEOT
		db MUD_SLAP, QUICK_ATTACK, ROAR, AERIAL_ACE
	db 37, ELECTABUZZ
		db THUNDERPUNCH, LIGHT_SCREEN, SWIFT, SCREECH
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Blake@"
	db TRAINERTYPE_MOVES
	; party
	db 38, MAGNETON
		db THUNDERBOLT, SUPERSONIC, SWIFT, SCREECH
	db 36, QUAGSIRE
		db WATER_GUN, HEADBUTT, AMNESIA, EARTHQUAKE
	db 36, EXEGGCUTE
		db LEECH_SEED, CONFUSION, SLEEP_POWDER, SOLAR_BEAM
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Andy@"
	db TRAINERTYPE_NORMAL
	; party
	db 10, CHIKORITA
	db 10, GROWLITHE
	db 10, POLIWAG
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Sean@"
	db TRAINERTYPE_NORMAL
	; party
	db 47, FLAREON
	db 47, TANGELA
	db 47, TAUROS
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Kevin@"
	db TRAINERTYPE_NORMAL
	; party
	db 54, RHYDON
	db 56, ARCANINE
	db 56, POLIWRATH
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Allen@"
	db TRAINERTYPE_MOVES
	; party
	db 36, GROWLITHE
		db SMOKESCREEN, METAL_CLAW, DRAGON_RAGE, FLAME_CHARGE
	db 35, MAGNETON
		db THUNDER_WAVE, THUNDERBOLT, TRI_ATTACK, FLASH_CANNON
	db -1 ; end

; ================

	; COOLTRAINERM
	db "French@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, HOUNDOOM
	db 63, ALAKAZAM
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Henri@"
	db TRAINERTYPE_NORMAL
	; party
	db 35, GROWLITHE
	db 35, POLIWHIRL
	db 35, BAYLEEF
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Connor@"
	db TRAINERTYPE_NORMAL
	; party
	db 63, SCYTHER
	db 62, CROCONAW
	db 62, POLIWHIRL
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Kieran@"
	db TRAINERTYPE_NORMAL
	; party
	db 52, KADABRA
	db 53, RHYHORN
	db 55, PRIMEAPE
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Finch@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_NICKNAME
	; party
	db 25, MAGNETON, AIR_BALLOON, 16, "Neody@"
	db 25, MAGCARGO, AIR_BALLOON, 16, "Molly@"
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Finch@" ; 
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_NICKNAME
	; party
	db 30, MAGNETON, AIR_BALLOON, 30, "Neody@"
	db 30, MAGCARGO, AIR_BALLOON, 30, "Molly@"
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Corey@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_NICKNAME
	; party
	db 63, PIDGEOT, QUICK_CLAW, 192, "@"
	db 62, RHYDON, ROCKY_HELMET, 192, "@"
	db 62, SCYTHER, EVIOLITE, 192, "@"
	db 62, HITMONLEE, FOCUS_BAND, 192, "@"
	db 63, DUGTRIO, KINGS_ROCK, 192, "@"
	db 64, MEGANIUM, LEFTOVERS, 192, "Bruteroot@"
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Ray@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_NICKNAME
	; party
	db 63, DONPHAN, SOFT_SAND, 192, "@"
	db 62, VENOMOTH, BLACK_SLUDGE, 192, "@"
	db 62, GOLEM, ROCKY_HELMET, 192, "@"
	db 62, PINSIR, KINGS_ROCK, 192, "@"
	db 63, MACHAMP, FOCUS_BAND, 192, "@"
	db 64, ARCANINE, LEFTOVERS, 192, "Firebrand@"
	db -1 ; end

; ================

	; COOLTRAINERM
	db "Fergus@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_NICKNAME
	; party
	db 63, GYARADOS, BRIGHTPOWDER, 192, "@"
	db 62, CROCONAW, TWISTEDSPOON, 192, "@"
	db 62, VAPOREON, FOCUS_BAND, 192, "@"
	db 62, TENTACRUEL, BLACK_SLUDGE, 192, "@"
	db 63, KINGDRA, QUICK_CLAW, 192, "@"
	db 64, NIDOQUEEN, LEFTOVERS, 192, "Empress@"
	db -1 ; end

; ================
; ================================


SECTION "Enemy Trainer Parties 2", ROMX

CooltrainerFGroup:
; ================================
; ================

	; CooltrainerF
	db "Beth@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 16, DUNSPARCE, LEFTOVERS, "Par Four@"
		db SANDSTORM, PROTECT, ROOST, HEADBUTT
	db 17, RHYHORN, SALAC_BERRY, "Ivory@"
		db SANDSTORM, ROCK_THROW, DIG, STRENGTH
	db 18, GLIGAR, POISON_BARB, "Scorpius@"
		db SANDSTORM, AERIAL_ACE, DIG, POISON_STING
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Beth@"
	db TRAINERTYPE_MOVES
	; party
	db 45, RAPIDASH
		db STOMP, FIRE_SPIN, PLAY_ROUGH, AGILITY
	db 44, AMPHAROS
if DEF(FAITHFUL)
		db THUNDERBOLT, THUNDER_WAVE, LIGHT_SCREEN, SWIFT
else
		db THUNDERBOLT, THUNDER_WAVE, LIGHT_SCREEN, DRAGON_PULSE
endc
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Beth@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 49, RAPIDASH, FOCUS_BAND
		db STOMP, FIRE_SPIN, PLAY_ROUGH, FIRE_BLAST
	db 48, AMPHAROS, NO_ITEM
if DEF(FAITHFUL)
		db THUNDERBOLT, THUNDER_WAVE, LIGHT_SCREEN, SWIFT
else
		db THUNDERBOLT, THUNDER_WAVE, LIGHT_SCREEN, DRAGON_PULSE
endc
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Reena@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, ARCANINE
	db 40, NIDOQUEEN
	db 38, STARMIE
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Reena@"
	db TRAINERTYPE_NORMAL
	; party
	db 41, ARCANINE
	db 44, NIDOQUEEN
	db 42, STARMIE
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Reena@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 45, ARCANINE, NO_ITEM
		db BITE, LEER, TAKE_DOWN, FLAME_CHARGE
	db 48, NIDOQUEEN, SILK_SCARF
		db EARTHQUAKE, DOUBLE_KICK, TOXIC, BODY_SLAM
	db 46, STARMIE, NO_ITEM
		db BLIZZARD, PSYCHIC_M, WATERFALL, RECOVER
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Gwen@" ; route 35
	db TRAINERTYPE_NORMAL
	; party
	db 22, CORSOLA
	db 22, TOGETIC
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Lois@"
	db TRAINERTYPE_NORMAL
	; party
	db 29, SUNFLORA
	db 29, NINETALES
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Fran@"
	db TRAINERTYPE_NORMAL
	; party
if DEF(FAITHFUL)
	db 39, SEADRA
else
	db 39, ARCANINE
endc
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Lola@"
	db TRAINERTYPE_NORMAL
	; party
	db 36, DRATINI
	db 38, DRAGONAIR
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Kate@" ; route 34
	db TRAINERTYPE_NORMAL
	; party
	db 25, SEADRA
	db 30, CLOYSTER
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Irene@" ; route 34
	db TRAINERTYPE_NORMAL
	; party
	db 25, TOTODILE
	db 27, CROCONAW
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Kelly@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, MARILL
	db 35, POLIWHIRL
	db 35, CROCONAW
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Joyce@"
	db TRAINERTYPE_MOVES
	; party
	db 37, PIKACHU
		db QUICK_ATTACK, DOUBLE_TEAM, THUNDERBOLT, THUNDER
	db 38, POLIWRATH
		db BITE, CURSE, SURF, RAIN_DANCE
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Megan@"
	db TRAINERTYPE_MOVES
	; party
	db 35, CHIKORITA
		db GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 36, BAYLEEF
		db GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 37, MEGANIUM
		db BODY_SLAM, SLEEP_POWDER, RAZOR_LEAF, GROWTH
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Carol@"
	db TRAINERTYPE_NORMAL
	; party
	db 47, ELECTRODE
	db 47, STARMIE
	db 47, NINETALES
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Quinn@"
	db TRAINERTYPE_NORMAL
	; party
	db 63, MEGANIUM
	db 62, STARMIE
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Emma@"
	db TRAINERTYPE_NORMAL
	; party
	db 28, POLIWHIRL
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Cybil@"
	db TRAINERTYPE_MOVES
	; party
	db 35, BUTTERFREE
		db SUPERSONIC, PSYBEAM, HYPNOSIS, HEALINGLIGHT
	db 36, BELLOSSOM
		db ACID, SLEEP_POWDER, GIGA_DRAIN, HEALINGLIGHT
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Jenn@" ; route 34 
	db TRAINERTYPE_NORMAL
	; party
	db 25, STARYU
	db 30, STARMIE
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Salma@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, SLOWKING
	db 65, KANGASKHAN
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Bonita@"
	db TRAINERTYPE_NORMAL
	; party
	db 62, GIRAFARIG
	db 65, SUDOWOODO
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Sera@"
	db TRAINERTYPE_ITEM
	; party
	db 63, GROWLITHE, EVIOLITE
	db 61, AMPHAROS, MAGNET
	db 61, XATU, TWISTEDSPOON
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Neesha@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_NICKNAME
	; party
	db 62, LAPRAS, FOCUS_BAND, 192, "@"
	db 62, WIGGLYTUFF, PINK_BOW, 192, "@"
	db 62, RAPIDASH, QUICK_CLAW, 192, "@"
	db 63, VILEPLUME, BLACK_SLUDGE, 192, "@"
	db 63, NINETALES, CHARCOAL, 192, "@"
	db 63, POLIWRATH, LEFTOVERS, 192, "Shellshock@"
	db -1 ; end

; ================

	; COOLTRAINERF
	db "Chiara@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 20, WEEPINBELL, BINDING_BAND, 52, ABIL_WEEPINBELL_CHLOROPHYLL | NAT_SPD_UP_DEF_DOWN, FEMALE
		db WRAP, SLEEP_POWDER, POISONPOWDER, STUN_SPORE
	db 20, AZUMARILL, BINDING_BAND, 52, ABIL_AZUMARILL_SAP_SIPPER | NAT_SPD_UP_DEF_DOWN, FEMALE
		db WHIRLPOOL, PERISH_SONG, AQUA_TAIL, PROTECT
	db -1 ; end

; ================
; ================================

AceDuoGroup: ; unused 
; ================================
; ================


; ================
; ================================

VeteranMGroup:
; ================================
; ================

	; VETERANM ; ROUTE KAJO
	db "Matthew@" ; MATT
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 25, CROCONAW, KINGS_ROCK
		db SCARY_FACE, METAL_CLAW, BITE, WATER_PULSE
	db 25, FLAAFFY, MAGNET
		db THUNDER_WAVE, CONFUSE_RAY, DRAGON_PULSE, THUNDERSHOCK
	db 25, FURRET, LEFTOVERS
		db BELLY_DRUM, SLASH, NO_MOVE, NO_MOVE
	db -1 ; end

; ================

	; VETERANM
	db "Remy@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 42, POLIWRATH, MYSTIC_WATER
if DEF(FAITHFUL)
		db SURF, AQUA_TAIL, ICE_BEAM, BODY_SLAM
else
		db SURF, AQUA_TAIL, ICE_BEAM, FLASH_CANNON
endc
	db 41, NINETALES, CHARCOAL
		db FLAMETHROWER, SHADOW_BALL, CONFUSE_RAY, EXTRASENSORY
	db 39, VICTREEBEL, MIRACLE_SEED
		db SLUDGE_BOMB, SEED_BOMB, SLEEP_POWDER, SWORDS_DANCE
	db 39, RAICHU, SILK_SCARF
		db SURF, THUNDERBOLT, EXTREMESPEED, NASTY_PLOT
	db 40, ALAKAZAM, TWISTEDSPOON
		db TRI_ATTACK, PSYBEAM, RECOVER, REFLECT
	db 38, SKARMORY, SHARP_BEAK
		db DRILL_PECK, SWIFT, STEEL_WING, ROCK_SMASH
	db -1 ; end

; ================

	; VETERANM
	db "Barkhorn@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES

	db 36, FORRETRESS, ROCKY_HELMET, 116, ABIL_FORRETRESS_STURDY | NAT_ATK_UP_SATK_DOWN, MALE
		db SPIKES, EXPLOSION, SANDSTORM, DIG
	db 36, SKARMORY, ROCKY_HELMET, 116, ABIL_SKARMORY_STURDY | NAT_NEUTRAL, MALE
		db SPIKES, ROAR, TOXIC, PROTECT
	db 37, UMBREON, ROCKY_HELMET, 116, ABIL_UMBREON_SYNCHRONIZE | NAT_NEUTRAL, MALE
		db TOXIC, CONFUSE_RAY, FEINT_ATTACK, PROTECT
	db -1 ; end

; ================
; ================================

VeteranFGroup:
; ================================
; ================

	; VETERANF used... somewhere? 
	db "Joanne@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 14, MR__MIME, NO_ITEM, "Blanco@"
		db REFLECT, LIGHT_SCREEN, BATON_PASS, CONFUSION
	db 14, SYLVEON, BIG_ROOT, "Sanguina@"
		db DRAIN_KISS, NO_MOVE, NO_MOVE, NO_MOVE
	db 14, GIRAFARIG, NO_ITEM, "Janus@"
		db STOMP, BITE, CONFUSION, NO_MOVE
	db -1 ; end

; ================

	; VETERANF
	db "Sylvie@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 41, TYPHLOSION, CHARCOAL
		db FLAME_CHARGE, THUNDERPUNCH, DIG, STRENGTH
	db 40, GLACEON, NEVERMELTICE
		db ICE_BEAM, RECOVER, BARRIER, IRON_TAIL
	db 39, TOGEKISS, LEFTOVERS
		db FLY, FRESH_SNACK, AURA_SPHERE, EXTREMESPEED
	db 39, OCTILLERY, QUICK_CLAW
		db SURF, ICE_BEAM, PSYBEAM, SEED_BOMB
	db 37, HERACROSS, KINGS_ROCK
		db ROCK_SMASH, STRENGTH, AERIAL_ACE, DOUBLE_TEAM
	db 38, PUPITAR, EVIOLITE
		db EARTHQUAKE, ROCK_SLIDE, SCARY_FACE, DARK_PULSE
	db -1 ; end

; ================

	; VETERANF
	db "Litvyak@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_DVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES

	db 49, ALAKAZAM, CHOICE_SPECS, 148, DVS_HP_FIRE, ABIL_ALAKAZAM_TRACE | NAT_SATK_UP_ATK_DOWN, FEMALE
		db PSYCHIC_M, SHADOW_BALL, FOCUS_BLAST, HIDDEN_POWER
	db 49, PORYGON_Z, CHOICE_SPECS, 148, DVS_HP_GROUND, ABIL_PORYGON_Z_ADAPTABILITY | NAT_SATK_UP_ATK_DOWN, FEMALE
		db TRI_ATTACK, DARK_PULSE, ICE_BEAM, HIDDEN_POWER
if DEF(FAITHFUL)
	db 49, GENGAR, CHOICE_SPECS, 148, DVS_HP_ICE, ABIL_GENGAR_CURSED_BODY | NAT_SATK_UP_ATK_DOWN, FEMALE
else
	db 49, GENGAR, CHOICE_SPECS, 148, DVS_HP_ICE, ABIL_GENGAR_LEVITATE | NAT_SATK_UP_ATK_DOWN, FEMALE
endc
		db SHADOW_BALL, THUNDERBOLT, FOCUS_BLAST, HIDDEN_POWER
	db -1 ; end

; ================
; ================================

ProtonGroup:
; ================================
; ================

	; PROTON unused 
	db "Proton@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 39, GOLBAT, KINGS_ROCK
		db AERIAL_ACE, CONFUSE_RAY, SUPER_FANG, POISON_JAB
	db -1 ; end

; ================
; ================================

PetrelGroup:
; ================================
; ================

	; PETREL unused 
	db "Petrel@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 39, GROWLITHE, EVIOLITE, ABILITY_1 | NAT_NEUTRAL, MALE
		db TACKLE, EXPLOSION, VENOSHOCK, SMOKESCREEN
	db -1 ; end

; ================
; ================================

ArcherGroup:
; ================================
; ================

	; ARCHER unused 
	db "Archer@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 41, HOUNDOUR, EVIOLITE, ABILITY_1 | NAT_NEUTRAL, MALE
		db SUPER_FANG, FIRE_SPIN, FEINT_ATTACK, WILL_O_WISP
	db -1 ; end

; ================

	; ARCHER unused 
	db "Archer@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 28, HAUNTER, SPELL_TAG, 88, ABILITY_1 | NAT_NEUTRAL, MALE
		db DISABLE, NIGHT_SHADE, CONFUSE_RAY, SHADOW_BALL
	db -1 ; end

; ================
; ================================

ArianaGroup:
; ================================
; ================

	; ARIANA unused 
	db "Ariana@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 40, ARBOK, POISON_BARB, ABILITY_1 | NAT_NEUTRAL, FEMALE 
		db GLARE, SCREECH, ACID, CRUNCH
	db -1 ; end

; ================
; ================================

GiovanniGroup:
; ================================
; ================

	; GIOVANNI unused 
	db "Giovanni@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 64, NIDOKING, LIFE_ORB, ABIL_NIDOKING_SHEER_FORCE | NAT_SPD_UP_ATK_DOWN, MALE
		db SLUDGE_BOMB, EARTH_POWER, ICE_BEAM, FLAMETHROWER
	db -1 ; end

; ================
; ================================

ProfOakGroup:
; ================================
; ================

	; PROF_OAK unused 
	db "Oak@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 78, TAUROS, CHOICE_SCARF, ABIL_TAUROS_INTIMIDATE | NAT_ATK_UP_SATK_DOWN, MALE
		db DOUBLE_EDGE, EARTHQUAKE, ZEN_HEADBUTT, STONE_EDGE
	db -1 ; end

; ================
; ================================

ProfElmGroup:
; ================================
; ================

	; PROF_ELM unused 
	db "Elm@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 58, SKARMORY, METAL_COAT
		db STEEL_WING, SPIKES, AIR_SLASH, NIGHT_SLASH
	db -1 ; end

; ================
; ================================

ProfIvyGroup:
; ================================
; ================

	; PROF_IVY unused 
	db "Ivy@"
	db TRAINERTYPE_NORMAL
	; party ; unused 
	db 65, BUTTERFREE
	db -1 ; end

; ================
; ================================

MysticalmanGroup:
; ================================
; ================

	; MYSTICALMAN at Cianwood?
	db "Eusine@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 35, HAUNTER, SPELL_TAG, FAKE_PERFECT_DVS, ABIL_HAUNTER_LEVITATE | NAT_NEUTRAL, MALE
		db SHADOW_BALL, HYPNOSIS, CONFUSE_RAY, CURSE
	db 35, ELECTRODE, MAGNET, FAKE_PERFECT_DVS, SHINY_MASK | ABIL_ELECTRODE_AFTERMATH | NAT_NEUTRAL, MALE
		db THUNDER, SCREECH, SONIC_BOOM, ROLLOUT
	db 35, ALAKAZAM, TWISTEDSPOON, DVS_HP_FIRE, ABIL_ALAKAZAM_SYNCHRONIZE | NAT_NEUTRAL, MALE
		db REFLECT, LIGHT_SCREEN, HIDDEN_POWER, PSYBEAM
	db -1 ; end

; ================
; ================================

KarateKingGroup:
; ================================
; ================

	; KARATE_KING unused 
	db "Kiyo@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 42, HITMONLEE, BLACK_BELT
		db BULK_UP, FOCUS_ENERGY, HI_JUMP_KICK, FORESIGHT
	db -1 ; end

; ================
; ================================

OsteneGroup:
; ================================
; ================

	; unused
	; Ostene
	db "Palmer@"
	db TRAINERTYPE_NORMAL
;	; party
	db 50, GYARADOS
	db -1 ; end

; ================
; ================================

JessieJamesGroup:
; ================================
; ================

	; JESSIE_JAMES unused 
	db "& James@"
	db TRAINERTYPE_PERSONALITY
	; party
	db 26, WEEZING, ABILITY_1 | NAT_NEUTRAL, MALE
	db -1 ; end

; ================
; ================================

LoreleiGroup:
; ================================
; ================

	; LORELEI unused 
	db "Lorelei@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 39, GLACEON, NO_ITEM, 120
		db ICE_BEAM, BARRIER, RECOVER, QUICK_ATTACK
	db -1 ; end

; ================
; ================================

AgathaGroup:
; ================================
; ================

	; AGATHA unused 
	db "Agatha@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 62, GENGAR, SPELL_TAG, 180, ABILITY_1 | NAT_NEUTRAL, FEMALE
		db SHADOW_BALL, WILL_O_WISP, CURSE, DESTINY_BOND
	db -1 ; end

; ================
; ================================

StevenGroup:
; ================================
; ================

	; STEVEN unused, but maybe as a lead in to #2?
	db "Steven@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 61, SKARMORY, QUICK_CLAW, ABILITY_1 | NAT_NEUTRAL, MALE
		db SPIKES, SCREECH, DRILL_PECK, STEEL_WING
	db -1 ; end

; ================
; ================================

CynthiaGroup:
; ================================
; ================

	; CYNTHIA unused 
	db "Cynthia@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 60, TOGEKISS, WISE_GLASSES
		db AIR_SLASH, AURA_SPHERE, FRESH_SNACK, NASTY_PLOT
	db -1 ; end

; ================
; ================================

AmosGroup:
; ================================
; ================

	; Amos in the emperor's garden , TODO -- BETTER NICKNEAMES 
	db "Amos@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 27, BRONZOR, METAL_COAT, DVS_HP_WATER, "Overtone@"
		db CONFUSION, SCREECH, RAIN_DANCE, IRON_HEAD
	db 30, QUILAVA, CHARCOAL,DVS_HP_BUG,  "Golaris@"
		db FLAME_CHARGE, DEFENSE_CURL, DIG, ROLLOUT
	db 30, DARTRIX, MIRACLE_SEED, DVS_HP_GROUND, "Brawnshuf@"
		db ROOST, ENERGY_BALL, WING_ATTACK, RAZOR_LEAF
	db 30, DEWOTT, MYSTIC_WATER, DVS_HP_DARK, "Mabbulwark@"
		db AQUA_TAIL, SLASH, HEADBUTT, WATER_PULSE
	db 32, GALLADE, NO_ITEM,FAKE_PERFECT_DVS,  "Oatharav@"
		db PSYBEAM, KARATE_CHOP, CALM_MIND, BULK_UP
	db -1 ; end

	; Amos at rebels redoubt
	db "Amos@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 45, BRONZONG, NO_ITEM, DVS_HP_WATER, "Overtone@"
		db ZEN_HEADBUTT, TELEPORT, MIRROR_COAT, RAIN_DANCE
	db 48, H__ELECTRODE, LEFTOVERS,FAKE_PERFECT_DVS,  "Casabaraq@"
		db LEECH_SEED, THUNDER, GIGA_DRAIN, VOLT_SWITCH
	db 49, H__TYPHLOSION, NO_ITEM,DVS_HP_BUG,  "Golaris@"
		db SHADOW_BALL, FIRE_BLAST, WILL_O_WISP, THUNDERPUNCH
	db 49, H__DECIDUEYE, NO_ITEM,DVS_HP_GROUND,  "Brawnshuf@"
		db AURA_SPHERE, ENERGY_BALL, AIR_SLASH, CLOSE_COMBAT
	db 49, H__SAMUROTT, NO_ITEM, DVS_HP_DARK, "Mabbulwark@"
		db SWORDS_DANCE, CRUNCH, WATERFALL, SLASH
	db 51, GALLADE, NO_ITEM,FAKE_PERFECT_DVS,  "Oatharav@"
		db ZEN_HEADBUTT, HI_JUMP_KICK, AGILITY, SWORDS_DANCE
	db -1 ; end

; ================
; ================================

CherylGroup:
; ================================
; ================

	; CHERYL unused 
	db "Cheryl@"
	db TRAINERTYPE_EVS
	; party
	; unused 
	db 28, CHANSEY, 68
	db -1 ; end


; ================================

RileyGroup:
; ================================
; ================

	; RILEY unused 
	db "Riley@"
	db TRAINERTYPE_NORMAL
	; party
	; unused 
	db 58, MACHAMP
	db -1 ; end

; ================
; ================================

NomadMGroup:
; ================================
; ================

	; BUCK
	db "Joel@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, MILTANK
	db 24, MILTANK
	db 28, MILTANK
	db 32, MILTANK
	db -1 ; end
	
	; BUCK
	db "Glenn@"
	db TRAINERTYPE_NORMAL
	; party
	db 28, DONPHAN
	db 28, WEEPINBELL
	db 30, OVERQWIL
	db -1 ; end
	
	; BUCK
	db "Dale@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, PIDGEOTTO
	db 30, OVERQWIL
	db 30, GLIGAR
	db -1 ; end
	
	; BUCK
	db "Jacob@"
	db TRAINERTYPE_NORMAL
	; party
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 30, STARMIE, NO_ITEM
		db WHIRLPOOL, WATER_GUN, NO_MOVE, NO_MOVE
	db 32, KADABRA, NO_ITEM
		db WHIRLPOOL, REFLECT, NO_MOVE, NO_MOVE
	db 32, MISDREAVUS, NO_ITEM
		db WHIRLPOOL, NO_MOVE, NO_MOVE, NO_MOVE
	db -1 ; end
	
	; need to revise parties 
	; BUCK
	db "Aiden@"
	db TRAINERTYPE_NORMAL
	; party
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 30, STARMIE, NO_ITEM
		db WHIRLPOOL, WATER_GUN, NO_MOVE, NO_MOVE
	db 32, KADABRA, NO_ITEM
		db WHIRLPOOL, REFLECT, NO_MOVE, NO_MOVE
	db 32, MISDREAVUS, NO_ITEM
		db WHIRLPOOL, NO_MOVE, NO_MOVE, NO_MOVE
	db -1 ; end
	
	; BUCK
	db "Dan@"
	db TRAINERTYPE_NORMAL
	; party
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 30, STARMIE, NO_ITEM
		db WHIRLPOOL, WATER_GUN, NO_MOVE, NO_MOVE
	db 32, KADABRA, NO_ITEM
		db WHIRLPOOL, REFLECT, NO_MOVE, NO_MOVE
	db 32, MISDREAVUS, NO_ITEM
		db WHIRLPOOL, NO_MOVE, NO_MOVE, NO_MOVE
	db -1 ; end

	; BUCK
	db "Teddy@"
	db TRAINERTYPE_NORMAL
	; party
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 30, STARMIE, NO_ITEM
		db WHIRLPOOL, WATER_GUN, NO_MOVE, NO_MOVE
	db 32, KADABRA, NO_ITEM
		db WHIRLPOOL, REFLECT, NO_MOVE, NO_MOVE
	db 32, MISDREAVUS, NO_ITEM
		db WHIRLPOOL, NO_MOVE, NO_MOVE, NO_MOVE
	db -1 ; end
	
	; BUCK
	db "Tyrone@"
	db TRAINERTYPE_NORMAL
	; party
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 30, STARMIE, NO_ITEM
		db WHIRLPOOL, WATER_GUN, NO_MOVE, NO_MOVE
	db 32, KADABRA, NO_ITEM
		db WHIRLPOOL, REFLECT, NO_MOVE, NO_MOVE
	db 32, MISDREAVUS, NO_ITEM
		db WHIRLPOOL, NO_MOVE, NO_MOVE, NO_MOVE
	db -1 ; end
	

; ================
; ================================

MarleyGroup:
; ================================
; ================

	; MARLEY unused 
	db "Marley@"
	db TRAINERTYPE_EVS
	; party
	; unused 
	db 40, ARCANINE, 120
	db -1 ; end

; ================================

MiraGroup:
; ================================
; ================

	; MIRA unused 
	db "Mira@"
	db TRAINERTYPE_NORMAL
	; party
	; unused 
	db 58, TOGEKISS
	db -1 ; end

; ================
; ================================

LannaGroup:
; ================================
; ================

	; Lanna unused 
	db "Lanna@"
	db TRAINERTYPE_NORMAL
	; party
	; unused 
	db 57, ESPEON
	db -1 ; end

; ================================

DarachGroup:
; ================================
; ================

	; DARACH unused 
	db "Darach@"
	db TRAINERTYPE_NORMAL
	; party
	; unused 
	db 58, NIDOQUEEN
	db -1 ; end

; ================
; ================================

NomadFGroup:
; ================================
; ================

	; 
	db "Reina@"
	db TRAINERTYPE_NORMAL
	; party
	db 27, GLOOM
	db 30, MANTINE
	db 32, DRIFBLIM	
	db -1 ; end

	db "Alina@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, SKIPLOOM
	db 28, JUMPLUFF	
	db 30, OVERQWIL	
	db -1 ; end

	db "Marlene@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, PIDGEOTTO
	db 28, PIDGEOTTO	
	db 36, PIDGEOT	
	db -1 ; end

	db "Rin@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, MANKEY
	db 30, PRIMEAPE
	db -1 ; end

	db "Collette@"
	db TRAINERTYPE_NORMAL
	; party
	; unused
	db 25, MANKEY
	db 30, PRIMEAPE
	db -1 ; end
	
	db "Hillary@"
	db TRAINERTYPE_NORMAL
	; party
	; unused
	db 25, MANKEY
	db 30, PRIMEAPE
	db -1 ; end
	
	db "Shirley@"
	db TRAINERTYPE_NORMAL
	; party
	; unused
	db 25, MANKEY
	db 30, PRIMEAPE
	db -1 ; end
	
	db "Kathryn@"
	db TRAINERTYPE_NORMAL
	; party
	; unused
	db 25, MANKEY
	db 30, PRIMEAPE
	db -1 ; end
	
	db "Clarice@"
	db TRAINERTYPE_NORMAL
	; party
	; unused
	db 25, MANKEY
	db 30, PRIMEAPE
	db -1 ; end

; ================
; ================================

BobeshGroup:
; ================================
; ================

	; Bobesh stadium
	db "Bobesh@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 20, MAGMAR, NO_ITEM,FAKE_PERFECT_DVS, "Culverin@"
		db SUNNY_DAY, STRENGTH, PSYBEAM, FIRE_PUNCH
	db 21, SUNFLORA, NO_ITEM, DVS_HP_BUG,"Helia@"
		db SUNNY_DAY, GROWTH, RAZOR_LEAF, LEECH_SEED
	db 22, OCTILLERY, ZOOM_LENS, FAKE_PERFECT_DVS,"Levi@"
		db EMBER, OCTAZOOKA, NO_MOVE, NO_MOVE
	db 22, FLAREON, NO_ITEM,DVS_HP_FIRE, "Kotei@"
		db SUNNY_DAY, FLAME_CHARGE, ROCK_SMASH, DIG
	db -1 ; end
	
	; Bobesh e4
	db "Bobesh@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 51, NINETALES, FOCUS_BAND, FAKE_PERFECT_DVS, "NineLives@"
		db SOLAR_BEAM, REST, SHADOW_BALL, WILL_O_WISP
	db 54, MAGMORTAR, SITRUS_BERRY,FAKE_PERFECT_DVS,  "Culverin@"
		db SUNNY_DAY, THUNDERBOLT, PSYCHIC_M, FIRE_BLAST
	db 55, SUNFLORA, SITRUS_BERRY, DVS_HP_BUG, "Helia@"
		db SUNNY_DAY, GROWTH, SOLAR_BEAM, FLAMETHROWER
	db 55, OCTILLERY, SCOPE_LENS, FAKE_PERFECT_DVS, "Levi@"
		db FLAMETHROWER, OCTAZOOKA, HYPER_BEAM, ROCK_BLAST
	db 53, H__ARCANINE, SITRUS_BERRY, FAKE_PERFECT_DVS, "Dauntless@"
		db BODY_SLAM, EXTREMESPEED, FLARE_BLITZ, ROCK_SLIDE
	db 55, FLAREON, LEFTOVERS, DVS_HP_FIRE, "Kotei@"
		db FLARE_BLITZ, FLAME_CHARGE, ROCK_SMASH, CLOSE_COMBAT
	db -1 ; end

; ================
; ================================

AdrinnaGroup:
; ================================
; ================

	; ADRINNA garden
	db "Adrinna@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 30, FORRETRESS, FOCUS_SASH,  FAKE_PERFECT_DVS, "KiloJaal@" ; net or trap 
		db SPIKES, EXPLOSION, U_TURN, NO_MOVE
	db 27, LUXIO, FOCUS_SASH,  FAKE_PERFECT_DVS, "Kalamp@" ; darkness, amp 
		db ROAR, BITE, SPARK, NO_MOVE
	db 29, SNEASEL, NO_ITEM, DVS_HP_POISON, "Chaorctic@" ; shadow arctic 
		db ICE_SHARD, PURSUIT, QUICK_ATTACK, NO_MOVE
	db 33, JOLTEON, NO_ITEM,  DVS_HP_ELECTRIC, "Indrage@" ; indra plus rage 
		db SPARK, DOUBLE_KICK, THUNDER_WAVE, THUNDERSHOCK
	db -1 ; end

	db "Adrinna@" ; at the mine 
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 48, FORRETRESS, FOCUS_SASH, FAKE_PERFECT_DVS, "KiloJaal@"
		db SPIKES, EXPLOSION, U_TURN, NO_MOVE		
	db 46, GABITE, NO_ITEM, FAKE_PERFECT_DVS, "Patalugra@" ; shadow arctic 
		db BULLDOZE, DRAGON_CLAW, SWORDS_DANCE, NO_MOVE
	db 48, WEAVILE, NO_ITEM, DVS_HP_POISON, "Chaorctic@" ; shadow arctic 
		db ICE_PUNCH, NIGHT_SLASH, FEINT_ATTACK, ICE_SHARD
	db 50, HONCHKROW, NO_ITEM, FAKE_PERFECT_DVS, "Kalraja@" ; dark king 
		db DRILL_PECK, DARK_PULSE, NIGHT_SHADE, ROAR
	db 52, LUXRAY, NO_ITEM, FAKE_PERFECT_DVS, "Kalamp@"
		db CRUNCH, SPARK, DOUBLE_EDGE, ROAR
	db 52, JOLTEON, NO_ITEM, DVS_HP_ELECTRIC, "Indrage@"
		db THUNDERBOLT, DOUBLE_KICK, SHADOW_BALL, QUICK_ATTACK
	db -1 ; end


	; Adrinna TOWER ; DARK, STEEL, ELECTRIC, DRAGON
	db "Adrinna@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 57, MAGNEZONE, SITRUS_BERRY, FAKE_PERFECT_DVS, "Yogauss@" ; union , gauss 
		db TRI_ATTACK, THUNDERBOLT, FLASH_CANNON, VOLT_SWITCH		
	db 55, GARCHOMP, NO_ITEM, FAKE_PERFECT_DVS, "Patalugra@" ; underworld/netherworld, fierce 
		db SWORDS_DANCE, DRAGON_CLAW, EARTHQUAKE, ROCK_SLIDE
	db 55, WEAVILE, NO_ITEM, DVS_HP_POISON, "Chaorctic@"
		db ICE_PUNCH, NIGHT_SLASH, SWORDS_DANCE, ICE_SHARD
	db 56, HONCHKROW, BLACKGLASSES, FAKE_PERFECT_DVS, "Kalraja@"
		db DRILL_PECK, DARK_PULSE, SUCKER_PUNCH, HAZE
	db 57, LUXRAY, MAGNET, FAKE_PERFECT_DVS, "Kalamp@"
		db CRUNCH, WILD_CHARGE, DOUBLE_EDGE, PLAY_ROUGH
	db 57, JOLTEON, SITRUS_BERRY, DVS_HP_ELECTRIC, "Indrage@"
		db THUNDERBOLT, HYPER_BEAM, SHADOW_BALL, QUICK_ATTACK
	db -1 ; end

; ================
; ================================

BarbeauGroup:
; ================================
; ================

	; Barbeau_T
	db "Barbeau@" 
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 39, AMPHAROS, NO_ITEM, DVS_HP_WATER, "Neonovis@"
		db FLASH, THUNDERPUNCH, SWIFT, THUNDER_WAVE
	db 35, SHUCKLE, CHESTO_BERRY, FAKE_PERFECT_DVS, "Rumbler@"
		db REST, DEFENSE_CURL, ROLLOUT, WRAP		
	db 35, CORSOLA, NO_ITEM, FAKE_PERFECT_DVS, "Cnidaran@"
		db ROCK_BLAST, WATER_PULSE, TOXIC, RECOVER
	db 38, STARMIE, NO_ITEM, DVS_HP_ROCK, "HangTen@"
		db WHIRLPOOL, WATER_PULSE, RAPID_SPIN, RECOVER
	db 40, LANTURN, CHESTO_BERRY, FAKE_PERFECT_DVS, "Unfathom@"
		db SURF, THUNDERBOLT, REST, SLEEP_TALK
	db -1 ; end

; ================

	; Barbeau_T
	db "Barbeau@" ; at redoubt 
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 49, AMPHAROS, NO_ITEM,  DVS_HP_WATER, "Neonovis@"
		db FLASH, THUNDERBOLT, POWER_GEM, THUNDER_WAVE
	db 45, CORSOLA, LEFTOVERS,  FAKE_PERFECT_DVS, "Cnidaran@"
		db MIRROR_COAT, SURF, TOXIC, RECOVER
	db 48, STARMIE, NO_ITEM, DVS_HP_ROCK,  "HangTen@"
		db WHIRLPOOL, SURF, ICE_BEAM, RECOVER
	db 45, SHUCKLE, CHESTO_BERRY, FAKE_PERFECT_DVS,  "Rumbler@"
		db REST, DEFENSE_CURL, ROLLOUT, WRAP
	db 50, LANTURN, CHESTO_BERRY,  FAKE_PERFECT_DVS, "Unfathom@"
		db SURF, THUNDERBOLT, REST, SLEEP_TALK
	db -1 ; end

; ================
; ================================

FlanneryGroup:
; ================================
; ================

	; FLANNERYunused
	db "Flannery@"
	db TRAINERTYPE_EVS
	; party
	; unused 
	db 64, MAGCARGO, 212
	db -1 ; end


; ================
; ================================

KannaGroup:
; ================================
; ================

	; Kanna
	db "Kanna@" ; mythic beings in sami folklore ; todo these nicknames are too obscure .... maybe famous glaciers throughout the world ? 
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 44, ABOMASNOW, CHOICE_SCARF, FAKE_PERFECT_DVS, "Everest@" ; CONTROL WEATHER
		db BLIZZARD, PETAL_DANCE, EARTHQUAKE, NO_MOVE
	db 46, SNEASLER, RAZOR_CLAW,  FAKE_PERFECT_DVS, "Kilimanja@"  ; hunter 
		db POISON_JAB, NIGHT_SLASH, SLASH, QUICK_ATTACK
	db 42, H__AVALUGG, FOCUS_SASH,FAKE_PERFECT_DVS, "Aconcagua@" 
		db ROCK_SLIDE, EARTHQUAKE, AVALANCHE, MIRROR_COAT
	db 44, H__BRAVIARY, NO_ITEM,DVS_HP_PSYCHIC,  "Denali@" ; wind spirit
		db AIR_SLASH, PSYCHIC_M, ROOST, NIGHT_SHADE
	db 48, FROSLASS, SPELL_TAG,DVS_HP_GHOST,  "Blanc@" ; dead
		db DESTINY_BOND, SHADOW_BALL, ICE_SHARD, ICE_BEAM
	db -1 ; end


; ================
; ================================

SkylaGroup:
; ================================
; ================

	; SKYLA unused 
	db "Skyla@"
	db TRAINERTYPE_NORMAL
	; party
	; unused 
	db 33, FARFETCH_D
	db -1 ; end


; ================================

ValerieGroup:
; ================================
; ================

	; VALERIE unused 
	db "Valerie@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, CLEFABLE
	db -1 ; end


; ================================

KukuiGroup:
; ================================
; ================

	; KUKUI, unused 
	db "Kukui@"
	db TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY
	; party
	; unused
	db 66, MAGNEZONE, 244, ABILITY_1 | NAT_NEUTRAL, MALE
	db -1 ; end


; ================================

VictorGroup:
; ================================
; ================

	; VICTOR, unused 
	db "Victor@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 69, PIKACHU, LIGHT_BALL, ABIL_PIKACHU_STATIC | NAT_SATK_UP_ATK_DOWN, MALE, "Puka@"
		db SURF, THUNDERBOLT, THUNDER_WAVE, EXTREMESPEED
	db -1 ; end

; ================
; ================================

BillGroup:
; ================================
; ================

	; BILL_T, unusd 
	db "Bill@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 62, VAPOREON, MYSTIC_WATER
		db RECOVER, BARRIER, HAZE, SCALD
	db 62, JOLTEON, MAGNET
		db THUNDER_WAVE, THUNDERBOLT, LIGHT_SCREEN, QUICK_ATTACK
	db 62, FLAREON, CHARCOAL
		db FLARE_BLITZ, DOUBLE_EDGE, SMOKESCREEN, ROCK_SMASH
	db 63, LEAFEON, MIRACLE_SEED
		db SEED_BOMB, SWORDS_DANCE, HEALINGLIGHT, X_SCISSOR
	db 63, GLACEON, NEVERMELTICE
		db ICE_BEAM, MIRROR_COAT, RECOVER, QUICK_ATTACK
	db 66, PORYGON2, EVIOLITE
		db TRI_ATTACK, THUNDERBOLT, ICE_BEAM, RECOVER
	db -1 ; end

; ================
; ================================

TammyGroup:
; ================================
; ================

	; Tammy
	db "Tammy@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 10, PINECO, ROCKY_HELMET, "Silky@"
		db BUG_BITE, PROTECT, STRING_SHOT, NO_MOVE
	db 10, HERACROSS, NO_ITEM, "Hercules@"
		db ENDURE, REVERSAL, NO_MOVE, NO_MOVE
	db 12, FURRET, NO_ITEM, "Kitty@"
		db HEADBUTT, NO_MOVE, NO_MOVE, NO_MOVE
	db -1 ; end

; ================
; ================================

SilverGroup:
; ================================
; ================

	; Silver
	db "Silver@" ; done 
	db TRAINERTYPE_ITEM | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 45, CROBAT, BLACK_SLUDGE, "Dracula@"
		db POISON_JAB, SUPER_FANG, ROOST, BRAVE_BIRD
	db 46, WEAVILE, EXPERT_BELT, "Ah-Choo@"
		db ICE_PUNCH, ICE_SHARD, NIGHT_SLASH, SWORDS_DANCE
	db 47, MAGNEZONE, LEFTOVERS, "Clank@"
		db THUNDERBOLT, TRI_ATTACK, THUNDER_WAVE, FLASH_CANNON
	db 48, GENGAR, FOCUS_SASH, "Casper@"
		db WILL_O_WISP, DARK_PULSE, SHADOW_BALL, THUNDERBOLT
	db 49, ALAKAZAM, LIFE_ORB, "SpoonMan@"
		db CALM_MIND, PSYCHIC_M, RECOVER, REFLECT
	db 50, FERALIGATR, EXPERT_BELT, "StevIrwin@"
		db EARTHQUAKE, WATERFALL, ICE_PUNCH, DRAGON_DANCE
	db -1 ; end

; ================
; ================================

ImakuniGroup:
; ================================
; ================

	; IMAKUNI ; unused 
	db "Imakuni@"
	db TRAINERTYPE_ITEM
	; party
	; unused 
	db 62, CROCONAW, BRIGHTPOWDER
	db -1 ; end

; ================
; ================================

KenseyGroup:
; ================================
; ================

	; Kensey
	db "Kensey@" ; AT THE PORT 
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 38, FERALIGATR, NO_ITEM, DVS_HP_DRAGON, "Trapjaw@"
		db CRUNCH, WATERFALL, SCARY_FACE, NO_MOVE
	db 37, EMPOLEON, NO_ITEM, FAKE_PERFECT_DVS, "Waddleton@"
		db SURF, DRILL_PECK, METAL_CLAW, NO_MOVE
	db 37, SLOWKING, NO_ITEM, FAKE_PERFECT_DVS, "Hipocampus@"
		db NASTY_PLOT, PSYCHIC_M, BUBBLE_BEAM, NO_MOVE
	db 38, H__SLIGGOO, NO_ITEM, FAKE_PERFECT_DVS, "AcidTide@"
		db DRAGON_PULSE, IRON_HEAD, PROTECT, ACID
	db 40, VAPOREON, LEFTOVERS, DVS_HP_STEEL, "Tidechaser@"
		db SCALD, REFLECT, ICE_BEAM, TOXIC
	db -1 ; end

; ================

	; Kensey
	db "Kensey@" ; AT THE TOWER 
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 53, FERALIGATR, EXPERT_BELT,DVS_HP_DRAGON,  "Trapjaw@"
		db CRUNCH, WATERFALL, ICE_PUNCH, DRAGON_DANCE
	db 55, EMPOLEON, SITRUS_BERRY,FAKE_PERFECT_DVS,  "Waddleton@"
		db SURF, DRILL_PECK, IRON_HEAD, ROOST
	db 56, SLOWKING, LIFE_ORB,FAKE_PERFECT_DVS,  "Hipocampus@"
		db NASTY_PLOT, PSYCHIC_M, SURF, FLAMETHROWER
	db 55, H__GOODRA, LEFTOVERS, FAKE_PERFECT_DVS, "AcidTide@"
		db DRAGON_PULSE, IRON_HEAD, PROTECT, SLUDGE_BOMB
	db 56, AZUMARILL, SITRUS_BERRY, FAKE_PERFECT_DVS, "Floppy@"
		db AQUA_JET, BELLY_DRUM, PLAY_ROUGH, DOUBLE_EDGE
	db 57, VAPOREON, LEFTOVERS,DVS_HP_STEEL,  "Tidechaser@"
		db SCALD, REFLECT, ICE_BEAM, TOXIC
	db -1 ; end

; ================
; ================================

ReiGroup:
; ================================
; ================

	; REI
	db "Emi@"
	db TRAINERTYPE_MOVES
	; party
	db 30, SYLVEON 
		db DRAIN_KISS, CALM_MIND, SWIFT, LIGHT_SCREEN
	db -1 ; end

; ================
