Marts: 
	table_width 2, Marts
	dw CherrygroveMart ; unused MART_CHERRYGROVE
	dw BattleTowerMart4 ; unused MART_CHERRYGROVE_DEX
	dw VioletMart ; MART_VIOLET
	dw AzaleaMart ; MART_AZALEA
	dw Goldenrod2FMart1 ; MART_GOLDENROD_2F_1
	dw Goldenrod2FMart2 ; MART_GOLDENROD_2F_2
	dw BattleTowerMart5 ; MART_GOLDENROD_2F_2_EEVEE
	dw Goldenrod3FMart ; MART_GOLDENROD_3F
	dw Goldenrod4FMart ; MART_GOLDENROD_4F
	dw Goldenrod5FTMMart ; MART_GOLDENROD_5F_TM
	dw GoldenrodBallsMart ; MART_GOLDENROD_HARBOR
	dw UndergroundMart ; MART_UNDERGROUND
	dw EcruteakMart ; MART_ECRUTEAK
	dw OlivineMart ; MART_OLIVINE
	dw WesternCapitalMonMart ; MART_WESTERN_CAPITAL_MON
	dw WesternCapitalPrepMart ; MART_WESTERN_CAPITAL_PREP
	dw MahoganyMart1 ; unused MART_MAHOGANY_1
	dw MahoganyMart2 ; MART_MAHOGANY_2
	dw BlackthornMart ; unused MART_BLACKTHORN
	dw TradersLandingMart ; MART_TRADERS_LANDING
	dw AnarresMart ; MART_ANARRES
	dw GauldenrodMart1 ; MART_GAULDENROD_1
	dw GauldenrodMart2 ; BERRIES ; MART_GAULDENROD_2
	dw GauldenrodMart3 ; TMS  ; MART_GAULDENROD_3
	dw WesternCapitalMart
	dw WesternCapitalMart_TM
	dw TradersLandingMart_TM
	dw TradersLandingMart_Items
	dw SinjohCrossroadsMart
	dw EerieHamletMart
	dw WesternCapitalMart2
	dw Celadon5FMart2 ; unused
	dw EcruteakBattleMart
	dw OlivineBattleMart
	dw SinjohCrossroadsMonMart ; unused
	dw GauldenrodTMMart ; unused
	dw ShamoutiMart2 ; unused
	dw BattleTowerMart1 
	dw BattleTowerMart2 
	dw BattleTowerMart3 
	assert_table_length NUM_MARTS

CherrygroveMart:; UNUSED
	db 1 ; # items
	db POTION
	db -1

	
BlackthornMart:; UNUSED
	db 1 ; # items
	db POTION
	db -1

VioletMart:
	db 7 ; # items
	db MAX_REPEL
	db SUPER_POTION
	db HYPER_POTION
	db GREAT_BALL
	db FULL_HEAL
	db SILVER_LEAF
	db REVIVE
	db -1

AzaleaMart: ;
	db 9 ; # items
	db RARE_CANDY
	db MAX_REPEL
	db POTION
	db POKE_BALL
	db NET_BALL
	db ESCAPE_ROPE
	db ANTIDOTE
	db SMOKE_BALL
	db SILVER_LEAF
	db -1

Goldenrod2FMart1:
	db 9 ; # items
	db MAX_REPEL
	db SUPER_POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db FULL_HEAL
	db REVIVE
	db -1

Goldenrod2FMart2:
	db 9 ; # items
	db POKE_BALL
	db LUXURY_BALL
	db TIMER_BALL
	db QUICK_BALL
	db ESCAPE_ROPE
	db REPEAT_BALL
	db NET_BALL
	db HEAL_BALL
	db DREAM_BALL
	db -1



Goldenrod3FMart:
Celadon5FMart2:
	db 10  
	db MOON_STONE

	db FIRE_STONE
	db WATER_STONE
	db THUNDERSTONE
	db LEAF_STONE

	db SUN_STONE
	db ICE_STONE
	db DUSK_STONE
	db SHINY_STONE
	db DAWN_STONE
	db -1

Goldenrod4FMart:
Celadon5FMart1:
	db 7 ; # items
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db ZINC
	db HP_UP
	db ABILITY_CAP
	db -1

Goldenrod5FTMMart:
	db 8 ; # items
	dbw TM_PROTECT,       10000
	dbw TM_REFLECT,       10000
	dbw TM_LIGHT_SCREEN,  10000
	dbw TM_SOLAR_BEAM,    25000
	dbw TM_THUNDER,       30000
	dbw TM_FIRE_BLAST,    30000
	dbw TM_BLIZZARD,      30000
	dbw TM_HYPER_BEAM,    50000
	db -1

GoldenrodBallsMart: 
	db 7 ; # items
	db REPEAT_BALL
	db NET_BALL
	db LUXURY_BALL
	db HEAL_BALL
	db QUICK_BALL
	db DUSK_BALL
	db DREAM_BALL
	db -1

UndergroundMart:
	db 7 ; # items
	db MACHO_BRACE
	db POWER_WEIGHT
	db POWER_BRACER
	db POWER_BELT
	db POWER_LENS
	db POWER_BAND
	db POWER_ANKLET
	db -1

EcruteakMart:
	db 7 ; # items
	db MAX_REPEL
	db GREAT_BALL
	db DUSK_BALL
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db -1

OlivineMart:
	db 8 ; # items
	db MAX_REPEL
	db ULTRA_BALL
	db DIVE_BALL
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db ABILITY_CAP 
	db REVIVE
	db -1

WesternCapitalMonMart: ; in the dance theatre
	db 8 ; # items
	db PROTECTOR
	db ELECTIRIZER
	db MAGMARIZER
	db RAZOR_FANG
	db RAZOR_CLAW
	db METAL_COAT
	db KINGS_ROCK 
	db DRAGON_SCALE
	db -1

WesternCapitalPrepMart:
	db 5 ; # items
	db FULL_RESTORE
	db FULL_HEAL
	db REVIVE
	db ULTRA_BALL
	db MAX_ELIXIR
	db -1

MahoganyMart1:
	db 1 ; # items
	db POTION
	db -1

WesternCapitalMart:
	db 6 ; # items
	db MAX_REPEL
	db GREAT_BALL
	db QUICK_BALL
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db -1


WesternCapitalMart_TM: ; unused 
	db 1 ; # items
	db RARE_CANDY
	db -1

TradersLandingMart_TM:
	db 3 ; # items
	dbw TM_FLAMETHROWER,  20000
	dbw TM_ICE_BEAM,      20000
	dbw TM_THUNDERBOLT,   20000
	db -1
	
AnarresMart:
	db 8 ; # items
	db MAX_REPEL
	db ORAN_BERRY 
	db CHERI_BERRY
	db CHESTO_BERRY
	db PECHA_BERRY
	db HEAL_POWDER
	db REVIVAL_HERB
	db WHITE_HERB
	db -1

GauldenrodMart1: ; normal items
	db 7 ; # items
	db MAX_REPEL
	db POKE_BALL
	db ESCAPE_ROPE
	db SUPER_POTION
	db HEAL_POWDER
	db ENERGYPOWDER
	db REVIVAL_HERB
	db -1
	
GauldenrodMart2: ; berries
	db 7 ; # items
	db CHERI_BERRY
	db CHESTO_BERRY
	db PECHA_BERRY
	db LEPPA_BERRY
	db RAWST_BERRY
	db ASPEAR_BERRY
	db PERSIM_BERRY
	db -1

GauldenrodMart3: ; TMs, HMs
	db 5 ; # items
	dbw TM_THUNDER_WAVE,  10000
	dbw TM_SUNNY_DAY,     20000
	dbw TM_RAIN_DANCE,    20000
	dbw TM_SANDSTORM,     20000
	dbw TM_HAIL,          20000
	db -1

TradersLandingMart:
TradersLandingMart_Items:
	db 10 ; # items
	db MAX_REPEL
	db HYPER_POTION
	db GREAT_BALL
	db HEAL_BALL
	db FULL_HEAL
	db X_ATTACK
	db X_SPEED
	db X_DEFEND
	db X_SPCL_ATK
	db X_SPCL_DEF
	db -1


SinjohCrossroadsMart:
	db 6 ; # items
	db MAX_REPEL
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db ODD_SOUVENIR
	db ULTRA_BALL
	db -1

EerieHamletMart:
	db 11 ; # items
	db MAX_REPEL
	db REVIVAL_HERB
	db ENERGYPOWDER
	db HEAL_POWDER
	db JEZE_BALL
	db BUB_BALL
	db DECI_BALL
	db HERB_BALL
	db FAST_BALL
	db GEODE
	db LOVE_BALL
	db -1

WesternCapitalMart2:
	db 6 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db QUICK_BALL
	db TIMER_BALL
	db ESCAPE_ROPE
	db -1

Celadon3FTMMart:
	db 8 ; # items
	dbw TM_SAFEGUARD,     10000
	dbw TM_BULK_UP,       20000
	dbw TM_CALM_MIND,     20000
	dbw TM_SWORDS_DANCE,  20000
	dbw TM_SUNNY_DAY,     40000
	dbw TM_RAIN_DANCE,    40000
	dbw TM_SANDSTORM,     40000
	dbw TM_HAIL,          40000
	db -1

MahoganyMart2:
	db 9 ; # items
	db MAX_REPEL
	db HYPER_POTION
	db FULL_HEAL
	db FIRE_STONE
	db WATER_STONE
	db THUNDERSTONE
	db LEAF_STONE
	db ICE_STONE
	db ODD_SOUVENIR
	db -1

EcruteakBattleMart: ; SHRINE AREA 
	db 11 ; # items
	db EJECT_BUTTON
	db LAGGING_TAIL
	db IRON_BALL
	db RING_TARGET
	db RED_CARD
	db ABSORB_BULB
	db CELL_BATTERY
	db SNOWBALL
	db EJECT_PACK
	db FOCUS_BAND
	db FOCUS_SASH
	db -1

OlivineBattleMart:
	db 10 ; # items
	db HEAVY_BOOTS
	db UTILUMBRELLA
	db MENTAL_HERB
	db POWER_HERB
	db DAMP_ROCK
	db HEAT_ROCK 
	db SMOOTH_ROCK
	db ICY_ROCK
	db FLAME_ORB
	db TOXIC_ORB
	db -1

SinjohCrossroadsMonMart: ; unused 
	db 1 ; # items
	db RARE_CANDY
	db -1

GauldenrodTMMart: ; remove? 
	db 1 ; # items
	db POWER_HERB
	db -1

ShamoutiMart2:
	db 6 ; # items
	db DAMP_ROCK
	db HEAT_ROCK
	db SMOOTH_ROCK
	db ICY_ROCK
	db LIGHT_CLAY
	db EVIOLITE
	db -1

BattleTowerMart1:
	db 9 ; # items
	db CHOICE_BAND
	db CHOICE_SCARF
	db CHOICE_SPECS
	db EXPERT_BELT
	db MUSCLE_BAND
	db WISE_GLASSES
	db BINDING_BAND
	db QUICK_CLAW
	db LEFTOVERS
	db -1

BattleTowerMart2:
	db 10 ; # items
	db LUM_BERRY
	db SITRUS_BERRY
	db CHESTO_BERRY
	db PERSIM_BERRY
	db AIR_BALLOON
	db FOCUS_SASH
	db WEAK_POLICY
	db WHITE_HERB
	db POWER_HERB
	db FOCUS_BAND
	db -1

BattleTowerMart3:
	db 9 ; # items
	db BLACK_SLUDGE
	db LIFE_ORB
	db FLAME_ORB
	db TOXIC_ORB
	db ASSAULT_VEST
	db LIGHT_CLAY
	db PROTECT_PADS
	db ROCKY_HELMET
	db SAFE_GOGGLES
	db -1

BattleTowerMart4: 
	db 12 ; # items
	db QUICK_CLAW
	db KINGS_ROCK
	db WIDE_LENS
	db ZOOM_LENS
	db SCOPE_LENS
	db THICK_CLUB
	db BIG_ROOT
	db LAGGING_TAIL
	db ABSORB_BULB
	db CELL_BATTERY
	db LUMINOUSMOSS
	db SNOWBALL
	db -1
	
BattleTowerMart5:  
	db 11 ; # items
	db RARE_CANDY
	db ULTRA_BALL
	db ABILITYPATCH
	db ABILITY_CAP
	db PP_MAX
	db EVIOLITE
	db EJECT_PACK
	db ROOM_SERVICE
	db BLUNDRPOLICY
	db THROAT_SPRAY
	db UTILUMBRELLA
	db -1
	