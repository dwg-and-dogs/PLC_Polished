BrassTower3FWarp_MapScriptHeader: ;	def_scene_scripts


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
	text "Egad! How did the"
	line "winds of fate"
	cont "bring YOU here?"
	
	para "Were my traps not"
	line "confusing enough?"
	
	para "You and your gra-"
	line "ndfather are mis-"
	cont "guided."
	
	para "The flywheel of"
	line "progress will"
	cont "lift all boats!"
	
	para "I'll guide it."
	line "A new age awaits." 
	cont "It's inevitable!"
	done

.BeatenText:
	text "How? How could"
	line "my planning fail?"
	done

.AfterText:
	text "I have no more"
	line "designs to stop"
	para "you. But the arc"
	line "of the universe"
	cont "will arrest you"
	cont "soon enough."
	done
