; Landmarks indexes (see data/maps/landmarks.asm)
	const_def
	const SPECIAL_MAP        ; 00
; Johto landmarks. updated 04.01.24
	const AZALEA_TOWN        ; 07
	const VIOLET_CITY        ; 01
	const SPROUT_TOWER       ; 02
	const RUINS_OF_ALPH      ; 03
	const ROUTE_32           ; 04
	const UNION_CAVE         ; 05
	const ROUTE_33           ; 06
	const TINDER_GARDEN		 ; 08
	const SLOWPOKE_WELL      ; 09
	const ILEX_FOREST        ; 10
	const ROUTE_34           ; 11
	const GOLDENROD_CITY     ; 12
	const RADIO_TOWER        ; 13
	const ROUTE_35           ; 14
	const ROUTE_KAJO		 ; 15
	const NATIONAL_PARK      ; 16
	const ROUTE_36           ; 17
	const ROUTE_37           ; 18
	const ECRUTEAK_CITY      ; 19
	const BELLCHIME_TRAIL    ; 20
	const TIN_TOWER          ; 21
	const BURNED_TOWER       ; 22
	const ROUTE_38           ; 23
	const ROUTE_39           ; 24
	const OLIVINE_CITY       ; 25
	const LIGHTHOUSE         ; 26
	const ROUTE_40           ; 27
	const WHIRL_ISLANDS      ; 28
	const ROUTE_41           ; 29
	const CIANWOOD_CITY      ; 30
	const ROUTE_42           ; 31
	const MT_MORTAR          ; 32
	const MAHOGANY_TOWN      ; 33
	const ROUTE_43           ; 34
	const LAKE_OF_RAGE       ; 35
KANTO_LANDMARK EQU const_value ;old johto updated 04.01.24
	const HOLLYS_HOLT
	const ANARRES_TOWN
	const ANARRES_TOWER
	const MISTY_BASIN ;WELL
	const CALM_COAST ;ROUTE 34
	const GAULDENROD
	const GAULDENROD_TOWER
	const SHIMMER_SADDLE 
	const SERENE_SPRINGS ;ROUTE 35
	const STADIUM_GROUNDS
	const STADIUM
	const EMPERORS_GARDEN
	const WESTERN_CAPITAL
	const HISUI_TOWER
	const BRASS_TOWER
	const CATTLE_CULL ;ROUTE 38 AND 39
	const TRADERS_LANDING ;OLIVINE
	const CIANWOOD_COVE
	const SHELTERED_SHORES ;ROUTE 41
	const PHANTOM_FJORD ;CAVE ON ROUTE 40
	const SEAFLUX_NEXUS ;WHIRL ISLANDS INTERIOR
	const ARDUOUS_ANCHORAGE ;ROUTE 40
	const LANDING_DOCKS ;OLIVINE PORT
	const TRANQUIL_TARN ;LAKE OF RAGE
	const GROTTOED_GLACIER ;NORTH OF TARN
	const ENIGMA_GLACIER ;WEST OF GG
	const SINJOH_CAMP ;NORTH OF TARN
	const EMPIRES_EXTENT ;ROUTE 43
	const EERIE_HAMLET ;MAHOGANY
	const REBELS_REDOUBT ;ROCKET HIDEOUT
	const SULFUR_STY ;ROUTE 42
	const CLASTS_CRADLE ;MT MORTAR
	const TIMELESS_TAPESTRY
SHAMOUTI_LANDMARK EQU const_value
	const SHAMOUTI_ISLAND    ; 81 dummy 
NUM_LANDMARKS EQU const_value

; used in CaughtData
LANDMARK_EVENT EQU $ff

; Regions
	const_def
	const JOHTO_REGION  ; 0
	const KANTO_REGION  ; 1
	const ORANGE_REGION ; 2
NUM_REGIONS EQU const_value

