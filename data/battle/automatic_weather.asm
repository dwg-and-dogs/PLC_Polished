; AutomaticWeatherEffects indexes
	const_def 1
	const AUTOMATIC_SUN
	const AUTOMATIC_RAIN
	const AUTOMATIC_SANDSTORM

AutomaticWeatherMaps:
MACRO auto_weather_map
;\1: map id
;\2: AUTOMATIC_* weather index
	map_id \1
	db \2
ENDM
;	auto_weather_map BRASS_TOWER_2F_WARP, AUTOMATIC_SUN ; TITUS ROOM 
;	auto_weather_map BRASS_TOWER_3F_WARP, AUTOMATIC_RAIN ; NEMO ROOM 
	; MAPS WITH THE RAIN 
	auto_weather_map CIANWOOD_COVE, AUTOMATIC_RAIN
	auto_weather_map SHELTERED_SHORES, AUTOMATIC_RAIN
	auto_weather_map ARDUOUS_ANCHORAGE, AUTOMATIC_RAIN
	auto_weather_map LANDING_DOCKS, AUTOMATIC_RAIN
;	auto_weather_map ROUTE_45, AUTOMATIC_SANDSTORM
	db 0 ; end

AutomaticWeatherEffects:
; entries correspond to AUTOMATIC_* constants
MACRO auto_weather_effect
;\1: battle weather
;\2: animation
;\3: text
	db \1
	dw \2
	dw \3
ENDM
	auto_weather_effect WEATHER_SUN, SUNNY_DAY, SunGotBrightText
	auto_weather_effect WEATHER_RAIN, RAIN_DANCE, DownpourText
	auto_weather_effect WEATHER_SANDSTORM, ANIM_IN_SANDSTORM, SandstormBrewedText
