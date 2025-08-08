BrassTower3FWarp_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 4, 9, BRASS_TOWER_3F, 2
	warp_event 5, 9, BRASS_TOWER_3F, 2


	def_coord_events



	def_bg_events



	def_object_events
	object_event  5,  3, SPRITE_KENSEY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BrassTowerKensey, -1


	object_const_def
	
BrassTowerKensey:
	checkevent EVENT_BEAT_KENSEY_TOWER
	iftrue_jumptextfaceplayer .AfterText
	showtextfaceplayer .SeenText
	winlosstext .BeatenText, 0
	loadtrainer KENSEY, 2
	startbattle
	reloadmapafterbattle
	showtext .AfterText
	setevent EVENT_BEAT_KENSEY_TOWER
	end


.SeenText:
	text_high
    text " Kensey: " 
	next
	text_start
	text "Egad! How did the"
	line "winds of fate"
	cont "bring you here?"
	
	para "Were my traps not"
	line "confusing enough?"
	
	para "The flywheel of"
	line "progress will"
	cont "lift all boats!"
	
	para "I'll guide it."
	cont "It's inevitable!"
	done


.BeatenText:
	text "How? How could"
	line "my planning fail?"
	done

.AfterText:
	text_high
    text " Kensey: " 
	next
	text_start
	text "I have no more"
	line "ways to stop you."
	para "But the arc of"
	line "the universe"
	para "will arrest you"
	line "soon enough."
	done

