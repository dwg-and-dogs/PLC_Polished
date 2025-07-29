EmpiresExtent_MapScriptHeader:
	def_scene_scripts


	def_callbacks


	def_warp_events
	warp_event 6, 39, EMPIRES_EXTENT_CAVERN, 1
	warp_event 9, 49, EMPIRES_EXTENT_EERIE_HAMLET_GATE, 1
	warp_event 10, 49, EMPIRES_EXTENT_EERIE_HAMLET_GATE, 2

	def_coord_events


	def_bg_events
	bg_event 10, 44, BGEVENT_JUMPTEXT, ExtentSignText


	def_object_events
;a few hisuians who are going to join adrinna's army , done 
	object_event 1, 15, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, ExtentNPCText1, EVENT_BEAT_AMOS ; HANK 
	object_event 1, 20, SPRITE_HIKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, ExtentNPCText2, EVENT_BEAT_AMOS ; JONES 
	object_event 2, 23, SPRITE_HIKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, ExtentNPCText3, EVENT_BEAT_AMOS ; LELAND 
; ninjas 
	object_event  9, 10, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerNinja1, EVENT_BEAT_AMOS;shadow
	object_event 10, 10, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerNinja2, EVENT_BEAT_AMOS;mist
	object_event  9, 21, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerNinja3, EVENT_BEAT_AMOS;twilight
	object_event 10, 21, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerNinja4, EVENT_BEAT_AMOS;shimmer
	object_event  4, 31, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerNinja5, EVENT_BEAT_AMOS;echo
	object_event  5, 31, SPRITE_NINJA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerNinja6, EVENT_BEAT_AMOS;dusk 
;items 
	itemball_event 13, 17, REVIVAL_HERB,			1,	EVENT_EXTENT_ITEM_1
	itemball_event 10, 34, ENERGY_ROOT, 	1,	EVENT_EXTENT_ITEM_2
	itemball_event 11, 25, BIG_NUGGET, 		1,	EVENT_EXTENT_ITEM_3

GenericTrainerNinja1: ;shadow 
	generictrainer NINJA, NINJA1, EVENT_BEAT_NINJA1, .SeenText1, .BeatenText1  

.BeatenText1:
	text "You should go"
	line "home."
	done

.SeenText1:
	text "Traitor!"
	done

GenericTrainerNinja2: ; mist
	generictrainer NINJA, NINJA2, EVENT_BEAT_NINJA2, .SeenText2, .BeatenText2  

.BeatenText2:
	text "Our resolve is"
	line "strong."
	done

.SeenText2:
	text "You show your"
	line "face?"
	done
	
GenericTrainerNinja3: ; twilight 
	generictrainer NINJA, NINJA3, EVENT_BEAT_NINJA3, .SeenText3, .BeatenText3  

.BeatenText3:
	text "How do we get you"
	line "to disappear?"
	done

.SeenText3:
	text "How did you find"
	line "us?"
	done


GenericTrainerNinja4: ; 
	generictrainer NINJA, NINJA4, EVENT_BEAT_NINJA4, .SeenText4, .BeatenText4  

.BeatenText4:
	text "I let myself"
	line "down."
	done

.SeenText4:
	text "My turn - Amos, I"
	line "won't let you"
	cont "down!"
	done

GenericTrainerNinja5: ; echo 
	generictrainer NINJA, NINJA5, EVENT_BEAT_NINJA5, .SeenText5, .BeatenText5  

.BeatenText5:
	text "I've been"
	line "silenced."
	done

.SeenText5:
	text "When I'm through,"
	line "no one will hear"
	cont "of you again."
	done
	
GenericTrainerNinja6: ; dusk 
	generictrainer NINJA, NINJA6, EVENT_BEAT_NINJA6, .SeenText6, .BeatenText6 

.BeatenText6:
	text "Your colors are"
	line "surprising."
	done

.SeenText6:
	text "Lighting is best"
	line "right before"
	cont "night - let me"
	cont "see you!"
	done

ExtentNPCText1:
	text "Hank: The Gyara-"
	line "dos were out of"
	cont "control..."
	
	para "I'm following the"
	line "Brigaders to have"
	cont "that power."
	done

ExtentNPCText2:
	text "Jones: History"
	line "belongs to those"
	cont "who take it!"
	done

ExtentNPCText3:
	text "Leland: Sooner or"
	line "later, might will"
	cont "make right."
	done

ExtentSignText:
	text "Imperial Mandate:"
	line "Urguast's Ceremony"
	para "All citizens must"
	line "attend!"
	done
