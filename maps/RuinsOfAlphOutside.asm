RuinsOfAlphOutside_MapScriptHeader:
	def_scene_scripts


	def_callbacks


	def_warp_events ; these are probably wrong
	warp_event  4, 13, RUINS_OF_ALPH_HO_OH_CHAMBER, 1 ; last chamber - heatran
	warp_event 18, 39, RUINS_OF_ALPH_KABUTO_CHAMBER, 1 ; first chamber
	warp_event  8, 25, RUINS_OF_ALPH_OMANYTE_CHAMBER, 1 ; second chamber?
	warp_event 16, 13, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 1 ; third chamber?
	warp_event  8, 33, UNION_CAVE_B1F_NORTH, 1 ; ok
	warp_event  3,  5, ROUTE_36_RUINS_OF_ALPH_GATE, 3 ; blocked
	warp_event 15, 26, ROUTE_32_RUINS_OF_ALPH_GATE, 1 ; ok
	warp_event 15, 27, ROUTE_32_RUINS_OF_ALPH_GATE, 2 ; ok
	warp_event 11, 41, TINDER_GARDEN, 3
	warp_event 12, 41, TINDER_GARDEN, 4
	warp_event  6, 26, ROUTE_KAJO_RUINS_OF_ALPH_GATE, 3
	warp_event  6, 27, ROUTE_KAJO_RUINS_OF_ALPH_GATE, 4
	warp_event 19, 17, RUINS_OF_ALPH_RESEARCH_CENTER, 1 ;

	def_coord_events


	def_bg_events
	bg_event 14, 22, BGEVENT_JUMPTEXT, RuinsOfAlphSignText
	bg_event 20, 18, BGEVENT_JUMPTEXT, RuinsOfAlphResearchCenterSignText
	bg_event  2, 14, BGEVENT_ITEM + MAX_REVIVE, EVENT_RUINS_OF_ALPH_OUTSIDE_HIDDEN_RARE_CANDY

	def_object_events
	object_event 13, 17, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphNorthScientistScript, -1
	object_event 15, 14, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientist1Script, EVENT_BEAT_FALKNER ; OK
	object_event 16, 14, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientist2Script, EVENT_BEAT_FALKNER ; OK
	object_event 13, 25, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientist3Script, -1 ; OK
	object_event 9, 39, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerSchoolgirlEliza, -1;
	object_event 10, 38, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerSchoolgirlMolly, -1;
	object_event  8, 36, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphTeacherScript, -1 ; SHOULD HEAL YOU
	object_event 14, 32, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerFisherRalph, -1 ;
	; SIGHTSEERS
	object_event 16, 34, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerSightseerFPilar, -1;
	object_event 17, 34, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerSightseerFLenie, -1;

	smashrock_event  9, 34


	object_const_def



GenericTrainerFisherRalph:
	generictrainer FISHER, RALPH1, EVENT_BEAT_FISHER_RALPH, FisherRalphSeenText, FisherRalphBeatenText

	text "A big fish?"

	para "The caves were"
	line "dug by visitors"
	para "from Sinnoh,"
	line "long ago."
	
	para "Who knows what"
	line "message they"
	para "were trying to"
	line "communicate"
	para "with those Unown"
	line "on the walls."
	done

FisherRalphSeenText:
	text "Want to hear"
	line "a big fish?"
	done

FisherRalphBeatenText:
	text "Flop!"
	done

RuinsOfAlphTeacherScript:	
	faceplayer
	opentext
	writetext WantToHeal2
	waitbutton
	closetext

	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic

	opentext
	writetext AlphHealedPokemon
	waitbutton
	closetext
	end
	
WantToHeal2:
	text "We are here on"
	line "a field trip!"
	
	para "I'll heal your"
	line "#mon for you."
	done

AlphHealedPokemon:
	text "All better!"
	done

GenericTrainerSchoolgirlMolly:
	generictrainer SCHOOLGIRL, MOLLY, EVENT_BEAT_SCHOOLGIRL_MOLLY, SchoolgirlMollySeenText, SchoolgirlMollyBeatenText

	text "My big bro says"
	line "there's portals"
	cont "inside the ruins."
	
	para "I wonder why?"
	done

SchoolgirlMollySeenText:
	text "We're on a"
	line "trip to visit"
	cont "the ruins!"
	done

SchoolgirlMollyBeatenText:
	text "Devastating."
	done
	
GenericTrainerSchoolgirlEliza:
	generictrainer SCHOOLGIRL, ELIZA, EVENT_BEAT_SCHOOLGIRL_ELIZA, SchoolgirlElizaSeenText, SchoolgirlElizaBeatenText

	text "All around the"
	line "Apricorn bush,"
	
	para "The Mankey chased"
	line "the Buizel, "
	
	para "Mankey thought it"
	line "was all in fun,"
	
	para "POP! Goes the"
	line "Buizel!"
	done

SchoolgirlElizaSeenText:
	text "I know all"
	line "about #mon!"
	done

SchoolgirlElizaBeatenText:
	text "You know more"
	line "than me."
	done

RuinsOfAlphOutsideScientist2Script:
	jumptext RuinsOfAlphScientist2Text

RuinsOfAlphScientist2Text:
	text "I'm telling you,"
	line "there's a conn-"
	para "ection between"
	line "the Unown and"
	cont "the Kimono girls!"
	
	para "How else do you"
	line "explain the"
	cont "similarities?"
	done

RuinsOfAlphOutsideScientist1Script:
	jumptext RuinsOfAlphScientist1Text
	
RuinsOfAlphScientist1Text:
	text "No, I'm telling"
	line "you, the Unown"
	para "are connected to"
	line "visitors from"
	cont "ancient Sinnoh!"
	
	para "How else do you"
	line "explain the"
	para "#mon we are"
	line "digging up?"
	done

RuinsOfAlphOutsideScientist3Script:
	jumptextfaceplayer RuinsOfAlphScientist3Text

RuinsOfAlphScientist3Text:
	text "We discovered"
	line "a Bronzong in"
	para "buried in the"
	line "ground!"
	
	para "Falkner wants"
	line "to put it at"
	para "the top of his"
	line "tower to perform"
	para "a Rain Dance to"
	line "alleviate the"
	cont "drought."
	done


RuinsOfAlphNorthScientistScript:
	faceplayer
	jumptext RuinsOfAlphNorthScientistText
	
RuinsOfAlphNorthScientistText:
	text "Some say if"
	line "you stare at"
	para "the shattered"
	line "mosaic for long"
	para "enough, you can"
	line "see a story."
	done

RuinsOfAlphSignText:
	text "Ruins of Alph"
	
	para "Inner chamber "
	line "closed due to "
	cont "falling rocks."
	done
	
RuinsOfAlphResearchCenterSignText:
	text "Ruins of Alph"
	line "Reseach Center."
	done



GenericTrainerSightseerFLenie: ; vulpix, grimer alolan 
	generictrainer SIGHTSEERF, LENIE, EVENT_BEAT_SIGHTSEERF_ANITA, SightseerFLenieSeenText, SightseerFLenieBeatenText

	text "My #mon and "
	line "I traveled all"
	para "the way from the"
	line "Alola region to"
	cont "learn about these"
	cont "ruins!"
	done

SightseerFLenieSeenText:
	text "A trainer! That's"
	line "what I'd expect"
	para "to see at these"
	line "ruins!"
	done

SightseerFLenieBeatenText:
	text "Johto trainers"
	line "are tough!"
	done

GenericTrainerSightseerFAnita:; slowpoke, ponyta galar
	generictrainer SIGHTSEERF, PILAR, EVENT_BEAT_SIGHTSEERF_PILAR, SightseerFPilarSeenText, SightseerFPilarBeatenText

	text "I've heard that"
	line "markings like the"
	para "ones inside the"
	line "Ruins are found"
	para "in Sinnoh too!"
	done

SightseerFPilarSeenText:
	text "If I can't see"
	line "the Ruins, I'll"
	cont "see your #mon!"
	done

SightseerFPilarBeatenText:
	text "Will you at least"
	line "tell me what the"
	para "symbols on the"
	line "floor say?"
	done
		