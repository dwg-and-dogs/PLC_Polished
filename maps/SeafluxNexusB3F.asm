SeafluxNexusB3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 13, 31, SEAFLUX_NEXUS_B1F, 3 ; 1 easy back or with waterfall 
	warp_event 9, 5, SEAFLUX_NEXUS_B2F, 3 ; 2 

	def_coord_events

	def_bg_events


	def_object_events
	object_event  7, 20, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, LUGIA, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Lugia, EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_LUGIA


	object_const_def
	const NEXUSB3F_LUGIA
	
	
Lugia:
	opentext
	writetext LugiaText
	cry LUGIA
	pause 15
	closetext
	setevent EVENT_FOUGHT_LUGIA
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	loadwildmon LUGIA, 40
	startbattle
	disappear NEXUSB3F_LUGIA
	reloadmapafterbattle
	setevent EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_LUGIA
	end

LugiaText:
	text "Gyaaa!"
	done
