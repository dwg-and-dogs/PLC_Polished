BrassTower2FWarp_MapScriptHeader: 
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 3, 9, BRASS_TOWER_2F, 2
	warp_event 4, 9, BRASS_TOWER_2F, 2


	def_coord_events



	def_bg_events



	def_object_events
	object_event  4,  2, SPRITE_BOBESH, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BrassTowerBobesh, -1



	
BrassTowerBobesh:
	checkevent EVENT_BEAT_BOBESH_TOWER
	iftrue_jumptextfaceplayer .AfterText
	showtextfaceplayer .SeenText
	winlosstext .BeatenText, 0
	loadtrainer BOBESH, 2
	startbattle
	reloadmapafterbattle
	showtext .AfterText
	setevent EVENT_BEAT_BOBESH_TOWER
	end


.SeenText:
	text_high
    text " Bobesh: " 
	next
	text_start
	text "You! Here, in"
	line "my sanctum?"
	
	para "You ruined my"
	line "stadium!"
	
	para "I made order"
	line "from anarchy!"	
	
	para "I will have"
	line "my revenge!"
	done


.BeatenText:
	text "Impossible... How"
	line "can disorder"
	cont "triumph?"
	done

.AfterText:
	text_high
    text " Bobesh: " 
	next
	text_start
	text "Without absolute"
	line "power, society"
	cont "will crumble."
	
	para "I have no right"
	line "to history, now."
	para "But Kensey will"
	line "succeed where I"
	cont "failed."
	done

