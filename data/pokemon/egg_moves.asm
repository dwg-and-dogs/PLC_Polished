INCLUDE "constants.asm" ; no change 


SECTION "Egg Moves", ROMX

INCLUDE "data/pokemon/egg_move_pointers.asm"

EggMoves::

SnorlaxEggMoves:
	db CHARM
	db COUNTER
	db CURSE
	db DOUBLE_EDGE
	db LICK
	db GUNK_SHOT
	db $ff


MarillEggMoves:
	db BELLY_DRUM
	db FORESIGHT
	db FUTURE_SIGHT
	db PERISH_SONG
	db SUPERSONIC
	db LIGHT_SCREEN
	db AMNESIA
	db CALM_MIND
	db AQUA_JET
	db $ff

NidoranEggMoves:
	db AMNESIA
	db CONFUSION
	db CALM_MIND
	db COUNTER
	db CHARM
	db DISABLE
	db FOCUS_ENERGY
	db PURSUIT
	db TAKE_DOWN
	db $ff

ClefairyEggMoves:
	db CALM_MIND
	db BELLY_DRUM
	db METRONOME
	db AMNESIA
	db SPLASH ; requires Hoppip
	db FRESH_SNACK
	db $ff
	
AipomEggMoves:
	db COUNTER
	db PURSUIT
	db $ff

VulpixEggMoves:
	db FLAME_CHARGE
	db DISABLE
	db FLARE_BLITZ
	db HYPNOSIS
	db FEINT_ATTACK
	db EXTRASENSORY
	db CHARM
	db ENERGY_BALL
	db ROAR
	db $ff

VulpixAlolanEggMoves:
	db DISABLE
	db BLIZZARD
	db HYPNOSIS
	db FEINT_ATTACK
	db EXTRASENSORY
	db CHARM
	db ICE_BEAM
	db ROAR
	db $ff

JigglypuffEggMoves:
	db FEINT_ATTACK
	db PERISH_SONG
	db MOONBLAST
	db $ff

ZubatEggMoves:
	db FEINT_ATTACK
	db GUST
	db HYPNOSIS
	db NASTY_PLOT
	db PURSUIT
	db QUICK_ATTACK
	db ZEN_HEADBUTT
	db BRAVE_BIRD
	db $ff

OddishEggMoves:
	db CHARM
	db RAZOR_LEAF
	db HEALINGLIGHT
	db SWORDS_DANCE
	db $ff

ParasEggMoves:
	db AGILITY
	db LEECH_SEED
	db METAL_CLAW
	db PSYBEAM
	db PURSUIT
	db SCREECH
	db SHADOW_CLAW
	db $ff

MankeyEggMoves:
	db ENCORE
	db FORESIGHT
	db BULK_UP
	db REVERSAL
	db ROCK_SLIDE
	db COUNTER
	db GUNK_SHOT
	db NIGHT_SLASH
	db CLOSE_COMBAT
	db $ff

GrowlitheHisuianEggMoves:
GrowlitheEggMoves:
	db DOUBLE_KICK
	db FIRE_SPIN
	db HEALINGLIGHT
	db THRASH
	db CRUNCH
	db FLARE_BLITZ
	db BODY_SLAM
	db SAFEGUARD
	db CLOSE_COMBAT
	db $ff

PoliwagEggMoves:
	db ENCORE
	db HAZE
	db SPLASH
	db BUBBLE_BEAM
	db WATER_PULSE
	db $ff

AbraEggMoves:
	db BARRIER
	db ENCORE
	db LIGHT_SCREEN
	db KNOCK_OFF
	db $ff

MachopEggMoves:
	db BULLET_PUNCH
	db ENCORE
	db BULK_UP
	db LIGHT_SCREEN
	db MACH_PUNCH
	db CLOSE_COMBAT
	db KNOCK_OFF
	db $ff

BellsproutEggMoves:
	db ENCORE ; requires Hoppip
	db LEECH_LIFE
	db SWORDS_DANCE
	db REFLECT
	db HEALINGLIGHT
	db POWER_WHIP
	db $ff

TentacoolEggMoves:
	db AURORA_BEAM
	db CONFUSE_RAY
	db HAZE
	db MIRROR_COAT
	db RAPID_SPIN
	db SAFEGUARD
	db KNOCK_OFF
	db $ff

GeodudeEggMoves:
GeodudeAlolanEggMoves:
	db ROCK_SLIDE
	db $ff
	
StantlerEggMoves:
	db BITE
	db DOUBLE_KICK
	db ZEN_HEADBUTT
	db RAGE
	db $ff

PonytaEggMoves:
	db CHARM
	db DOUBLE_KICK
	db HYPNOSIS
	db HEALINGLIGHT
	db THRASH
	db QUICK_ATTACK
	db EXTREMESPEED
	db PLAY_ROUGH
	db $ff

PonytaGalarianEggMoves:
	db CHARM
	db DOUBLE_KICK
	db HYPNOSIS
	db HEALINGLIGHT
	db THRASH
	db QUICK_ATTACK
	db PSYBEAM
	db PSYCHIC_M
	db EXTREMESPEED
	db PLAY_ROUGH
	db $ff

SlowpokeEggMoves:
SlowpokeGalarianEggMoves:
	db BELLY_DRUM
	db FUTURE_SIGHT
	db STOMP
	db SAFEGUARD
	db ZEN_HEADBUTT
	db $ff

HoppipEggMoves:
	db ENCORE
	db SEED_BOMB
	db $ff

GrimerEggMoves:
	db HAZE
	db LICK
	db MEAN_LOOK
	db SCARY_FACE
	db SHADOW_CLAW
	db $ff

GrimerAlolanEggMoves:
	db HAZE
	db LICK
	db MEAN_LOOK
	db SCARY_FACE
	db PURSUIT
	db $ff

GastlyEggMoves:
	db ASTONISH
	db DISABLE
	db HAZE
	db PERISH_SONG
	db SCARY_FACE
	db NASTY_PLOT
	db FEINT_ATTACK
	db $ff

OnixEggMoves:
	db DEFENSE_CURL
	db ROCK_SLIDE
	db EARTHQUAKE
	db ROCK_BLAST
	db $ff

ExeggcuteEggMoves:
	db MEGA_DRAIN
	db HEALINGLIGHT
	db ANCIENTPOWER
	db REFLECT
	db $ff

KoffingEggMoves:
	db PSYBEAM
	db SCREECH
	db DESTINY_BOND
	db PAIN_SPLIT
	db $ff

RhyhornEggMoves:
	db CRUNCH
	db MAGNITUDE
	db PURSUIT
	db REVERSAL
	db THRASH
	db ROCK_SLIDE
	db COUNTER
	db $ff

ChanseyEggMoves:
	db METRONOME
	db HEAL_BELL
	db $ff

TangelaEggMoves:
	db CONFUSION
	db AMNESIA ; requires Hoppip
	db LEECH_SEED
	db $ff

HorseaEggMoves:
	db AURORA_BEAM
	db DISABLE
	db DRAGONBREATH
	db OCTAZOOKA
	db SPLASH
	db HAZE
	db WATER_PULSE
	db $ff

TogeticEggMoves:
	db EXTRASENSORY
	db FORESIGHT
	db FUTURE_SIGHT
	db HEALINGLIGHT
	db NASTY_PLOT
	db PECK
	db $ff


ScytherEggMoves:
	db BATON_PASS
	db BUG_BUZZ
	db REVERSAL
	db COUNTER
	db SAFEGUARD
	db LIGHT_SCREEN
	db NIGHT_SLASH
	db $ff

JynxEggMoves:
	db BULK_UP
	db NASTY_PLOT
	db $ff

PinsirEggMoves:
	db FEINT_ATTACK
	db FURY_STRIKES
	db QUICK_ATTACK
	db CLOSE_COMBAT
	db $ff

EeveeEggMoves:
	db CHARM
	db $ff

DratiniEggMoves:
	db EXTREMESPEED ; requires Dragon Shrine Dratini
	db HAZE
	db SUPERSONIC
	db WATER_PULSE
	db AQUA_JET
	db $ff

ChikoritaEggMoves:
	db LEECH_SEED
	db VINE_WHIP
	db ANCIENTPOWER
	db COUNTER
	db SWORDS_DANCE
	db CHARM
	db HEAL_BELL
	db $ff

CyndaquilEggMoves:
	db DOUBLE_KICK
	db EXTRASENSORY
	db FLARE_BLITZ
	db FORESIGHT
	db FURY_STRIKES
	db REVERSAL
	db CLOSE_COMBAT
	db THRASH
	db QUICK_ATTACK
	db $ff

TotodileEggMoves:
	db DRAGON_DANCE
	db METAL_CLAW
	db CRUNCH
	db THRASH
	db HYDRO_PUMP
	db ANCIENTPOWER
	db ROCK_SLIDE
	db WATER_PULSE
	db AQUA_JET
	db $ff

SentretEggMoves:
	db CHARM
	db FOCUS_ENERGY
	db PURSUIT
	db REVERSAL
	db SLASH
	db DOUBLE_EDGE
	db TRICK
	db $ff

HoothootEggMoves:
	db AGILITY
	db FEINT_ATTACK
	db NIGHT_SHADE
	db SUPERSONIC
	db WING_ATTACK
	db BRAVE_BIRD
	db HURRICANE
	db $ff

LedybaEggMoves:
	db DIZZY_PUNCH
	db ENCORE ; requires Shuckle
	db PSYBEAM
	db SCREECH
	db LIGHT_SCREEN
	db KNOCK_OFF
	db DRAIN_PUNCH
	db $ff

SpinarakEggMoves:
	db BATON_PASS
	db DISABLE
	db MEGAHORN
	db PSYBEAM
	db PURSUIT
	db SONIC_BOOM
	db POISON_JAB
	db NIGHT_SLASH
	db TOXIC_SPIKES
	db $ff

ChinchouEggMoves:
	db AGILITY
	db HAZE
	db PSYBEAM
	db SCREECH
	db SUPERSONIC
	db WATER_PULSE
	db $ff

PikachuEggMoves:
	db DISARM_VOICE
	db DOUBLE_SLAP
	db ENCORE
	db REVERSAL
	db $ff

NatuEggMoves:
	db DRILL_PECK
	db FEINT_ATTACK
	db HAZE
	db QUICK_ATTACK
	db STEEL_WING
	db ZEN_HEADBUTT
	db ROOST
	db $ff

MareepEggMoves:
	db AGILITY
	db REFLECT
	db MUD_SLAP
	db SCREECH
	db THUNDERBOLT
	db TAKE_DOWN
	db BODY_SLAM
	db SAFEGUARD
	db $ff

SudowoodoEggMoves:
	db DEFENSE_CURL
	db EXPLOSION
	db $ff

SunkernEggMoves:
	db CURSE
	db LEECH_SEED
	db $ff

YanmaEggMoves:
	db FEINT_ATTACK
	db LEECH_LIFE
	db REVERSAL
	db $ff

WooperEggMoves:
	db COUNTER
	db DOUBLE_KICK
	db ENCORE
	db RECOVER
	db BODY_SLAM
	db ANCIENTPOWER
	db SAFEGUARD
	db $ff

MurkrowEggMoves:
	db CONFUSE_RAY
	db DRILL_PECK
	db PERISH_SONG
	db QUICK_ATTACK
	db SCREECH
	db WING_ATTACK
	db BRAVE_BIRD
	db ROOST
	db $ff

MisdreavusEggMoves:
	db DESTINY_BOND
	db NASTY_PLOT
	db SCREECH
	db $ff

GirafarigEggMoves:
	db DOUBLE_KICK
	db FORESIGHT
	db FUTURE_SIGHT
	db MEAN_LOOK
	db MIRROR_COAT
	db TAKE_DOWN
	db AMNESIA
	db CALM_MIND
	db $ff

PinecoEggMoves:
	db PIN_MISSILE
	db SWIFT
	db REFLECT
	db TOXIC_SPIKES
	db $ff

DunsparceEggMoves:
	db AGILITY
	db ASTONISH
	db BITE
	db RAGE
	db ANCIENTPOWER
	db ROCK_SLIDE
	db HEX
	db $ff

GligarEggMoves:
	db AGILITY
	db BATON_PASS
	db METAL_CLAW
	db WING_ATTACK
	db COUNTER
	db NIGHT_SLASH
	db $ff

SnubbullEggMoves:
	db FEINT_ATTACK
	db LEER
	db METRONOME
	db REFLECT
	db CRUNCH
	db HEAL_BELL
	db LICK
	db CLOSE_COMBAT
	db $ff

QwilfishHisuianEggMoves:
QwilfishEggMoves:
	db BUBBLE_BEAM
	db HAZE
	db SUPERSONIC
	db POISON_JAB
	db WATER_PULSE
	db $ff

ShuckleEggMoves:
	db ROLLOUT
	db ACID
	db KNOCK_OFF
	db MUD_SLAP
	db ROCK_BLAST
	db $ff

HeracrossEggMoves:
	db ROCK_BLAST
	db DEFENSE_CURL
	db PURSUIT
	db $ff

SneaselHisuianEggMoves:
SneaselEggMoves:
	db BITE
	db FORESIGHT
	db PURSUIT
	db COUNTER
	db REFLECT
	db ICICLE_CRASH
	db ICE_SHARD
	db $ff
	
LaprasEggMoves:
	db AURORA_BEAM
	db DRAGON_DANCE
	db FORESIGHT
	db FUTURE_SIGHT
	db HEAL_BELL
	db $ff

CorsolaGalarianEggMoves:
	db BARRIER
	db CONFUSE_RAY
	db HAZE
	db AMNESIA
	db SCREECH
	db ROCK_SLIDE
	db SAFEGUARD
	db CALM_MIND
	db WATER_PULSE
	db ICICLE_SPEAR
	db $ff

TeddiursaEggMoves:
	db BELLY_DRUM
	db CROSS_CHOP
	db CRUNCH
	db FOCUS_ENERGY
	db METAL_CLAW
	db PLAY_ROUGH
	db TAKE_DOWN
	db SEISMIC_TOSS
	db COUNTER
	db GUNK_SHOT
	db NIGHT_SLASH
	db CLOSE_COMBAT
	db $ff

SlugmaEggMoves:
	db SMOKESCREEN
	db CURSE
	db $ff

SwinubEggMoves:
	db AVALANCHE
	db BITE
	db TAKE_DOWN
	db BODY_SLAM
	db ROCK_SLIDE
	db ANCIENTPOWER
	db ICICLE_CRASH
;	db ICICLE_SPEAR ; no compatible parents 
	db $ff

CorsolaEggMoves:
	db BARRIER
	db CONFUSE_RAY
	db HAZE
	db AMNESIA
	db SCREECH
	db ROCK_SLIDE
	db SAFEGUARD
	db CALM_MIND
	db WATER_PULSE
	db ICICLE_SPEAR
	db $ff

RemoraidEggMoves:
	db SPLASH
	db HAZE
	db OCTAZOOKA
	db ROCK_BLAST
	db SCREECH
	db SUPERSONIC
	db AURORA_BEAM
	db GUNK_SHOT
	db WATER_PULSE
	db $ff

MantineEggMoves:
	db HAZE
	db MIRROR_COAT
	db SPLASH
	db HYDRO_PUMP
	db GUNK_SHOT
	db $ff

SkarmoryEggMoves:
	db DRILL_PECK
	db PURSUIT
	db BRAVE_BIRD
	db $ff

HoundourEggMoves:
	db DESTINY_BOND
	db FIRE_SPIN
	db PURSUIT
	db RAGE
	db REVERSAL
	db COUNTER
	db WILL_O_WISP
	db $ff

PhanpyEggMoves:
	db FOCUS_ENERGY
	db PLAY_ROUGH
	db WATER_GUN
	db BODY_SLAM
	db ANCIENTPOWER
	db GUNK_SHOT
	db ICE_SHARD
	db $ff

HitmontopEggMoves:
HitmonleeEggMoves:
HitmonchanEggMoves:
	db BULLET_PUNCH
	db HI_JUMP_KICK
	db MACH_PUNCH
	db PURSUIT
	db RAPID_SPIN
	db $ff

ElectabuzzEggMoves:
	db BARRIER
	db CROSS_CHOP
	db KARATE_CHOP
	db BULK_UP
	db $ff

MagmarEggMoves:
	db BARRIER
	db BELLY_DRUM
	db CROSS_CHOP
	db FLARE_BLITZ
	db FOCUS_ENERGY
	db KARATE_CHOP
	db MACH_PUNCH
	db SCREECH
	db $ff

MiltankEggMoves:
	db DIZZY_PUNCH
	db REVERSAL
	db SEISMIC_TOSS
	db $ff

LarvitarEggMoves:
	db DRAGON_DANCE
	db FOCUS_ENERGY
	db PURSUIT
	db STOMP
	db OUTRAGE
	db ANCIENTPOWER
	db IRON_HEAD
	db $ff

StarlyEggMoves:
	db FEINT_ATTACK
	db PURSUIT
	db FORESIGHT
	db AIR_SLASH
	db STEEL_WING
	db CHARM
	db EXTREMESPEED
	db BRAVE_BIRD
	db $ff

OshawottEggMoves:
	db AIR_SLASH
	db NIGHT_SLASH
	db SCREECH
	db $ff

RowletEggMoves:
	db BATON_PASS
	db HAZE
	db CONFUSE_RAY
	db KNOCK_OFF
	db ROOST
	db $ff
	
ShinxEggMoves:
	db FLAME_CHARGE
	db CHARM
	db DOUBLE_KICK
	db NIGHT_SLASH
	db QUICK_ATTACK
	db SPARK
	db TAKE_DOWN
	db $ff
	
CranidosEggMoves:
	db STOMP
	db THRASH
	db ROAR
	db KARATE_CHOP
	db $ff
	
ShieldonEggMoves:
	db BODY_SLAM
	db ROCK_BLAST
	db COUNTER
	db FOCUS_ENERGY
	db HEADBUTT
	db SCREECH
	db $ff
	
DrifloonEggMoves:
	db BODY_SLAM
	db DISABLE
	db HYPNOSIS
	db HAZE
	db $ff
	
BronzorEggMoves:
	db $ff
	
SpiritombEggMoves:
	db DESTINY_BOND
	db DISABLE
	db PAIN_SPLIT
	db SMOKESCREEN
	db $ff
	
RioluEggMoves:
	db BITE
	db AGILITY
	db BITE
	db BULLET_PUNCH
	db CROSS_CHOP
	db HI_JUMP_KICK
	db $ff
	
HippopotasEggMoves:
	db BODY_SLAM
	db RECOVER
	db CURSE
	db $ff
	
CroagunkEggMoves:
	db BULLET_PUNCH
	db COUNTER
	db CROSS_CHOP
	db HEADBUTT
	db $ff
	
SnoverEggMoves:
	db SEED_BOMB
	db DOUBLE_EDGE
	db GROWTH
	db LEECH_SEED
	db STOMP
	db $ff
	
DuskullEggMoves: 
	db PAIN_SPLIT
	db DESTINY_BOND
	db FEINT_ATTACK
	db $ff
	
SnoruntEggMoves:
	db DISABLE
	db ICICLE_CRASH
	db ROLLOUT
	db TRICK
	db SPIKES
	db $ff
	
RotomEggMoves:
	db $ff

BergmiteEggMoves:
	db MIRROR_COAT
	db HAZE
	db RECOVER
	db $ff
	
BasculinEggMoves:
	db BUBBLE_BEAM
	db AGILITY
	db RAGE
	db SWIFT
	db $ff

RuffletEggMoves:
	db $ff
	
RaltsEggMoves:
	db CONFUSE_RAY
	db DESTINY_BOND
	db DISABLE
	db MEAN_LOOK
	db WILL_O_WISP
	db $ff
	
GoomyEggMoves:
	db CURSE
	db IRON_HEAD
	db IRON_TAIL
	db POISON_JAB
	db $ff

ZoruaEggMoves:
	db CHARM
	db COUNTER
	db DARK_PULSE
	db EXTRASENSORY
	db $ff

GibleEggMoves:
	db BODY_SLAM
	db DOUBLE_EDGE
	db DRAGONBREATH
	db IRON_HEAD
	db METAL_CLAW
	db OUTRAGE
	db SCARY_FACE
	db THRASH
	db $ff


NoEggMoves:
	db $ff
