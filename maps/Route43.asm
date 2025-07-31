Route43_MapScriptHeader:
	def_scene_scripts

	def_callbacks


	def_warp_events
	warp_event  9, 51, ROUTE_43_MAHOGANY_GATE, 1
	warp_event 10, 51, ROUTE_43_MAHOGANY_GATE, 2
	warp_event 17, 35, ROUTE_43_GATE, 3
	warp_event 17, 31, ROUTE_43_GATE, 1
	warp_event 18, 31, ROUTE_43_GATE, 2

	def_coord_events
	coord_event 10, 24, 0, Route43UrsalunaScene

	def_bg_events
	bg_event 13,  3, BGEVENT_JUMPTEXT, Route43Sign2Text
	bg_event 11, 49, BGEVENT_JUMPTEXT, Route43Sign2Text
	bg_event 16, 38, BGEVENT_JUMPTEXT, Route43TrainerTipsText

	def_object_events
	object_event  12,  20, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, URSALUNA, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_43_HURSALUNA 
	; officerf jamie, pokemaniac  larry, andrew, brent, sightseerm jaska, sightseerf rosie 
	object_event 10, 9,  SPRITE_PICNICKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSightseerFRosie, -1
	object_event  9, 12,  SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSightseerMJaska, -1
	object_event 5, 22,  SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerPokemaniacBrent, -1
	object_event 7, 40,  SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerPokemaniacAndrew, -1
	object_event 14, 38,  SPRITE_POKEMANIAC, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerPokemaniacLarry, -1	
	object_event  9,  47, SPRITE_OFFICER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerOfficerFJamie, -1
	fruittree_event  1, 26, FRUITTREE_ROUTE_43, LUM_BERRY, PAL_NPC_RED
	itemball_event 12, 32, MAX_ETHER, 1, EVENT_ROUTE_43_MAX_ETHER
	itemball_event  5, 15, ULTRA_BALL, 1, EVENT_ROUTE_43_ULTRA_BALL

	object_const_def
	const ROUTE_43_HURSALUNA

GenericTrainerSightseerFRosie:
	generictrainer SIGHTSEERF, ROSIE, EVENT_BEAT_SIGHTSEERF_ROSIE, .SeenText6, .BeatenText6

	text "Granola, Oats,"
	line "Raisins, Peanuts!"
	cont "GORP!"
	done

.BeatenText6:
	text "Don't they call "
	line "it GORP every-"
	cont "where?"
	done

.SeenText6:
	text "I'll battle- "
	line "winner gets some"
	cont "GORP!"
	done

GenericTrainerSightseerMJaska:
	generictrainer SIGHTSEERM, JASKA, EVENT_BEAT_SIGHTSEERM_JASKA, .SeenText5, .BeatenText5

.BeatenText5:
	text "Johto has such"
	line "strong trainers."
	done

.SeenText5:
	text "I was looking for"
	line "adventure, but I"
	cont "found a trainer!"
	done

GenericTrainerPokemaniacBrent:
	generictrainer POKEMANIAC, BRENT1, EVENT_BEAT_POKEMANIAC_BRENT, .SeenText4, .BeatenText4

.BeatenText4:
	text "I wonder what it"
	line "was like before"
	cont "the Lake was"
	cont "formed."
	done

.SeenText4:
	text "Who knew the Lake"
	line "could dry up?"
	
	para "Now it's the best"
	line "spot for rare"
	cont "#mon!"
	done
	

GenericTrainerPokemaniacAndrew:
	generictrainer POKEMANIAC, ANDREW, EVENT_BEAT_POKEMANIAC_ANDREW, .SeenText3, .BeatenText3

.BeatenText3:
	text "Well, are you"
	line "with me?"
	done

.SeenText3:
	text "I won't let that"
	line "officer hurt the"
	cont "tender Ursaring!"
	done


GenericTrainerPokemaniacLarry:
	generictrainer POKEMANIAC, LARRY, EVENT_BEAT_POKEMANIAC_LARRY, .SeenText2, .BeatenText2

.BeatenText2:
	text "You have such"
	line "magnificent"
	cont "#mon!"
	done

.SeenText2:
	text "I would take any"
	line "risk to see rare"
	cont "#mon!"
	done

GenericTrainerOfficerFJamie:
	generictrainer OFFICERF, JAMIE, EVENT_BEAT_OFFICERF_JAMIE, .SeenText1, .BeatenText1

.BeatenText1:
	text "Carry on."
	line "But be careful,"
	para "I'm tracking a"
	line "powerful Ursaring"
	para "that's stalking"
	line "Mahogany Town."
	done

.SeenText1:
	text "Hey, kid! Should"
	line "you even be here?"
	done

Route43UrsalunaScene:
	pause 30
	applymovement ROUTE_43_HURSALUNA, Route43HursalunaMove1
	cry URSARING
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 30
	applyonemovement PLAYER, step_down
	applyonemovement PLAYER, step_down
	pause 30
	disappear ROUTE_43_HURSALUNA
	setevent EVENT_ROUTE_43_HURSALUNA
	setscene $1
	end

Route43HursalunaMove1:
	fix_facing
	slide_step_down
	step_end


Route43Sign2Text:
	text "Route 43"
	done

Route43TrainerTipsText:
	text "Silph Springgs"
	line "Check-in gate"
	done
