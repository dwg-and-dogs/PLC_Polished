AnarresCharcoalKiln_MapScriptHeader:
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event  3,  7, ANARRES_TOWN, 4
	warp_event  4,  7, ANARRES_TOWN, 4

	def_coord_events


	def_bg_events


	def_object_events
	object_event 7, 4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AnarresKilnCharcoalScript, -1 
	object_event 2, 5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, AnarresKilnNPC2Text, -1 ;
	object_event 5, 5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AnarresKilnNPC3Text, -1 ;



AnarresKilnCharcoalScript:
	checkevent EVENT_GOT_CHARCOAL
	iftrue_jumptextfaceplayer AnarresKiln_GotCharcoal
	faceplayer
	opentext
	writetext AnarresKiln_GiveCharcoal
	promptbutton
	verbosegiveitem CHARCOAL
	setevent EVENT_GOT_CHARCOAL
	jumpthisopenedtext

AnarresKiln_GotCharcoal:
	text "Charcoal smells"
	line "good, but I wish"
	para "there wasn't so"
	line "much ash."
	done


AnarresKiln_GiveCharcoal:
	text "The trees smell"
	line "so wonderful!"
	
	para "We use this oven"
	line "to make Charcoal."
	
	para "Here, take some"
	line "to remember this"
	para "place by."
	done

AnarresKilnNPC2Text:
	text "Elder Silas plans"
	line "our work."
	
	para "But he always"
	line "gives himself"
	cont "the easiest jobs!"
	done

AnarresKilnNPC3Text:
	text "We have way more"
	line "back than we can"
	para "process, due to"
	line "all the trees"
	cont "dying."
	done
