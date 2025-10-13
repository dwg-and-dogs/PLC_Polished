INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

INCLUDE "data/pokemon/evolution_moves.asm" ;done

INCLUDE "data/pokemon/evos_attacks_pointers.asm" ;done

EvosAttacks::

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 16, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 8, EMBER
	db 13, QUICK_ATTACK
	db 19, DEFENSE_CURL ; Flame Wheel → Defense Curl
	db 22, FLAME_CHARGE ; Defense Curl → Flame Charge
	db 28, DIG ; Flame Charge → TM move
	db 31, SWIFT
	db 37, REVERSAL ; Lava Plume → egg move
	db 40, FLAMETHROWER
	db 46, EARTH_POWER ; Inferno → new move
	db 49, ROLLOUT
	db 55, DOUBLE_EDGE
	db 64, FLARE_BLITZ ; Eruption → egg move
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db EVOLVE_HOLDING, ODD_SOUVENIR, H__TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, DEFENSE_CURL ; Flame Wheel → Defense Curl
	db 24, FLAME_CHARGE ; Defense Curl → Flame Charge
	db 31, SWIFT
	db 35, DIG ; Flame Charge → TM move
	db 42, REVERSAL ; Lava Plume → egg move
	db 46, FLAMETHROWER
	db 53, EARTH_POWER ; Inferno → new move
	db 64, DOUBLE_EDGE
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_PUNCH ; evolution move
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, DEFENSE_CURL ; Flame Wheel → Defense Curl
	db 24, FLAME_CHARGE ; Defense Curl → Flame Charge
	db 31, SWIFT
	db 35, DIG ; Flame Charge → TM move
	db 43, REVERSAL ; Lava Plume → egg move
	db 48, FLAMETHROWER
	db 56, EARTH_POWER ; Inferno → new move
	db 60, FLARE_BLITZ ; Inferno → new move
	db 0 ; no more level-up moves
	
HtyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_PUNCH ; evolution move
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, DEFENSE_CURL ; Flame Wheel → Defense Curl
	db 24, FLAME_CHARGE ; Defense Curl → Flame Charge
	db 31, SWIFT
	db 35, DIG ; Flame Charge → TM move
	db 43, SHADOW_BALL ; Lava Plume → egg move
	db 48, FLAMETHROWER
	db 56, WILL_O_WISP ; Inferno → new move
	db 60, FLARE_BLITZ ; Inferno → new move
	db 0 ; no more level-up moves

RowletEvosAttacks:
	db EVOLVE_LEVEL, 16, DARTRIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, MUD_SLAP
	db 8, NIGHT_SHADE
	db 10, RAZOR_LEAF
	db 13, AERIAL_ACE
	db 19, ROOST ; Flame Wheel → Defense Curl
	db 22, ENERGY_BALL ; Defense Curl → Flame Charge
	db 28, WING_ATTACK ; Flame Charge → TM move
	db 31, FALSE_SWIPE
	db 37, AIR_SLASH ; Lava Plume → egg move
	db 40, PETAL_DANCE
	db 44, EXTRASENSORY ; Inferno → new move
	db 48, BRAVE_BIRD
	db 52, SOLAR_BEAM ; Eruption → egg move
	db 0 ; no more level-up moves
	
DartrixEvosAttacks:
	db EVOLVE_LEVEL, 34, DECIDUEYE
	db EVOLVE_HOLDING, ODD_SOUVENIR,  H__DECIDUEYE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, NIGHT_SHADE
	db 10, RAZOR_LEAF
	db 13, AERIAL_ACE
	db 19, ROOST ; Flame Wheel → Defense Curl
	db 22, ENERGY_BALL ; Defense Curl → Flame Charge
	db 28, WING_ATTACK ; Flame Charge → TM move
	db 31, FALSE_SWIPE
	db 37, AIR_SLASH ; Lava Plume → egg move
	db 40, PETAL_DANCE
	db 45, EXTRASENSORY ; Inferno → new move
	db 50, BRAVE_BIRD
	db 55, SOLAR_BEAM ; Eruption → egg move
	db 0 ; no more level-up moves

DecidueyeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, NIGHT_SHADE
	db 10, RAZOR_LEAF
	db 13, AERIAL_ACE
	db 19, ROOST ; Flame Wheel → Defense Curl
	db 22, ENERGY_BALL ; Defense Curl → Flame Charge
	db 28, WING_ATTACK ; Flame Charge → TM move
	db 31, FALSE_SWIPE
	db 39, AIR_SLASH ; Lava Plume → egg move
	db 45, PETAL_DANCE
	db 50, SHADOW_BALL ; Inferno → new move
	db 55, BRAVE_BIRD
	db 60, SOLAR_BEAM ; Eruption → egg move
	db 0 ; no more level-up moves

HdecidueyeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, NIGHT_SHADE
	db 10, RAZOR_LEAF
	db 13, AERIAL_ACE
	db 19, ROOST ; Flame Wheel → Defense Curl
	db 22, ENERGY_BALL ; Defense Curl → Flame Charge
	db 28, WING_ATTACK ; Flame Charge → TM move
	db 31, FALSE_SWIPE
	db 39, AIR_SLASH ; Lava Plume → egg move
	db 45, PETAL_DANCE
	db 50, AURA_SPHERE ; Inferno → new move
	db 55, CLOSE_COMBAT
	db 60, SOLAR_BEAM ; Eruption → egg move
	db 0 ; no more level-up moves

OshawottEvosAttacks:
	db EVOLVE_LEVEL, 16, DEWOTT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, LOW_KICK
	db 8, AQUA_JET
	db 10, FOCUS_ENERGY
	db 13, BITE
	db 19, WATER_PULSE ; Flame Wheel → Defense Curl
	db 22, SLASH ; Defense Curl → Flame Charge
	db 28, AQUA_TAIL ; Flame Charge → TM move
	db 31, HEADBUTT
	db 37, REST ; Lava Plume → egg move
	db 40, HYDRO_PUMP
	db 44, ICY_WIND ; Inferno → new move
	db 48, X_SCISSOR
	db 52, SWORDS_DANCE ; Eruption → egg move
	db 0 ; no more level-up moves
	
DewottEvosAttacks:
	db EVOLVE_LEVEL, 34, SAMUROTT
	db EVOLVE_HOLDING, ODD_SOUVENIR, H__SAMUROTT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, AQUA_JET
	db 10, FOCUS_ENERGY
	db 13, BITE
	db 19, WATER_PULSE ; Flame Wheel → Defense Curl
	db 25, SLASH ; Defense Curl → Flame Charge
	db 30, AQUA_TAIL ; Flame Charge → TM move
	db 33, HEADBUTT
	db 40, REST ; Lava Plume → egg move
	db 45, HYDRO_PUMP
	db 49, ICY_WIND ; Inferno → new move
	db 54, X_SCISSOR
	db 58, SWORDS_DANCE ; Eruption → egg move
	db 0 ; no more level-up moves

SamurottEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, AQUA_JET
	db 10, FOCUS_ENERGY
	db 13, BITE
	db 21, WATER_PULSE ; Flame Wheel → Defense Curl
	db 25, SLASH ; Defense Curl → Flame Charge
	db 30, AQUA_TAIL ; Flame Charge → TM move
	db 33, HEADBUTT
	db 40, REST ; Lava Plume → egg move
	db 45, HYDRO_PUMP
	db 50, ICICLE_CRASH ; Inferno → new move
	db 55, MEGAHORN
	db 60, SWORDS_DANCE ; Eruption → egg move
	db 0 ; no more level-up moves
	
HsamurottEvosAttacks:
	db EVOLVE_LEVEL, 34, DECIDUEYE
	db EVOLVE_ITEM, ODD_SOUVENIR, H__DECIDUEYE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, AQUA_JET
	db 10, FOCUS_ENERGY
	db 13, BITE
	db 21, WATER_PULSE ; Flame Wheel → Defense Curl
	db 25, SLASH ; Defense Curl → Flame Charge
	db 30, AQUA_TAIL ; Flame Charge → TM move
	db 33, HEADBUTT
	db 40, REST ; Lava Plume → egg move
	db 45, HYDRO_PUMP
	db 50, CRUNCH ; Inferno → new move
	db 55, MEGAHORN
	db 60, SWORDS_DANCE ; Eruption → egg move
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE ; Caterpie move
	db 1, STRING_SHOT ; Caterpie move
	db 1, GUST
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER ; Psybeam → Sleep Powder
	db 19, PSYBEAM ; Silver Wind → Psybeam
	db 23, SUPERSONIC
	db 25, SAFEGUARD
	db 29, HYPNOSIS ; Whirlwind → new move
	db 31, BUG_BUZZ
	db 35, REFLECT ; Rage Powder → RBY TM move
	db 37, AGILITY ; Captivate → new move
	db 41, HEALINGLIGHT ; Tailwind → new move
	db 43, AIR_SLASH
	db 47, PSYCHIC_M ; Quiver Dance → TM move
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING ; Weedle move
	db 1, STRING_SHOT ; Weedle move
	db 1, FURY_STRIKES ; Fury Attack → similar move
	db 11, U_TURN ; evolution move
	db 14, RAGE
	db 17, PURSUIT
	db 20, FOCUS_ENERGY
	db 23, VENOSHOCK
	db 26, FEINT_ATTACK ; Assurance → similar move
	db 29, TOXIC_SPIKES
	db 32, PIN_MISSILE
	db 35, POISON_JAB
	db 38, AGILITY
	db 41, SWORDS_DANCE ; Endeavor → TM move
	db 44, OUTRAGE ; Fell Stinger → Let's Go move
	db 0 ; no more level-up moves
	
PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 12, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GUST ; Sand Attack → Gust
	db 9, MUD_SLAP ; Gust → GSC TM move
	db 13, QUICK_ATTACK
	db 17, RAGE ; Whirlwind → RBY TM move
	db 21, CHARM ; Twister → egg move
	db 25, SWIFT ; Feather Dance → TM move
	db 29, AGILITY
	db 33, WING_ATTACK
	db 37, ROOST
	db 41, DRILL_PECK ; Tailwind → new move
	db 45, STEEL_WING ; Mirror Move → TM move
	db 49, AIR_SLASH
	db 53, HURRICANE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GUST ; Sand Attack → Gust
	db 9, MUD_SLAP ; Gust → GSC TM move
	db 13, QUICK_ATTACK
	db 17, RAGE ; Whirlwind → RBY TM move
	db 22, CHARM ; Twister → egg move
	db 27, SWIFT ; Feather Dance → TM move
	db 32, AGILITY
	db 37, WING_ATTACK
	db 42, ROOST
	db 48, DRILL_PECK ; Tailwind → new move
	db 52, STEEL_WING ; Mirror Move → TM move
	db 56, AIR_SLASH
	db 60, HURRICANE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, RAGE ; Whirlwind → RBY TM move
	db 22, CHARM ; Twister → egg move
	db 27, SWIFT ; Feather Dance → TM move
	db 32, AGILITY
	db 38, WING_ATTACK
	db 44, ROOST
	db 50, DRILL_PECK ; Tailwind → new move
	db 52, STEEL_WING ; Mirror Move → TM move
	db 56, AIR_SLASH
	db 60, HURRICANE
	db 0 ; no more level-up moves
	
NoctowlEvosAttacks: ; encountered first at level 25 
	db 0 ; no more evolutions
	db 1, PAY_DAY
	db 8, HYPNOSIS ; Sand Attack → similar move
	db 15, REFLECT
	db 20, NIGHT_SHADE
	db 23, WING_ATTACK	
	db 26, THIEF
	db 30, SHADOW_CLAW
	db 35, DREAM_EATER
	db 35, KNOCK_OFF
	db 41, HAZE
	db 45, HEX
	db 55, PAIN_SPLIT
	db 0 ; no more level-up moves	
	
EkansEvosAttacks:
	db EVOLVE_LEVEL, 16, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	db 25, DISABLE ; Stockpile + Spit Up + Swallow → egg move
	db 28, PURSUIT ; Acid Spray → egg move
	db 35, POISON_JAB ; Mud Bomb → TM move
	db 36, LEECH_LIFE ; Gastro Acid → TM move
	db 38, IRON_TAIL ; Belch → TM move
	db 41, HAZE
	db 44, BULK_UP ; Coil → TM move
	db 49, GUNK_SHOT
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, CRUNCH ; evolution move
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	db 27, DISABLE ; Stockpile + Spit Up + Swallow → egg move
	db 32, PURSUIT ; Acid Spray → egg move
	db 39, POISON_JAB ; Mud Bomb → TM move
	db 44, LEECH_LIFE ; Gastro Acid → TM move
	db 48, IRON_TAIL ; Belch → TM move
	db 51, HAZE
	db 56, BULK_UP ; Coil → TM move
	db 63, GUNK_SHOT
	db 0 ; no more level-up moves
	
PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, LEER ; Tail Whip → similar move
	db 5, GROWL
	db 7, CHARM ; Play Nice → Pichu move
	db 10, QUICK_ATTACK
	db 13, DOUBLE_KICK ; Electro Ball → Let's Go move
	db 18, THUNDER_WAVE
	db 21, MUD_SLAP ; Feint → GSC TM move
	db 23, DOUBLE_TEAM
	db 26, SPARK
	db 29, IRON_TAIL ; Nuzzle → TM move
	db 34, EXTREMESPEED ; Discharge → event move
	db 37, BODY_SLAM ; Slam → TM move
	db 37, THUNDERBOLT
	db 45, AGILITY
	db 50, WILD_CHARGE
	db 53, LIGHT_SCREEN
	db 58, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, LEER ; Tail Whip → similar move
	db 1, QUICK_ATTACK
	db 1, THUNDERBOLT ; evolution move
	db 1, REVERSAL ; Sw/Sh move
	db 50, WILD_CHARGE
	db 58, THUNDER
	db 0 ; no more level-up moves
	
NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 7, LEER ; Tail Whip → similar move
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_STRIKES ; Fury Swipes → similar move
	db 23, BITE
	db 28, SWEET_KISS ; Helping Hand → event move
	db 35, TOXIC_SPIKES
	db 38, HEALINGLIGHT ; Flatter → event move (Moonlight)
	db 43, CRUNCH
	db 50, CHARM ; Captivate → egg move
	db 58, POISON_JAB
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, CLOSE_COMBAT ; Superpower → similar move
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, OUTRAGE ; Chip Away → HGSS tutor move
	db 35, BODY_SLAM
	db 43, EARTH_POWER
	db 58, CLOSE_COMBAT ; Superpower → similar move
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_STRIKES ; Fury Attack → similar move
	db 23, HORN_ATTACK
	db 28, SWEET_KISS ; Helping Hand → event move
	db 35, TOXIC_SPIKES
	db 38, HEALINGLIGHT ; Flatter → event move (Morning Sun)
	db 43, POISON_JAB
	db 50, CHARM ; Captivate → egg move
	db 58, MEGAHORN ; Horn Drill → Nidoking move
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGAHORN
	db 1, PECK
	db 1, FOCUS_ENERGY
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, OUTRAGE ; Chip Away → HGSS tutor move
	db 35, THRASH
	db 43, EARTH_POWER
	db 58, MEGAHORN
	db 0 ; no more level-up moves
	
ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, DISARM_VOICE
	db 1, TACKLE ; Pound → similar move
	db 1, GROWL
	db 1, ENCORE
	db 7, SING
	db 10, DOUBLE_SLAP
	db 13, DEFENSE_CURL
	db 16, SWEET_KISS ; Follow Me → new move
	db 19, DIZZY_PUNCH ; Bestow → Crystal unique move
	db 22, TRI_ATTACK ; Wake-Up Slap → RBY TM move
	db 25, MINIMIZE
	db 28, DRAIN_KISS ; Stored Power → Sw/Sh move
	db 31, METRONOME
	db 34, REFLECT ; Cosmic Power → TM move
	db 37, LIGHT_SCREEN ; Lucky Chant → TM move
	db 40, BODY_SLAM
	db 43, HEALINGLIGHT ; Moonlight → similar move
	db 46, MOONBLAST
	db 49, BELLY_DRUM ; Gravity → egg move
	db 50, EXTRASENSORY ; Meteor Mash → new move
	db 55, HEAL_BELL ; Healing Wish → HGSS tutor move
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEALINGLIGHT ; Moonlight → similar move
	db 1, DISARM_VOICE
	db 1, PLAY_ROUGH ; Let's Go TM move
	db 1, SING
	db 1, MINIMIZE
	db 1, METRONOME
	db 1, DOUBLE_SLAP
	db 31, METRONOME
	db 34, REFLECT ; Cosmic Power → TM move
	db 37, LIGHT_SCREEN ; Lucky Chant → TM move
	db 40, BODY_SLAM
	db 43, HEALINGLIGHT ; Moonlight → similar move
	db 46, MOONBLAST
	db 49, BELLY_DRUM ; Gravity → egg move
	db 50, EXTRASENSORY ; Meteor Mash → new move
	db 55, HEAL_BELL ; Healing Wish → HGSS tutor move
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 4, GROWL ; Tail Whip → new move
	db 7, ASTONISH ; Roar → new move
	db 9, CHARM ; Baby-Doll Eyes → similar move
	db 10, QUICK_ATTACK
	db 12, CONFUSE_RAY
	db 15, FIRE_SPIN
	db 18, NIGHT_SHADE ; Payback → new move
	db 20, WILL_O_WISP
	db 23, FEINT_ATTACK
	db 26, HEX
	db 28, PAIN_SPLIT ; Flame Burst → HGSS tutor move
	db 31, EXTRASENSORY
	db 34, SAFEGUARD
	db 36, FLAMETHROWER
	db 39, HYPNOSIS ; Imprison → egg move
	db 42, FIRE_BLAST
	db 44, SHADOW_BALL ; Grudge → TM move
	db 47, DISABLE ; Captivate → egg move
	db 50, FLARE_BLITZ ; Inferno → egg move
	db 53, HEALINGLIGHT ; new move
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, NASTY_PLOT ; evolution move
	db 1, FLAMETHROWER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 31, EXTRASENSORY
	db 34, SAFEGUARD
	db 36, FLAMETHROWER
	db 39, HYPNOSIS ; Imprison → egg move
	db 42, FIRE_BLAST
	db 44, SHADOW_BALL ; Grudge → TM move
	db 47, DISABLE ; Captivate → egg move
	db 50, FLARE_BLITZ ; Inferno → egg move
	db 53, HEALINGLIGHT ; new move
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, SWEET_KISS ; Igglybuff move
	db 3, DEFENSE_CURL
	db 5, TACKLE ; Pound → similar move
	db 9, DISARM_VOICE ; Play Nice → Crystal unique move
	db 11, DIZZY_PUNCH
	db 14, DISABLE
	db 17, DOUBLE_SLAP
	db 20, ROLLOUT
	db 22, CHARM ; Round → Igglybuff move
	db 27, MEAN_LOOK ; Wake-Up Slap → new move
	db 30, REST
	db 32, BODY_SLAM
	db 35, GYRO_BALL
	db 38, HEAL_BELL ; Mimic → HGSS tutor move
	db 41, HYPER_VOICE
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, MINIMIZE ; Let's Go move
	db 1, DOUBLE_EDGE
	db 1, PLAY_ROUGH
	db 1, SING
	db 1, DEFENSE_CURL
	db 1, DISABLE
	db 1, DOUBLE_SLAP
	db 30, REST
	db 32, BODY_SLAM
	db 35, GYRO_BALL
	db 38, HEAL_BELL ; Mimic → HGSS tutor move
	db 41, HYPER_VOICE
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves
	
ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 5, SUPERSONIC
	db 7, GUST
	db 11, BITE
	db 13, ACID ; 
	db 17, CONFUSE_RAY
	db 19, WING_ATTACK ; Air Cutter → Wing Attack
	db 23, SWIFT
	db 25, SUPER_FANG ; Poison Fang → HGSS tutor move
	db 29, MEAN_LOOK
	db 31, LEECH_LIFE
	db 35, HAZE
	db 37, VENOSHOCK
	db 41, AIR_SLASH
	db 43, PURSUIT ; Quick Guard → egg move
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, ABSORB
	db 1, CRUNCH ; Let's Go move
	db 5, SUPERSONIC
	db 7, ASTONISH
	db 11, BITE
	db 13, GUST ; Wing Attack → egg move
	db 17, CONFUSE_RAY
	db 19, WING_ATTACK ; Air Cutter → Wing Attack
	db 24, SWIFT
	db 27, SUPER_FANG ; Poison Fang → HGSS tutor move
	db 32, MEAN_LOOK
	db 35, LEECH_LIFE
	db 40, HAZE
	db 43, VENOSHOCK
	db 48, AIR_SLASH
	db 51, PURSUIT ; Quick Guard → egg move
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, X_SCISSOR ; evolution move
	db 1, SCREECH
	db 1, ABSORB
	db 1, CRUNCH ; Let's Go move
	db 5, SUPERSONIC
	db 7, ASTONISH
	db 11, BITE
	db 13, GUST ; Wing Attack → egg move
	db 17, CONFUSE_RAY
	db 19, WING_ATTACK ; Air Cutter → Wing Attack
	db 24, SWIFT
	db 27, SUPER_FANG ; Poison Fang → HGSS tutor move
	db 32, MEAN_LOOK
	db 35, LEECH_LIFE
	db 40, HAZE
	db 43, VENOSHOCK
	db 48, AIR_SLASH
	db 51, CRUNCH ; Quick Guard → new move
	db 55, GUNK_SHOT
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 5, LEECH_SEED ; Sweet Scent → event move
	db 9, ACID
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 19, MEGA_DRAIN
	db 24, CHARM ; Lucky Chant → egg move
	db 29, HEALINGLIGHT ; Moonlight → similar move
	db 34, GIGA_DRAIN
	db 39, TOXIC
	db 44, HYPER_VOICE ; Natural Gift → tutor move
	db 49, MOONBLAST
	db 54, GROWTH ; Grassy Terrain → Crystal move
	db 59, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, HEAL_BELL ; Aromatherapy → similar move
	db 1, POISONPOWDER
	db 1, STUN_SPORE
	db 35, GROWTH
	db 40, MOONBLAST ; Petal Blizzard → Gloom move
	db 45, PETAL_DANCE
	db 50, SOLAR_BEAM
	db 0 ; no more level-up moves
	
BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, HEAL_BELL ; new move
	db 1, SUNNY_DAY
	db 1, STUN_SPORE
	db 30, GIGA_DRAIN
	db 35, GROWTH ; Quiver Dance → Growth
	db 40, MOONBLAST ; Petal Blizzard → Gloom move
	db 45, PETAL_DANCE ; evolution move
	db 50, PLAY_ROUGH ; Leaf Storm → Sw/Sh move
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 20, PARASECT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ABSORB
	db 2, SLEEP_POWDER ; Let's Go move
	db 4, STUN_SPORE
	db 6, POISONPOWDER
	db 11, MEGA_DRAIN
	db 17, BUG_BITE ; Fury Cutter → egg move
	db 22, SPORE
	db 27, SLASH
	db 33, GROWTH
	db 38, GIGA_DRAIN
	db 43, LEECH_LIFE ; Aromatherapy → TM move
	db 49, HEALINGLIGHT ; Rage Powder → new move
	db 54, X_SCISSOR
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, SHADOW_CLAW ; evolution move
	db 1, TACKLE
	db 2, SLEEP_POWDER ; Let's Go move
	db 4, STUN_SPORE
	db 6, POISONPOWDER
	db 11, ABSORB
	db 17, BUG_BITE ; Fury Cutter → egg move
	db 22, SPORE
	db 29, SLASH
	db 37, GROWTH
	db 44, GIGA_DRAIN
	db 51, LEECH_LIFE ; Aromatherapy → TM move
	db 59, HEALINGLIGHT ; Rage Powder → new move
	db 66, X_SCISSOR
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 20, VENOMOTH
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, DISABLE
	db 1, FORESIGHT
	db 1, ABSORB
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, PSYBEAM
	db 23, BUG_BITE ; Stun Spore → HGSS tutor move
	db 25, SLUDGE_BOMB ; Signal Beam → Stun Spore
	db 29, SLEEP_POWDER
	db 35, LEECH_LIFE
	db 37, ZEN_HEADBUTT
	db 41, BATON_PASS ; Poison Fang → egg move
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUG_BUZZ
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 1, ABSORB
	db 5, SUPERSONIC
	db 11, PSYBEAM
	db 13, POISONPOWDER
	db 17, POISON_STING
	db 23, BUG_BITE ; Stun Spore → HGSS tutor move
	db 25, SLUDGE_BOMB ; Signal Beam → Stun Spore
	db 29, SLEEP_POWDER
	db 31, GUST
	db 37, BUG_BUZZ
	db 41, PSYCHIC_M
	db 47, BATON_PASS ; Poison Fang → egg move
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 18, DUGTRIO
	db 0 ; no more evolutions
	db 1, MUD_SLAP ; Sand Attack → Mud-Slap
	db 1, TACKLE
	db 1, CHARM ; XD move
	db 4, GROWL
	db 7, ASTONISH
	db 10, AGILITY ; Mud-Slap → Let's Go move
	db 14, MAGNITUDE
	db 18, BULLDOZE
	db 22, SUCKER_PUNCH
	db 25, ANCIENTPOWER ; Mud Bomb → egg move
	db 28, EARTH_POWER
	db 31, DIG
	db 35, SLASH
	db 39, EARTHQUAKE
	db 43, NIGHT_SLASH ; Fissure → Dugtrio move
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK ; Sand Tomb → Tri Attack ; evolution move
	db 1, NIGHT_SLASH
	db 1, MUD_SLAP ; Sand Attack → Mud-Slap
	db 1, TACKLE
	db 1, CHARM ; XD move
	db 4, GROWL
	db 7, ASTONISH
	db 10, AGILITY ; Mud-Slap → Let's Go move
	db 14, MAGNITUDE
	db 18, BULLDOZE
	db 22, SUCKER_PUNCH
	db 25, ANCIENTPOWER ; Mud Bomb → egg move
	db 30, EARTH_POWER
	db 35, DIG
	db 41, SLASH
	db 47, EARTHQUAKE
	db 53, NIGHT_SLASH ; Fissure → Night Slash
	db 0 ; no more level-up moves
	
MeowthEvosAttacks:
	db EVOLVE_LEVEL, 22, PERSIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, BITE
	db 9, ASTONISH ; Fake Out → new move
	db 14, FURY_STRIKES ; Fury Swipes → similar move
	db 17, SCREECH
	db 22, FEINT_ATTACK
	db 25, PURSUIT ; Taunt → egg move
	db 30, PAY_DAY
	db 33, SLASH
	db 38, NASTY_PLOT
	db 41, THIEF ; Assurance → TM move
	db 46, CHARM ; Captivate → egg move
	db 49, NIGHT_SLASH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE_BEAM ; RBY TM move
	db 1, PLAY_ROUGH
	db 1, SWIFT ; evolution move
	db 1, TACKLE
	db 1, GROWL
	db 6, BITE
	db 9, ASTONISH ; Fake Out → new move
	db 14, FURY_STRIKES ; Fury Swipes → similar move
	db 17, SCREECH
	db 22, FEINT_ATTACK
	db 25, PURSUIT ; Taunt → egg move
	db 32, POWER_GEM
	db 37, SLASH
	db 44, NASTY_PLOT
	db 49, THIEF ; Assurance → TM move
	db 56, CHARM ; Captivate → egg move
	db 60, NIGHT_SLASH
	db 0 ; no more level-up moves
	
MankeyEvosAttacks:
	db EVOLVE_LEVEL, 19, PRIMEAPE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 5, FURY_STRIKES ; Fury Swipes → similar move
	db 8, KARATE_CHOP
	db 12, PURSUIT
	db 15, SEISMIC_TOSS
	db 19, SWAGGER
	db 22, CROSS_CHOP
	db 26, REVERSAL ; Assurance → egg move
	db 29, FEINT_ATTACK ; Punishment → new move
	db 33, THRASH
	db 36, CLOSE_COMBAT
	db 40, SCREECH
	db 43, GUNK_SHOT ; Stomping Tantrum → HGSS tutor move
	db 47, OUTRAGE
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db EVOLVE_MOVE, OUTRAGE, PRIMEAPE
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, TACKLE
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 5, FURY_STRIKES ; Fury Swipes → similar move
	db 8, KARATE_CHOP
	db 12, PURSUIT
	db 15, SEISMIC_TOSS
	db 19, SWAGGER
	db 22, CROSS_CHOP
	db 26, REVERSAL ; Assurance → egg move
	db 30, FEINT_ATTACK ; Punishment → new move
	db 35, THRASH
	db 39, CLOSE_COMBAT
	db 44, SCREECH
	db 48, OUTRAGE
	db 53, GUNK_SHOT ; Stomping Tantrum → HGSS tutor move
	db 0 ; no more level-up moves

AnnihilapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, TACKLE
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 5, FURY_STRIKES ; Fury Swipes → similar move
	db 8, KARATE_CHOP
	db 12, PURSUIT
	db 15, SEISMIC_TOSS
	db 19, SWAGGER
	db 22, CROSS_CHOP
	db 26, REVERSAL ; Assurance → egg move
	db 30, FEINT_ATTACK ; Punishment → new move
	db 35, THRASH
	db 39, CLOSE_COMBAT
	db 44, SCREECH
	db 48, OUTRAGE
	db 53, SWORDS_DANCE
	db 0 ; no more level-up moves
	
GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db EVOLVE_HOLDING, ODD_SOUVENIR, H__ARCANINE
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, BITE
	db 1, ROAR
	db 7, EMBER
	db 8, LEER
	db 10, SAFEGUARD ; Odor Sleuth → egg move
	db 12, BATON_PASS ; Helping Hand → new move
	db 17, FIRE_SPIN ; Flame Wheel → egg move
	db 19, REVERSAL
	db 21, DOUBLE_KICK ; Fire Fang → egg move
	db 23, TAKE_DOWN
	db 28, FLAME_CHARGE ; Flame Burst → TM move
	db 30, AGILITY
	db 32, THRASH ; Retaliate → egg move
	db 34, FLAMETHROWER
	db 39, CRUNCH
	db 41, SUNNY_DAY ; Heat Wave → TM move
	db 43, OUTRAGE
	db 45, PLAY_ROUGH ; Flare Blitz → Let's Go move
	db 49, FLARE_BLITZ
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_DANCE ; new move
	db 1, GROWL
	db 1, BITE
	db 1, ROAR
	db 1, FLAME_CHARGE
	db 1, TAKE_DOWN
	db 1, EXTREMESPEED ; evolution move
	db 34, FLAMETHROWER
	db 39, CRUNCH
	db 41, SUNNY_DAY ; Heat Wave → TM move
	db 43, OUTRAGE
	db 45, PLAY_ROUGH ; Flare Blitz → Let's Go move
	db 49, FLARE_BLITZ
	db 0 ; no more level-up moves

HarcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_DANCE ; new move
	db 1, GROWL
	db 1, BITE
	db 1, ROAR
	db 1, FLAME_CHARGE
	db 1, TAKE_DOWN
	db 1, EXTREMESPEED ; evolution move
	db 34, FLAMETHROWER
	db 39, CRUNCH
	db 41, SUNNY_DAY ; Heat Wave → TM move
	db 43, OUTRAGE
	db 45, STONE_EDGE ; Flare Blitz → Let's Go move
	db 49, FLARE_BLITZ
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 15, POLIWHIRL
	db 0 ; no more evolutions
	db 1, SWEET_KISS ; event move
	db 1, WATER_GUN ; Water Sport → Water Gun
	db 5, HYPNOSIS ; Water Gun → Hypnosis
	db 8, DOUBLE_SLAP ; Hypnosis → Double Slap
	db 11, AQUA_JET ; Bubble → new move
	db 16, MUD_SLAP ; Double Slap → TM move
	db 18, RAIN_DANCE
	db 21, BODY_SLAM
	db 25, BUBBLE_BEAM
	db 28, LOW_KICK ; Mud Shot → Let's Go move
	db 31, BELLY_DRUM
	db 35, GROWTH ; Wake-Up Slap → event move
	db 38, HYDRO_PUMP
	db 41, EARTH_POWER ; Mud Bomb → similar move
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_HOLDING, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, SWEET_KISS ; event move
	db 1, WATER_GUN ; Water Sport → Water Gun
	db 5, HYPNOSIS ; Water Gun → Hypnosis
	db 8, DOUBLE_SLAP ; Hypnosis → Double Slap
	db 11, AQUA_JET ; Bubble → new move
	db 15, AMNESIA ; Double Slap → TM move
	db 18, RAIN_DANCE
	db 21, BODY_SLAM
	db 27, BUBBLE_BEAM
	db 28, LOW_KICK ; Mud Shot → Let's Go move
	db 37, BELLY_DRUM
	db 43, GROWTH ; Wake-Up Slap → event move
	db 48, HYDRO_PUMP
	db 53, EARTH_POWER ; Mud Bomb → similar move
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE_BEAM
	db 1, HYPNOSIS
	db 1, DOUBLE_SLAP
	db 1, HYPNOSIS
	db 1, KARATE_CHOP
	db 1, AQUA_JET
	db 1, BULK_UP
	db 25, CLOSE_COMBAT ; evolution move
	db 32, DYNAMICPUNCH
	db 43, EARTH_POWER ; Mind Reader → Poliwhirl move
	db 53, CROSS_CHOP ; Circle Throw → similar move
	db 0 ; no more level-up moves
	
PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN ; Bounce → TM move ; evolution move
	db 1, BUBBLE_BEAM
	db 1, HYPNOSIS
	db 1, DOUBLE_SLAP
	db 1, PERISH_SONG
	db 27, SWAGGER
	db 48, HYPER_VOICE
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 12, KADABRA
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_LEVEL, 40, ALAKAZAM
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, FORESIGHT ; evolution move
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 23, NIGHT_SHADE ; Miracle Eye → Let's Go move
	db 26, REFLECT
	db 28, LIGHT_SCREEN ; Psycho Cut → egg move
	db 31, RECOVER
	db 33, BARRIER ; Telekinesis → egg move
	db 36, BATON_PASS ; Ally Switch → new move
	db 38, PSYCHIC_M
	db 41, CALM_MIND
	db 43, CONFUSE_RAY ; Role Play → new move
	db 46, FUTURE_SIGHT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK ; RBY TM move
	db 1, PSYBEAM
	db 1, FORESIGHT ; evolution move
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 23, NIGHT_SHADE ; Miracle Eye → Let's Go move
	db 26, REFLECT
	db 28, LIGHT_SCREEN ; Psycho Cut → egg move
	db 31, RECOVER
	db 33, BARRIER ; Telekinesis → egg move
	db 36, BATON_PASS ; Ally Switch → new move
	db 38, PSYCHIC_M
	db 41, CALM_MIND
	db 43, CONFUSE_RAY ; Role Play → new move
	db 46, FUTURE_SIGHT
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 20, MACHOKE
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 3, FOCUS_ENERGY
	db 7, KARATE_CHOP
	db 9, FORESIGHT
	db 13, RAGE ; Low Sweep → RBY TM move
	db 15, SEISMIC_TOSS
	db 19, REVERSAL ; Revenge → Sw/Sh move
	db 21, KNOCK_OFF
	db 25, MACH_PUNCH ; Vital Throw → egg move
	db 27, BULLET_PUNCH ; Wake-Up Slap → egg move
	db 31, THRASH ; Dual Chop → event move
	db 33, CLOSE_COMBAT ; Submission → new move
	db 37, BULK_UP
	db 39, CROSS_CHOP
	db 43, SCARY_FACE
	db 45, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_LEVEL, 40, MACHAMP
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 3, FOCUS_ENERGY
	db 7, KARATE_CHOP
	db 9, FORESIGHT
	db 13, RAGE ; Low Sweep → RBY TM move
	db 15, SEISMIC_TOSS
	db 19, REVERSAL ; Revenge → Sw/Sh move
	db 21, KNOCK_OFF
	db 25, MACH_PUNCH ; Vital Throw → egg move
	db 27, BULLET_PUNCH ; Wake-Up Slap → egg move
	db 33, THRASH ; Dual Chop → event move
	db 37, CLOSE_COMBAT ; Submission → new move
	db 43, BULK_UP
	db 47, CROSS_CHOP
	db 53, SCARY_FACE
	db 57, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, STRENGTH ; evolution move
	db 1, ROCK_BLAST ; Sw/Sh move
	db 1, LOW_KICK
	db 1, LEER
	db 3, FOCUS_ENERGY
	db 7, KARATE_CHOP
	db 9, FORESIGHT
	db 13, RAGE ; Low Sweep → RBY TM move
	db 15, SEISMIC_TOSS
	db 19, REVERSAL ; Revenge → Sw/Sh TM move
	db 21, KNOCK_OFF
	db 25, MACH_PUNCH ; Vital Throw → egg move
	db 27, BULLET_PUNCH ; Wake-Up Slap → egg move
	db 33, THRASH ; Dual Chop → event move
	db 37, CLOSE_COMBAT ; Submission → new move
	db 43, BULK_UP
	db 47, CROSS_CHOP
	db 53, SCARY_FACE
	db 57, DYNAMICPUNCH
	db 0 ; no more level-up moves
	
WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 7, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 24, ACID
	db 29, RAZOR_LEAF
	db 32, SWEET_KISS ; Sweet Scent → event move
	db 39, HEALINGLIGHT ; Gastro Acid → new move
	db 44, KNOCK_OFF
	db 47, POISON_JAB
	db 54, SUCKER_PUNCH ; Slam → HGSS tutor move
	db 58, SWORDS_DANCE ; Wring Out → egg move
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, HEALINGLIGHT ; Sweet Scent → new move
	db 1, RAZOR_LEAF
	db 32, SUCKER_PUNCH ; Leaf Storm → prior move
	db 44, SWORDS_DANCE ; Leaf Blade → prior move
	db 0 ; no more level-up moves
	
TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, POWER_WHIP ; evolution move
	db 1, POISON_STING
	db 4, SUPERSONIC
	db 7, WATER_GUN ; Constrict → new move
	db 10, ACID
	db 13, TOXIC_SPIKES
	db 16, WATER_PULSE
	db 19, WRAP
	db 22, CONFUSE_RAY ; Acid Spray → event move
	db 25, BUBBLE_BEAM
	db 28, BARRIER
	db 32, POISON_JAB
	db 36, VENOSHOCK ; Brine → tutor move
	db 40, SCREECH
	db 44, HEX
	db 48, SLUDGE_BOMB ; Sludge Wave → TM move
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 20, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP ; Mud Sport → TM move
	db 6, RAPID_SPIN ; Rock Polish → event move
	db 10, ROLLOUT
	db 12, MAGNITUDE
	db 16, ROCK_THROW
	db 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	db 22, BULLDOZE
	db 24, ROCK_BLAST ; Self-Destruct → Rock Blast
	db 28, SANDSTORM ; Stealth Rock → TM move
	db 30, ROCK_SLIDE ; Rock Blast → TM move
	db 34, EARTHQUAKE
	db 36, EXPLOSION
	db 40, DOUBLE_EDGE
	db 42, STONE_EDGE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_LEVEL, 40, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP ; Mud Sport → TM move
	db 6, RAPID_SPIN ; Rock Polish → event move
	db 10, ROLLOUT
	db 12, MAGNITUDE
	db 16, ROCK_THROW
	db 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	db 22, BULLDOZE
	db 24, ROCK_BLAST ; Self-Destruct → Rock Blast
	db 30, SANDSTORM ; Stealth Rock → TM move
	db 34, ROCK_SLIDE ; Rock Blast → TM move
	db 40, EARTHQUAKE
	db 44, EXPLOSION
	db 50, DOUBLE_EDGE
	db 54, STONE_EDGE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP ; Mud Sport → TM move
	db 6, RAPID_SPIN ; Rock Polish → event move
	db 10, ROLLOUT
	db 12, MAGNITUDE
	db 16, ROCK_THROW
	db 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	db 22, BULLDOZE
	db 24, ROCK_BLAST ; Self-Destruct → Rock Blast
	db 30, SANDSTORM ; Stealth Rock → TM move
	db 34, ROCK_SLIDE ; Rock Blast → TM move
	db 40, EARTHQUAKE
	db 44, EXPLOSION
	db 50, DOUBLE_EDGE
	db 54, STONE_EDGE
	db 60, GYRO_BALL ; Heavy Slam → similar move
	db 0 ; no more level-up moves
	
PonytaEvosAttacks:
	db EVOLVE_LEVEL, 25, RAPIDASH
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 4, LEER ; Tail Whip → similar move
	db 9, EMBER
	db 13, STOMP ; Flame Wheel → Stomp
	db 17, FLAME_CHARGE ; Stomp → Flame Charge
	db 21, LOW_KICK ; Flame Charge → event move
	db 25, FIRE_SPIN
	db 29, TAKE_DOWN
	db 33, DOUBLE_KICK ; Inferno → egg move
	db 37, AGILITY
	db 41, FIRE_BLAST
	db 45, EXTREMESPEED ; Bounce → new move
	db 49, FLARE_BLITZ
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, PLAY_ROUGH ; evolution move
	db 1, POISON_JAB
	db 1, MEGAHORN
	db 1, GROWL
	db 1, TACKLE
	db 4, LEER ; Tail Whip → similar move
	db 9, EMBER
	db 13, STOMP ; Flame Wheel → Stomp
	db 17, FLAME_CHARGE ; Stomp → Flame Charge
	db 21, LOW_KICK ; Flame Charge → event move
	db 25, FIRE_SPIN
	db 29, TAKE_DOWN
	db 33, DOUBLE_KICK ; Inferno → egg move
	db 37, AGILITY
	db 41, FIRE_BLAST
	db 45, EXTREMESPEED ; Bounce → new move
	db 49, FLARE_BLITZ
	db 0 ; no more level-up moves
	
SlowpokeEvosAttacks:
	db EVOLVE_HOLDING, KINGS_ROCK, SLOWKING
	db EVOLVE_LEVEL, 37, SLOWBRO
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 5, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, WATER_PULSE
	db 32, ZEN_HEADBUTT
	db 36, SAFEGUARD ; Slack Off → egg move
	db 41, AMNESIA
	db 45, PSYCHIC_M
	db 49, RAIN_DANCE
	db 54, BELLY_DRUM ; Psych Up → egg move
	db 58, RECOVER ; Heal Pulse → similar move
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL ; Withdraw → similar move ; evolution move
	db 1, CURSE
	db 1, TACKLE
	db 5, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 30, AQUA_TAIL
	db 30, ZEN_HEADBUTT
	db 30, SHELL_SMASH
	db 30 ,HEADBUTT
	db 35, SAFEGUARD ; Slack Off → egg move
	db 43, AMNESIA
	db 49, PSYCHIC_M
	db 55, RAIN_DANCE
	db 62, BELLY_DRUM ; Psych Up → egg move
	db 68, RECOVER ; Heal Pulse → similar move
	db 0 ; no more level-up moves
	
SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POWER_GEM
	db 1, HIDDEN_POWER
	db 1, CURSE
	db 1, TACKLE
	db 5, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, WATER_PULSE
	db 36, SURF
	db 36, RECOVER
	db 36, PSYCHIC_M
	db 36, NASTY_PLOT
	db 41, SWAGGER
	db 45, PSYCHIC_M
	db 49, RAIN_DANCE ; Trump Card → TM move
	db 54, BELLY_DRUM ; Psych Up → egg move
	db 58, RECOVER ; Heal Pulse → similar move
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 25, MAGNETON
	db 0 ; no more evolutions
	db 1, SUPERSONIC
	db 1, TACKLE
	db 7, THUNDERSHOCK
	db 7, THUNDER_WAVE
	db 11, QUICK_ATTACK ; Magnet Bomb → TCG move
	db 13, LIGHT_SCREEN
	db 17, SONIC_BOOM
	db 19, SPARK
	db 23, SWIFT ; Mirror Shot → TM move
	db 25, SCREECH ; Metal Sound → Screech
	db 29, THUNDERBOLT ; Electro Ball → TM move
	db 31, FLASH_CANNON
	db 35, EXPLOSION ; Screech → TM move
	db 37, HIDDEN_POWER ; Discharge → TM move
	db 41, AGILITY ; Lock-On → event move
	db 43, GYRO_BALL ; Magnet Rise → Gyro Ball
	db 47, THUNDER ; Gyro Ball → TM move
	db 49, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, MAGNEZONE 
	db 0 ; no more evolutions
	db 1, TRI_ATTACK ; evolution move
	db 1, SUPERSONIC
	db 1, TACKLE
	db 5, THUNDERSHOCK
	db 7, THUNDER_WAVE
	db 11, QUICK_ATTACK ; Magnet Bomb → TCG move
	db 13, LIGHT_SCREEN
	db 17, SONIC_BOOM
	db 19, SPARK
	db 23, SWIFT ; Mirror Shot → TM move
	db 25, SCREECH ; Metal Sound → Screech
	db 29, THUNDERBOLT ; Electro Ball → TM move
	db 33, FLASH_CANNON
	db 39, EXPLOSION ; Screech → TM move
	db 43, HIDDEN_POWER ; Discharge → TM move
	db 49, AGILITY ; Lock-On → event move
	db 53, GYRO_BALL ; Magnet Rise → Gyro Ball
	db 59, THUNDER ; Gyro Ball → TM move
	db 63, ZAP_CANNON
	db 0 ; no more level-up moves
	
MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK ; evolution move
	db 1, MIRROR_COAT
	db 1, BARRIER
	db 1, SUPERSONIC
	db 1, TACKLE
	db 5, THUNDERSHOCK
	db 7, THUNDER_WAVE
	db 11, QUICK_ATTACK ; Magnet Bomb → TCG move
	db 13, LIGHT_SCREEN
	db 17, SONIC_BOOM
	db 19, SPARK
	db 23, SWIFT ; Mirror Shot → TM move
	db 25, SCREECH ; Metal Sound → Screech
	db 29, THUNDERBOLT ; Electro Ball → TM move
	db 33, FLASH_CANNON
	db 39, EXPLOSION ; Screech → TM move
	db 43, HIDDEN_POWER ; Discharge → TM move
	db 49, AGILITY ; Lock-On → event move
	db 53, GYRO_BALL ; Magnet Rise → Gyro Ball
	db 59, THUNDER ; Gyro Ball → TM move
	db 63, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_JAB
	db 1, BATON_PASS ; Brave Bird → event move
	db 1, PECK
	db 1, MUD_SLAP ; Sand Attack → similar move
	db 1, LEER
	db 7, FURY_STRIKES ; Fury Attack → similar move
	db 9, AERIAL_ACE
	db 13, KNOCK_OFF
	db 15, RAZOR_LEAF ; Let's Go move
	db 19, SLASH
	db 21, KARATE_CHOP ; Air Cutter → new move
	db 25, SWORDS_DANCE
	db 31, AGILITY
	db 33, NIGHT_SLASH
	db 37, ACROBATICS
	db 43, HI_JUMP_KICK ; Feint → new move
	db 45, FALSE_SWIPE
	db 49, AIR_SLASH
	db 55, BRAVE_BIRD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 25, MUK
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound → similar move
	db 1, ACID ; Poison Gas → new move
	db 4, DEFENSE_CURL ; Harden → similar move
	db 9, MUD_SLAP
	db 12, DISABLE
	db 15, VENOSHOCK ; Sludge → tutor move
	db 18, HAZE ; Mud Bomb → egg move
	db 21, MINIMIZE
	db 26, FEINT_ATTACK ; Fling → new move
	db 29, SLUDGE_BOMB
	db 32, SCARY_FACE ; Sludge Wave → egg move
	db 37, SCREECH
	db 40, GUNK_SHOT
	db 43, PAIN_SPLIT ; Acid Armor → HGSS tutor move
	db 46, EXPLOSION ; Belch → TM move
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, MOONBLAST ; Let's Go move
	db 1, TACKLE ; Pound → similar move
	db 1, ACID ; Poison Gas → new move
	db 4, DEFENSE_CURL ; Harden → similar move
	db 7, MUD_SLAP
	db 12, DISABLE
	db 15, VENOSHOCK ; Sludge → tutor move
	db 18, HAZE ; Mud Bomb → egg move
	db 21, MINIMIZE
	db 26, FEINT_ATTACK ; Fling → new move
	db 29, SLUDGE_BOMB
	db 32, SCARY_FACE ; Sludge Wave → egg move
	db 37, SCREECH
	db 40, GUNK_SHOT
	db 46, PAIN_SPLIT ; Acid Armor → HGSS tutor move
	db 52, EXPLOSION ; Belch → TM move
	db 0 ; no more level-up moves
	
CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYDRO_PUMP
	db 1, SHELL_SMASH
	db 1, TOXIC_SPIKES
	db 1, FURY_STRIKES ; Spike Cannon → similar move
	db 1, TRI_ATTACK ; RBY TM move
	db 1, DEFENSE_CURL ; Withdraw → similar move
	db 1, SUPERSONIC
	db 1, PROTECT
	db 1, AURORA_BEAM
	db 1, SPIKES ; evolution move
	db 28, ICICLE_SPEAR ; Spikes → Icicle Spear
	db 32, PIN_MISSILE ; Sw/Sh TM move
	db 50, ICICLE_CRASH
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 20, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 5, DISABLE ; Spite → egg move
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, SUCKER_PUNCH
	db 26, PAIN_SPLIT ; Payback → HGSS tutor move
	db 29, SHADOW_BALL
	db 33, DREAM_EATER
	db 36, DARK_PULSE
	db 40, DESTINY_BOND
	db 43, HEX
	db 47, PERISH_SONG ; Nightmare → new move
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_LEVEL, 40, GENGAR
	db 0 ; no more evolutions
	db 1, SHADOW_CLAW ; Shadow Punch → TM move ; evolution move
	db 1, HYPNOSIS
	db 1, LICK
	db 5, DISABLE ; Spite → egg move
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, SUCKER_PUNCH
	db 28, PAIN_SPLIT ; Payback → HGSS tutor move
	db 33, SHADOW_BALL
	db 39, DREAM_EATER
	db 44, DARK_PULSE
	db 50, DESTINY_BOND
	db 55, HEX
	db 61, PERISH_SONG ; Nightmare → new move
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, SHADOW_CLAW ; Shadow Punch → TM move ; evolution move
	db 1, HYPNOSIS
	db 1, LICK
	db 5, DISABLE ; Spite → egg move
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, SUCKER_PUNCH
	db 28, PAIN_SPLIT ; Payback → HGSS tutor move
	db 33, SHADOW_BALL
	db 39, DREAM_EATER
	db 44, DARK_PULSE
	db 50, DESTINY_BOND
	db 55, HEX
	db 60, PERISH_SONG ; Nightmare → new move
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_HOLDING, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 1, WRAP ; Bind → similar move
	db 4, CURSE
	db 8, ROCK_THROW
	db 10, RAGE
	db 13, ROCK_BLAST ; Rock Tomb → egg move
	db 16, BULLDOZE ; Stealth Rock → TM move
	db 19, SANDSTORM ; Rock Polish → Sandstorm
	db 22, ANCIENTPOWER ; Smack Down → HGSS tutor move
	db 25, DRAGONBREATH
	db 28, HEADBUTT ; Slam → tutor move
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 37, CRUNCH ; Sand Tomb → Steelix move
	db 40, IRON_TAIL
	db 43, DIG
	db 46, STONE_EDGE
	db 49, DOUBLE_EDGE
	db 52, EARTHQUAKE ; Sandstorm → TM move
	db 0 ; no more level-up moves
	
SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, IRON_TAIL ; evolution move
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 1, WRAP ; Bind → similar move
	db 4, CURSE
	db 7, ROCK_THROW
	db 10, RAGE
	db 13, ROCK_BLAST ; Rock Tomb → egg move
	db 16, BULLDOZE ; Stealth Rock → TM move
	db 19, SANDSTORM ; Autotomize → Sandstorm
	db 22, ANCIENTPOWER ; Smack Down → HGSS tutor move
	db 25, DRAGONBREATH
	db 28, HEADBUTT ; Slam → tutor move
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 37, CRUNCH
	db 40, IRON_HEAD
	db 43, DIG
	db 46, STONE_EDGE
	db 49, DOUBLE_EDGE
	db 52, EARTHQUAKE ; Sandstorm → TM move
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 25, ELECTRODE
	db EVOLVE_HOLDING, ODD_SOUVENIR,  H__ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK ; Let's Go move
	db 4, ROLLOUT
	db 6, AGILITY ; Eerie Impulse → event move
	db 9, SPARK
	db 11, SONIC_BOOM
	db 13, SCREECH
	db 16, THUNDER_WAVE ; Charge Beam → TM move
	db 20, SWIFT
	db 22, THUNDERBOLT ; Electro Ball → TM move
	db 26, REFLECT ; Self-Destruct → TM move
	db 29, LIGHT_SCREEN
	db 34, EXPLOSION ; Magnet Rise → Explosion
	db 37, THUNDER ; Discharge → TM move
	db 41, BUG_BUZZ ; Explosion → new move
	db 46, GYRO_BALL
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK ; Let's Go move
	db 4, SONIC_BOOM
	db 6, AGILITY ; Eerie Impulse → event move
	db 9, SPARK
	db 11, ROLLOUT
	db 13, SCREECH
	db 16, THUNDER_WAVE ; Charge Beam → TM move
	db 20, SWIFT
	db 22, THUNDERBOLT ; Electro Ball → TM move
	db 26, REFLECT ; Self-Destruct → TM move
	db 29, LIGHT_SCREEN
	db 36, EXPLOSION ; Magnet Rise → Explosion
	db 41, THUNDER ; Discharge → TM move
	db 47, BUG_BUZZ ; Explosion → new move
	db 54, GYRO_BALL
	db 58, MIRROR_COAT
	db 0 ; no more level-up moves
	
HelectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK ; Let's Go move
	db 4, SONIC_BOOM
	db 6, AGILITY ; Eerie Impulse → event move
	db 9, SPARK
	db 11, ROLLOUT
	db 13, SCREECH
	db 16, THUNDER_WAVE ; Charge Beam → TM move
	db 20, SWIFT
	db 22, THUNDERBOLT ; Electro Ball → TM move
	db 26, RAZOR_LEAF ; Self-Destruct → TM move
	db 29, LIGHT_SCREEN
	db 36, EXPLOSION ; Magnet Rise → Explosion
	db 41, THUNDER ; Discharge → TM move
	db 47, ENERGY_BALL ; Explosion → new move
	db 54, GYRO_BALL
	db 58, MIRROR_COAT
	db 0 ; no more level-up moves
	
ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, TACKLE ; Barrage → new move
	db 1, HYPNOSIS
	db 7, REFLECT
	db 11, LEECH_SEED
	db 14, CONFUSION
	db 17, RAGE ; Bullet Seed → RBY TM move
	db 19, STUN_SPORE
	db 21, POISONPOWDER
	db 23, SLEEP_POWDER
	db 27, PSYBEAM ; Confusion → Let's Go move
	db 33, ANCIENTPOWER ; Worry Seed → HGSS tutor move
	db 37, HEALINGLIGHT ; Natural Gift → new move
	db 43, SOLAR_BEAM
	db 47, EXTRASENSORY
	db 50, PSYCHIC_M ; Bestow → TM move
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE ; Barrage → new move
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 1, STOMP ; evolution move
	db 17, LOW_KICK ; Psyshock → HGSS tutor move
	db 27, ZEN_HEADBUTT ; Egg Bomb → tutor move
	db 37, POWER_WHIP ; Wood Hammer → new move
	db 47, PETAL_DANCE ; Leaf Storm → new move
	db 0 ; no more level-up moves
	
HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK ; evolution move
	db 1, BULK_UP ; Revenge → TM move
	db 5, AGILITY ; Meditate → new move
	db 9, PURSUIT ; Rolling Kick → egg move
	db 13, LOW_KICK ; Jump Kick → HGSS tutor move
	db 17, STOMP ; Brick Break → new move
	db 21, ENDURE ; Focus Energy → TM move
	db 25, AERIAL_ACE ; Feint → new move
	db 29, HI_JUMP_KICK
	db 33, DOUBLE_TEAM ; Mind Reader → TM move
	db 37, FORESIGHT
	db 41, FOCUS_ENERGY ; Wide Guard → Let's Go move
	db 45, REVERSAL ; Blaze Kick → Reversal
	db 49, ENDURE
	db 53, FOCUS_BLAST ; Mega Kick → TM move
	db 57, CLOSE_COMBAT
	db 61, COUNTER ; Reversal → TM move
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, DIZZY_PUNCH ; Comet Punch → Dizzy Punch ; evolution move
	db 1, BULK_UP ; Revenge → TM move
	db 6, AGILITY
	db 11, PURSUIT
	db 13, MACH_PUNCH
	db 17, BULLET_PUNCH
	db 21, AERIAL_ACE ; Feint → new move
	db 26, SEISMIC_TOSS ; Vacuum Wave → RBY TM move
	db 31, FORESIGHT ; Quick Guard → new move
	db 36, THUNDERPUNCH
	db 36, ICE_PUNCH
	db 36, FIRE_PUNCH
	db 41, FOCUS_ENERGY ; Sky Uppercut → Let's Go move
	db 46, DYNAMICPUNCH ; Mega Punch → TM move
	db 51, PROTECT ; Detect → TM move
	db 56, FOCUS_BLAST ; Focus Punch → TM move
	db 61, COUNTER
	db 66, CLOSE_COMBAT
	db 0 ; no more level-up moves
	
HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOW_KICK ; Rolling Kick → HGSS tutor move ; evolution move
	db 1, BULK_UP ; Revenge → TM move
	db 6, FOCUS_ENERGY
	db 10, PURSUIT
	db 15, QUICK_ATTACK
	db 19, RAPID_SPIN
	db 24, FEINT_ATTACK ; Feint → new move
	db 28, COUNTER
	db 33, DOUBLE_KICK ; Triple Kick → similar move
	db 37, AGILITY
	db 42, GYRO_BALL
	db 46, FORESIGHT ; Wide Guard + Quick Guard → new move
	db 50, PROTECT ; Detect → similar move
	db 55, CLOSE_COMBAT
	db 60, REVERSAL ; Endeavor → new move
	db 0 ; no more level-up moves
	
WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, ACID ; Smog → new move
	db 7, SMOKESCREEN
	db 12, ENDURE ; Assurance → TM move
	db 15, WILL_O_WISP ; Clear Smog → TM move
	db 18, VENOSHOCK ; Sludge → tutor move
	db 23, RAGE ; Self-Destruct → RBY TM move
	db 26, HAZE
	db 29, GYRO_BALL
	db 34, SLUDGE_BOMB
	db 40, EXPLOSION
	db 46, DESTINY_BOND
	db 51, PAIN_SPLIT ; Belch → HGSS tutor move
	db 57, FIRE_BLAST ; Memento → TM move
	db 0 ; no more level-up moves

MrmimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 1, CONFUSION
	db 4, HYPNOSIS ; Copycat → egg move
	db 8, CALM_MIND ; Meditate → TM move
	db 11, DOUBLE_SLAP
	db 13, PROTECT ; Mimic → event move
	db 15, METRONOME ; Psywave → RBY TM move
	db 18, ENCORE
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 25, PSYBEAM
	db 29, SUBSTITUTE
	db 32, CONFUSE_RAY ; Recycle → egg move
	db 36, TRICK
	db 39, PSYCHIC_M
	db 43, FUTURE_SIGHT ; Role Play → egg move
	db 46, BATON_PASS
	db 50, SAFEGUARD
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 25, RHYDON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, MUD_SLAP ; Sand-Attack → similar move
	db 1, LEER ; Tail Whip → similar move
	db 3, HORN_ATTACK
	db 6, FURY_STRIKES ; Fury Attack → similar move
	db 9, SCARY_FACE
	db 13, MAGNITUDE ; Smack Down → egg move
	db 17, STOMP
	db 21, BULLDOZE
	db 25, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 29, ROCK_BLAST
	db 33, DOUBLE_EDGE ; Drill Run → event move
	db 37, TAKE_DOWN
	db 41, STONE_EDGE
	db 45, EARTHQUAKE
	db 49, CLOSE_COMBAT ; Megahorn → new move
	db 53, MEGAHORN ; Horn Drill → Megahorn
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db EVOLVE_HOLDING, PROTECTOR, RHYPERIOR
	db 0 ; no more evolutions
	db 1, OUTRAGE ; Hammer Arm → HGSS tutor move ; evolution move
	db 1, TACKLE
	db 1, MUD_SLAP ; Sand-Attack → similar move
	db 1, LEER ; Tail Whip → similar move
	db 3, HORN_ATTACK
	db 6, FURY_STRIKES ; Fury Attack → similar move
	db 9, SCARY_FACE
	db 13, MAGNITUDE ; Smack Down → egg move
	db 17, STOMP
	db 21, BULLDOZE
	db 25, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 29, ROCK_BLAST
	db 33, DOUBLE_EDGE ; Drill Run → event move
	db 37, TAKE_DOWN
	db 41, STONE_EDGE
	db 45, EARTHQUAKE
	db 50, CLOSE_COMBAT ; Megahorn → new move
	db 55, MEGAHORN ; Horn Drill → Megahorn
	db 0 ; no more level-up moves
	
RhyperiorEvosAttacks:
	db 0 ; no more evolutions
	db 1, OUTRAGE ; Hammer Arm → HGSS tutor move ; evolution move
	db 1, POISON_JAB
	db 1, TACKLE
	db 1, MUD_SLAP ; Sand-Attack → similar move
	db 1, LEER ; Tail Whip → similar move
	db 3, HORN_ATTACK
	db 6, FURY_STRIKES ; Fury Attack → similar move
	db 9, SCARY_FACE
	db 13, MAGNITUDE ; Smack Down → egg move
	db 17, STOMP
	db 21, BULLDOZE
	db 25, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 29, ROCK_BLAST
	db 33, DOUBLE_EDGE ; Drill Run → event move
	db 37, TAKE_DOWN
	db 41, STONE_EDGE
	db 48, EARTHQUAKE
	db 55, CLOSE_COMBAT ; Megahorn → new move
	db 62, MEGAHORN ; Horn Drill → Megahorn
	db 69, ROCK_SLIDE ; Rock Wrecker → similar move
	db 0 ; no more level-up moves
	
ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, TACKLE ; Pound → similar move
	db 1, GROWL
	db 5, LEER ; Tail Whip → similar move
	db 9, SWEET_KISS ; Refresh → Happiny move
	db 12, DOUBLE_SLAP
	db 16, FRESH_SNACK ; Soft-Boiled → similar move
	db 20, METRONOME ; Bestow → egg move
	db 23, MINIMIZE
	db 27, TAKE_DOWN
	db 31, SING
	db 35, CHARM ; Fling → Happiny move
	db 39, HEAL_BELL ; Heal Pulse → HGSS tutor move
	db 44, BODY_SLAM ; Egg Bomb → TM move
	db 50, LIGHT_SCREEN
	db 57, SUBSTITUTE ; Healing Wish → TM move
	db 65, DOUBLE_EDGE
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, TACKLE ; Pound → similar move
	db 1, GROWL
	db 5, LEER ; Tail Whip → similar move
	db 9, SWEET_KISS ; Refresh → Happiny move
	db 12, DOUBLE_SLAP
	db 16, FRESH_SNACK ; Soft-Boiled → similar move
	db 20, METRONOME ; Bestow → egg move
	db 23, MINIMIZE
	db 27, TAKE_DOWN
	db 31, SING
	db 35, CHARM ; Fling → Happiny move
	db 39, HEAL_BELL ; Heal Pulse → HGSS tutor move
	db 44, BODY_SLAM ; Egg Bomb → TM move
	db 50, LIGHT_SCREEN
	db 57, SUBSTITUTE ; Healing Wish → TM move
	db 65, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db EVOLVE_MOVE, ANCIENTPOWER, TANGROWTH
	db 0 ; no more evolutions
	db 1, WRAP ; Constrict → similar move
	db 4, SLEEP_POWDER
	db 7, VINE_WHIP
	db 10, ABSORB
	db 14, POISONPOWDER
	db 17, PROTECT ; Bind → TM move
	db 20, GROWTH
	db 23, MEGA_DRAIN
	db 27, KNOCK_OFF
	db 30, STUN_SPORE
	db 33, HEALINGLIGHT ; Natural Gift → new move
	db 36, GIGA_DRAIN
	db 38, ANCIENTPOWER
	db 41, BODY_SLAM ; Slam → similar move
	db 44, PAIN_SPLIT ; Tickle → HGSS tutor move
	db 46, SWORDS_DANCE ; Wring Out → TM move
	db 48, BATON_PASS ; Grassy Terrain → new move
	db 50, POWER_WHIP
	db 0 ; no more level-up moves

TangrowthEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP ; Constrict → similar move
	db 4, SLEEP_POWDER
	db 7, VINE_WHIP
	db 10, ABSORB
	db 14, POISONPOWDER
	db 17, PROTECT ; Bind → TM move
	db 20, GROWTH
	db 23, MEGA_DRAIN
	db 27, KNOCK_OFF
	db 30, STUN_SPORE
	db 33, HEALINGLIGHT ; Natural Gift → new move
	db 36, GIGA_DRAIN
	db 40, ANCIENTPOWER
	db 43, BODY_SLAM ; Slam → similar move
	db 46, PAIN_SPLIT ; Tickle → HGSS tutor move
	db 49, SWORDS_DANCE ; Wring Out → TM move
	db 50, BATON_PASS ; Grassy Terrain → new move
	db 53, POWER_WHIP
	db 0 ; no more level-up moves
	
KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, DIZZY_PUNCH ; Comet Punch → Dizzy Punch
	db 1, LEER
	db 7, LOW_KICK ; Fake Out → HGSS tutor move
	db 10, BITE ; Tail Whip → Bite
	db 13, HEADBUTT ; Bite → tutor move
	db 19, DOUBLE_KICK ; Double Hit → new move
	db 22, RAGE
	db 25, TAKE_DOWN ; Mega Punch → RBY TM move
	db 31, STOMP ; Chip Away → egg move
	db 34, MACH_PUNCH ; Dizzy Punch → new move
	db 37, CRUNCH
	db 43, ENDURE
	db 46, OUTRAGE
	db 49, SUCKER_PUNCH
	db 50, REVERSAL
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_HOLDING, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, WATER_GUN ; Bubble → similar move
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, AQUA_JET ; Twister → new move
	db 21, WATER_PULSE ; Bubble Beam → TM move
	db 26, FOCUS_ENERGY
	db 31, OUTRAGE ; Brine → HGSS tutor move
	db 38, AGILITY
	db 45, DRAGON_PULSE
	db 52, DRAGON_DANCE
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGONBREATH ; evolution move
	db 1, WATER_GUN ; Bubble → similar move
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, AQUA_JET ; Twister → new move
	db 21, WATER_PULSE ; Bubble Beam → TM move
	db 26, FOCUS_ENERGY
	db 31, OUTRAGE ; Brine → HGSS tutor move
	db 38, AGILITY
	db 45, DRAGON_PULSE
	db 52, DRAGON_DANCE
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 4, WATER_GUN
	db 7, RAPID_SPIN
	db 10, RECOVER
	db 13, HYPNOSIS ; Psywave → new move
	db 16, SWIFT
	db 18, BUBBLE_BEAM
	db 22, AGILITY ; Camouflage → new move
	db 24, GYRO_BALL
	db 28, PAIN_SPLIT ; Brine → HGSS tutor move
	db 31, MINIMIZE
	db 35, REFLECT ; Reflect Type → new move
	db 37, POWER_GEM
	db 40, CONFUSE_RAY
	db 42, PSYCHIC_M
	db 46, LIGHT_SCREEN
	db 49, HYDRO_PUMP ; Cosmic Power → Hydro Pump
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYDRO_PUMP
	db 1, WATER_GUN
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, SWIFT
	db 40, CONFUSE_RAY
	db 60, TRI_ATTACK ; RBY TM move
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_HOLDING, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, WING_ATTACK
	db 25, BUG_BITE ; Fury Cutter → similar move
	db 29, SLASH
	db 33, GLARE ; Razor Wind → new move
	db 37, DOUBLE_TEAM
	db 41, X_SCISSOR
	db 45, NIGHT_SLASH
	db 49, BATON_PASS ; Double Hit → egg move
	db 50, AIR_SLASH
	db 57, SWORDS_DANCE
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, METAL_CLAW ; evolution move
	db 1, BULLET_PUNCH
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, WING_ATTACK
	db 25, BUG_BITE ; Fury Cutter → similar move
	db 29, SLASH
	db 33, BUG_BUZZ ; Razor Wind → egg move
	db 37, DEFENSE_CURL ; Iron Defense → similar move
	db 41, X_SCISSOR
	db 45, CRUNCH ; Night Slash → Prism tutor move
	db 50, IRON_HEAD
	db 57, SWORDS_DANCE
	db 0 ; no more level-up moves
	
KleavorEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_BLAST ; evolution move
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, WING_ATTACK
	db 25, BUG_BITE ; Fury Cutter → similar move
	db 29, SLASH
	db 33, ROCK_SLIDE ; Razor Wind → egg move
	db 37, ANCIENTPOWER ; Iron Defense → similar move
	db 41, X_SCISSOR
	db 45, DOUBLE_EDGE ; Night Slash → Prism tutor move
	db 50, STONE_EDGE
	db 57, SWORDS_DANCE
	db 0 ; no more level-up moves
	
JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, PETAL_DANCE ; event move
	db 1, TACKLE ; Pound → similar move
	db 1, LICK
	db 1, CONFUSION ; Smoochum move
	db 1, SWEET_KISS ; Smoochum move
	db 5, SING ; Lovely Kiss → Smoochum move
	db 8, SCREECH ; Lovely Kiss → Let's Go move
	db 11, ICY_WIND ; Powder Snow → TM move
	db 15, DOUBLE_SLAP
	db 18, ICE_PUNCH
	db 21, METRONOME ; Heart Stamp → RBY TM move
	db 25, MEAN_LOOK
	db 28, DRAIN_KISS ; Fake Tears → Drain Kiss
	db 33, PSYBEAM ; Wake-Up Slap → new move
	db 39, AVALANCHE
	db 44, BODY_SLAM
	db 49, NASTY_PLOT ; Wring Out → egg move
	db 55, PERISH_SONG
	db 60, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db EVOLVE_HOLDING, ELECTIRIZER, ELECTIVIRE
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, BULK_UP ; Shock Wave → TM move
	db 19, THUNDER_WAVE
	db 22, KARATE_CHOP ; Electro Ball → egg move
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 36, SCREECH ; Discharge → Screech
	db 42, CROSS_CHOP ; Screech → new move
	db 49, THUNDERBOLT
	db 55, THUNDER
	db 0 ; no more level-up moves

ElectivireEvosAttacks:
	db 0 ; no more evolutions
	db 1, CLOSE_COMBAT ; evolution move
	db 1, FIRE_PUNCH
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, BULK_UP ; Shock Wave → TM move
	db 19, THUNDER_WAVE
	db 22, KARATE_CHOP ; Electro Ball → egg move
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 36, SCREECH ; Discharge → Screech
	db 42, CROSS_CHOP ; Screech → new move
	db 49, THUNDERBOLT
	db 55, THUNDER
	db 62, GIGA_IMPACT
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db EVOLVE_HOLDING, MAGMARIZER, MAGMORTAR
	db 0 ; no more evolutions
	db 1, HAZE ; Smog → new move
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FEINT_ATTACK
	db 15, FIRE_SPIN
	db 19, LOW_KICK ; Clear Smog → HGSS tutor move
	db 22, FLAME_CHARGE ; Flame Burst → TM move
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 36, SUNNY_DAY ; Lava Plume → Sunny Day
	db 42, FOCUS_BLAST ; Sunny Day → TM move
	db 49, FLAMETHROWER
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

MagmortarEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLASH_CANNON ; evolution move
	db 1, THUNDERPUNCH
	db 1, HAZE ; Smog → new move
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FEINT_ATTACK
	db 15, FIRE_SPIN
	db 19, LOW_KICK ; Clear Smog → HGSS tutor move
	db 22, FLAME_CHARGE ; Flame Burst → TM move
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 36, SUNNY_DAY ; Lava Plume → Sunny Day
	db 42, FOCUS_BLAST ; Sunny Day → TM move
	db 49, FLAMETHROWER
	db 55, FIRE_BLAST
	db 62, HYPER_BEAM
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db EVOLVE_ITEM, DUSK_STONE, MINSIR
	db 0 ; no more evolutions
	db 1, FURY_STRIKES ; Vice Grip → new move
	db 1, FOCUS_ENERGY
	db 4, WRAP ; Bind → similar move
	db 8, SEISMIC_TOSS
	db 12, DEFENSE_CURL ; Harden → similar move
	db 16, RAGE ; Revenge → RBY TM move
	db 20, ROCK_THROW ; Brick Break → event move
	db 26, ROCK_SMASH ; Vital Throw → TM move
	db 29, X_SCISSOR
	db 33, KARATE_CHOP ; Submission → egg moves
	db 36, OUTRAGE ; Storm Throw → Let's Go move
	db 40, SWORDS_DANCE
	db 43, THRASH
	db 47, CLOSE_COMBAT ; Superpower → similar move
	db 50, MEGAHORN ; Guillotine → new move
	db 0 ; no more level-up moves
	
MinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, FOCUS_ENERGY
	db 1, BITE ; Vice Grip → new move
	db 8, SEISMIC_TOSS
	db 12, BUG_BITE ; Harden → similar move
	db 16, RAGE ; Revenge → RBY TM move
	db 20, PURSUIT ; Brick Break → event move
	db 26, NIGHT_SLASH ; Vital Throw → TM move
	db 29, X_SCISSOR
	db 33, FEINT_ATTACK ; Submission → egg moves
	db 36, HONE_CLAWS ; Storm Throw → Let's Go move
	db 40, SWORDS_DANCE
	db 43, THRASH
	db 47, SUCKER_PUNCH ; Superpower → similar move
	db 50, MEGAHORN ; Guillotine → new move
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER ; Tail Whip → similar move
	db 5, RAGE
	db 8, HORN_ATTACK
	db 11, SCARY_FACE
	db 15, PURSUIT
	db 19, REST
	db 24, QUICK_ATTACK ; Payback → event move
	db 29, FOCUS_ENERGY ; Work Up → Let's Go move
	db 35, TAKE_DOWN
	db 41, ZEN_HEADBUTT
	db 48, SWAGGER
	db 55, THRASH
	db 63, DOUBLE_EDGE
	db 71, GIGA_IMPACT
	db 80, OUTRAGE ; HGSS tutor move
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, REVERSAL ; Flail → event move
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATERFALL ; HM move
	db 1, BITE ; evolution move
	db 1, THRASH
	db 1, DRAGON_RAGE
	db 1, WRAP ; Bind → similar move
	db 21, LEER
	db 24, GUST ; Twister → new move
	db 27, DRAGON_RAGE ; Ice Fang → Dragon Rage
	db 30, AQUA_TAIL
	db 33, SCARY_FACE
	db 36, DRAGONBREATH ; Dragon Rage → GSC TM move
	db 39, CRUNCH
	db 42, HYDRO_PUMP
	db 45, DRAGON_DANCE
	db 48, HURRICANE
	db 51, RAIN_DANCE
	db 54, HYPER_BEAM
	db 57, OUTRAGE ; HGSS tutor move
	db 0 ; no more level-up moves
	
LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER ; HGSS tutor move
	db 1, DRAGON_RAGE ; RBY TM move
	db 1, DRAGONBREATH ; GSC TM move
	db 1, SING
	db 1, GROWL
	db 1, WATER_GUN
	db 4, BITE ; Mist → event move
	db 7, CONFUSE_RAY
	db 10, ICE_SHARD
	db 14, WATER_PULSE
	db 18, BODY_SLAM
	db 22, RAIN_DANCE
	db 27, PERISH_SONG
	db 32, ICE_BEAM
	db 37, FUTURE_SIGHT ; Brine → event move
	db 43, SAFEGUARD
	db 47, HYDRO_PUMP
	db 50, OUTRAGE ; Sheer Cold → HGSS tutor move
	db 54, MEGAHORN ; Let's Go TM move
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_ITEM, SHINY_STONE, SYLVEON
	db EVOLVE_ITEM, LEAF_STONE, LEAFEON
	db EVOLVE_ITEM, ICE_STONE, GLACEON
	db EVOLVE_ITEM, SUN_STONE, ESPEON
	db EVOLVE_ITEM, DUSK_STONE, UMBREON
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 10, SWIFT
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, HEAL_BELL ; Refresh → HGSS tutor move
	db 23, THIEF ; Covet → TM move
	db 25, TAKE_DOWN
	db 29, CHARM
	db 33, BATON_PASS
	db 37, DOUBLE_EDGE
	db 41, GROWTH ; Last Resort → event move
	db 45, REVERSAL ; Trump Card → new move
	db 0 ; no more level-up moves
	
VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, WATER_GUN ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, WATER_PULSE
	db 20, AURORA_BEAM
	db 25, RECOVER ; Aqua Ring → similar move
	db 29, BARRIER ; Acid Armor → similar move
	db 33, HAZE
	db 37, SCALD ; Muddy Water → TM move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, THUNDERSHOCK ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, DOUBLE_KICK
	db 20, LIGHT_SCREEN ; Thunder Fang → TM move
	db 25, PIN_MISSILE
	db 29, AGILITY
	db 33, THUNDER_WAVE
	db 37, THUNDERBOLT ; Discharge → TM move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, EMBER ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, FIRE_SPIN ; Fire Fang → Fire Spin
	db 25, FLAME_CHARGE ; Fire Spin → TM move
	db 29, SCARY_FACE
	db 33, SMOKESCREEN ; Smog → new move
	db 37, FLAMETHROWER ; Lava Plume → new move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, FLARE_BLITZ
	db 0 ; no more level-up moves
	
EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, CONFUSION ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, PSYBEAM
	db 25, FUTURE_SIGHT
	db 29, REFLECT ; Psych Up → event move
	db 33, HEALINGLIGHT ; Morning Sun → similar move
	db 37, PSYCHIC_M
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, POWER_GEM ; Power Swap → new move
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, PURSUIT ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, CONFUSE_RAY
	db 20, FEINT_ATTACK
	db 25, TOXIC ; Assurance → TM move
	db 29, SCREECH
	db 33, HEALINGLIGHT ; Moonlight → similar move
	db 37, SUCKER_PUNCH ; Mean Look → tutor move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, MEAN_LOOK ; Guard Swap → Mean Look
	db 0 ; no more level-up moves
	
LeafeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, RAZOR_LEAF ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, BITE ; Grass Whistle → new move
	db 20, ENERGY_BALL ; Magical Leaf → TM move
	db 25, GIGA_DRAIN
	db 29, SWORDS_DANCE
	db 33, HEALINGLIGHT ; Synthesis → similar move
	db 37, SEED_BOMB ; Sunny Day → tutor move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, SUNNY_DAY ; Leaf Blade → Sunny Day
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, ICY_WIND ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, ICE_SHARD ; Ice Fang → Ice Shard
	db 25, HAIL ; Ice Shard → Hail
	db 29, BARRIER
	db 33, MIRROR_COAT
	db 37, ICE_BEAM ; Hail → TM move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, BLIZZARD
	db 0 ; no more level-up moves

SylveonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, DISARM_VOICE ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, DRAIN_KISS
	db 25, SKILL_SWAP
	db 29, HEAL_BELL ; Misty Terrain → HGSS tutor move
	db 33, LIGHT_SCREEN
	db 37, MOONBLAST
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, PLAY_ROUGH ; Psych Up → new move
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_HOLDING, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONVERSION
	db 1, PSYBEAM ; Sharpen → RBY TM move
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 23, GROWTH ; Magnet Rise → new move
	db 29, AURORA_BEAM ; Signal Beam → new move
	db 34, THUNDER_WAVE ; Recycle → TM move
	db 40, BARRIER ; Discharge → event move
	db 45, THUNDERBOLT ; Lock-On → TM move
	db 50, TRI_ATTACK
	db 56, MIRROR_COAT ; Magic Coat → new move
	db 62, ZAP_CANNON
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db EVOLVE_HOLDING, DUBIOUS_DISC, PORYGON_Z
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONVERSION
	db 1, DEFENSE_CURL
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 23, GROWTH ; Magnet Rise → new move
	db 29, AURORA_BEAM ; Signal Beam → new move
	db 34, THUNDER_WAVE ; Recycle → TM move
	db 40, BARRIER ; Discharge → event move
	db 45, THUNDERBOLT ; Lock-On → TM move
	db 50, TRI_ATTACK
	db 56, MIRROR_COAT ; Magic Coat → new move
	db 62, ZAP_CANNON
	db 67, HYPER_BEAM
	db 0 ; no more level-up moves

PorygonZEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRICK_ROOM
	db 1, TACKLE
	db 1, CONVERSION
	db 1, NASTY_PLOT ; evolution move
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 23, GROWTH ; Magnet Rise → new move
	db 29, AURORA_BEAM ; Signal Beam → new move
	db 34, PAIN_SPLIT ; Embargo → HGSS tutor move
	db 40, BARRIER ; Discharge → event move
	db 45, THUNDERBOLT ; Lock-On → TM move
	db 50, TRI_ATTACK
	db 56, MIRROR_COAT ; Magic Coat → new move
	db 62, ZAP_CANNON
	db 67, HYPER_BEAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 9, AMNESIA
	db 12, LICK
	db 17, RAGE ; Chip Away → RBY TM move
	db 20, TAKE_DOWN ; Yawn → RBY TM move
	db 25, BODY_SLAM
	db 28, REST
	db 33, SLEEP_TALK
	db 36, ROLLOUT
	db 41, OUTRAGE ; Block → HGSS tutor move
	db 44, BELLY_DRUM
	db 49, CRUNCH
	db 50, CLOSE_COMBAT ; Heavy Slam → new move
	db 57, GIGA_IMPACT
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 12, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, HEALINGLIGHT ; Synthesis → similar move
	db 17, REFLECT
	db 20, DISARM_VOICE ; Magical Leaf → new move
	db 23, ENERGY_BALL ; Natural Gift → tutor move
	db 28, ANCIENTPOWER ; Sweet Scent → HGSS tutor move
	db 31, LIGHT_SCREEN
	db 34, BODY_SLAM
	db 39, SAFEGUARD
	db 42, PLAY_ROUGH ; Aromatherapy → new move
	db 45, SOLAR_BEAM
	db 48, HEAL_BELL ; Aromatherapy → similar move
	db 51, OUTRAGE ; HGSS tutor move
	db 56, MOONBLAST ; new move
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, HEALINGLIGHT ; Synthesis → similar move
	db 18, REFLECT
	db 22, DISARM_VOICE ; Magical Leaf → new move
	db 26, ENERGY_BALL ; Natural Gift → tutor move
	db 32, ANCIENTPOWER ; Sweet Scent → HGSS tutor move
	db 36, LIGHT_SCREEN
	db 40, BODY_SLAM
	db 43, SAFEGUARD
	db 47, PLAY_ROUGH ; Aromatherapy → new move
	db 51, SOLAR_BEAM
	db 53, HEAL_BELL ; Aromatherapy → similar move
	db 57, OUTRAGE ; HGSS tutor move
	db 60, MOONBLAST ; new move
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, PETAL_DANCE ; evolution move
	db 1, TACKLE
	db 1, GROWL
	db 6, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, HEALINGLIGHT ; Synthesis → similar move
	db 18, REFLECT
	db 22, DISARM_VOICE ; Magical Leaf → new move
	db 26, ENERGY_BALL ; Natural Gift → tutor move
	db 34, ANCIENTPOWER ; Sweet Scent → HGSS tutor move
	db 36, LIGHT_SCREEN
	db 38, BODY_SLAM
	db 40, SAFEGUARD
	db 44, PLAY_ROUGH ; Aromatherapy → new move
	db 48, SOLAR_BEAM
	db 52, HEAL_BELL ; Aromatherapy → similar move
	db 56, OUTRAGE ; HGSS tutor move
	db 60, MOONBLAST ; new move
	db 0 ; no more level-up moves
	
TotodileEvosAttacks:
	db EVOLVE_LEVEL, 12, CROCONAW
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 20, METAL_CLAW ; Ice Fang → egg move
	db 22, REVERSAL ; Flail → similar move
	db 27, AGILITY ; Feraligatr move
	db 29, CRUNCH
	db 34, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 36, SLASH
	db 41, SCREECH
	db 43, THRASH
	db 48, AQUA_TAIL
	db 50, CLOSE_COMBAT ; Superpower → similar move
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, METAL_CLAW ; Ice Fang → egg move
	db 24, REVERSAL ; Flail → similar move
	db 30, AGILITY ; Feraligatr move
	db 33, CRUNCH
	db 39, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 42, SLASH
	db 44, SCREECH
	db 48, THRASH
	db 52, AQUA_TAIL
	db 56, CLOSE_COMBAT ; Superpower → similar move
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH ; evolution move
	db 1, TACKLE
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, METAL_CLAW ; Ice Fang → egg move
	db 24, REVERSAL ; Flail → similar move
	db 32, AGILITY
	db 35, CRUNCH
	db 39, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 42, SLASH
	db 45, SCREECH
	db 48, THRASH
	db 51, OUTRAGE ; HGSS tutor move
	db 54, AQUA_TAIL
	db 57, CLOSE_COMBAT ; Superpower → similar move
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves
	
FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 1, AGILITY ; evolution move
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_STRIKES ; Fury Swipes → similar move
	db 17, DIZZY_PUNCH ; Helping Hand → event move
	db 21, SUPER_FANG ; Follow Me → HGSS tutor move
	db 28, HEADBUTT ; Slam → tutor move
	db 32, REST
	db 36, SUCKER_PUNCH
	db 42, AMNESIA
	db 46, BATON_PASS
	db 50, SLASH ; Me First → egg move
	db 56, HYPER_VOICE
	db 0 ; no more level-up moves
	

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWORDS_DANCE ; evolution move
	db 1, TACKLE
	db 5, SUPERSONIC
	db 8, SWIFT
	db 12, LIGHT_SCREEN
	db 12, REFLECT
	db 12, SAFEGUARD
	db 15, MACH_PUNCH
	db 20, BARRIER ; Silver Wind → event move
	db 24, DIZZY_PUNCH ; Comet Punch → new move
	db 29, BATON_PASS
	db 33, AGILITY
	db 38, BUG_BUZZ
	db 42, AIR_SLASH
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUG_BITE ; evolution move
	db 1, FOCUS_ENERGY
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, WRAP ; Constrict → similar move
	db 5, ABSORB
	db 8, GLARE ; Infestation → new move
	db 12, SCARY_FACE
	db 15, NIGHT_SHADE
	db 19, GROWTH ; Shadow Sneak → event move
	db 23, FURY_STRIKES ; Fury Swipes → similar move
	db 28, SUCKER_PUNCH
	db 32, MEAN_LOOK ; Spider Web → similar move
	db 37, AGILITY
	db 41, PIN_MISSILE
	db 46, PSYCHIC_M
	db 50, POISON_JAB
	db 55, LEECH_LIFE ; Cross Poison → TM move
	db 58, FEINT_ATTACK ; Sticky Web → new move
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 25, LANTURN
	db 0 ; no more evolutions
	db 1, WATER_GUN ; Bubble → Water Gun
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK ; Electro Ball → new move
	db 12, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, CONFUSE_RAY
	db 20, WATER_PULSE ; Bubble Beam → TM move
	db 23, SPARK
	db 28, PSYBEAM ; Signal Beam → egg move
	db 31, REVERSAL ; Flail → similar move
	db 34, THUNDERBOLT ; Discharge → TM move
	db 39, TAKE_DOWN
	db 42, RECOVER ; Aqua Ring → similar move
	db 45, ICE_BEAM ; Hydro Pump → TM move
	db 47, HYDRO_PUMP ; Ion Deluge → Hydro Pump
	db 50, LIGHT_SCREEN ; Charge → event move
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN ; Bubble → Water Gun
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK ; Electro Ball → new move
	db 12, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, CONFUSE_RAY
	db 20, WATER_PULSE ; Bubble Beam → TM move
	db 23, SPARK
	db 29, PSYBEAM ; Signal Beam → egg move
	db 33, REVERSAL ; Flail → similar move
	db 37, THUNDERBOLT ; Discharge → TM move
	db 43, TAKE_DOWN
	db 47, RECOVER ; Aqua Ring → similar move
	db 51, ICE_BEAM ; Hydro Pump → TM move
	db 54, HYDRO_PUMP ; Ion Deluge → Hydro Pump
	db 58, LIGHT_SCREEN ; Charge → event move
	db 0 ; no more level-up moves
	
TogeticEvosAttacks:
	db EVOLVE_ITEM, SHINY_STONE, TOGEKISS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 1, DISARM_VOICE ; evolution move
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, SING ; Yawn → similar move
	db 17, ENCORE
	db 21, DIZZY_PUNCH ; Follow Me → new move
	db 25, HEAL_BELL ; Bestow → HGSS tutor move
	db 29, FRESH_SNACK ; Wish → new move
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 41, BATON_PASS
	db 45, DOUBLE_EDGE
	db 49, EXTRASENSORY ; Last Resort → egg move
	db 53, PLAY_ROUGH ; After You → Sw/Sh move
	db 0 ; no more level-up moves

TogekissEvosAttacks:
	db 0 ; no more evolutions
	db 1, DISARM_VOICE ; evolution move
	db 1, HURRICANE ; Sky Attack → new move
	db 1, EXTREMESPEED
	db 1, AURA_SPHERE
	db 1, AIR_SLASH
	db 1, PLAY_ROUGH ; Sw/Sh move
	db 1, FUTURE_SIGHT ; Sw/Sh move
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 20, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9, PSYBEAM
	db 12, SAFEGUARD ; Lucky Chant → event move
	db 17, HYPNOSIS ; Stored Power → new move
	db 20, PAIN_SPLIT ; Ominous Wind → HGSS tutor move
	db 23, CONFUSE_RAY
	db 28, ROOST ; Wish → similar move
	db 33, PSYCHIC_M
	db 38, DRILL_PECK ; Miracle Eye → egg move
	db 39, HAZE ; Psycho Shift → egg move
	db 44, FUTURE_SIGHT
	db 47, HEX ; Power Swap + Guard Swap → new move
	db 50, SUCKER_PUNCH ; Me First → HGSS tutor move
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, AIR_SLASH ; evolution move
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9, PSYBEAM
	db 12, SAFEGUARD ; Lucky Chant → event move
	db 17, HYPNOSIS ; Stored Power → new move
	db 20, PAIN_SPLIT ; Ominous Wind → HGSS tutor move
	db 23, CONFUSE_RAY
	db 29, ROOST ; Wish → similar move
	db 35, PSYCHIC_M
	db 39, DRILL_PECK ; Miracle Eye → egg move
	db 43, HAZE ; Psycho Shift → egg move
	db 49, FUTURE_SIGHT
	db 53, HEX ; Power Swap + Guard Swap → new move
	db 57, SUCKER_PUNCH ; Me First → HGSS tutor move
	db 0 ; no more level-up moves
	
MareepEvosAttacks:
	db EVOLVE_LEVEL, 12, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, MUD_SLAP ; Cotton Spore → GSC TM move
	db 15, SPARK ; Charge → new move
	db 18, HEAL_BELL ; Take Down → HGSS tutor move
	db 22, TAKE_DOWN ; Electro Ball → Take Down
	db 25, CONFUSE_RAY
	db 29, POWER_GEM
	db 32, THUNDERBOLT ; Discharge → TM move
	db 36, SAFEGUARD ; Cotton Guard → egg move
	db 39, DAZZLINGLEAM ; Signal Beam → new move
	db 43, LIGHT_SCREEN
	db 46, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, MUD_SLAP ; Cotton Spore → GSC TM move
	db 16, SPARK ; Charge → new move
	db 20, HEAL_BELL ; Take Down → HGSS tutor move
	db 25, TAKE_DOWN ; Electro Ball → Take Down
	db 29, CONFUSE_RAY
	db 34, POWER_GEM
	db 38, THUNDERBOLT ; Discharge → TM move
	db 43, SAFEGUARD ; Cotton Guard → egg move
	db 47, DAZZLINGLEAM ; Signal Beam → new move
	db 52, LIGHT_SCREEN
	db 56, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERPUNCH ; evolution move
	db 1, FIRE_PUNCH
	db 1, DRAGON_PULSE
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, MUD_SLAP ; Cotton Spore → GSC TM move
	db 16, SPARK ; Charge → new move
	db 20, HEAL_BELL ; Take Down → HGSS tutor move
	db 25, TAKE_DOWN ; Electro Ball → Take Down
	db 29, CONFUSE_RAY
	db 35, POWER_GEM
	db 40, THUNDERBOLT ; Discharge → TM move
	db 42, SAFEGUARD ; Cotton Guard → egg move
	db 45, DAZZLINGLEAM ; Signal Beam → new move
	db 48, LIGHT_SCREEN
	db 52, THUNDER
	db 56, DRAGON_PULSE
	db 60, OUTRAGE ; HGSS tutor move
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 12, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, GROWL ; Tail Whip → new move
	db 5, FORESIGHT ; Water Sport → egg move
	db 7, AQUA_JET ; Bubble → egg move
	db 10, DEFENSE_CURL
	db 10, ROLLOUT
	db 13, BUBBLE_BEAM
	db 16, DIZZY_PUNCH ; Helping Hand → event move
	db 20, AQUA_TAIL
	db 23, PLAY_ROUGH
	db 28, SCARY_FACE ; Aqua Ring → event move
	db 31, RAIN_DANCE
	db 37, DOUBLE_EDGE
	db 40, CLOSE_COMBAT ; Superpower → similar move
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, GROWL ; Tail Whip → new move
	db 5, FORESIGHT ; Water Sport → egg move
	db 7, AQUA_JET ; Bubble → egg move
	db 10, DEFENSE_CURL
	db 10, ROLLOUT
	db 13, BUBBLE_BEAM
	db 16, DIZZY_PUNCH ; Helping Hand → event move
	db 21, AQUA_TAIL
	db 25, PLAY_ROUGH
	db 31, SCARY_FACE ; Aqua Ring → event move
	db 35, RAIN_DANCE
	db 42, DOUBLE_EDGE
	db 46, CLOSE_COMBAT ; Superpower → similar move
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUBSTITUTE ; Copycat → event move
	db 5, REVERSAL ; Flail → similar move
	db 8, LOW_KICK
	db 12, LEER ; Rock Throw → new move
	db 15, ROCK_THROW ; Mimic → Rock Throw
	db 19, FEINT_ATTACK
	db 22, ANCIENTPOWER ; Rock Tomb → new move
	db 26, PROTECT ; Block → TM move
	db 29, ROCK_SLIDE
	db 33, COUNTER
	db 36, SUCKER_PUNCH
	db 40, DOUBLE_EDGE
	db 43, STONE_EDGE
	db 47, CLOSE_COMBAT ; Hammer Arm → similar move
	db 50, IRON_HEAD ; Head Smash → tutor move
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more
	db 1, RECOVER
	db 1, STUN_SPORE
	db 1, POISONPOWDER
	db 1, SLEEP_POWDER
	db 20, LEECH_SEED
	db 24, MEGA_DRAIN
	db 28, U_TURN
	db 32, GIGA_DRAIN
	db 35, SUNNY_DAY
	db 39, AIR_SLASH
	db 44, ENCORE
	db 47, SOLAR_BEAM
	db 0 ; no more moves

JumpluffEvosAttacks:
	db 0 ; no more
	db 1, RECOVER
	db 1, STUN_SPORE
	db 1, POISONPOWDER
	db 1, SLEEP_POWDER
	db 20, LEECH_SEED
	db 24, MEGA_DRAIN
	db 30, U_TURN
	db 35, GIGA_DRAIN
	db 39, SUNNY_DAY
	db 45, AIR_SLASH
	db 48, ENCORE
	db 52, SOLAR_BEAM
	db 0 ; no more moves
	
SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH ; Growth → Hoppip move
	db 1, TACKLE ; Pound → similar move
	db 1, ABSORB
	db 4, GROWTH ; Ingrain → Growth
	db 7, DEFENSE_CURL ; Grass Whistle → TM move
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	db 19, PROTECT ; Worry Seed → TM move
	db 22, GIGA_DRAIN
	db 25, AGILITY ; Bullet Seed → TM move
	db 28, PETAL_DANCE
	db 31, EARTH_POWER ; Natural Gift → tutor move
	db 34, SOLAR_BEAM
	db 37, DOUBLE_EDGE
	db 40, SUNNY_DAY
	db 43, SEED_BOMB ; Leaf Storm → Sunkern move
	db 0 ; no more level-up moves
	
WooperEvosAttacks:
	db EVOLVE_LEVEL, 16, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, LEER ; Tail Whip → similar move
	db 5, MUD_SLAP ; Mud Sport → TM move
	db 9, SCARY_FACE ; Mud Shot → event move
	db 15, RECOVER ; Slam → tutor move
	db 19, HEADBUTT ; Mud Bomb → egg move
	db 23, AMNESIA
	db 29, BELLY_DRUM ; Yawn → event move
	db 33, EARTHQUAKE
	db 37, RAIN_DANCE
	db 43, HAZE
	db 47, AQUA_TAIL ; Muddy Water → event move
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER ; evolution move
	db 1, WATER_GUN
	db 1, LEER ; Tail Whip → similar move
	db 5, MUD_SLAP ; Mud Sport → TM move
	db 9, SCARY_FACE ; Mud Shot → event move
	db 15, HEADBUTT ; Slam → tutor move
	db 19, RECOVER ; Mud Bomb → egg move
	db 24, AMNESIA
	db 31, BELLY_DRUM ; Yawn → event move
	db 36, EARTHQUAKE
	db 41, RAIN_DANCE
	db 48, HAZE
	db 53, AQUA_TAIL ; Muddy Water → event move
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db EVOLVE_ITEM, DUSK_STONE, HONCHKROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, ASTONISH
	db 5, PURSUIT
	db 11, HAZE
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	db 25, THIEF ; Assurance → TM move
	db 31, SWAGGER ; Taunt → TM move
	db 35, FEINT_ATTACK
	db 41, MEAN_LOOK
	db 45, BATON_PASS ; Foul Play → XD move
	db 50, DRILL_PECK ; Tailwind → egg move
	db 55, SUCKER_PUNCH
	db 61, PERISH_SONG ; Torment → egg move
	db 65, BRAVE_BIRD ; Quash → egg move
	db 0 ; no more level-up moves

HonchkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUCKER_PUNCH
	db 1, ASTONISH
	db 1, PURSUIT
	db 1, HAZE
	db 1, WING_ATTACK
	db 25, SWAGGER
	db 35, NASTY_PLOT
	db 45, NIGHT_SLASH ; Foul Play → Night Slash
	db 55, PERISH_SONG ; Night Slash → egg move
	db 65, BRAVE_BIRD ; Quash → egg move
	db 75, DARK_PULSE
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PSYBEAM ; Psywave → new move
	db 1, DISARM_VOICE ; new move
	db 5, CONFUSION ; Spite → new move
	db 10, ASTONISH
	db 14, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 23, HEX
	db 28, PSYBEAM
	db 32, PAIN_SPLIT
	db 37, DESTINY_BOND ; Payback → egg move
	db 41, SHADOW_BALL
	db 46, PERISH_SONG
	db 50, DAZZLINGLEAM ; Grudge → TM move
	db 55, POWER_GEM
	db 62, NASTY_PLOT ; egg move
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
	db 0 ; no more evolutions
	db 1, POWER_GEM
	db 1, SHADOW_BALL ; Phantom Force → TM move
	db 1, FLAMETHROWER ; Mystical Fire → TM move
	db 1, DAZZLINGLEAM ; Magical Leaf → TM move ; evolution move
	db 2, CONFUSE_RAY ; Spite → new move
	db 2, PSYBEAM ; Psywave → new move
	db 2, DISARM_VOICE ; new move
	db 2, HEX
	db 32, PAIN_SPLIT
	db 37, DESTINY_BOND ; Payback → egg move
	db 41, SHADOW_BALL
	db 46, PERISH_SONG
	db 50, DAZZLINGLEAM ; Grudge → TM move
	db 55, POWER_GEM
	db 60, NASTY_PLOT ; egg move
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db EVOLVE_MOVE, ANCIENTPOWER, YANMEGA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 1, BUG_BITE
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SONIC_BOOM
	db 17, PROTECT ; Detect → similar move
	db 22, DRAGON_RAGE ; Supersonic → new move
	db 27, SUPERSONIC ; Uproar → Supersonic
	db 30, PURSUIT
	db 33, ANCIENTPOWER
	db 38, HYPNOSIS
	db 43, WING_ATTACK
	db 46, SCREECH
	db 49, U_TURN
	db 54, AIR_SLASH
	db 57, BUG_BUZZ
	db 62, DREAM_EATER ; event move
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGONBREATH ; evolution move
	db 1, NIGHT_SLASH
	db 1, TACKLE
	db 1, FORESIGHT
	db 1, BUG_BITE
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SONIC_BOOM
	db 17, PROTECT ; Detect → similar move
	db 22, DRAGON_RAGE ; Supersonic → new move
	db 27, SUPERSONIC ; Uproar → Supersonic
	db 30, PURSUIT
	db 33, ANCIENTPOWER
	db 38, DRAGONBREATH ; Feint → Slash
	db 43, WING_ATTACK ; Slash → Wing Attack
	db 46, SCREECH
	db 49, U_TURN
	db 54, AIR_SLASH
	db 57, BUG_BUZZ
	db 62, FLY ; new move
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 20, ANCIENTPOWER
	db 40, TRANSFORM
	db 60, PERISH_SONG
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, TACKLE
	db 1, GROWL
	db 1, CONFUSION
	db 5, FORESIGHT ; Odor Sleuth → egg move
	db 10, PURSUIT ; Assurance → new move
	db 14, STOMP
	db 19, PSYBEAM
	db 23, AGILITY
	db 28, DOUBLE_KICK ; Double Hit → egg move
	db 32, ZEN_HEADBUTT
	db 37, CRUNCH
	db 41, BATON_PASS
	db 46, NASTY_PLOT
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 25, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 6, FOCUS_ENERGY ; Self-Destruct → TCG move
	db 9, BUG_BITE
	db 12, SUBSTITUTE ; Take Down → event move
	db 17, RAPID_SPIN
	db 20, DEFENSE_CURL ; Bide → TM move
	db 23, TAKE_DOWN ; Natural Gift → Take Down
	db 28, SPIKES
	db 31, REVERSAL ; Payback → new move
	db 34, EXPLOSION
	db 39, REFLECT ; Iron Defense → egg move
	db 42, GYRO_BALL
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLASH_CANNON ; Mirror Shot → TM move ; evolution move
	db 1, AGILITY ; Autotomize → similar move
	db 1, TOXIC_SPIKES
	db 1, TACKLE
	db 1, PROTECT
	db 6, FOCUS_ENERGY ; Self-Destruct → TCG move
	db 9, BUG_BITE
	db 12, SUBSTITUTE ; Take Down → event move
	db 17, RAPID_SPIN
	db 20, DEFENSE_CURL ; Bide → TM move
	db 23, TAKE_DOWN ; Natural Gift → Take Down
	db 28, SPIKES
	db 32, REVERSAL ; Payback → new move
	db 36, EXPLOSION
	db 42, REFLECT ; Iron Defense → egg move
	db 46, GYRO_BALL
	db 50, DOUBLE_EDGE
	db 56, ZAP_CANNON
	db 60, IRON_HEAD ; Heavy Slam → new move
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, DEFENSE_CURL
	db 3, ROLLOUT
	db 6, ASTONISH ; Spite → egg move
	db 8, PURSUIT
	db 11, SCREECH
	db 13, MUD_SLAP
	db 16, FURY_STRIKES ; Yawn → event move (Fury Attack)
	db 18, ANCIENTPOWER
	db 21, BODY_SLAM
	db 23, DRAGON_RAGE ; Drill Run → new move
	db 26, ROOST
	db 28, TAKE_DOWN
	db 31, DRAGON_DANCE ; Coil → new move
	db 33, DIG
	db 36, GLARE
	db 38, DOUBLE_EDGE
	db 41, EARTHQUAKE ; Endeavor → TM move
	db 43, AIR_SLASH
	db 46, HEX ; Dragon Rush → egg move
	db 48, ENDURE
	db 51, REVERSAL ; Flail → similar move
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db EVOLVE_HOLDING, RAZOR_FANG, GLISCOR
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 4, MUD_SLAP ; Sand Attack → similar move
	db 7, DEFENSE_CURL ; Harden → similar move
	db 10, QUICK_ATTACK ; Knock Off → Quick Attack
	db 13, WING_ATTACK ; Quick Attack → egg move
	db 16, BUG_BITE ; Fury Cutter → similar move
	db 19, FEINT_ATTACK
	db 22, ACROBATICS
	db 27, SLASH
	db 30, U_TURN
	db 35, SCREECH
	db 40, X_SCISSOR
	db 45, KNOCK_OFF ; Sky Uppercut → Knock Off
	db 50, SWORDS_DANCE
	db 55, NIGHT_SLASH ; Guillotine → egg move
	db 0 ; no more level-up moves

GliscorEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_JAB
	db 4, MUD_SLAP ; Sand Attack → similar move
	db 7, DEFENSE_CURL ; Harden → similar move
	db 10, QUICK_ATTACK ; Knock Off → Quick Attack
	db 13, WING_ATTACK ; Quick Attack → egg move
	db 16, BUG_BITE ; Fury Cutter → similar move
	db 19, FEINT_ATTACK
	db 22, ACROBATICS
	db 27, SLASH ; Night Slash → Gligar move
	db 30, U_TURN
	db 35, SCREECH
	db 40, X_SCISSOR
	db 45, KNOCK_OFF ; Sky Uppercut → Knock Off
	db 50, SWORDS_DANCE
	db 55, NIGHT_SLASH ; Guillotine → Night Slash
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 20, GRANBULL
	db 0 ; no more evolutions
	db 1, LICK
	db 1, PAY_DAY ; Tail Whip → similar move
	db 5, CHARM
	db 6, SCARY_FACE
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 25, ROAR
	db 31, RAGE
	db 37, PLAY_ROUGH
	db 43, DOUBLE_EDGE ; Payback → event move
	db 49, CRUNCH
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, LEER ; Tail Whip → similar move
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 27, ROAR
	db 35, RAGE
	db 43, PLAY_ROUGH
	db 51, DOUBLE_EDGE ; Payback → event move
	db 59, CRUNCH
	db 67, OUTRAGE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db EVOLVE_HOLDING, ODD_SOUVENIR,  OVERQWIL
	db 0 ; no more evolutions	
	db 1, WATER_GUN
	db 1, SPIKES
	db 1, TACKLE
	db 1, POISON_STING
	db 5, DEFENSE_CURL ; Harden → TM move
	db 9, MINIMIZE
	db 13, BUBBLE_BEAM ; Bubble → similar move
	db 17, ROLLOUT
	db 21, TOXIC_SPIKES
	db 25, PAIN_SPLIT ; Stockpile + Spit Up → HGSS move tutor
	db 29, REVERSAL ; Revenge → Sw/Sh move
	db 33, WATER_PULSE ; Brine → TM move
	db 37, PIN_MISSILE
	db 41, TAKE_DOWN
	db 45, AQUA_TAIL
	db 49, POISON_JAB
	db 53, DESTINY_BOND
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

OverqwilEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SPIKES
	db 1, TACKLE
	db 1, POISON_STING
	db 5, DEFENSE_CURL ; Harden → TM move
	db 9, MINIMIZE
	db 13, BUBBLE_BEAM ; Bubble → similar move
	db 17, TOXIC_SPIKES
	db 21, ROLLOUT
	db 25, PAIN_SPLIT ; Stockpile + Spit Up → HGSS move tutor
	db 27, CRUNCH ; Revenge → Sw/Sh move
	db 30, EXPLOSION
	db 33, REVERSAL ; Brine → TM move
	db 37, PIN_MISSILE
	db 41, DARK_PULSE
	db 45, AQUA_TAIL
	db 49, POISON_JAB
	db 53, DESTINY_BOND
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SLAP ; Constrict → GSC TM move
	db 1, DEFENSE_CURL ; Withdraw → similar move
	db 1, WRAP
	db 1, ROCK_SMASH
	db 10, ROLLOUT
	db 12, STRING_SHOT ; Struggle Bug → HGSS tutor move
	db 14, ENCORE
	db 20, REST
	db 23, ROCK_THROW
	db 27, ACID ; Gastro Acid → egg move
	db 31, DISABLE ; Power Trick → new move
	db 34, SHELL_SMASH
	db 38, ROCK_BLAST ; Rock Slide → Sw/Sh move
	db 42, BUG_BITE
	db 45, ROCK_SLIDE ; Power Split + Guard Split → Rock Slide
	db 49, REVERSAL ; Stone Edge → Sw/Sh move
	db 53, STONE_EDGE ; Sticky Web → Stone Edge
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, TACKLE
	db 1, LEER
	db 1, HORN_ATTACK
	db 1, ENDURE
	db 7, BUG_BITE ; Feint → HGSS tutor move
	db 10, FURY_STRIKES ; Aerial Ace → Fury Strikes
	db 16, LOW_KICK ; Chip Away → HGSS tutor move
	db 19, COUNTER
	db 25, AERIAL_ACE ; Fury Attack → Aerial Ace
	db 28, SEISMIC_TOSS ; Brick Break → tutor move
	db 31, PIN_MISSILE
	db 34, TAKE_DOWN
	db 37, MEGAHORN
	db 43, CLOSE_COMBAT
	db 46, REVERSAL
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db EVOLVE_HOLDING, RAZOR_CLAW, WEAVILE
	db EVOLVE_HOLDING, ODD_SOUVENIR, SNEASLER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, BITE ; Taunt → egg move
	db 8, QUICK_ATTACK
	db 10, FEINT_ATTACK
	db 14, ICE_SHARD ; Icy Wind → Ice Shard
	db 20, AGILITY
	db 22, METAL_CLAW
	db 25, HONE_CLAWS
	db 28, ICICLE_CRASH ; Beat Up → egg move
	db 32, SCREECH
	db 35, SLASH
	db 40, HEALINGLIGHT ; Snatch → event move (Moonlight)
	db 44, X_SCISSOR ; Punishment → TM move
	db 47, CRUNCH ; Ice Shard → new move
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, BITE ; Taunt → egg move
	db 8, QUICK_ATTACK
	db 10, FEINT_ATTACK
	db 14, ICE_SHARD ; Icy Wind → Ice Shard
	db 16, FURY_STRIKES ; Fury Swipes → similar move
	db 20, NASTY_PLOT
	db 22, METAL_CLAW
	db 25, HONE_CLAWS
	db 28, ICICLE_CRASH ; Fling → egg move
	db 32, SCREECH
	db 35, NIGHT_SLASH
	db 40, HEALINGLIGHT ; Snatch → event move (Moonlight)
	db 44, X_SCISSOR ; Punishment → TM move
	db 47, CRUNCH ; Dark Pulse → new move
	db 0 ; no more level-up moves

SneaslerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, BITE ; Taunt → egg move
	db 8, QUICK_ATTACK
	db 10, FEINT_ATTACK
	db 14, ICE_SHARD ; Icy Wind → Ice Shard
	db 16, FURY_STRIKES ; Fury Swipes → similar move
	db 20, POISON_JAB
	db 25, HONE_CLAWS
	db 28, KARATE_CHOP ; Fling → egg move
	db 32, SWORDS_DANCE
	db 35, NIGHT_SLASH
	db 44, X_SCISSOR ; Punishment → TM move
	db 47, CLOSE_COMBAT ; Dark Pulse → new move
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 20, URSARING
	db 0 ; no more evolutions
	db 1, THIEF ; Covet → TM move
	db 1, TACKLE
	db 1, GROWL ; Baby-Doll Eyes → similar move
	db 1, LICK
	db 1, FOCUS_ENERGY ; Fake Tears → egg move
	db 8, FURY_STRIKES ; Fury Swipes → similar move
	db 15, FEINT_ATTACK
	db 22, BELLY_DRUM ; Sweet Scent → egg move
	db 25, PLAY_ROUGH ; Play Nice → egg move
	db 29, SLASH
	db 36, CHARM
	db 43, REST
	db 43, CRUNCH ; Snore → egg move
	db 50, THRASH
	db 57, CLOSE_COMBAT ; Fling → new move
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, URSALUNA
	db 0 ; no more evolutions
	db 1, GUNK_SHOT ; HGSS tutor move
	db 1, THIEF ; Covet → TM move
	db 1, TACKLE
	db 1, LEER
	db 1, LICK
	db 1, FOCUS_ENERGY ; Fake Tears → egg move
	db 8, FURY_STRIKES ; Fury Swipes → similar move
	db 15, FEINT_ATTACK
	db 22, BELLY_DRUM ; Sweet Scent → egg move
	db 25, PLAY_ROUGH ; Play Nice → egg move
	db 29, SLASH
	db 38, SCARY_FACE
	db 47, REST
	db 49, CRUNCH ; Snore → egg move
	db 58, THRASH
	db 67, CLOSE_COMBAT ; Hammer Arm → new move
	db 0 ; no more level-up moves

UrsalunaEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUNK_SHOT ; HGSS tutor move
	db 1, THIEF ; Covet → TM move
	db 1, TACKLE
	db 1, LEER
	db 1, LICK
	db 1, FOCUS_ENERGY ; Fake Tears → egg move
	db 8, FURY_STRIKES ; Fury Swipes → similar move
	db 15, FEINT_ATTACK
	db 22, BELLY_DRUM ; Sweet Scent → egg move
	db 25, PLAY_ROUGH ; Play Nice → egg move
	db 29, SLASH
	db 34, REST
	db 38, EARTHQUAKE ; Snore → egg move
	db 43, DOUBLE_EDGE
	db 48, SCARY_FACE
	db 55, CRUNCH
	db 60, CLOSE_COMBAT ; Hammer Arm → new move
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SHELL_SMASH ; evolution move
	db 1, MUD_SLAP ; Smog → TM move
	db 6, SCREECH
	db 6, FIRE_SPIN
	db 6, SMOKESCREEN ; Clear Smog → egg move
	db 6, DEFENSE_CURL ; Harden → similar move
	db 22, EMBER ; Incinerate → new move
	db 22, ROCK_THROW
	db 27, SCALD ; Flame Burst → TM move
	db 29, ROCK_SLIDE
	db 34, PAIN_SPLIT ; Lava Plume → HGSS tutor move
	db 36, AMNESIA
	db 43, BODY_SLAM
	db 47, RECOVER
	db 54, FLAMETHROWER
	db 58, EARTH_POWER
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db EVOLVE_MOVE, ANCIENTPOWER, MAMOSWINE
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, FURY_STRIKES ; evolution move (Fury Attack)
	db 1, PECK
	db 1, FORESIGHT ; Odor Sleuth → similar move
	db 5, BITE ; Mud Sport → egg move
	db 8, ICE_SHARD ; Powder Snow → Ice Shard
	db 11, MUD_SLAP
	db 14, ENDURE
	db 18, MAGNITUDE ; Mud Bomb → new move
	db 21, ICY_WIND
	db 24, ICICLE_CRASH ; Ice Fang → egg move
	db 28, TAKE_DOWN
	db 37, BULLDOZE ; Mist → TM move
	db 41, THRASH
	db 46, EARTHQUAKE
	db 52, BLIZZARD
	db 58, AMNESIA
	db 0 ; no more level-up moves

MamoswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, PECK
	db 1, FORESIGHT ; Odor Sleuth → similar move
	db 5, BITE ; Mud Sport → egg move
	db 8, ICE_SHARD ; Powder Snow → Ice Shard
	db 11, MUD_SLAP
	db 14, ENDURE
	db 18, MAGNITUDE ; Mud Bomb → new move
	db 21, HAIL
	db 24, AVALANCHE ; Ice Fang → egg move
	db 28, TAKE_DOWN
	db 34, ROCK_BLAST ; Double Hit → Sw/Sh move
	db 37, BULLDOZE ; Mist → TM move
	db 41, THRASH
	db 46, EARTHQUAKE
	db 52, BLIZZARD
	db 58, SCARY_FACE
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 4, WATER_GUN ; Bubble → similar move
	db 8, ROLLOUT ; Recover → TM move
	db 10, BUBBLE_BEAM
	db 13, SAFEGUARD ; Refresh → egg move
	db 17, ANCIENTPOWER
	db 20, ICICLE_SPEAR ; Spike Cannon → egg move
	db 23, CONFUSE_RAY ; Lucky Chant → egg move
	db 27, ENDURE ; Brine → Endure
	db 29, BARRIER ; Iron Defense → similar move
	db 31, ROCK_BLAST
	db 35, RECOVER ; Endure → Recover
	db 38, HYDRO_PUMP ; Aqua Ring → Sw/Sh move
	db 41, POWER_GEM
	db 45, MIRROR_COAT
	db 47, EARTH_POWER
	db 50, REVERSAL ; Flail → similar move
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, OCTAZOOKA ; evolution move
	db 1, ROCK_BLAST
	db 1, POWER_WHIP ; new move
	db 1, WATER_GUN
	db 6, FORESIGHT ; Constrict → new move
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 14, EMBER
	db 18, BUBBLE_BEAM
	db 22, FOCUS_ENERGY
	db 26, WRAP ; Wring Out → new move
	db 28, WATER_PULSE
	db 34, FLAMETHROWER ; Signal Beam → TM move
	db 40, ICE_BEAM
	db 44, SEED_BOMB ; Bullet Seed → tutor move
	db 48, GUNK_SHOT ; Hydro Pump → new move
	db 52, HYDRO_PUMP ; Hyper Beam → Hydro Pump
	db 56, FIRE_BLAST ; new move
	db 60, AURA_SPHERE ; Soak → new move
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST ; event move
	db 1, TACKLE
	db 1, WATER_GUN ; Bubble → similar move
	db 3, SUPERSONIC
	db 7, BUBBLE_BEAM
	db 11, CONFUSE_RAY
	db 14, WING_ATTACK
	db 16, HEADBUTT
	db 19, WATER_PULSE
	db 23, AQUA_JET ; Wide Guard → new move
	db 27, TAKE_DOWN
	db 32, AGILITY
	db 36, AIR_SLASH
	db 39, ROOST ; Aqua Ring → similar move
	db 46, MIRROR_COAT ; Bounce → Dream World move
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 6, MUD_SLAP ; Sand Attack → similar move
	db 9, BITE ; Metal Claw → new move
	db 12, METAL_CLAW ; Air Cutter → Metal Claw
	db 17, FURY_STRIKES ; Fury Attack → similar move
	db 20, PURSUIT ; Feint → egg move
	db 23, SWIFT
	db 28, SPIKES
	db 31, AGILITY
	db 34, STEEL_WING
	db 39, SLASH
	db 42, SCREECH ; Metal Sound → similar move
	db 45, AIR_SLASH
	db 50, DRILL_PECK ; Autotomize → egg move
	db 53, NIGHT_SLASH
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 4, PURSUIT ; Howl → egg move
	db 8, SMOKESCREEN ; Smog → new move
	db 13, ROAR
	db 16, BITE
	db 20, FORESIGHT ; Odor Sleuth → similar move
	db 25, SUPER_FANG ; Beat Up → HGSS tutor move
	db 28, FIRE_SPIN ; Fire Fang → egg move
	db 32, FEINT_ATTACK
	db 37, DESTINY_BOND ; Embargo → egg move
	db 40, WILL_O_WISP ; Foul Play → egg move
	db 44, FLAMETHROWER
	db 49, CRUNCH
	db 52, NASTY_PLOT
	db 56, DARK_PULSE ; Inferno → TM move
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 4, PURSUIT ; Howl → egg move
	db 8, SMOKESCREEN ; Smog → new move
	db 13, ROAR
	db 16, BITE
	db 20, FORESIGHT ; Odor Sleuth → similar move
	db 26, SUPER_FANG ; Beat Up → HGSS tutor move
	db 30, FIRE_SPIN ; Fire Fang → egg move
	db 35, FEINT_ATTACK
	db 41, DESTINY_BOND ; Embargo → egg move
	db 45, WILL_O_WISP ; Foul Play → egg move
	db 50, FLAMETHROWER
	db 56, CRUNCH
	db 60, NASTY_PLOT
	db 65, DARK_PULSE ; Inferno → TM move
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_STRIKES ; evolution move
	db 1, GUNK_SHOT ; HGSS tutor move
	db 1, HORN_ATTACK
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 1, BULLDOZE
	db 6, RAPID_SPIN
	db 10, ROLLOUT
	db 15, IRON_TAIL ; Assurance → TM move
	db 19, KNOCK_OFF
	db 24, ANCIENTPOWER ; Slam → HGSS tutor move
	db 30, MAGNITUDE
	db 37, SCARY_FACE
	db 43, EARTHQUAKE
	db 50, GIGA_IMPACT
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db EVOLVE_HOLDING, ODD_SOUVENIR, WYRDEER
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, HYPNOSIS
	db 1, CALM_MIND
	db 1, CONFUSION
	db 25, ZEN_HEADBUTT
	db 29, EXTRASENSORY
	db 33, DOUBLE_KICK
	db 37, DOUBLE_EDGE
	db 45, MEGAHORN
	db 52, SHADOW_BALL
	db 60, PSYCHIC_M
	db 0 ; no more level-up moves
	
WyrdeerEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, HYPNOSIS
	db 1, CALM_MIND
	db 1, CONFUSION
	db 25, ZEN_HEADBUTT
	db 29, EXTRASENSORY
	db 29, CALM_MIND
	db 33, DOUBLE_KICK
	db 37, DOUBLE_EDGE
	db 45, MEGAHORN
	db 52, SHADOW_BALL
	db 60, PSYCHIC_M
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 8, STOMP
	db 11, FRESH_SNACK ; Milk Drink → similar move
	db 15, DIZZY_PUNCH ; Bide → egg move
	db 19, ROLLOUT
	db 24, BODY_SLAM
	db 29, ZEN_HEADBUTT
	db 35, SEISMIC_TOSS ; Captivate → egg move
	db 41, GYRO_BALL
	db 48, HEAL_BELL
	db 50, REVERSAL ; Wake-Up Slap → egg move
	db 0 ; no more level-up moves

GrotleEvosAttacks:
	db EVOLVE_LEVEL, 32, TORTERRA
	db 0 ; no more Evolutions
	db 1, RAZOR_LEAF
	db 1, BULLDOZE
	db 1, SLEEP_POWDER
	db 1, BITE
	db 25, LEECH_SEED
	db 30, CURSE
	db 35, SEED_BOMB
	db 40, DOUBLE_EDGE
	db 45, EARTH_POWER
	db 50, STONE_EDGE
	db 0 ; no more level-up moves

TorterraEvosAttacks:
	db 0 ; no more Evolutions
	db 1, RAZOR_LEAF
	db 1, SLEEP_POWDER
	db 1, BITE
	db 25, LEECH_SEED
	db 29, EARTHQUAKE
	db 31, CURSE
	db 38, SEED_BOMB
	db 40, RECOVER
	db 44, DOUBLE_EDGE
	db 48, EARTH_POWER
	db 55, STONE_EDGE
	db 0 ; no more level-up moves

MonfernoEvosAttacks:
	db EVOLVE_LEVEL, 36, INFERNAPE
	db 0 ; no more Evolutions
	db 1, FIRE_PUNCH
	db 1, MACH_PUNCH
	db 1, SWIFT
	db 1, EMBER
	db 25, NASTY_PLOT
	db 30, FLAMETHROWER
	db 35, THUNDERPUNCH
	db 40, DOUBLE_EDGE
	db 45, ACROBATICS
	db 50, FRESH_SNACK
	db 0 ; no more level-up moves

InfernapeEvosAttacks:
	db 0 ; no more Evolutions
	db 1, FIRE_PUNCH
	db 1, MACH_PUNCH
	db 1, SWIFT
	db 1, EMBER
	db 25, NASTY_PLOT
	db 30, FLAMETHROWER
	db 35, THUNDERPUNCH
	db 35, FLARE_BLITZ	
	db 40, FLAME_CHARGE	
	db 44, DOUBLE_EDGE
	db 48, CLOSE_COMBAT
	db 55, FRESH_SNACK
	db 0 ; no more level-up moves
	
PrinplupEvosAttacks:
	db EVOLVE_LEVEL, 36, EMPOLEON
	db 0 ; no more Evolutions
	db 1, METAL_CLAW
	db 1, AERIAL_ACE
	db 1, WATER_PULSE
	db 1, CHARM
	db 25, AGILITY
	db 30, ICY_WIND
	db 35, DRILL_PECK
	db 40, DOUBLE_EDGE
	db 45, HYDRO_PUMP
	db 50, ROOST
	db 0 ; no more level-up moves

EmpoleonEvosAttacks:
	db 0 ; no more Evolutions
	db 1, METAL_CLAW
	db 1, AERIAL_ACE
	db 1, WATER_PULSE
	db 1, CHARM
	db 25, AGILITY
	db 30, ICY_WIND
	db 35, DRILL_PECK
	db 35, IRON_HEAD
	db 40, DOUBLE_EDGE
	db 45, HYDRO_PUMP
	db 50, ROOST
	db 55, BLIZZARD
	db 0 ; no more level-up moves

StaraviaEvosAttacks:
	db EVOLVE_LEVEL, 34, STARAPTOR
	db 0 ; no more Evolutions
	db 1, QUICK_ATTACK
	db 1, AERIAL_ACE
	db 1, ROOST
	db 1, TAKE_DOWN
	db 25, AGILITY
	db 30, AIR_SLASH
	db 35, DRILL_PECK
	db 40, DOUBLE_EDGE
	db 45, BRAVE_BIRD
	db 0 ; no more level-up moves
	
StaraptorEvosAttacks:
	db 0 ; no more Evolutions
	db 1, QUICK_ATTACK
	db 1, AERIAL_ACE
	db 1, ROOST
	db 1, TAKE_DOWN
	db 25, AGILITY
	db 30, AIR_SLASH
	db 33, CLOSE_COMBAT
	db 35, DRILL_PECK
	db 40, DOUBLE_EDGE
	db 45, BRAVE_BIRD
	db 0 ; no more level-up moves

LuxioEvosAttacks:
	db EVOLVE_LEVEL, 30, LUXRAY
	db 0 ; no more Evolutions
	db 1, QUICK_ATTACK
	db 1, THUNDERSHOCK
	db 1, BITE
	db 1, THUNDER_WAVE
	db 25, SPARK
	db 35, CRUNCH
	db 35, WILD_CHARGE
	db 40, CHARM
	db 45, THUNDER
	db 50, SUPER_FANG
	db 0 ; no more level-up moves
	
LuxrayEvosAttacks:
	db 0 ; no more Evolutions
	db 1, QUICK_ATTACK
	db 1, THUNDERSHOCK
	db 1, BITE
	db 1, THUNDER_WAVE
	db 25, SPARK
	db 29, CRUNCH
	db 35, WILD_CHARGE
	db 40, IRON_TAIL
	db 45, PLAY_ROUGH
	db 50, SUCKER_PUNCH
	db 0 ; no more level-up moves
	
RoseliaEvosAttacks:
	db EVOLVE_ITEM, SHINY_STONE, ROSERADE
	db 0 ; no more Evolutions
	db 1, POISON_STING
	db 1, POISONPOWDER
	db 1, MEGA_DRAIN
	db 1, STUN_SPORE
	db 25, VENOSHOCK
	db 30, GIGA_DRAIN
	db 35, ENERGY_BALL
	db 40, SPIKES
	db 45, DAZZLINGLEAM
	db 50, PETAL_DANCE
	db 0 ; no more level-up moves
	
RoseradeEvosAttacks:
	db 0 ; no more Evolutions
	db 1, POISON_STING
	db 1, POISONPOWDER
	db 1, MEGA_DRAIN
	db 1, STUN_SPORE
	db 25, VENOSHOCK
	db 35, GIGA_DRAIN
	db 45, ENERGY_BALL
	db 50, DAZZLINGLEAM
	db 55, PETAL_DANCE
	db 0 ; no more level-up moves
	
RampardosEvosAttacks:
	db 0 ; no more Evolutions
	db 1, ANCIENTPOWER
	db 28, FURY_STRIKES
	db 29, RAGE
	db 30, STOMP
	db 35, BITE
	db 35, DOUBLE_KICK
	db 35, IRON_HEAD
	db 40, ROCK_SLIDE
	db 43, DOUBLE_EDGE
	db 45, BULLDOZE
	db 50, STONE_EDGE
	db 55, CRUNCH
	db 0 ; no more level-up moves
		
BastiodonEvosAttacks:
	db 0 ; no more Evolutions
	db 1, ANCIENTPOWER
	db 28, STOMP
	db 29, MUD_SLAP
	db 30, SCREECH
	db 35, CURSE
	db 35, IRON_HEAD
	db 35, COUNTER
	db 40, MIRROR_COAT
	db 42, SANDSTORM
	db 45, FRESH_SNACK
	db 50, STONE_EDGE
	db 55, REST
	db 0 ; no more level-up moves
	
VespiquenEvosAttacks:
	db 0 ; no more Evolutions
	db 1, PIN_MISSILE
	db 1, ROOST
	db 1, POISON_STING
	db 1, DEFENSE_CURL
	db 25, FRESH_SNACK
	db 30, BUG_BUZZ
	db 35, AIR_SLASH
	db 38, SUBSTITUTE
	db 38, TOXIC
	db 42, POWER_GEM
	db 45, SLUDGE_BOMB
	db 50, X_SCISSOR
	db 55, DESTINY_BOND
	db 0 ; no more level-up moves
	
AmbipomEvosAttacks:
	db 0 ; no more Evolutions
	db 1, DOUBLE_SLAP
	db 1, MUD_SLAP
	db 1, METRONOME
	db 1, SCREECH
	db 25, DOUBLE_KICK
	db 30, SWIFT
	db 30, NASTY_PLOT
	db 35, BATON_PASS
	db 38, IRON_TAIL
	db 42, DOUBLE_EDGE
	db 45, REST
	db 50, AGILITY
	db 0 ; no more level-up moves

DrifblimEvosAttacks:
	db 0 ; no more Evolutions
	db 1, CALM_MIND
	db 1, HEX
	db 1, HYPNOSIS
	db 1, AIR_SLASH
	db 35, SHADOW_BALL
	db 40, WILL_O_WISP
	db 42, EXPLOSION
	db 48, AMNESIA
	db 56, THUNDER
	db 0 ; no more level-up moves
	
LopunnyEvosAttacks:
	db 0 ; no more Evolutions
	db 1, MACH_PUNCH
	db 1, QUICK_ATTACK
	db 1, CHARM
	db 1, DRAIN_KISS
	db 35, PLAY_ROUGH
	db 40, DRAIN_PUNCH
	db 45, DOUBLE_EDGE
	db 52, HI_JUMP_KICK
	db 55, AGILITY
	db 60, BATON_PASS
	db 0 ; no more level-up moves
	
SkuntankEvosAttacks:
	db 0 ; no more Evolutions
	db 1, VENOSHOCK
	db 1, POISONPOWDER
	db 1, BITE
	db 1, SCREECH
	db 34, FLAMETHROWER
	db 38, DARK_PULSE
	db 45, SUCKER_PUNCH
	db 52, EXPLOSION
	db 55, TOXIC
	db 60, FIRE_BLAST
	db 0 ; no more level-up moves
	
BronzorEvosAttacks:
	db EVOLVE_LEVEL, 25, BRONZONG
	db 0 ; no more Evolutions
	db 1, RAIN_DANCE
	db 1, CONFUSION
	db 18, HYPNOSIS
	db 23, EXTRASENSORY
	db 28, FLASH_CANNON
	db 35, GYRO_BALL
	db 38, FUTURE_SIGHT
	db 42, PSYCHIC_M
	db 45, THUNDER
	db 0 ; no more level-up moves

BronzongEvosAttacks:
	db 0 ; no more Evolutions
	db 1, RAIN_DANCE
	db 1, CONFUSION
	db 18, HYPNOSIS
	db 23, EXTRASENSORY
	db 28, FLASH_CANNON
	db 36, MIRROR_COAT
	db 39, GYRO_BALL
	db 42, FUTURE_SIGHT
	db 45, PSYCHIC_M
	db 50, THUNDER
	db 0 ; no more level-up moves

SpiritombEvosAttacks:;encounter at lv 35
	db 0 ; no more evolutions
	db 1, REST
	db 1, SLEEP_TALK
	db 1, DARK_PULSE
	db 1, CALM_MIND
	db 36, CURSE
	db 40, HYPNOSIS
	db 40, DREAM_EATER
	db 44, SHADOW_BALL
	db 50, NASTY_PLOT
	db 0 ; no more level-up moves
	
GabiteEvosAttacks:
	db EVOLVE_LEVEL, 48, GARCHOMP
	db 0 ; no more Evolutions
	db 1, DIG
	db 1, SLASH
	db 30, BULLDOZE
	db 30, DRAGONBREATH
	db 35, METAL_CLAW
	db 41, DRAGON_CLAW
	db 48, EARTHQUAKE
	db 55, OUTRAGE
	db 0 ; no more level-up moves
	
GarchompEvosAttacks:
	db 0 ; no more Evolutions
	db 1, BULLDOZE
	db 1, SLASH
	db 1, DIG
	db 1, DRAGONBREATH
	db 35, METAL_CLAW
	db 41, DRAGON_CLAW
	db 50, EARTHQUAKE
	db 57, OUTRAGE
	db 0 ; no more level-up moves

LucarioEvosAttacks:
	db 0 ; no more Evolutions
	db 1, BULLET_PUNCH
	db 1, MACH_PUNCH
	db 1, BULK_UP
	db 1, CRUNCH	
	db 46, AURA_SPHERE
	db 50, DRAGON_PULSE
	db 54, CLOSE_COMBAT
	db 58, NASTY_PLOT
	db 0 ; no more level-up moves

HippowdonEvosAttacks:
	db 0 ; no more Evolutions
	db 1, BULLDOZE
	db 1, REST
	db 1, BITE
	db 1, BODY_SLAM	
	db 38, EARTHQUAKE
	db 44, FRESH_SNACK
	db 48, CRUNCH
	db 52, CURSE
	db 0 ; no more level-up moves

DrapionEvosAttacks:
	db 0 ; no more Evolutions
	db 1, VENOSHOCK
	db 1, POISONPOWDER
	db 1, BITE
	db 1, SWORDS_DANCE
	db 34, X_SCISSOR
	db 38, DARK_PULSE
	db 40, POISON_JAB
	db 45, CRUNCH
	db 52, KNOCK_OFF
	db 0 ; no more level-up moves
	
ToxicroakEvosAttacks:
	db 0 ; no more Evolutions
	db 1, SEISMIC_TOSS
	db 1, POISON_STING
	db 1, LOW_KICK
	db 1, SWORDS_DANCE
	db 34, NASTY_PLOT
	db 38, EARTH_POWER
	db 40, SLUDGE_BOMB
	db 45, CLOSE_COMBAT
	db 52, POISON_JAB
	db 0 ; no more level-up moves

SnoverEvosAttacks:
	db EVOLVE_LEVEL, 36, ABOMASNOW
	db 0 ; no more Evolutions
	db 1, LEER
	db 1, HAIL
	db 1, ICY_WIND
	db 1, ENERGY_BALL
	db 35, RAZOR_LEAF
	db 39, ICICLE_CRASH
	db 44, SEED_BOMB
	db 48, LEECH_SEED
	db 52, BLIZZARD
	db 0 ; no more level-up moves
	
AbomasnowEvosAttacks:
	db 0 ; no more Evolutions
	db 1, LEER
	db 1, HAIL
	db 1, ICY_WIND
	db 1, ENERGY_BALL
	db 35, RAZOR_LEAF
	db 39, ICICLE_CRASH
	db 45, SEED_BOMB
	db 50, BLIZZARD
	db 0 ; no more level-up moves
	
DusclopsEvosAttacks:
	db EVOLVE_ITEM, DUSK_STONE, DUSKNOIR
	db 0 ; no more Evolutions
	db 1, DISABLE
	db 1, HEX
	db 1, CURSE
	db 1, LEECH_LIFE
	db 30, SHADOW_BALL
	db 34, WILL_O_WISP
	db 38, DARK_PULSE
	db 45, PSYCHIC_M
	db 0 ; no more level-up moves
	
DusknoirEvosAttacks:
	db 0 ; no more Evolutions
	db 1, DISABLE
	db 1, HEX
	db 1, CURSE
	db 1, LEECH_LIFE
	db 30, SHADOW_BALL
	db 34, WILL_O_WISP
	db 38, DARK_PULSE
	db 45, PSYCHIC_M
	db 0 ; no more level-up moves

FroslassEvosAttacks:
	db 0 ; no more Evolutions
	db 1, BITE
	db 1, ICE_SHARD
	db 1, HEX
	db 1, HAIL
	db 29, DRAIN_KISS
	db 32, ICY_WIND
	db 35, SPIKES
	db 40, ICE_BEAM
	db 45, SHADOW_BALL
	db 50, BLIZZARD
	db 0 ; no more level-up moves
	
RotomEvosAttacks:
	db 0 ; no more Evolutions
	db 1, THUNDERSHOCK
	db 1, CONFUSE_RAY
	db 15, VOLT_SWITCH
	db 22, HEX
	db 27, THUNDER_WAVE
	db 30, THUNDERBOLT
	db 34, SHADOW_BALL
	db 43, THUNDER
	db 50, SUBSTITUTE
	db 0 ; no more level-up moves
	
HavaluggEvosAttacks:
	db 0 ; no more Evolutions
	db 1, BITE
	db 1, CURSE
	db 1, ICE_SHARD
	db 1, ROCK_THROW
	db 37, ICY_WIND
	db 40, ICICLE_CRASH
	db 43, ROCK_SLIDE
	db 46, CRUNCH
	db 51, EARTHQUAKE
	db 55, MIRROR_COAT
	db 0 ; no more level-up moves

BasculegionEvosAttacks:
	db 0 ; no more evolutions
	db 1, AQUA_JET
	db 1, SHADOW_BALL
	db 1, CRUNCH
	db 1, AQUA_TAIL
	db 46, ZEN_HEADBUTT
	db 50, DOUBLE_EDGE
	db 55, OUTRAGE
	db 0 ; no more level-up moves
	
HbraviaryEvosAttacks:;lv 45
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, NIGHT_SLASH
	db 1, PSYBEAM
	db 1, AIR_SLASH
	db 46, ROOST
	db 36, BRAVE_BIRD
	db 44, PSYCHIC_M
	db 50, HURRICANE
	db 55, AGILITY
	db 0 ; no more level-up moves

KirliaEvosAttacks:
	db EVOLVE_LEVEL, 30, GARDEVOIR
	db EVOLVE_ITEM, SHINY_STONE, GALLADE
	db 0 ; no more Evolutions
	db 1, CONFUSION
	db 1, DRAIN_KISS
	db 18, HYPNOSIS
	db 25, CALM_MIND
	db 30, PSYCHIC_M
	db 35, FUTURE_SIGHT
	db 40, ENCORE
	db 45, ENERGY_BALL
	db 0 ; no more levelups

GardevoirEvosAttacks:
	db 0 ; no more Evolutions
	db 1, CONFUSION
	db 1, DRAIN_KISS
	db 18, HYPNOSIS
	db 25, CALM_MIND
	db 30, PSYCHIC_M
	db 35, FUTURE_SIGHT
	db 40, MOONBLAST
	db 45, ENERGY_BALL
	db 50, DREAM_EATER
	db 55, CHARM
	db 0 ; no more levelups

GalladeEvosAttacks:
	db 0 ; no more Evolutions
	db 1, CONFUSION
	db 1, DRAIN_KISS
	db 18, HYPNOSIS
	db 25, CALM_MIND
	db 30, PSYCHIC_M
	db 35, SWORDS_DANCE
	db 40, ZEN_HEADBUTT
	db 45, SEED_BOMB
	db 50, DRAIN_PUNCH
	db 55, AGILITY
	db 0 ; no more levelups

HsliggooEvosAttacks:
	db EVOLVE_LEVEL, 50, H__GOODRA
	db 0 ; no more Evolutions
	db 1, WATER_PULSE
	db 1, PROTECT
	db 1, IRON_HEAD
	db 1, DRAGON_PULSE
	db 40, SCALD
	db 43, CURSE
	db 46, IRON_TAIL
	db 51, HYDRO_PUMP
	db 53, OUTRAGE
	db 55, SLUDGE_BOMB
	db 0 ; no more level-up moves

HgoodraEvosAttacks:
	db 0 ; no more Evolutions
	db 1, WATER_PULSE
	db 1, PROTECT
	db 1, IRON_HEAD
	db 1, DRAGON_PULSE
	db 40, SCALD
	db 43, CURSE
	db 46, IRON_TAIL
	db 52, HYDRO_PUMP
	db 56, OUTRAGE
	db 60, SLUDGE_BOMB
	db 0 ; no more level-up moves
	

HzoroarkEvosAttacks: ; fought at Lv 30 
	db 0 ; no more Evolutions
	db 1, SHADOW_CLAW
	db 1, SLASH
	db 1, SUBSTITUTE
	db 1, TRANSFORM
	db 45, SHADOW_BALL
	db 50, NASTY_PLOT
	db 55, EXTRASENSORY
	db 60, AGILITY
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 25, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, AQUA_JET ; Twister → egg move
	db 15, HEADBUTT
	db 21, DRAGON_RAGE ; Slam → tutor move
	db 25, AGILITY
	db 31, DRAGONBREATH ; Dragon Tail → GSC TM move
	db 35, AQUA_TAIL
	db 41, BARRIER ; Dragon Rush → event move
	db 45, SAFEGUARD
	db 51, DRAGON_DANCE
	db 55, OUTRAGE
	db 61, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, AQUA_JET ; Twister → egg move
	db 15, DRAGON_RAGE
	db 21, HEADBUTT ; Slam → tutor move
	db 25, AGILITY
	db 33, DRAGONBREATH ; Dragon Tail → GSC TM move
	db 39, AQUA_TAIL
	db 47, BARRIER ; Dragon Rush → event move
	db 53, SAFEGUARD
	db 61, DRAGON_DANCE
	db 67, OUTRAGE
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, HURRICANE
	db 1, CLOSE_COMBAT
	db 1, FIRE_PUNCH
	db 1, THUNDERPUNCH
	db 1, ROOST
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, WING_ATTACK ; evolution move
	db 5, THUNDER_WAVE
	db 11, AQUA_JET ; Twister → egg move
	db 15, DRAGON_RAGE
	db 21, HEADBUTT ; Slam → tutor move
	db 25, AGILITY
	db 33, DRAGONBREATH ; Dragon Tail → GSC TM move
	db 39, AQUA_TAIL
	db 47, BARRIER ; Dragon Rush → event move
	db 53, SAFEGUARD
	db 61, DRAGON_DANCE
	db 67, OUTRAGE
	db 75, HYPER_BEAM
	db 81, HURRICANE
	db 0 ; no more level-up moves
	
LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, DIG 
	db 1, BITE
	db 10, SCREECH
	db 16, RAGE ; Chip Away → event move
	db 19, SANDSTORM
	db 21, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 32, DARK_PULSE
	db 37, ANCIENTPOWER ; Payback → HGSS tutor move
	db 41, CRUNCH
	db 46, EARTHQUAKE
	db 50, STONE_EDGE
	db 55, OUTRAGE ; Hyper Beam → HGSS tutor move
	db 61, HYPER_BEAM
	db 68, CLOSE_COMBAT ; new move
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL ; evolution move
	db 1, TACKLE ; Sw/Sh move
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, RAGE ; Chip Away → event move
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 34, DARK_PULSE
	db 41, ANCIENTPOWER ; Payback → HGSS tutor move
	db 47, CRUNCH
	db 54, EARTHQUAKE
	db 60, STONE_EDGE
	db 67, OUTRAGE ; Hyper Beam → HGSS tutor move
	db 75, HYPER_BEAM
	db 84, CLOSE_COMBAT ; new move
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, STOMP ; evolution move
	db 1, LOW_KICK ; HGSS tutor move
	db 1, DRAGONBREATH ; GSC TM move
	db 1, TACKLE ; Sw/Sh move
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, RAGE ; Chip Away → event move
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 34, DARK_PULSE
	db 41, ANCIENTPOWER ; Payback → HGSS tutor move
	db 47, CRUNCH
	db 54, EARTHQUAKE
	db 63, STONE_EDGE
	db 73, OUTRAGE ; Hyper Beam → HGSS tutor move
	db 82, HYPER_BEAM
	db 92, CLOSE_COMBAT ; new move
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, THUNDERSHOCK
	db 15, ROAR
	db 22, QUICK_ATTACK
	db 29, SPARK
	db 36, REFLECT
	db 43, CRUNCH
	db 50, WILD_CHARGE ; Thunder Fang → TM move
	db 57, EXTREMESPEED ; Discharge → event move
	db 64, EXTRASENSORY
	db 71, RAIN_DANCE
	db 78, CALM_MIND
	db 85, AURA_SPHERE ; Thunder → event move
	db 92, THUNDER
	db 99, HIDDEN_POWER ; TM move
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, EMBER
	db 15, ROAR
	db 22, FIRE_SPIN
	db 29, STOMP
	db 36, FLAMETHROWER
	db 43, SWAGGER
	db 50, FLAME_CHARGE ; Fire Fang → TM move
	db 57, EXTREMESPEED ; Lava Plume → event move
	db 64, EXTRASENSORY
	db 71, FIRE_BLAST
	db 78, CALM_MIND
	db 85, FLARE_BLITZ ; Eruption → event move
	db 92, SACRED_FIRE
	db 99, HIDDEN_POWER ; TM move
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, BUBBLE_BEAM
	db 15, RAIN_DANCE
	db 22, GUST
	db 29, AURORA_BEAM
	db 36, LIGHT_SCREEN ; Mist → new move
	db 43, MIRROR_COAT
	db 50, AIR_SLASH ; Ice Fang → event move
	db 57, EXTREMESPEED ; Tailwind → event move
	db 64, EXTRASENSORY
	db 71, HYDRO_PUMP
	db 78, CALM_MIND
	db 85, HYPER_BEAM ; Blizzard → TM move
	db 92, BLIZZARD
	db 99, HIDDEN_POWER ; TM move
	db 0 ; no more level-up moves

HeatranEvosAttacks: ;encounter at lv 50
	db 0 ; no more Evolutions
	db 1, CRUNCH
	db 1, METAL_CLAW
	db 1, FLASH_CANNON
	db 1, MAGMA_STORM
	db 1, ANCIENTPOWER
	db 1, EARTH_POWER
	db 55, FIRE_BLAST
	db 60, FLASH_CANNON

LugiaEvosAttacks: ;ENCOUUNTER AT LEVEL 40
	db 0 ; no more evolutions
	db 1, ROAR ; Whirlwind → similar move
	db 1, GUST
	db 5, DRAGONBREATH ; Dragon Rush → GSC TM move
	db 10, EXTRASENSORY
	db 15, RAIN_DANCE
	db 20, HYDRO_PUMP
	db 25, DRAGON_PULSE ; Aeroblast → TM move
	db 30, AEROBLAST ; Punishment → Aeroblast
	db 35, ANCIENTPOWER
	db 40, WHIRLPOOL
	db 45, RECOVER
	db 50, FUTURE_SIGHT
	db 55, REFLECT ; Natural Gift → TM move
	db 60, CALM_MIND
	db 65, HURRICANE ; Sky Attack → new move
	db 0 ; no more level-up moves

HoOhEvosAttacks: ;ENCOUUNTER AT LEVEL 50
	db 0 ; no more evolutions
	db 1, ROAR ; Whirlwind → similar move
	db 1, GUST
	db 5, DRAGONBREATH ; Brave Bird → GSC TM move
	db 10, EXTRASENSORY
	db 15, SUNNY_DAY
	db 20, FIRE_BLAST
	db 25, SOLAR_BEAM ; Sacred Fire → Solar Beam
	db 30, LIGHT_SCREEN ; Punishment → Sacred Fire
	db 35, ANCIENTPOWER
	db 40, SAFEGUARD
	db 45, RECOVER
	db 50, SACRED_FIRE
	db 55, FUTURE_SIGHT
	db 60, CALM_MIND
	db 65, BRAVE_BIRD ; Sky Attack → Brave Bird
	db 0 ; no more level-up moves

CelebiEvosAttacks: ;ENCOUNTER AT LEVEL 50
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 50, ENERGY_BALL 
	db 50, LEECH_SEED
	db 50, ANCIENTPOWER
	db 50, PSYCHIC_M 
	db 53, FUTURE_SIGHT
	db 56, NASTY_PLOT
	db 59, RECOVER
	db 60, PERISH_SONG
	db 0 ; no more level-up moves

EggEvosAttacks::
	db 0 ; no more evolutions
	db 0 ; no more level-up moves
