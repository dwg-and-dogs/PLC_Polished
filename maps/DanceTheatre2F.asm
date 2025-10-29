DanceTheatre2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks


	def_warp_events


	def_coord_events

	def_bg_events


	def_object_events
	object_event  0,  3, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TheatreElderScript2F, EVENT_BEAT_RIVAL_ROUTE_42
	object_event  1,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerKimono_girlNaoko, EVENT_BEAT_RIVAL_ROUTE_42 ; LEAFEON, kimono girl 3 -- DONE
	object_event  3,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerKimono_girlSayo, EVENT_BEAT_RIVAL_ROUTE_42 ; FLAREON, kimono girl 1 -- DONE
	object_event  6,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerKimono_girlZuki, EVENT_BEAT_RIVAL_ROUTE_42 ; ESPEON, kimono girl 2 -- DONE
	object_event 10,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerKimono_girlIzumi, EVENT_BEAT_RIVAL_ROUTE_42 ; VAPOREON, kimono girl 4  -- DONE
	object_event 12,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerKimono_girlKuni, EVENT_BEAT_RIVAL_ROUTE_42 ; GLACEON, kimono girl 4 -- DONE
	object_event 14,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerKimono_gir1Miki, EVENT_BEAT_RIVAL_ROUTE_42 ; UMBREON kimono girl 5 -- DONE
	object_event 17,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerKimono_girlAkari, EVENT_BEAT_RIVAL_ROUTE_42 ; JOLTEON  kimono girl 1 -- DONE
	
	object_const_def


TheatreElderScript2F:
	faceplayer
	opentext
	writetext DanceTheatre2F_EndShowText
	waitbutton
	yesorno
	iffalse_jumpopenedtext DanceTheatre2F_BreakALeg
	writetext DanceTheatre2F_TryAgainLaterText
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp DANCE_THEATRE, 0, 4
	end

DanceTheatre2F_EndShowText:
	text "Finished with"
	line "the show?"
	done

DanceTheatre2F_BreakALeg:
	text "Break a leg!"
	done

DanceTheatre2F_TryAgainLaterText:
	text "Come back soon!"
	done

GenericTrainerKimono_girlNaoko: ; leafeon 
	generictrainer KIMONO_GIRL_3, NAOKO, EVENT_BEAT_KIMONO_GIRL_NAOKO, Kimono_girl_1NaokoSeenText, Kimono_girl_1NaokoBeatenText

	text "The hero hailed"
	line "from the South."

	para "They united the"
	line "town to address"
	cont "a threat."
	done

	
Kimono_girl_1NaokoSeenText:
	text "Our story starts"
	line "long ago in the"
	cont "forest!"
	done

Kimono_girl_1NaokoBeatenText:
	text "The hero hailed"
	line "from the South."

	para "They united the"
	line "town to address"
	cont "a threat."
	done


GenericTrainerKimono_girlSayo:
	generictrainer KIMONO_GIRL_1, SAYO, EVENT_BEAT_KIMONO_GIRL_SAYO, Kimono_girl_1SayoSeenText, Kimono_girl_1SayoBeatenText

	text "When Gauldenrod"
	line "was divied by the"
	cont "Consul,"
	
	para "the hero brought"
	line "them together."
	
	para "Though they'd"
	line "lost their ritual"
	para "they gained a new"
	line "appreciation for"
	cont "each other."
	done

Kimono_girl_1SayoSeenText:
	text "Trial by fire!"
	done

Kimono_girl_1SayoBeatenText:
	text "When Gauldenrod"
	line "was divied by the"
	cont "Consul,"
	
	para "the hero brought"
	line "them together."
	done


GenericTrainerKimono_girlZuki:
	generictrainer KIMONO_GIRL_2, ZUKI, EVENT_BEAT_KIMONO_GIRL_ZUKI, Kimono_girl_1ZukiSeenText, Kimono_girl_1ZukiBeatenText

	text "The hero slipped"
	line "into the Western"
	cont "Capital, and"
	para "learned of the"
	line "Consul's plans"
	cont "without his"
	cont "knowing."
	para "At that time,"
	line "the towers were"
	cont "still home to"
	para "Lugia and Ho-Oh,"
	line "but Ho-Oh was"
	cont "growing restless"
	para "from the Consul's"
	line "drumbeat of war."
	done

Kimono_girl_1ZukiSeenText:
	text "Stay one step"
	line "ahead!"
	done

Kimono_girl_1ZukiBeatenText:
	text "Our hero slipped"
	line "into the Capital,"
	para "and learned the"
	line "Consul's plans."
	done


GenericTrainerKimono_girlIzumi:
	generictrainer KIMONO_GIRL_4, IZUMI, EVENT_BEAT_KIMONO_GIRL_IZUMI, Kimono_girl_1IzumiSeenText, Kimono_girl_1IzumiBeatenText

	text "A harsh storm"
	line "destroyed the"
	cont "Consul's port."
	
	para "Legend says that"
	line "the storm was"
	para "like an Aeroblast"
	line "on the sea."
	
	para "Now, the Consul"
	line "had to focus on"
	para "the East as his"
	line "only source of"
	para "metals to build"
	line "his towers."
	done


Kimono_girl_1IzumiSeenText:
	text "Strike like a"
	line "hurricane!"
	done

Kimono_girl_1IzumiBeatenText:
	text "A harsh storm"
	line "destroyed the"
	cont "Consul's port."
	para "Now, the consul"
	line "had to expand to"
	cont "the East."
	done


GenericTrainerKimono_girlKuni:
	generictrainer KIMONO_GIRL_4, KUNI, EVENT_BEAT_KIMONO_GIRL_KUNI, Kimono_girl_1KuniSeenText, Kimono_girl_1KuniBeatenText

	text "The hero made a"
	line "a coalition in"
	para "the Northeast to"
	line "fight the consul."

	done

Kimono_girl_1KuniSeenText:
	text "Crystallize the"
	line "plan!"
	done

Kimono_girl_1KuniBeatenText:
	text "The hero made a"
	line "a coalition in"
	para "the Northeast to"
	line "fight the consul."
	done

	
GenericTrainerKimono_gir1Miki:
	generictrainer KIMONO_GIRL_5, MIKI, EVENT_BEAT_KIMONO_GIRL_MIKI, Kimono_girl_1MikiSeenText, Kimono_girl_1MikiBeatenText

	text "The eastern mine"
	line "was pillaged."
	para "The Consul, cut"
	line "off from all"
	para "sides, had to "
	line "make a daring"
	cont "display."
	done

Kimono_girl_1MikiSeenText:
	text "Strike in the"
	line "dark!"
	done

Kimono_girl_1MikiBeatenText:
	text "The eastern mine"
	line "was pillaged."
	para "The Consul, cut"
	line "off from all"
	para "sides, had to "
	line "make a daring"
	cont "display."
	done


GenericTrainerKimono_girlAkari:
	generictrainer KIMONO_GIRL_1, AKARI, EVENT_BEAT_KIMONO_GIRL_AKARI, Kimono_girl_1AkariSeenText, Kimono_girl_1AkariBeatenText

	text "Flames filled"
	line "the tower,"
	cont "undoing the"
	cont "Consul's work."
	para "The legendary"
	line "#mon refuse"
	cont "to put it out."
	para "Your #mon are"
	line "so strong, you"
	cont "should visit"
	para "the bell tower"
	line "to find out"
	cont "why…"
	done

Kimono_girl_1AkariSeenText:
	text "Do you know the"
	line "story's end?"
	done

Kimono_girl_1AkariBeatenText:

	text "The tower was hit"
	line "by lightning!"
	
	para "Flame consumed it"
	line "and consumed the"
	cont "Consul's plan."
	
	para "The legendary"
	line "#mon refused"
	cont "to put it out."

	para "You should visit"
	line "the bell tower"
	cont "to find out why."
	done
