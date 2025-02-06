ArduousAnchorage_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 6, 25, PHANTOM_FJORD, 1
	warp_event 31, 11, LANDING_DOCKS, 1


	def_coord_events



	def_bg_events



	def_object_events
	object_event 26, 25, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, OVERQWIL, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Overqwil1, EVENT_ANCHORAGE_OVERQWIL_1
	object_event 30, 32, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, OVERQWIL, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Overqwil2, EVENT_ANCHORAGE_OVERQWIL_2
	object_event 11, 12, SPRITE_NOMAD_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, AnchorageNomadMText, EVENT_BEAT_KENSEY_PORT
	object_event  8,  7, SPRITE_NOMAD_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, AnchorageNomadFText, EVENT_BEAT_KENSEY_PORT


	object_const_def
	const ANCHORAGE_OVERQWIL_1
	const ANCHORAGE_OVERQWIL_2
	
	
AnchorageNomadMText:
	text "Oh, you're not a"
	line "brigader or an"
	cont "outsider."
	
	para "Watch out, there"
	line "are a few traps"
	cont "in front of the"
	cont "port..."
	done
	
AnchorageNomadFText:
	text "Where did this"
	line "rainstorm come"
	para "from? Skies were"
	line "clear just an"
	cont "hour ago."
	done

Overqwil1:
	opentext
	writetext OverqwilText
	closetext
	setevent EVENT_ANCHORAGE_OVERQWIL_1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon OVERQWIL, 30
	startbattle
	disappear ANCHORAGE_OVERQWIL_1
	reloadmapafterbattle
	end
	
Overqwil2:
	opentext
	writetext OverqwilText
	closetext
	setevent EVENT_ANCHORAGE_OVERQWIL_2
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon OVERQWIL, 30
	startbattle
	disappear ANCHORAGE_OVERQWIL_2
	reloadmapafterbattle
	end

OverqwilText:
	text "Baruu!"
	done