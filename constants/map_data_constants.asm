GROUP_N_A  EQU -1
MAP_N_A    EQU -1
GROUP_NONE EQU 0
MAP_NONE   EQU 0

; map struct members (see data/maps/maps.asm)
rsreset
MAP_MAPATTRIBUTES_BANK rb ; 0
MAP_TILESET            rb ; 1
MAP_ENVIRONMENT        rb ; 2
MAP_MAPATTRIBUTES      rw ; 3
MAP_LOCATION           rb ; 5
MAP_MUSIC              rb ; 6
MAP_PALETTE            rb ; 7
MAP_FISHGROUP          rb ; 8
MAP_LENGTH EQU _RS

; map environments (wEnvironment)
; EnvironmentColorsPointers indexes (see data/maps/environment_colors.asm)
	const_def 1
	const TOWN
	const ROUTE
	const INDOOR
	const CAVE
	const ISOLATED
	const GATE
	const DUNGEON
NUM_ENVIRONMENTS EQU const_value - 1

; map palettes (wEnvironment)
	const_def
	const PALETTE_AUTO
	const PALETTE_DAY
	const PALETTE_NITE
	const PALETTE_MORN
	const PALETTE_EVE
NUM_MAP_PALETTES EQU const_value

IN_DARKNESS EQU %1000
DARKNESS_PALSET EQU %00011011 ; brightlevel 0, 1, 2, 3

; FishGroup indexes (see data/wild/fish.asm)
	const_def
	const FISHGROUP_NONE
	const FISHGROUP_SHORE
	const FISHGROUP_OCEAN
	const FISHGROUP_LAKE
	const FISHGROUP_POND
	const FISHGROUP_DRATINI
	const FISHGROUP_QWILFISH_SWARM
	const FISHGROUP_REMORAID_SWARM
	const FISHGROUP_GYARADOS
	const FISHGROUP_DRATINI_2 ; polluted
	const FISHGROUP_WHIRL_ISLANDS
	const FISHGROUP_QWILFISH
	const FISHGROUP_REMORAID
	const FISHGROUP_QWILFISH_NO_SWARM
NUM_FISHGROUPS EQU const_value - 1

; wMapConnections
; connection directions (see data/maps/data.asm)
	const_def
	shift_const EAST
	shift_const WEST
	shift_const SOUTH
	shift_const NORTH

; GetOvercastIndex return values (see home/map.asm)
	const_def
	const NOT_OVERCAST
	const AZALEA_OVERCAST ; HM, WOULD BE NICE TO STOP THIS FROM BEING OVERCAST
	const LAKE_OF_RAGE_OVERCAST
	const STORMY_BEACH_OVERCAST

; SpawnPoints indexes (see data/maps/spawn_points.asm)
	const_def
	const SPAWN_KURTS_HOUSE
; kanto
	const SPAWN_ANARRES
	const SPAWN_GAULDENROD
	const SPAWN_WESTERN_CAPITAL
	const SPAWN_TRADERS_LANDING
	const SPAWN_SHELTERED_SHORES
	const SPAWN_CIANWOOD_COVE
	const SPAWN_TRANQUIL_TARN
	const SPAWN_EERIE_HAMLET
	const SPAWN_SULFUR_STY
	const SPAWN_TIMELESS_TAPESTRY
; johto
	const SPAWN_AZALEA       ; 11 - matches AZALEA_TOWN
	const SPAWN_GOLDENROD    ; 12 - matches GOLDENROD_CITY
	const SPAWN_VIOLET       ; 13 - matches VIOLET_CITY
	const SPAWN_UNION_CAVE   ; 14 - matches ROUTE_32
	const SPAWN_ECRUTEAK     ; 15 - matches ECRUTEAK_CITY
	const SPAWN_CIANWOOD     ; 16 - matches CIANWOOD_CITY
	const SPAWN_OLIVINE      ; 17 - matches OLIVINE_CITY
	const SPAWN_MAHOGANY     ; 18 - matches MAHOGANY_TOWN
	const SPAWN_LAKE_OF_RAGE ; 19 - matches LAKE_OF_RAGE
NUM_SPAWNS EQU const_value


SPAWN_N_A EQU -1

; and polished's map_data_constants are below: 
; SpawnPoints indexes (see data/maps/spawn_points.asm)
;	const_def
;	const SPAWN_HOME
; kanto
;	const SPAWN_PALLET
;	const SPAWN_VIRIDIAN
;	const SPAWN_PEWTER
;	const SPAWN_MT_MOON
;	const SPAWN_CERULEAN
;	const SPAWN_CERULEAN_CAPE
;	const SPAWN_ROCK_TUNNEL
;	const SPAWN_VERMILION
;	const SPAWN_LAVENDER
;	const SPAWN_SAFFRON
;	const SPAWN_CELADON
;	const SPAWN_FUCHSIA
;	const SPAWN_CINNABAR
;	const SPAWN_INDIGO
; johto
;	const SPAWN_NEW_BARK
;	const SPAWN_CHERRYGROVE
;	const SPAWN_VIOLET
;	const SPAWN_UNION_CAVE
;	const SPAWN_AZALEA
;	const SPAWN_CIANWOOD
;	const SPAWN_GOLDENROD
;	const SPAWN_OLIVINE
;	const SPAWN_ECRUTEAK
;	const SPAWN_MAHOGANY
;	const SPAWN_YELLOW_FOREST
;	const SPAWN_LAKE_OF_RAGE
;	const SPAWN_BLACKTHORN
;	const SPAWN_MT_SILVER
;	const SPAWN_FAST_SHIP
;NUM_SPAWNS EQU const_value

; Flypoints indexes (see data/maps/flypoints.asm)
	const_def
; johto
JOHTO_FLYPOINT EQU const_value
	const FLY_AZALEA
	const FLY_GOLDENROD
	const FLY_VIOLET
	const FLY_UNION_CAVE
	const FLY_ECRUTEAK
	const FLY_CIANWOOD
	const FLY_OLIVINE
	const FLY_MAHOGANY
	const FLY_LAKE_OF_RAGE
; historic johto
KANTO_FLYPOINT EQU const_value
	const FLY_ANARRES
	const FLY_GAULDENROD
	const FLY_WESTERN_CAPITAL
	const FLY_TRADERS_LANDING
	const FLY_SHELTERED_SHORES
	const FLY_CIANWOOD_COVE
	const FLY_TRANQUIL_TARN
	const FLY_EERIE_HAMLET
	const FLY_SULFUR_STY
	const FLY_TIMELESS_TAPESTRY
NUM_FLYPOINTS EQU const_value
